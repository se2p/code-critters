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
import {Level} from '../critter-level-mixin/critter-level-mixin.js';
import {Toaster} from '../critter-toaster/critter-toaster-mixin.js';

import '../critter-data-store/critter-data-store.js';
import '../critter-gameboard/critter-board.js';
import '../critter-critter/critter-critter.js';
import '../critter-button/critter-button.js';
import '../critter-blockly/critter-blockly.js';
import '../critter-tab/critter-tab.js';
import '../critter-element-selector/critter-element-selector.js';
import '../critter-mutant-creator/critter-mutant-creator.js';
import '../critter-input/critter-input.js';
import '../critter-loading/critter-loading.js';
import '../critter-selector/critter-selector.js';

import '/lib/@polymer/iron-ajax/iron-ajax.js';

/*
# critter game

Displays the game elements

## Example
```html
<critter-level-creator width="NUMBER" height="NUMBER"></critter-level-creator>
```

*/

window.Core = window.Core || {};

class CritterLevelCreator extends Toaster(Level(PolymerElement)) {
    static get template() {
        return html`
        <custom-style>
            <style>
                :host {
                    display: block;
                }

                :host > * {
                    --overlay-margin-top: 40px;
                }

                @media only screen and (max-width: 600px) and (min-width: 424px) {
                    #coordinate_container {
                        left: 300px;
                    }
                }
                
                @media only screen and (min-width: 985px) {
                    #coordinate_container {
                        left: 670px;
                    }
                }

                .tab {
                    display: none;
                }

                .tab-0{
                    display: block;
                }

                #blockly_init{
                    margin-right: 5%;
                }

                #save_button,
                critter-selector {
                    margin-left: 20px;
                    float: left;
                }
                
                #save_button {
                    margin-top: 20px;
                }

                #gameboard,
                #element_selector{
                    float: left;
                }

                #element_selector{
                    margin-left: 20px;
                }
                
                .table{
                    display: table;
                    float: left;
                    clear: both;
                    margin-left: 20px;
                    margin-top: 20px;
                    margin-bottom: 40px;
                }

                #coordinate_container{
                    min-height: 40px;
                    position: relative;
                    align-items: center;
                    margin-left: 20px;
                    float: left;
                    display: block;
                    clear: both;
                }
            </style>
        </custom-style>

        <critter-data-store></critter-data-store>

        <critter-loading id="loading"></critter-loading>
        <critter-tab id="tabs" tabs="{{tabs}}"></critter-tab>
        <div class="tab-0 tab">
            <critter-gameboard id="gameboard"  selected-element="{{selectedElement}}" show-grid="false"></critter-gameboard>
            <critter-element-selector id="element_selector"  selected-element="{{selectedElement}}" height$="{{ _boardHeight}}">
            </critter-element-selector>
        </div>
        <div  class="tab-1 tab">
            <critter-blockly id="blockly_cut" height$="{{ _boardHeight}}" controls="true" trashcan="true" cut>
            </critter-blockly>
        </div>
        <div class="tab-2 tab">
            <critter-blockly id="blockly_test" height$="{{ _boardHeight}}" trashcan="true" controls="true">
            </critter-blockly>
        </div>
        <div class="tab-3 tab">
            <critter-mutant-creator id="mutant_creator" height$="{{ _boardHeight}}" number-of-mutants="{{_globalData.numberOfMutants}}" ></critter-mutant-creator>
        </div>
        <br>
        <div id="coordinate_container">Coordinates: (X: {{_hoverX}}, Y: {{_hoverY}})</div>
        <div class="table">
            <critter-input id="name_input" label="Name: " value="{{levelName}}"></critter-input>
        </div>
        <critter-selector values="[[_rows]]" selected-value="{{selectedRow}}"></critter-selector>
        <critter-button id="save_button">Save</critter-button>
        `;
    }


    static get is() {
        return 'critter-level-creator';
    }

