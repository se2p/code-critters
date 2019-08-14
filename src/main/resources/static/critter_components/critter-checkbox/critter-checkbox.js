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
