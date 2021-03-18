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
import {afterNextRender} from '/lib/@polymer/polymer/lib/utils/render-status.js';
import {I18n} from '../critter-i18n/critter-i18n-mixin.js';
import {Toaster} from '../critter-toaster/critter-toaster-mixin.js';

import '/lib/@polymer/iron-ajax/iron-ajax.js';
import '../critter-data-store/critter-data-store.js';
import '../critter-button/critter-button.js';
import '../critter-dialog/critter-dialog.js';
import '../critter-selector/critter-selector.js';
import '../critter-loading/critter-loading.js';

import '/lib/@polymer/iron-ajax/iron-ajax.js';


/*
# critter-level-manager

A simple table listing all levels and allowing basic management.

## Example
```html
<critter-level-manager>text</critter-level-manager>
```

@demo
*/

class CritterLevelManager extends Toaster(I18n(PolymerElement)) {

    static get template() {
        return html`
            <style>
            
            :host {
                width: 100%;
                height: 0;
            }
            
            .table{
                display: table;
                width: 100%;
                border-collapse: collapse;
                margin: auto;
            }
            
            #editLevel {
                text-decoration: none;
            }
            
            #editLevel,
            #deleteLevel,
            #levelSelector {
                float: right;
                margin: 1%;
            }
            
            #addRow,
            #editRow,
            #deleteRow,
            #rowSelector {
                float: left;
                margin: 1%;
            }

            #delete_dialog {
                font-size: 1.2em;
                color: #212529;
            }
            
            .deleteData {
                font-weight: bold;
                color: #ffa600;
            }
            
            #breakDeleteLevelButton,
            #deleteLevelButton,
            #breakDeleteRowButton,
            #deleteRowButton,
            #breakUpdateRowButton,
            #updateRowButton,
            #breakAddRowButton,
            #addRowButton {
                float: left;
                margin: 2%;
            }
            
            .tableRow{
                display: table-row;
                font-size: 1.3em;
                padding: 2% !important;
            }
            
            .cell {
                display: table-cell;
                text-align: center;
            }
            
            .heading_row{
                border-bottom: solid 3px #FFA600;
                font-size: 1.5em;
            }
         
            </style>
            <critter-data-store></critter-data-store>
            <critter-loading id="loading"></critter-loading>
            
            <div id="rowEdit">
                <critter-selector values="[[rows]]" selected-value="{{selectedRow}}" id="rowSelector"></critter-selector>
                <critter-button id="deleteRow">{{__("delete")}}</critter-button>
                <critter-button id="editRow">{{__("edit")}}</critter-button>
                <critter-button id="addRow">{{__("add")}}</critter-button>
            </div>
            <div id="levelEdit">
                <a href="level-generator?update=[[selectedLevel]]" id="level_button">
                    <critter-button id="editLevel">{{__("edit")}}</critter-button>
                </a>
                <critter-button id="deleteLevel">{{__("delete")}}</critter-button>
                <critter-selector values="[[levels]]" selected-value="{{selectedLevel}}" id="levelSelector"></critter-selector>
            </div>
            
            <div class="table">
                <div class="tableRow heading_row">
                    <div class="cell heading_cell">{{__("level_name")}}</div>
                    <div class="cell heading_cell">{{__("category")}}</div>
                    <div class="cell heading_cell">{{__("row_position")}}</div>
                </div>
                <template is="dom-repeat" items="{{levels}}">
                    <div class="tableRow">
                        <div class="cell">{{item.name}}</div>
                        <div class="cell">{{item.row}}</div>
                        <div class="cell">{{item.position}}</div>
                    </div>
                </template>
            </div>

            <critter-dialog id="deleteLevelDialog">
                <critter-form id="deleteLevelForm" method="POST" target="" >
                    <p>
                        {{__("delete_level")}}
                        <br>
                        {{__("warning")}}
                    </p>
                    <p class="deleteData">{{selectedLevel}}</p>
                    <critter-button id="breakDeleteLevelButton">[[__("break")]]</critter-button>
                    <critter-button id="deleteLevelButton">[[__("delete")]]</critter-button>
                </critter-form>
            </critter-dialog>

            <critter-dialog id="deleteRowDialog">
                <critter-form id="deleteRowForm" method="POST" target="" >
                    <p>
                        {{__("delete_row")}}
                        <br>
                        {{__("warning")}}
                    </p>
                    <p class="deleteData">{{selectedRowName}}</p>
                    <p>{{__("levels_lost")}}</p>
                    <p class="deleteData">{{rowLevels}}</p>
                    <critter-button id="breakDeleteRowButton">[[__("break")]]</critter-button>
                    <critter-button id="deleteRowButton">[[__("delete")]]</critter-button>
                </critter-form>
            </critter-dialog>

            <critter-dialog id="updateRowDialog">
                <critter-form id="updateRowForm" method="POST" target="" >
                    <p>
                        {{__("update_row")}}
                        <br>
                        {{__("add_translation")}}
                    </p>
                    <p>
                        <critter-input id="rowName" label="Name: " value="{{rowName}}"></critter-input>
                    </p>
                    <critter-button id="breakUpdateRowButton">[[__("break")]]</critter-button>
                    <critter-button id="updateRowButton">[[__("update")]]</critter-button>
                </critter-form>
            </critter-dialog>

            <critter-dialog id="addRowDialog">
                <critter-form id="addRowForm" method="POST" target="" >
                    <p>
                        {{__("add_row")}}
                        <br>
                        {{__("add_translation")}}
                    </p>
                    <p>
                        <critter-input id="rowName" label="Name: " value="{{rowName}}"></critter-input>
                    </p>
                    <critter-button id="breakAddRowButton">[[__("break")]]</critter-button>
                    <critter-button id="addRowButton">[[__("update")]]</critter-button>
                </critter-form>
            </critter-dialog>
        `;
    }

