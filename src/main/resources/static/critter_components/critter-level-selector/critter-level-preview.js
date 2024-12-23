/*-
 * #%L
 * Code Critters
 * %%
 * Copyright (C) 2019 - 2023 Code Critter contributors
 * %%
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as
 * published by the Free Software Foundation, either version 3 of the
 * License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public
 * License along with this program.  If not, see
 * <http://www.gnu.org/licenses/gpl-3.0.html>.
 * #L%
 */
import {html, PolymerElement} from '/lib/@polymer/polymer/polymer-element.js';
import { afterNextRender } from '/lib/@polymer/polymer/lib/utils/render-status.js';

import '/lib/@polymer/iron-ajax/iron-ajax.js';
import '/lib/@polymer/iron-icons/iron-icons.js';
import {I18n} from '../critter-i18n/critter-i18n-mixin.js';



class CritterLevelPreview extends I18n(PolymerElement) {
    static get template() {
        return html`
            <style>
                
                :host {
                    --tooltip-display: none;
                }
                
            #base_level {
                width: 150px;
                height: 150px;
                cursor: pointer;
                position: relative;
                z-index: 10;
                border-radius: 5px;
            }

            #second_stage_level {
                width: 120px;
                height: 120px;
                cursor: pointer;
                position: relative;
                top: 45px;
                right: 15px;
                z-index: 1;
            }

            #second_stage_image {
                width: 120px;
                height: auto;
                border-radius: 5px;
            }
            
            #level_preview{
                padding: 10px;
                position: relative;
                height: 200px;
                display: flex;
                flex-direction: row;
            }
            
            .locked {
                filter: grayscale(95%) contrast(70%);
            }
            
            #stars{
                position: absolute;
                width: 140px;
                padding-left: 10px;
                top: 100px;
                color: #5e592e;
                height: 60px;
                background-color: rgba(104,93,58,0.5);
                z-index: 100;
                border-radius: 5px;
            }       
            
             #stars iron-icon{
                width: 40px;
                height: 40px;
            }

            #second_stage_stars{
                position: absolute;
                width: 110px;
                padding-left: 10px;
                top: 80px;
                color: #5e592e;
                height: 40px;
                background-color: rgba(104,93,58,0.5);
                z-index: 100;
                border-radius: 5px;
            }

            #second_stage_stars iron-icon{
                width: 30px;
                height: 30px;
            }

            #second_stage_star2 {
                margin-bottom: 10px;
            }

            .second_stage_stars_1 #second_stage_star1{
                color: gold;
            }

            .second_stage_stars_2 #second_stage_star1,
            .second_stage_stars_2 #second_stage_star2{
                color: gold;
            }

            .second_stage_stars_3 #second_stage_star1,
            .second_stage_stars_3 #second_stage_star2,
            .second_stage_stars_3 #second_stage_star3{
                color: gold;
            }
            
            #star2 {
                margin-bottom: 20px;
            }
            
            .stars_1 #star1{
                color: gold;
            }
            
            .stars_2 #star1,
            .stars_2 #star2{
                color: gold;
            }
            
            .stars_3 #star1,
            .stars_3 #star2,
            .stars_3 #star3{
                color: gold;
            }

            #tooltip {
                padding: 5px;
                font-size: 0.8em;
                width: 150px;
                background-color: #f9edbe;
                position: absolute;
                left: 240px;
                top: 120px;
                z-index: 1000;
                display: var(--tooltip-display);
            }
                
            </style>

            <div id="level_preview">
                <img id="base_level" src="/images/[[name]].jpeg">
                <div id="stars">
                    <iron-icon id="star1" icon="icons:star"></iron-icon>
                    <iron-icon id="star2" icon="icons:star"></iron-icon>
                    <iron-icon id="star3" icon="icons:star"></iron-icon>
                </div>
                <div id="second_stage_level">
                    <img id="second_stage_image" src="/images/secondStage/[[secondStageName]].png">
                    <div id="second_stage_stars">
                        <iron-icon id="second_stage_star1" icon="icons:star"></iron-icon>
                        <iron-icon id="second_stage_star2" icon="icons:star"></iron-icon>
                        <iron-icon id="second_stage_star3" icon="icons:star"></iron-icon>
                    </div>
                </div>
                <div id="tooltip">
                    <span>[[__('second_stage_locked')]]</span>
                </div>
            </div>
    `;
    }

    static get is() {
        return 'critter-level-preview';
    }

    static get properties() {
        return {
            name: {
                type: String,
                value: ""
            },

            stars: {
                type: Number,
                value: 0,
                observer: "_starsChanged"
            },

            secondStageStars: {
                type: Number,
                value: 0,
                observer: "_secondStageStarsChanged"
            },
            secondStageName: {
                type: String,
                value: "level_1"
            }
        }
    }

    connectedCallback() {
        super.connectedCallback();

        this._globalData = window.Core.CritterLevelData;

        afterNextRender(this, function () {
            this.$.base_level.addEventListener("click", this._loadLevel.bind(this));
            this.$.second_stage_level.addEventListener("click", this._loadHealingLevel.bind(this));
            if (this.stars <= 2) {
                this.$.second_stage_level.addEventListener('mouseover', this._onHover.bind(this));
                this.$.second_stage_level.addEventListener('mouseout', this._onHoverOut.bind(this));
            }

            this.blurSecondStageImage();

            this.secondStageName = this.name;
        });
    }

    _loadLevel() {
        window.location.href = "/game?level=" + this.name;
    }

    _loadHealingLevel() {
        if (this.stars < 2 && !(this._isAdmin())) { // do not route to second stage before base level success
            return;
        }
        window.location.href = "/healing-game?level=" + this.secondStageName;
    }

    _starsChanged() {
        this.$.stars.className = "stars_" + this.stars;
    }

    _secondStageStarsChanged() {
        this.$.second_stage_stars.className = "second_stage_stars_" + this.secondStageStars;
    }

    blurSecondStageImage() {
        const img = this.$.second_stage_level;
        if (this.stars < 2 && !(this._isAdmin())) {
            img.classList.add('locked');
            img.style.cursor = "default";
        } else {
            img.classList.remove('locked');
            img.style.cursor = "pointer";
        }
    }

    _onHover() {
        const tooltip = this.shadowRoot.querySelector('#tooltip');
        const tooltipWidth = tooltip.offsetWidth;
        const elementRect = this.$.second_stage_level.getBoundingClientRect();
        const spaceOnRight = this.parentNode.clientWidth - elementRect.right;

        // If there's not enough space on the right, position it on the left
        if (spaceOnRight < tooltipWidth) {
            tooltip.style.left = '60px';
        }

        this.updateStyles({
            '--tooltip-display': 'block'
        });
    }

    _onHoverOut() {
        this.updateStyles({
            '--tooltip-display': 'none'
        });
    }

    _isAdmin() {
        if (this._globalData.user && this._globalData.user.username) {
            return (this._globalData.user.username === "admin");
        }
        return false;
    }
}

window.customElements.define(CritterLevelPreview.is, CritterLevelPreview);
