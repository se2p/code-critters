/*-
 * #%L
 * Code Critters
 * %%
 * Copyright (C) 2020 Laura Caspari
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
import {I18n} from '../critter-i18n/critter-i18n-mixin.js';

import '../critter-form/critter-form.js';
import '../critter-button/critter-button.js';
import '../critter-input/critter-input.js';





/*
# critter-forgot-password

The first step to reset the password.

## Example
```html
<critter-forgot-password></critter-forgot-password>
```

@demo
*/

class CritterForgotPassword extends I18n(PolymerElement) {
    static get template() {
        return html`
            <style>
                .controls critter-button{
                    margin: auto;
                }
            </style>
            
            <critter-form id="form" method="POST" target="[[target]]" >
                <critter-input label="username" name="username"></critter-input><br>
                <div class="controls" slot="controls">
                    <critter-button submit>[[__("forgot_password")]]</critter-button>
                </div>
            </critter-form>
        `;
    }

    static get is() {
        return 'critter-forgot-password';
    }

    static get properties() {
        return {
            target: {
                type: String,
                value: "/users/forgot"
            },

            username: {
                type: String,
                value: null
            }
        }
    }

    connectedCallback() {
        super.connectedCallback();

        this._globalData = window.Core.CritterLevelData;

        afterNextRender(this, function () {
            this._globalData.addEventListener("_userChanged", this._userChanged.bind(this));
            this.$.form.onSuccess = this._onSuccess;
            this.$.form.onError = this._onError;
        });
    }

    _userChanged(){
        if(this._globalData.user) {
            this.username = this._globalData.user.username;
        }
    }

    _onSuccess() {
        this.showSuccessToast("reset_password");
    }

    _onError() {
        this.showErrorToast("submit_error")
    }

}

window.customElements.define(CritterForgotPassword.is, CritterForgotPassword);
