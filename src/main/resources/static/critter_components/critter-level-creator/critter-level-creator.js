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
import {I18n} from '../critter-i18n/critter-i18n-mixin.js';

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

class CritterLevelCreator extends Toaster(Level(I18n(PolymerElement))) {
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

                /* Positions the coordinate container when the critter-element-selector is on the right-hand side of the gameboard.
                The min- and max-width values are the same as those in the corresponding media query of the critter-element-selector. */
                @media only screen and (max-width: 600px) and (min-width: 441px) {
                    #coordinate_container {
                        left: 300px;
                    }
                }
                
                /* Positions the coordinate container when the critter-element-selector is on the right-hand side of the gameboard.
                The min-width value is the same as the one in the corresponding media query of the critter-element-selector. */
                @media only screen and (min-width: 1001px) {
                    #coordinate_container {
                        left: 670px;
                    }
                }

                [hidden] {
                    display: none !important;
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

                #category,
                #row_button,
                #save_button,
                #update_button,
                #level_button,
                critter-selector {
                    margin-left: 20px;
                    float: left;
                }
                
                #category,
                #row_button,
                #save_button,
                #update_button,
                #level_button {
                    margin-top: 20px;
                }
                
                #level_button {
                    text-decoration: none;
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
                
                #current_row {
                    color: #FFA600;
                }
            </style>
        </custom-style>

        <critter-data-store></critter-data-store>

        <critter-loading id="loading"></critter-loading>
        <critter-tab id="tabs" tabs="{{tabs}}"></critter-tab>
        <div class="tab-0 tab">
            <critter-gameboard id="gameboard" selected-element="{{selectedElement}}" show-grid="false"></critter-gameboard>
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
        <div id="category" hidden$="[[showSaveButton]]">
            [[__("category")]]: <b id="current_row">[[currentRow]]</b>
        </div>
        <div>
            <critter-selector id="rowSelector" values="[[_rows]]" selected-value="{{selectedRow}}"></critter-selector>
            <critter-button id="row_button" hidden="[[showSaveButton]]">[[__("change_row")]]</critter-button>
            <critter-button id="save_button" hidden="[[!showSaveButton]]">[[__("save")]]</critter-button>
            <critter-button id="update_button" hidden="[[showSaveButton]]">[[__("update")]]</critter-button>
            <a href="manage-levels" id="level_button"><critter-button>[[__("show_levels")]]</critter-button></a>
        </div>
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

            showSaveButton: {
                type: Boolean,
                value: true
            },

            showSelector: {
                type: Boolean,
                value: true
            },

            currentRow: {
              type: String,
              value: ''
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
            },

            _updateTest: {
                type: Boolean,
                value: false
            },

            _updateMutants: {
                type: Boolean,
                value: false
            },

            _mutantList: {
                type: Array,
                value: []
            }
        };
    }

    connectedCallback() {
        super.connectedCallback();

        window.Core.GameRoot = this;
        window.Core.Generator = true;
        this._globalData = window.Core.CritterLevelData;

        afterNextRender(this, function () {
            let update = new URL(window.location.href).searchParams.get("update");
            if (!update) {
                this.$.save_button.addEventListener("click", this._saveLevel.bind(this));
                this._initLevel();
            } else {
                this.showSaveButton = false;
                this.levelName = update;
                this._globalData.levelName = update;
                this._updateTest = true;
                this._updateMutants = true;
                this._loadMutants();
                this.$.update_button.addEventListener("click", this._updateLevel.bind(this));
                this.$.row_button.addEventListener("click", this._updateRow.bind(this));
                this.addEventListener("_rowChanged", event => this._rowChange(event));
            }
            this.addEventListener("hoverOver", (event) => this._handleHoverField(event));
            this.$.tabs.addEventListener("tabChanged", (event) => this._onTabChanged(event));
            window.addEventListener("resize", (event) => this._handleResize(event));
            this._initNames();
            this._initRows();
        });
    }

    /**
     * Sets the row category of the level being updated when the level data is loaded.
     * @param event
     * @private
     */
    _rowChange(event) {
        this.$.current_row.innerHTML = this._globalData.row;
        this.currentRow = this._globalData.row;
    }

    /**
     * Changes the row of the level currently being updated to the selected category.
     * @private
     */
    _updateRow() {
        let index = this._rows.findIndex(({value}) => value === this.selectedRow);
        this.$.current_row.innerHTML = this._rows[index].name;
        this.currentRow = this._rows[index].name;
    }

    /**
     * Loads the mutants for the level currently being updated.
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
        req.params = {level: this._globalData.levelName};

        req.addEventListener('response', e => {
            let mutants = e.detail.__data.response;
            for (let i = 0; i < mutants.length; i++) {
                this._critterList[i] = {id: mutants[i].id, code: mutants[i].code, init: mutants[i].init, xml: mutants[i].xml};
            }
        });

        let genRequest = req.generateRequest();
        req.completes = genRequest.completes;
        return req;
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
    _validateLevelName() {
        this.$.name_input.valid = !this._names.includes(this.levelName);
    }

    /**
     * Checks, if all the data needed for the level is present.
     * @private
     */
    _validateLevel() {
        if (this.levelName === '') {
            this.showErrorToast("Please enter a valid name");
            return false;
        }

        if (!this.$.blockly_cut.getJavaScript()) {
            this.showErrorToast("Please create some CUT");
            return false;
        }

        let code = this.$.blockly_cut.getJavaScript();

        let regExpInit = /\/\/INIT_START\r?\n((?!\/\/INIT_START)(?!\/\/CUT_START)[^])*\r?\n\/\/INIT_END/g;
        let matchesInit = code.match(regExpInit) || [];

        let regExpCUT =  /\/\/CUT_START\r?\n((?!\/\/INIT_START)(?!\/\/CUT_START)[^])*\r?\n\/\/CUT_END/g;
        let matchesCUT = code.match(regExpCUT)  || [];

        if(matchesCUT.length === 0 && matchesInit.length === 0){
            this.showErrorToast("At least one Initialization or one CUT is required");
            return false;
        }

        if(matchesCUT.length > 1){
            this.showErrorToast("Too many CUTs");
            return false;
        }

        if(matchesInit.length > 1){
            this.showErrorToast("Too many Initializations");
            return false;
        }


        if (!this._globalData.tower || this._globalData.tower.x === -1) {
            this.showErrorToast("Please set the tower");
            return false;
        }

        if (!this._globalData.spawn || this._globalData.spawn.x === -1) {
            this.showErrorToast("Please set the spawn");
            return false;
        }
        if (!this.existPath(this._globalData.spawn)) {
            this.showErrorToast("There is no path to the tower");
            return false;
        }

        return true;
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
        if (!this._validateLevel()) {
            return;
        } else if (this._validateLevelName()) {
            this.showErrorToast("The level name already exists");
            return;
        }

        let code = this.$.blockly_cut.getJavaScript();

        let regExpInit = /\/\/INIT_START\r?\n((?!\/\/INIT_START)(?!\/\/CUT_START)[^])*\r?\n\/\/INIT_END/g;
        let matchesInit = code.match(regExpInit) || [];

        let regExpCUT =  /\/\/CUT_START\r?\n((?!\/\/INIT_START)(?!\/\/CUT_START)[^])*\r?\n\/\/CUT_END/g;
        let matchesCUT = code.match(regExpCUT)  || [];

        let init = matchesInit[0];
        let cut = matchesCUT[0];

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
            numberOfCritters: 15,
            numberOfHumans: 5,
            cut: cut,
            init: init,
            test: this.$.blockly_test.getXML(),
            xml: this.$.blockly_cut.getXML(),
            row: this.selectedRow,
        };

        req.addEventListener('response', async () => {
            try {
                this.$.mutant_creator.saveMutants(this.levelName);
            } catch (Error) {
                this.$.loading.hide();
                return;
            }
            await this._saveImg();
            this.$.loading.hide();
        });

        req.addEventListener('error', e => {
            this.showErrorToast("Could not save level");
            this.$.loading.hide();
        });

        this.$.loading.show();

        let genRequest = req.generateRequest();
        req.completes = genRequest.completes;

        return req;
    }

    /**
     * Updates the level data for the level that is currently being edited.
     */
    _updateLevel() {
        if (!this._validateLevel()) {
            return;
        }

        let code = this.$.blockly_cut.getJavaScript();

        let regExpInit = /\/\/INIT_START\r?\n((?!\/\/INIT_START)(?!\/\/CUT_START)[^])*\r?\n\/\/INIT_END/g;
        let matchesInit = code.match(regExpInit) || [];

        let regExpCUT =  /\/\/CUT_START\r?\n((?!\/\/INIT_START)(?!\/\/CUT_START)[^])*\r?\n\/\/CUT_END/g;
        let matchesCUT = code.match(regExpCUT)  || [];

        let init = matchesInit[0];
        let cut = matchesCUT[0];
        let index = this._rows.findIndex(({name}) => name === this.currentRow);
        let row = this._rows[index].value;
        let test;

        if (this._updateTest) {
            test = this._globalData.test;
        } else {
            test = this.$.blockly_test.getXML();
        }

        let req = document.createElement('iron-ajax');
        req.url = "/generator/level/update";
        req.method = "post";
        req.handleAs = 'json';
        req.contentType = 'application/json';
        req.bubbles = true;
        req.rejectWithRequest = true;
        req.body = {
            id: this._globalData.levelId,
            name: this.levelName,
            level: this._globalData.level,
            tower: this._globalData.tower,
            spawn: this._globalData.spawn,
            numberOfCritters: 15,
            numberOfHumans: 5,
            cut: cut,
            init: init,
            test: test,
            xml: this.$.blockly_cut.getXML(),
            row: row,
        };

        req.addEventListener('response', async () => {
            if (!this._updateMutants) {
                this.$.mutant_creator.updateMutants(this.levelName);
                this.$.mutant_creator.saveMutants(this.levelName);
            }

            await this._saveImg();
            this.$.loading.hide();
        });

        req.addEventListener('error', e => {
            this.showErrorToast("Could not update level");
            this.$.loading.hide();
        });

        this.$.loading.show();

        let genRequest = req.generateRequest();
        req.completes = genRequest.completes;

        return req;
    }

    /**
     * Returns the height of a critter-board-field depending on the screen size.
     * @returns {number} The field's height.
     * @private
     */
    _computeBlockSize() {
        if(window.matchMedia("(max-width: 600px)").matches) {
            return 20;
        } else {
            return 40;
        }
    }

    /**
     * Computes the height of the critter-gameboard given the height and size.
     * @param height The gameboard's height is the number of critter-board-fields along the y-axis.
     * @param size The height of a critter-board-field in pixels.
     * @returns {number} The gameboard's height in pixels.
     * @private
     */
    _computeBoardHeight(height, size) {
        return height * size;
    }

    /**
     * Displays the coordinates when the user hovers over gameboard-fields.
     * @param event The hover event triggering the function.
     * @private
     */
    _handleHoverField(event) {
        let detail = event.detail;
        this._hoverX = detail.x + 1;
        this._hoverY = this._globalData.width - detail.y;
    }

    /**
     * Handles the display of the individual tabs and the coordinate container. Coordinates are only displayed when the
     * current tab is the gameboard.
     * @param event
     * @private
     */
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
            if (this._updateTest) {
                let code = this._globalData.test;
                this._updateTest = false;
                this.$.blockly_test._toolboxChanged();
                this.$.blockly_test.getCenteredCode(code);
            } else {
                let code = this.$.blockly_test.getXML();
                this.$.blockly_test._toolboxChanged();
                this.$.blockly_test.setCode(code);
            }
        }
        if(detail.new === 3) {
            if (this._updateMutants) {
                for (let i = 0; i < this._critterList.length; i++) {
                    this.$.mutant_creator._initializeMutants(i, this._critterList[i]);
                }
                this._updateMutants = false;
            } else {
                this._globalData.xml = this.$.blockly_cut.getXML();
            }
        }
    }

    /**
     * Triggers a page reload to resize the gameboard and adapt it to the current screen size.
     * @param event
     * @private
     */
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
