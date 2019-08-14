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
import './critter-level-row.js';
import '../critter-data-store/critter-data-store.js';
import {Level} from '../critter-level-mixin/critter-level-mixin.js';


import '/lib/@polymer/iron-ajax/iron-ajax.js';

/*
# critter-insert

A Simple Button

## Example
```html
<critter-level-selector></critter-level-selector>
```

@demo
*/

class CritterLevelSelector extends Level(PolymerElement) {
    static get template() {
        return html`
            <style>
                #load_button{
                    margin: var( --margin-selector-button);
                }
                
                critter-button {
                min-width: 100px;
                min-height: 40px;
            }
            </style>
            
            <critter-data-store></critter-data-store>
            <div id="preview_container">
            </div>
    `;
    }

    static get is() {
        return 'critter-level-selector';
    }

    static get properties() {
        return {
            levels: {
                type: []
            },

            selectedLevel: {
                type: String,
                value: ""
            }
        }
    }

    connectedCallback() {
        super.connectedCallback();

        this._globalData = window.Core.CritterLevelData;

        afterNextRender(this, function () {
            this._initNames();
        });
    }

    /** gets all existing level names **/
    _initNames() {
        let req = document.createElement('iron-ajax');
        req.url = "level/levels";
        req.method = "GET";
        req.handleAs = 'json';
        req.contentType = 'application/json';
        req.bubbles = true;
        req.rejectWithRequest = true;

        req.addEventListener('response', e => {
            this.$.preview_container.innerHtml = "";
            e.detail.__data.response.forEach((rowData) => {
                let row = document.createElement("critter-level-row");
                row.name = rowData.name;
                row.levels = rowData.levels;
                this.$.preview_container.append(row);
            })
        });

        let genRequest = req.generateRequest();
        req.completes = genRequest.completes;
        return req;
    }

    _loadLevel() {
        window.location.href = "/game?level=" + this.selectedLevel;
    }
}

window.customElements.define(CritterLevelSelector.is, CritterLevelSelector);
