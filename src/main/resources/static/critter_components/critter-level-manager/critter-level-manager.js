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
            #deleteRowButton {
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
                    <div class="cell heading_cell">{{__("score")}}</div>
                </div>
                <template is="dom-repeat" items="{{levels}}">
                    <div class="tableRow">
                        <div class="cell">{{item.name}}</div>
                        <div class="cell">{{item.row}}</div>
                        <div class="cell">{{item.score}}</div>
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
                    <critter-input id="rowName" label="Name: " value="{{rowName}}"></critter-input>
                    <critter-button id="breakUpdateRowButton">[[__("break")]]</critter-button>
                    <critter-button id="updateRowButton">[[__("update")]]</critter-button>
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
        });
    }

    /**
     * Retrieves the level and row data from the database to fill the table and selectors with the current values.
     */
    getLevelData() {
        let req = document.createElement('iron-ajax');
        req.url = "/level/levels";
        req.method = "GET";
        req.handleAs = 'json';
        req.contentType = 'application/json';
        req.bubbles = true;
        req.rejectWithRequest = true;

        req.addEventListener('response', e => {
            e.detail.__data.response.forEach((rowData) => {
                rowData.levels.forEach((level) => {
                    this.push('levels', {name: level.name, value: level.name, row: rowData.name, score: level.score});
                })
                this.push('rows', {name: rowData.name, value: rowData.id});
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
     * Deletes the currently selected level from the database along with all its mutants and results achieved for that
     * level.
     * @returns {HTMLElement}
     * @private
     */
    _deleteLevel() {
        let req = this._generateRequest("/generator/level/delete", this.selectedLevel);

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

        let req = this._generateRequest("/generator/row/delete", data);

        req.addEventListener('error', e => {
            this.showErrorToast("row_not_deleted");
            this.$.loading.hide();
        });

        this.$.loading.show();
        let genRequest = req.generateRequest();
        req.completes = genRequest.completes;
        this.splice('rows', index, 1);

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
     * Generates a post request with the given url and the given data to be submitted.
     * @param url The url of the request.
     * @param data The data to be transmitted.
     * @returns {HTMLElement} The request to be sent to the database.
     * @private
     */
    _generateRequest(url, data) {
        let req = document.createElement('iron-ajax');
        req.url = url;
        req.method = "post";
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
