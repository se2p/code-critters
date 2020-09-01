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
import {I18n} from '../critter-i18n/critter-i18n-mixin.js';

import '/lib/@polymer/iron-icons/iron-icons.js';

/*
# critter-insert

A Simple Button

## Example
```html
<critter-toaster></critter-toaster>
```

@demo
*/
window.Core = window.Core || {};
window.Core.toasts = window.Core.toasts || [];

class CritterToaster extends I18n(PolymerElement) {
    static get template() {
        return html`
            <style>
    
                #toaster {
                    border: 1px solid grey;
                    position: fixed;
                    top: 50%;
                    left: 50%;
                    margin: auto;
                    -ms-transform: translateX(-50%) translateY(-50%);
                    -webkit-transform: translate(-50%,-50%);
                    transform: translate(-50%,-50%);
                    transition: 500ms;
                    z-index: 9999;
                }
    
                #toaster * {
                    float: left;
                }
    
                iron-icon {
                    height: 30px;
                    width: 30px;
                }
    
                #icon {
                    height: 40px;
                    width: 40px;
                    text-align: center;
                    justify-content: center;
                    align-items: center;
                    display: flex;
                    background-color: white;
                }
    
                #msg {
                    height: 30px;
                    cursor: default;
                    text-align: center;
                    justify-content: center;
                    align-items: center;
                    display: flex;
                    padding: 5px 10px;
                    background-color: ghostwhite;
                }
    
                #info {
                    color: #039BE5
                }
    
                #error {
                    color: #e5424a
                }
    
                #success {
                    color: #7ae561
                }
    
            </style>
            <div id="toaster">
                <div id="icon">
                    <iron-icon id="error" icon="icons:cancel"></iron-icon>
                    <iron-icon id="info" icon="icons:error"></iron-icon>
                    <iron-icon id="success" icon="icons:check-circle"></iron-icon>
                </div>
                <div id="msg">[[__(msg)]]</div>
            </div>
        `;
    }

    static get is() {
        return 'critter-toaster';
    }

    static get properties() {
        return {
            msg: {
                type: String
            },

            type: {
                type: String,
                value: '',
                observer: '_typeChanged'
            },

            _top: {
                type: Number
            }
        }
    }

    _typeChanged() {
        if (this.type === 'static.error') {
            this.$.success.style.display = "none";
            this.$.error.style.display = "block";
            this.$.info.style.display = "none";
        } else if (this.type === 'success') {
            this.$.success.style.display = "block";
            this.$.error.style.display = "none";
            this.$.info.style.display = "none";
        } else {
            this.$.success.style.display = "none";
            this.$.error.style.display = "none";
            this.$.info.style.display = "block";
        }
    }

    show(timeout) {
        setTimeout(() => {
            var index = window.Core.toasts.indexOf(this);
            if (index > -1) {
                window.Core.toasts.splice(index, 1);
            }
            this.$.toaster.style.opacity = "0";
            setTimeout(() => {
                this.$.toaster.style.display = "none";
                this.getRootNode().removeChild(this);
            }, 1000);
        }, timeout);
    }
}

window.customElements.define(CritterToaster.is, CritterToaster);
