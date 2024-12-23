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


// Is the second stage level representation in the result popup of the corresponding base level
class CritterUnlockedLevelSelector extends PolymerElement {
    static get template() {
        return html`
            <style>

                #second_stage_level {
                    width: 120px;
                    height: auto;
                    position: relative;
                    border-radius: 5px;
                }

                #level_preview {
                    padding: 10px;
                    position: relative;
                }


                .locked {
                    filter: grayscale(95%) contrast(70%);
                    transition: filter 0.3s ease;
                }

                .unlocked {
                    filter: none;
                }

                .glow-green {
                    box-shadow: 0 0 10px rgba(0, 255, 0, 0.7);
                    transition: box-shadow 1s ease;
                }

            </style>

            <div id="level_preview">
                <img id="second_stage_level" class="locked" src="/images/secondStage/[[name]].png">
            </div>
        `;
    }

    static get is() {
        return 'critter-unlocked-level-selector';
    }

    static get properties() {
        return {
            name: {
                type: String,
                value: ""
            },

            locked: {
                type: Boolean,
                value: true
            }
        }
    }

    connectedCallback() {
        super.connectedCallback();

        this._globalData = window.Core.CritterLevelData;
        afterNextRender(this, function () {

            if (this.locked) {
                this._addLockedStyle();
            } else {
                this.$.second_stage_level.addEventListener("click", this._loadHealingLevel.bind(this));
                this._unlockSecondStageLevel();
            }
        });
    }

    _loadLevel() {
        window.location.href = "/game?level=" + this.name;
    }

    _loadHealingLevel() {
        if (this.locked) { // do not route to second stage if still locked
            return;
        }
        window.location.href = "/healing-game?level=" + this.name;
    }


    _unlockSecondStageLevel() {
        this.$.second_stage_level.addEventListener("click", this._loadHealingLevel.bind(this));
        this.locked = false;
        const img = this.$.second_stage_level;
        img.classList.add("glow-green");
        img.style.cursor = "pointer";

        setTimeout(() => {
            img.classList.remove("locked");
            img.classList.remove("glow-red");

        }, 1000);
    }

    _addLockedStyle() {
        const img = this.$.second_stage_level;
        img.classList.add("locked");
        img.style.cursor = "default";
    }
}

window.customElements.define(CritterUnlockedLevelSelector.is, CritterUnlockedLevelSelector);
