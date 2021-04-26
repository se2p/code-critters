/*-
 * #%L
 * Code Critters
 * %%
 * Copyright (C) 2021 Laura Caspari
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
import {Level} from '../critter-level-mixin/critter-level-mixin.js';
import {Toaster} from '../critter-toaster/critter-toaster-mixin.js';
import {I18n} from '../critter-i18n/critter-i18n-mixin.js';

import '../critter-blockly/critter-blockly.js';
import '../critter-tab/critter-tab.js';

/*
# critter-mutant-show

Shows the code of the mutated critters for a given level

## Example
```html
<critter-mutant-show></critter-mutant-show>
```

*/
class CritterMutantShow extends Toaster(Level(I18n(PolymerElement))) {
    static get template() {
        return html`
            <style>
                :host {
                    display: block;
                    margin-right: 10%;
                    margin-left: 10%;
                }
                
                .tab {
                    display: none;
                }
                
                .tab-0 {
                    display: block;
                    height: 640px;
                }
                
                #info {
                    margin: 0;
                    position: absolute;
                    top: 50%;
                    left: 50%;
                    -ms-transform: translate(-50%, -50%);
                    transform: translate(-50%, -50%);
                    text-align: center;
                    font-size: 1.3em;
                }
                
                #levelName {
                    font-weight: bold;
                    color: #ffa600;
                }
            </style>
            
            <critter-tab id="tabs" tabs="{{tabs}}"></critter-tab>
            <div class="tab tab-0">
                <div id="info">
                    <p>
                        {{__("show_mutants_info")}}
                    </p>
                    <p id="levelName">{{levelName}}</p>
                    <p>
                        {{__("show_mutants_code")}}
                        <br>
                        {{__("show_mutants_critter")}}
                    </p>
                </div>
            </div>
            <critter-blockly id="blockly_cut" class="tab code tab-1" height$="{{ _boardHeight}}" controls="true" cut read-only/>
     `;
    }

    static get is() {
        return 'critter-mutant-show';
    }

    static get properties() {

        return {
            numberOfMutants: {
                type: Number
            },

            levelName: {
                type: String,
                value: ''
            },

            tabs: {
                type: Array,
                value: [
                    {title: "Info"}
                ]
            },

            _boardHeight: {
                type: Number,
                value: 640
            },

            _critterList: {
                type: Array,
                value: []
            }

        };
    }

    /**
     * Loads the mutant data for the given level and renders the mutant tabs.
     */
    connectedCallback() {
        super.connectedCallback();

        window.Core.GameRoot = this;
        window.Core.Generator = false;

        this._globalData = window.Core.CritterLevelData;

        afterNextRender(this, function () {
            this.levelName = new URL(window.location.href).searchParams.get("level");
            this._globalData.levelName = this.levelName;
            this._loadMutants();
            this.$.tabs.addEventListener("tabChanged", (event) => this._onTabChanged(event));
        });
    }

    /**
     * Hides the old tab an renders the new one with the proper mutant code on user interaction.
     * @param event The event caused by the user clicking on a different tab.
     * @private
     */
    _onTabChanged(event) {
        let detail = event.detail;
        this._setDisplayTab("none", detail.old);
        this._setDisplayTab("block", detail.new);
        if (detail.new !== 0) {
            let element = this.shadowRoot.querySelector('.tab-' + detail.new);
            if (detail.new === 1) {
                let code = this.$.blockly_cut.getXML();
                this.$.blockly_cut.getCenteredCode(code);
            } else {
                element.getCenteredCode(element.xml);
            }
        }
    }

    /**
     * Sets the display value of the tab with the given number to the given value to render or hide it.
     * @param value The display value to render or hide the tab.
     * @param number The number of the tab.
     * @private
     */
    _setDisplayTab(value, number) {
        let elements = this.shadowRoot.querySelectorAll('.tab-' + number);
        for (let i = 0; i < elements.length; ++i)
            elements[i].style.display = value;
    }

    /**
     * Loads the mutant code for the level name given as a parameter in the URL.
     * @returns {HTMLElement}
     * @private
     */
    _loadMutants() {
        let req = document.createElement('iron-ajax');
        req.url = "/level/mutants";
        req.method = "GET";
        req.handleAs = 'json';
        req.contentType = 'application/json';
        req.bubbles = true;
        req.rejectWithRequest = true;
        req.params = {level: this.levelName};

        req.addEventListener('response', e => {
            let mutants = e.detail.__data.response;
            for (let i = 0; i < mutants.length; i++) {
                this._critterList[i] = {id: mutants[i].id, code: mutants[i].code, init: mutants[i].init,
                    xml: mutants[i].xml};
                this._initializeMutants(i, this._critterList[i]);
            }
        });

        let genRequest = req.generateRequest();
        req.completes = genRequest.completes;

        return req;
    }

    /**
     * Creates new tabs for all the mutants belonging to the given level.
     * @param number The number of the tab.
     * @param mutant The mutant data.
     * @private
     */
    _initializeMutants(number, mutant) {
        let tab = this._createMutant(number + 2);
        this.tabs.splice(number + 2, 0, {title: "Mutant " + (number + 1)});
        tab.id = mutant.id;
        tab.xml = mutant.xml;

        this.$.tabs._tabsChanged();
    }

    /**
     * Creates a new mutant tab with the given number.
     * @param number The number of the tab.
     * @returns {HTMLElement}
     * @private
     */
    _createMutant(number) {
        let newTab = document.createElement("critter-blockly");
        newTab.className = "tab code tab-" + number;
        newTab.height = this._boardHeight;
        newTab.xml = true;
        newTab.controls = true;
        newTab.readOnly = true;
        this.shadowRoot.append(newTab);
        return newTab;
    }

}

window.customElements.define(CritterMutantShow.is, CritterMutantShow);