    static get properties() {
        return {

            levelName: {
                type: String,
                value: ''
            },

            selectedElement: {
                type: String
            },

            selectedRow: {
                type: String
            },

            tabs: {
                type: Array,
                value: [
                    {title: "Gameboard"},
                    {title: "CUT"},
                    {title: "Test"},
                    {title: "Critter"}
                ]
            },

            _boardHeight: {
                type: Number,
                computed: '_computeBoardHeight(_globalData.height, _blockSize)'
            },

            _blockSize: {
                type: Number,
                computed: '_computeBlockSize()'
            },

            _critterList: {
                type: Array,
                value: []
            },

            _hoverX: {
                type: Number
            },

            _hoverY: {
                type: Number
            },

            _names: {
                type: Array,
                value: []
            },

            _rows: {
                type: Array,
                value: []
            }
        };
    }

    connectedCallback() {
        super.connectedCallback();

        window.Core.GameRoot = this;
        window.Core.Generator = true;

        afterNextRender(this, function () {
            this._globalData = window.Core.CritterLevelData;
            this.$.save_button.addEventListener("click", this._saveLevel.bind(this));
            this.addEventListener("hoverOver", (event) => this._handleHoverField(event));
            this.addEventListener("valueChanged", (event) => this._validateLevelName(event));
            this.$.tabs.addEventListener("tabChanged", (event) => this._onTabChanged(event));
            window.addEventListener("resize", (event) => this._handleResize(event));
            this._initLevel();
            this._initNames();
            this._initRows();
        });
    }

    /** initializes an empty level **/
    _initLevel() {
        this._globalData.level = [];
        let array = [];
        for (let j = 0; j < this._globalData.width; ++j) {
            array[j] = "grass";
        }
        for (let i = 0; i < this._globalData.width; ++i) {
            this._globalData.level[i] = array.slice();
        }
        this.$.gameboard.dispatchEvent(new CustomEvent('_levelChanged', {detail: {}, bubbles: true, composed: true}));
    }

    /** gets all existing level names **/
    _initNames() {
        let req = document.createElement('iron-ajax');
        req.url = "/generator/names";
        req.method = "GET";
        req.handleAs = 'json';
        req.contentType = 'application/json';
        req.bubbles = true;
        req.rejectWithRequest = true;

        req.addEventListener('response', e => {
            this._names = e.detail.__data.response;
        });

        let genRequest = req.generateRequest();
        req.completes = genRequest.completes;
        return req;
    }

    /** gets all existing rows names **/
    _initRows() {
        this._rows = [];
        let req = document.createElement('iron-ajax');
        req.url = "/generator/rows";
        req.method = "GET";
        req.handleAs = 'json';
        req.contentType = 'application/json';
        req.bubbles = true;
        req.rejectWithRequest = true;

        req.addEventListener('response', e => {
            let rows = e.detail.__data.response;
            rows.forEach((row) => {
                this.push("_rows", {name: row.name, value: row.id});
            });
        });

        let genRequest = req.generateRequest();
        req.completes = genRequest.completes;
        return req;
    }

    /** validates the Level Name **/
    _validateLevelName(event) {
        this.$.name_input.valid = !this._names.includes(event.detail.name);
    }

    async _saveImg() {
        let formData = new FormData();
        formData.append("file", await this.$.gameboard.computeImg(), this.levelName + ".jpeg");

        return new Promise( (resolve, reject) => {
            let req = document.createElement('iron-ajax');
            req.url = "/generator/level/image";
            req.method = "post";
            req.bubbles = true;
            req.rejectWithRequest = true;
            req.body = formData;

            req.addEventListener('response', () => {
                resolve();
            });

            req.addEventListener('static.error', () => {
                reject();
            });

            let genRequest = req.generateRequest();
            req.completes = genRequest.completes;
        });
    }

