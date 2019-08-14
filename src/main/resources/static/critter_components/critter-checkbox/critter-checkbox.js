import {html, PolymerElement} from '/lib/@polymer/polymer/polymer-element.js';
import { afterNextRender } from '/lib/@polymer/polymer/lib/utils/render-status.js';

import '/lib/@polymer/iron-icons/iron-icons.js';


/*
# critter-insert

A Simple Button

## Example
```html
<critter-checkbox>lable text</critter-checkbox>
```

@demo
*/

class CritterCheckbox extends PolymerElement {
    static get template() {
        return html`
            <style>
                               
                *{
                    height: 20px;
                }
                        
                #label{
                    cursor: default;
                    margin-left: 15px;
                }
                
                #checkbox{
                    width: 15px;
                    height: 15px;
                    border: solid 1px black;
                }
                
                iron-icon{
                    width: 15px;
                    height: 15px;
                }
                
                .container *{
                    float: left;
                }
            </style>
            <div class="container">
                <div id="checkbox">
                    <iron-icon icon="icons:check" hidden="[[!checked]]"></iron-icon>
                </div>
                <span id="label">
                    <slot></slot>
                </span>
            </div>
        `;
    }

    static get is() {
        return 'critter-checkbox';
    }

    static get properties() {
        return {

            label: {
                type: String
            },

            checked: {
                type: Boolean,
                value: false
            },

            invalid: {
                type: Boolean,
                value: false
            }
        }
    }

    connectedCallback() {
        super.connectedCallback();

        afterNextRender(this, function () {
            this.$.checkbox.addEventListener("click", this._onClick.bind(this));
        });
    }


    _onClick(){
        this.checked = !this.checked;
    }
}

window.customElements.define(CritterCheckbox.is, CritterCheckbox);