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
import {afterNextRender} from '/lib/@polymer/polymer/lib/utils/render-status.js';
import {I18n} from '../critter-i18n/critter-i18n-mixin.js';
import {Toaster} from '../critter-toaster/critter-toaster-mixin.js';


import '/lib/@polymer/iron-ajax/iron-ajax.js';



/*
# critter-insert

A Simple Button

## Example
```html
<critter-insert>text</critter-insert>
```

@demo
*/

class CritterForm extends Toaster(I18n(PolymerElement)) {
    static get template() {
        return html`
            <style>
            
            :host{
                display: block;
            }
            
            #input_slot {
                display: table;
                width: 100%;
                text-align: center;
            }
            
            #checkboxes {
                display: table;
                width: 100%;
                text-align: center;
            }
            
           ::slotted(critter-input) {
              margin: auto;
            }             
            </style>
            <slot id="input_slot"></slot> 
            <slot name="checkboxes" id="checkboxes"></slot>          
            <slot name="controls" id="controls"></slot>
        `;
    }

    static get is() {
        return 'critter-form';
    }

    static get properties() {
        return {
            target: {
                type: String
            },
            method: {
                type: String,
                value: "GET"
            },

            onSuccess: {
                type: Function
            },

            onError: {
                type: Function
            },

            preSubmit: {
                type: Function
            }
        }
    }

    connectedCallback() {
        super.connectedCallback();

        afterNextRender(this, function () {
            this.addEventListener("_submit", this._submitData.bind(this));
            this.addEventListener("keypress", ((e) => { this._onKeyPress(e)}).bind(this));
        });
    }

    _onKeyPress(e) {
        let key = e.which || e.keyCode;
        if (key === 13) { // 13 is enter
            this._submitData();
        }
    }

    async _submitData() {
        if(!await this._checkCheckboxes()){
            this.showErrorToast("check_checkboxes");
            return;
        }
        let data = await this.serialize();

        if(this.preSubmit) {
            this.preSubmit();
        }

        let req = document.createElement('iron-ajax');
        req.url = this.target;
        req.method = this.method;
        req.handleAs = 'json';
        req.contentType = 'application/json';
        req.bubbles = true;
        req.rejectWithRequest = true;
        if (this.method.toLowerCase() === "get") {
            req.params = data;
        } else {
            req.body = data;
        }

        req.addEventListener('response', (e) => this.onSuccess(e));
        req.addEventListener('error', (e) => this.onError(e.detail.error.request.__data.response));

        let genRequest = req.generateRequest();
        req.completes = genRequest.completes;

        return req;
    }

    async _checkCheckboxes() {
        let flag = true;
        await this.$.checkboxes.assignedNodes().forEach(async node => {
            await node.querySelectorAll('critter-checkbox').forEach((innernode) => {
                if (!innernode.checked) {
                    innernode.invalid = true;
                    flag = false;
                } else {
                    innernode.invalid = false;
                }
            });
        });
        return flag;
    }

    async serialize() {
        let data = {};
        await this.$.input_slot.assignedNodes().forEach(node => {
            if (node.serialize) {
                data = Object.assign(data, node.serialize());
            }
        });

        await this.$.input_slot.assignedNodes().forEach(node => {
            if (node.match) {
                if (data && (node.value !== data[node.match])) {
                    data = null;
                }
            }
        });
        return data;
    }


}

window.customElements.define(CritterForm.is, CritterForm);
