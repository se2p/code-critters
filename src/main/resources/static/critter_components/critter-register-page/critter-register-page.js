/*-
 * #%L
 * Code Critters
 * %%
 * Copyright (C) 2019 - 2024 Code Critter contributors
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
import {critterStyle} from '/style/critter-botstrap.js';


import {I18n} from '../critter-i18n/critter-i18n-mixin.js';
import {Toaster} from '../critter-toaster/critter-toaster-mixin.js';
import '../critter-data-store/critter-data-store.js';

import '../critter-form/critter-form.js';
import '../critter-button/critter-button.js';
import '../critter-input/critter-input.js';
import '../critter-checkbox/critter-checkbox.js';


class CritterRegisterPage extends Toaster(I18n(PolymerElement)) {
    static get template() {
        return html`
        <style>
            
            critter-toaster{
                color: #212529;
            }

            .controls critter-button{
                margin-top: 50px;
                margin-bottom: 30px;
            }

            #login {
                cursor: pointer;
                text-decoration: none;
                color: #ffa600;
            }
            .center{
                padding: .8rem .5rem;
            }
            
        </style>
        ${critterStyle}
        
        <critter-data-store></critter-data-store>
        
        <div class="row justify-content-center register-page">
            <div class="col-6" hidden$="[[!hideSecretInput]]">
                <critter-form id="register_form" method="POST" target="[[registerTarget]]" >
                    <critter-input label="username" name="username"></critter-input><br>
                    <critter-input label="Email" name="email"></critter-input><br>
                    <critter-input label="password" name="password" type="password"></critter-input><br>
                    <critter-input label="password_confirm" name="password" type="password" no-serialize match="password"></critter-input><br>
                    <critter-input name="language" type="hidden" value="[[language]]"></critter-input><br>
                    <div class="checkboxes row" slot="checkboxes">
                        <critter-checkbox>[[__("agree_privacy")]]</critter-checkbox>
                    </div>
                    <div class="col justify-content-center" slot="controls">
                        <div class="controls row justify-content-center" slot="controls">
                            <critter-button submit class="col-6">[[__("register")]]</critter-button>
                        </div>
                    </div>
                </critter-form>
                    <div id="login">[[__("to_login")]]</div>
            </div>
            <div class="col-6" hidden$="[[hideSecretInput]]">
                <p>
                    {{__("registration_email_text")}}
                </p>
                <critter-form id="activate_form" method="POST" target="[[activateTarget]]" >
                    <critter-input id="secret_input" label="activation_code" name="secret"></critter-input><br>
                    <div class="controls row justify-content-center" slot="controls">
                        <critter-button submit>[[__("activate")]]</critter-button>
                    </div>
                </critter-form>
            </div>
        </div>
        `;
    }

    static get is() {
        return 'critter-register-page';
    }

    static get properties() {
        return {
            registerTarget: {
                type: String,
                value: "/users/register"
            },

            activateTarget: {
                type: String,
                value: "/users/activate"
            },

            username: {
                type: String,
                value: null
            },

            hideSecretInput: {
                type: Boolean,
                value: true,
                notify: true
            }
        }
    }

    connectedCallback() {
        super.connectedCallback();

        this._globalData = window.Core.CritterLevelData;

        afterNextRender(this, function () {
            window.addEventListener("_userChanged", this._userChanged.bind(this));
            this.$.login.addEventListener("click", this._goToLoginForm.bind(this));
            this.$.register_form.preSubmit = this._onPreSubmit.bind(this);
            this.$.register_form.onSuccess = this._onRegisterSuccess.bind(this);
            this.$.register_form.onError = this._onError.bind(this);
            this.$.activate_form.onSuccess = this._onActivateSuccess.bind(this);
            this.$.activate_form.onError = this._onActivateError.bind(this);
        });
    }

    disconnectedCallback() {
        super.disconnectedCallback();
        window.removeEventListener("_userChanged", this._userChanged.bind(this));
    }

    _delay(ms) {
        return new Promise(resolve => setTimeout(resolve, ms));
    }

    _onActivateError(e) {
        this._onError(e);
    }

    async _onActivateSuccess(e) {
        this.showSuccessToast("activation_success");
        await this._delay(1500); // show success toast for 1,5 secs and then route user to login page
        window.location.href = "/login"
    }

    _onRegisterSuccess(e) {
        this.showSuccessToast("registration_successful")
        this.hideSecretInput = false;
    }

    _onPreSubmit() {
        this._globalData.setNewCookie();
    }

    _onError(e) {
        if (e.error === "Username or Password incorrect") {
            this.showErrorToast("invalid_username_or_password");
        } else if (e.error === "activate_first") {
            this.showErrorToast("activation_error");
        } else if (e.error === "Not Found" && e.msg_key && e.msg_key === "incorrect_secret") {
            this.showErrorToast("incorrect_secret");
        } else if (e.message != null) {
            if (e.message === "User with this username already exists!") {
                this.showErrorToast("username_exists");
            } else if (e.message === "User with this email already exists!") {
                this.showErrorToast("email_exists");
            } else if (e.message === "The input has to be less than 50 characters!") {
                this.showErrorToast("long_data");
            } else {
                this.showErrorToast("fill_fields");
            }
        } else {
            this.showErrorToast("submit_error");
        }
    }

    _userChanged(){
        if(this._globalData.user) {
            this.username = this._globalData.user.username;
        }
    }

    _goToLoginForm() {
        window.location.href = "/login"
    }
}

window.customElements.define(CritterRegisterPage.is, CritterRegisterPage);
