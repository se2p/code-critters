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
import {I18n} from '../critter-i18n/critter-i18n-mixin.js';
import '../critter-button/critter-button.js';
import '../critter-selector/critter-selector.js';

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

class CritterLevelSelectorSimple extends I18n(PolymerElement) {
    static get template() {
        return html`
            <style>
                #load_button {
                    margin: 1% auto;
                }
            </style>
            <critter-selector values="{{levelNamesList}}" selected-value="{{selectedLevel}}" initial-value="{{initialSelectValue}}"></critter-selector>
            <br>
            <critter-button id="load_button">[[__('load_level')]]</critter-button>
        `;
    }

    static get is() {
        return 'critter-level-selector-simple';
    }

    static get properties() {
        return {
            levelNamesList: {
            type: []
            },
            selectedLevel: {
                type: String,
                value: ""
            },
            initialValue: {
                type: String,
                value: ""
            },
            initialSelectValue: {
                type: String,
                computed: '_nextLevelForSelector(initialValue)'
            }
        }
    }

    connectedCallback() {
        super.connectedCallback();

        afterNextRender(this, function () {
            this.$.load_button.addEventListener("click", this._loadLevel.bind(this));
        });
    }

    /** gets all existing level names **/
    _initNames() {
        let req = document.createElement('iron-ajax');
        req.url = "/generator/fullNames";
        req.method = "GET";
        req.handleAs = 'json';
        req.contentType = 'application/json';
        req.bubbles = true;
        req.rejectWithRequest = true;

        req.addEventListener('response', e => {
            this.levelNamesList = e.detail.__data.response;
        });

        let genRequest = req.generateRequest();
        req.completes = genRequest.completes;
        return req;
    }

    _loadLevel() {
        window.location.href = "/game?level=" + this.selectedLevel;
    }

    /**
     * Returns the value of the next level for the selector. It is used to show a default selected option.
     * @param currentLevel Holds the current level, e.g. 'level_2'
     */
    _nextLevelForSelector(currentLevel) {
        this._initNames();
        if (currentLevel) {
            if (this.levelNamesList.length > 0) {
                let currentLevelIndex = 0;
                for (let i = 0; i < this.levelNamesList.length; i++) {
                    if (this.levelNamesList[i].name === currentLevel) {
                        currentLevelIndex = i;
                    }
                }
                // If playing the last level, the selector defaults to the current, last level
                if (this.levelNamesList.length - 1 === currentLevelIndex) {
                    return this.levelNamesList[this.levelNamesList.length - 1].name;
                } // in any other case select the next level from list
                else {
                    return this.levelNamesList[currentLevelIndex + 1].name;
                }
            }
        }
        return this.initialValue;
    }
}

window.customElements.define(CritterLevelSelectorSimple.is, CritterLevelSelectorSimple);
