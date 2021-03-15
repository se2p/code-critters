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
            
            #edit,
            #delete {
                float: right;
                margin: 2%;
            }
            
            #levelSelector {
                float: right;
            }

            #delete_dialog {
                font-size: 1.2em;
                color: #212529;
            }
            
            #levelDelete {
                font-weight: bold;
                color: #ffa600;
            }
            
            #breakDeleteButton,
            #deleteButton {
                float: left;
                margin: 2%;
            }
            
            .row{
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
            
            .space{
                height: 20px;
            }
         
            </style>
            <critter-data-store></critter-data-store>
            <critter-loading id="loading"></critter-loading>
            
            <div>
                <a href="level-generator?update=[[selectedLevel]]" id="level_button">
                    <critter-button class="edit" id="edit">{{__("edit")}}</critter-button>
                </a>
                <critter-button class="delete" id="delete">{{__("delete")}}</critter-button>
                <critter-selector values="[[levels]]" selected-value="{{selectedLevel}}" id="levelSelector"></critter-selector>
            </div>
            
            <div class="table">
                <div class="row heading_row">
                    <div class="cell heading_cell">{{__("level_name")}}</div>
                    <div class="cell heading_cell">{{__("category")}}</div>
                    <div class="cell heading_cell">{{__("edit")}}</div>
                </div>
                <template is="dom-repeat" items="{{levels}}">
                    <div class="row">
                        <div class="cell">{{item.name}}</div>
                        <div class="cell">{{item.row}}</div>
                        <div class="cell">
                            Something
                        </div>
                    </div>
                </template>
            </div>

            <critter-dialog id="delete_dialog">
                <critter-form id="delete_form" method="POST" target="" >
                    <p>
                        {{__("delete_level")}}
                        <br>
                        {{__("warning")}}
                    </p>
                    <p id="levelDelete">{{selectedLevel}}</p>
                    <critter-button id="breakDeleteButton">[[__("break")]]</critter-button>
                    <critter-button id="deleteButton">[[__("delete")]]</critter-button>
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

            selectedLevel: {
                type: String
            },

            showDelete: {
                type: Boolean,
                value: false
            },

            showEdit: {
                type: Boolean,
                value: false
            }
        }
    }

    connectedCallback() {
        super.connectedCallback();

        this.getLevelData();
        this._globalData = window.Core.CritterLevelData;

        afterNextRender(this, function () {
            this.$.edit.addEventListener("click", (event) => this._editLevel(event));
            this.$.delete.addEventListener("click", this.openDeleteDialog.bind(this));
            this.$.breakDeleteButton.addEventListener("click", this.closeDeleteDialog.bind(this));
            this.$.deleteButton.addEventListener("click", this._deleteLevel.bind(this));
        });
    }

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
                    this.push('levels', {name: level.name, value: level.name, row: rowData.name});
                })
            })
        });

        let genRequest = req.generateRequest();
        req.completes = genRequest.completes;
    }

    openDeleteDialog() {
        this.$.delete_dialog.open();
    }

    closeDeleteDialog() {
        this.$.delete_dialog.close();
    }

    _deleteLevel() {
        let req = document.createElement('iron-ajax');
        req.url = "/generator/level/delete";
        req.method = "post";
        req.handleAs = 'json';
        req.contentType = 'application/json';
        req.bubbles = true;
        req.rejectWithRequest = true;
        req.body = this.selectedLevel;

        req.addEventListener('error', e => {
            this.showErrorToast("Could not delete level");
            this.$.loading.hide();
        });

        this.$.loading.show();
        let genRequest = req.generateRequest();
        req.completes = genRequest.completes;
        this.$.delete_dialog.close();
        let index = this.levels.findIndex(({name}) => name === this.selectedLevel);
        this.splice('levels', index, 1);

        this.$.loading.hide();

        return req;
    }

    _editLevel(event) {
        console.log(event.detail);
        console.log(this.levels.find(({name}) => name === this.selectedLevel));
        console.log(this.levels.findIndex(({name}) => name === this.selectedLevel));
    }

    showErrorToast(msg) {
        let toaster = document.createElement("critter-toaster");
        toaster.type = "static.error";
        toaster.msg = this.__(msg);

        this.shadowRoot.append(toaster);
        toaster.show(this._toasterTime);
    }

    showSuccessToast(msg) {
        let toaster = document.createElement("critter-toaster");
        toaster.type = "success";
        toaster.msg = this.__(msg);

        this.shadowRoot.append(toaster);
        toaster.show(this._toasterTime);
    }
}

window.customElements.define(CritterLevelManager.is, CritterLevelManager);
