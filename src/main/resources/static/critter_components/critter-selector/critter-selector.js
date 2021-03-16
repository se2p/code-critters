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
                select {
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
