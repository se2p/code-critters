import {html, PolymerElement} from '/lib/@polymer/polymer/polymer-element.js';
import { afterNextRender } from '/lib/@polymer/polymer/lib/utils/render-status.js';

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

class CritterForm extends PolymerElement {
    static get template() {
        return html`
            <style>
            slot {
                display: table;
            }
            </style>
            
              <slot id="form_fields"></slot>
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

            callback: {
                type: Function
                }
            }
    }

    connectedCallback() {
        super.connectedCallback();

        afterNextRender(this, function () {
            this.addEventListener("_submit", this._submitData.bind(this));
        });
    }

    async _submitData(){
        let data = await this.serialize();

        let req = document.createElement('iron-ajax');
        req.url = this.target;
        req.method = this.method;
        req.handleAs = 'json';
        req.contentType = 'application/json';
        req.bubbles = true;
        req.rejectWithRequest = true;
        if(this.method.toLowerCase() === "get"){
            req.params = data;
        } else {
            req.body = data;
        }

        req.addEventListener('response', this.callback);

        let genRequest = req.generateRequest();
        req.completes = genRequest.completes;

        return req;
    }

    async serialize() {
        let data = {};
        await this.$.form_fields.assignedNodes().forEach(node => {
            if(node.serialize) {
                data = Object.assign(data, node.serialize());
            }
        });

        await this.$.form_fields.assignedNodes().forEach(node => {
            if(node.match) {
                if(data && (!data[node.match] || node.value !== data[node.match])){
                    data = null;
                }
            }
        });

        return data;
    }


}

window.customElements.define(CritterForm.is, CritterForm);