    static get is() {
        return 'critter-level-manager';
    }

    static get properties() {
        return {
            levels: {
                type: Array,
                value: []
            },

            rows: {
                type: Array,
                value: []
            },

            rowPositions: {
              type: Array,
              value: []
            },

            selectedLevel: {
                type: String,
                value: ''
            },

            selectedRow: {
                type: String,
                value: ''
            },

            selectedRowName: {
                type: String,
                value: ''
            },

            selectedPosition: {
                type: String,
                value: ''
            },

            rowLevels: {
                type: String,
                value: ''
            },

            deleteLevels: {
                type: Array,
                value: []
            },

            rowName: {
                type: String,
                value: ''
            },

            highestPosition: {
                type: Number,
                value: -1
            }
        }
    }

    /**
     * Loads the level and row data and adds the necessary event listeners to the buttons.
     */
    connectedCallback() {
        super.connectedCallback();

        this.getLevelData();

        afterNextRender(this, function () {
            this.$.deleteLevel.addEventListener("click", this.openDeleteLevelDialog.bind(this));
            this.$.breakDeleteLevelButton.addEventListener("click", this.closeDeleteLevelDialog.bind(this));
            this.$.deleteLevelButton.addEventListener("click", this._deleteLevel.bind(this));
            this.$.deleteRow.addEventListener("click", this.openDeleteRowDialog.bind(this));
            this.$.breakDeleteRowButton.addEventListener("click", this.closeDeleteRowDialog.bind(this));
            this.$.deleteRowButton.addEventListener("click", this._deleteRow.bind(this));
            this.$.editRow.addEventListener("click", this.openUpdateRowDialog.bind(this));
            this.$.breakUpdateRowButton.addEventListener("click", this.closeUpdateRowDialog.bind(this));
            this.$.updateRowButton.addEventListener("click", this._updateRow.bind(this));
            this.$.addRow.addEventListener("click", this.openAddRowDialog.bind(this));
            this.$.breakAddRowButton.addEventListener("click", this.closeAddRowDialog.bind(this));
            this.$.addRowButton.addEventListener("click", this._addRow.bind(this));
        });
    }

    /**
     * Retrieves the level and row data from the database to fill the table and selectors with the current values.
     */
    getLevelData() {
        let req = this._generateRequest("/level/levels", "", "get");

        req.addEventListener('response', e => {
            e.detail.__data.response.forEach((rowData) => {
                rowData.levels.forEach((level) => {
                    this.push('levels', {name: level.name, value: level.name, row: rowData.name,
                        position: rowData.position});
                })
                this.push('rows', {name: rowData.name, value: rowData.id, position: rowData.position});
                this.push('rowPositions', {name: rowData.position, value: rowData.id});

                if (rowData.position > this.highestPosition) {
                    this.highestPosition = rowData.position;
                }
            })
        });

        let genRequest = req.generateRequest();
        req.completes = genRequest.completes;
    }

