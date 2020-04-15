/*-
 * #%L
 * Code Critters
 * %%
 * Copyright (C) 2019 Michael Gruber
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


/*
# critter-insert

A Simple Button

## Example
```html
<critter-level-selector></critter-level-selector>
```

@demo
*/

class CritterLevelPreview extends PolymerElement {
    static get template() {
        return html`
            <style>
            #level_preview img{
                width: 150px;
                height: auto;
                cursor: pointer;
            }
            
            #level_preview{
                padding: 10px;
                position: relative;
            }
            
            #stars{
                position: absolute;
                width: 140px;
                padding-left: 10px;
                top: 100px;
                color: #5e592e;
                height: 60px;
                background-color: rgba(104,93,58,0.5);
            }       
            
             #stars iron-icon{
                width: 40px;
                height: 40px;
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
                
            </style>

            <div id="level_preview">
                <img src="/images/[[name]].jpeg">
                <div id="stars">
                    <iron-icon id="star1" icon="icons:star"></iron-icon>
                    <iron-icon id="star2" icon="icons:star"></iron-icon>
                    <iron-icon id="star3" icon="icons:star"></iron-icon>
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
            }
        }
    }

    connectedCallback() {
        super.connectedCallback();

        afterNextRender(this, function () {
            this.$.level_preview.addEventListener("click", this._loadLevel.bind(this));
        });
    }

    _loadLevel() {
        window.location.href = "/game?level=" + this.name;
    }

    _starsChanged() {
        this.$.stars.className = "stars_" + this.stars;
    }
}

window.customElements.define(CritterLevelPreview.is, CritterLevelPreview);
