import {html, PolymerElement} from '/lib/@polymer/polymer/polymer-element.js';
import { afterNextRender } from '/lib/@polymer/polymer/lib/utils/render-status.js';


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
            </select>
        `;
    }

    static get is() {
        return 'critter-selector';
    }

    static get properties() {
        return {
            values: {
                type: [],
                observer: "_valuesChanged"
            },

            selectedValue: {
                type: String,
                value: "",
                notify: true
            }
        }
    }

    connectedCallback() {
        super.connectedCallback();

        afterNextRender(this, function () {
            this.$.selector.addEventListener("change", (event) => this._valueChanged(event))
        });
    }

    _valuesChanged() {
        this.$.selector.innerHtml = "";
        this.selectedValue = this.values[0];
        this.values.forEach((value) => {
            let opt = document.createElement("option");
            opt.value = value;
            opt.innerHTML = value;
            this.$.selector.append(opt);
        })
    }

    _valueChanged(event) {
        this.selectedValue = this.$.selector.value;
    }
}

window.customElements.define(CritterSelector.is, CritterSelector);