    /** saves the Level Data**/
    _saveLevel() {
        if (this.levelName === '') {
            this.$.name_input.valid = false;
        }

        if (!this.$.name_input.valid) {
            this.showErrorToast("Please enter a valid name");
            return;
        }

        if (!this.$.blockly_cut.getJavaScript()) {
            this.showErrorToast("Please create some CUT");
            return;
        }

        let code = this.$.blockly_cut.getJavaScript();

        let regExpInit = /\/\/INIT_START\r?\n((?!\/\/INIT_START)(?!\/\/CUT_START)[^])*\r?\n\/\/INIT_END/g;
        let matchesInit = code.match(regExpInit) || [];

        let regExpCUT =  /\/\/CUT_START\r?\n((?!\/\/INIT_START)(?!\/\/CUT_START)[^])*\r?\n\/\/CUT_END/g;
        let matchesCUT = code.match(regExpCUT)  || [];

        if(matchesCUT.length === 0 && matchesInit.length === 0){
            this.showErrorToast("At least one Initialization or one CUT is required");
            return;
        }

        if(matchesCUT.length > 1){
            this.showErrorToast("Too many CUTs");
            return;
        }

        if(matchesInit.length > 1){
            this.showErrorToast("Too many Initializations");
            return;
        }

        let init = matchesInit[0];
        let cut = matchesCUT[0];


        if (!this._globalData.tower || this._globalData.tower.x === -1) {
            this.showErrorToast("Please set the tower");
            return;
        }

        if (!this._globalData.spawn || this._globalData.spawn.x === -1) {
            this.showErrorToast("Please set the spawn");
            return;
        }
        if (!this.existPath(this._globalData.spawn)) {
            this.showErrorToast("There is no path to the tower");
            return;
        }

        let req = document.createElement('iron-ajax');
        req.url = "/generator/level/create";
        req.method = "post";
        req.handleAs = 'json';
        req.contentType = 'application/json';
        req.bubbles = true;
        req.rejectWithRequest = true;
        req.body = {
            name: this.levelName,
            level: this._globalData.level,
            tower: this._globalData.tower,
            spawn: this._globalData.spawn,
            numberOfCritters: this._globalData.numberOfCritters,
            numberOfHumans: this._globalData.numberOfHumans,
            cut: cut,
            init: init,
            test: this.$.blockly_test.getXML(),
            xml: this.$.blockly_cut.getXML(),
            row: this.selectedRow,
        };

        req.addEventListener('response', async () => {
            this.$.mutant_creator.saveMutants(this.levelName);
            await this._saveImg();
            this.$.loading.hide();
        });

        req.addEventListener('static.error', e => {
            this.showErrorToast("Could not save level");
            this.$.loading.hide();
        });

        this.$.loading.show();

        let genRequest = req.generateRequest();
        req.completes = genRequest.completes;

        return req;
    }

    _computeBlockSize() {
        if(window.matchMedia("(max-width: 600px)").matches) {
            return 20;
        } else {
            return 40;
        }
    }

    /** computes the heights of critter-board**/
    _computeBoardHeight(height, size) {
        return height * size;
    }

    /** handels the hover event and displays the coordinates **/
    _handleHoverField(event) {
        let detail = event.detail;
        this._hoverX = detail.x + 1;
        this._hoverY = this._globalData.width - detail.y;
    }

    _onTabChanged(event) {
        let detail = event.detail;
        this.shadowRoot.querySelector('.tab-' + detail.old).style.display = "none";
        this.shadowRoot.querySelector('.tab-' + detail.new).style.display = "block";
        if (detail.old === 0) {
            this.shadowRoot.querySelector('#coordinate_container').style.display = "none";
        } else if (detail.new === 0) {
            this.shadowRoot.querySelector('#coordinate_container').style.display = "block";
        }
        if(detail.new === 1) {
            let code = this.$.blockly_cut.getXML();
            this.$.blockly_cut._toolboxChanged();
            this.$.blockly_cut.setCode(code);
        }
        if(detail.new === 2) {
            let code = this.$.blockly_test.getXML();
            this.$.blockly_test._toolboxChanged();
            this.$.blockly_test.setCode(code);
        }
        if(detail.new === 3) {
            this._globalData.xml = this.$.blockly_cut.getXML();
        }
    }

    _handleResize(event) {
        if((window.matchMedia("(max-width: 600px)").matches)) {
            if(this.$.gameboard.clientWidth > 600) {
                window.location.href = window.location.href;
            }
        }
        if((window.matchMedia("(min-width: 601px)").matches)) {
            if(this.$.gameboard.clientWidth < 600) {
                window.location.href = window.location.href;
            }
        }
    }

}

window.customElements.define(CritterLevelCreator.is, CritterLevelCreator);