    /**
     * Renders the popup dialog to confirm the deletion of the chosen level.
     */
    openDeleteLevelDialog() {
        this.$.deleteLevelDialog.open();
    }

    /**
     * Closes the popup dialog and aborts the level deletion process.
     */
    closeDeleteLevelDialog() {
        this.$.deleteLevelDialog.close();
    }

    /**
     * Renders the popup dialog to confirm the deletion of the chosen row and computes the levels that will be deleted
     * alongside the row upon deletion.
     */
    openDeleteRowDialog() {
        let index = this.rows.findIndex(({value}) => value === this.selectedRow);
        this.selectedRowName = this.rows[index].name;
        for (let i = 0; i < this.levels.length; i++) {
            if (this.levels[i].row === this.selectedRowName) {
                if (this.rowLevels) {
                    this.rowLevels += ", " + this.levels[i].name;
                    this.push('deleteLevels', this.levels[i].name);
                } else {
                    this.rowLevels = this.levels[i].name;
                    this.push('deleteLevels', this.levels[i].name);
                }
            }
        }
        this.$.deleteRowDialog.open();
    }

    /**
     * Closes the popup dialog, aborts the row deletion process and resets the level data.
     */
    closeDeleteRowDialog() {
        this.rowLevels = "";
        this.deleteLevels = [];
        this.$.deleteRowDialog.close();
    }

    /**
     * Renders the popup dialog to change the name of the chosen row.
     */
    openUpdateRowDialog() {
        let index = this.rows.findIndex(({value}) => value === this.selectedRow);
        this.rowName = this.rows[index].name;
        this.selectedPosition = this.selectedRow;
        this.$.updateRowDialog.open();
    }

    /**
     * Closes the popup dialog and aborts the process of changing the row name.
     */
    closeUpdateRowDialog() {
        this.rowName = "";
        this.selectedPosition = "";
        this.$.updateRowDialog.close();
    }

    /**
     * Renders the popup dialog to add a new row.
     */
    openAddRowDialog() {
        this.$.addRowDialog.open();
    }

    /**
     * Closes the popup dialog and aborts the process of adding a row.
     */
    closeAddRowDialog() {
        this.rowName = "";
        this.$.addRowDialog.close();
    }

    /**
     * Deletes the currently selected level from the database along with all its mutants and results achieved for that
     * level.
     * @returns {HTMLElement}
     * @private
     */
    _deleteLevel() {
        let req = this._generateRequest("/generator/level/delete", this.selectedLevel, "post");

        req.addEventListener('error', e => {
            this.showErrorToast("level_not_deleted");
            this.$.loading.hide();
        });

        this.$.loading.show();
        let genRequest = req.generateRequest();
        req.completes = genRequest.completes;
        this.$.deleteLevelDialog.close();
        let index = this.levels.findIndex(({name}) => name === this.selectedLevel);
        this.splice('levels', index, 1);

        this.$.loading.hide();
        this.showSuccessToast("level_deleted");

        return req;
    }

    /**
     * Deletes the currently selected row along with all its levels.
     * @returns {HTMLElement}
     * @private
     */
    _deleteRow() {
        let index = this.rows.findIndex(({value}) => value === this.selectedRow);
        let data = {id: this.rows[index].value, name: this.rows[index].name};

        let req = this._generateRequest("/generator/row/delete", data, "post");

        req.addEventListener('error', e => {
            this.showErrorToast("row_not_deleted");
            this.$.loading.hide();
        });

        this.$.loading.show();
        let genRequest = req.generateRequest();
        req.completes = genRequest.completes;

        if (this.rows[index].position === this.highestPosition) {
            this.splice('rows', index, 1);
            this.highestPosition = -1;
            for (let i = 0; i < this.rows.length; i++) {
                if (this.rows[i].position > this.highestPosition) {
                    this.highestPosition = this.rows[i].position;
                }
            }
        } else {
            this.splice('rows', index, 1);
        }

        for (let i = 0; i < this.deleteLevels.length; i++) {
            let index = this.levels.findIndex(({name}) => name === this.deleteLevels[i]);
            this.splice('levels', index, 1);
        }

        this.closeDeleteRowDialog();
        this.$.loading.hide();
        this.showSuccessToast("row_deleted");

        return req;
    }

