import {html, PolymerElement} from '/lib/@polymer/polymer/polymer-element.js';
import { afterNextRender } from '/lib/@polymer/polymer/lib/utils/render-status.js';

import '/lib/@polymer/polymer/lib/elements/dom-repeat.js';
/*
# critter-insert

A Simple Button

## Example
```html
<critter-selector values="[Array of options]" selected-value=""></critter-selector>
```

@demo
*/

class CritterSelector extends PolymerElement {
    static get template() {
        return html`
            <style>
                select{
                    margin: 20px 0;
                    padding: 5px 10px;
                    border: 1px solid #039be5;
                    font-size: 1.2em;
                }
            </style>
               
            <select id="selector" name="selector">
                  <template is="dom-repeat" items="{{values}}">
                    <option value="{{item.value}}">{{item.name}}</option>
                  </template>
            </select>
        `;
    }

    static get is() {
        return 'critter-selector';
    }

    static get properties() {
        return {
            values: {
                type: []
            },

            selectedValue: {
                type: String,
                value: "",
                notify: true
            }
        }
    }

    static get observers() {
        return [
            '_valuesChanged(values, values.splices)'
        ]
    }

    connectedCallback() {
        super.connectedCallback();

        afterNextRender(this, function () {
            this.$.selector.addEventListener("change", (event) => this._valueChanged(event))
        });
    }

    _valuesChanged() {
        if(!this.values || this.values.length === 0){
            return;
        }
        if(typeof this.values[0] === "string"){
            let temp = [];
            this.values.forEach((value) => {
                temp.push({value: value, name: value});
            });

            this.values = temp;
        }

        this.selectedValue = this.values[0].value;
    }

    _valueChanged(event) {
        this.selectedValue = this.$.selector.value;
    }
}

window.customElements.define(CritterSelector.is, CritterSelector);