    /**
     * Updates the name of the selected row to the input value if it is a valid name.
     * @private
     */
    _updateRow() {
        if (!this._validateRowName(this.rowName)) {
            return;
        }

        let data = {id: this.selectedRow, name: this.rowName};
        let req = this._generateRequest("/generator/row/update", data, "post");

        req.addEventListener('error', e => {
            this.showErrorToast("row_not_updated");
            this.$.loading.hide();
        });

        this.$.loading.show();
        let genRequest = req.generateRequest();
        req.completes = genRequest.completes;

        let index = this.rows.findIndex(({value}) => value === this.selectedRow);
        let oldName = this.rows[index].name;
        this.rows[index].name = this.rowName;

        for (let i = 0; i < this.levels.length; i++) {
            if (this.levels[i].row === oldName) {
                this.set('levels.' + i + '.row', this.rowName);
                this.notifyPath('levels.' + i + '.row');
            }
        }

        this.closeUpdateRowDialog();
        this.$.loading.hide();
        this.showSuccessToast("row_updated");

        return req;
    }

    /**
     * Inserts a new row with the entered name into the database if the name is valid.
     * @private
     */
    _addRow() {
        if (!this._validateRowName(this.rowName)) {
            return;
        }

        let data = {name: this.rowName, position: this.highestPosition + 1};
        let req = this._generateRequest("/generator/row/add", data, "post");

        req.addEventListener('error', e => {
            this.showErrorToast("row_not_added");
            this.$.loading.hide();
        });

        req.addEventListener('response', e => {
            let row = e.detail.__data.response;
            this.push('rows', {name: row.name, value: row.id, position: row.position});
            this.push('rowPositions', {name: row.position, value: row.id});
            this.notifyPath('rows');
            this.notifyPath('rowPositions');
            this.highestPosition = row.position;
            this.$.loading.hide();
            this.showSuccessToast("row_added");
            this.closeAddRowDialog();
        });

        this.$.loading.show();
        let genRequest = req.generateRequest();
        req.completes = genRequest.completes;
    }

    /**
     * Checks, whether the given row name is an empty string or already exists.
     * @param rowName The name to validate.
     * @returns {boolean} True iff the name is valid.
     * @private
     */
    _validateRowName(rowName) {
        rowName.trim();
        if (rowName === "") {
            this.showErrorToast("empty_field");
            return false;
        }
        let index = this.rows.findIndex(({name}) => name === rowName);
        if (index >= 0) {
            this.showErrorToast("name_exists");
            return false;
        }
        return true;
    }

    /**
     * Generates a post or get request with the given url and the given data to be submitted.
     * @param url The url of the request.
     * @param data The data to be transmitted.
     * @param method The method to use (post or get).
     * @returns {HTMLElement} The request to be sent to the database.
     * @private
     */
    _generateRequest(url, data, method) {
        let req = document.createElement('iron-ajax');
        req.url = url;
        req.method = method;
        req.handleAs = 'json';
        req.contentType = 'application/json';
        req.bubbles = true;
        req.rejectWithRequest = true;
        req.body = data;

        return req;
    }

    /**
     * Renders a popup displaying the given error message.
     * @param msg The message to be displayed.
     */
    showErrorToast(msg) {
        let toaster = document.createElement("critter-toaster");
        toaster.type = "static.error";
        toaster.msg = this.__(msg);

        this.shadowRoot.append(toaster);
        toaster.show(this._toasterTime);
    }

    /**
     * Renders a popup displaying the given success message.
     * @param msg The message to be displayed.
     */
    showSuccessToast(msg) {
        let toaster = document.createElement("critter-toaster");
        toaster.type = "success";
        toaster.msg = this.__(msg);

        this.shadowRoot.append(toaster);
        toaster.show(this._toasterTime);
    }
}

window.customElements.define(CritterLevelManager.is, CritterLevelManager);
