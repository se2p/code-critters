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


import '/lib/@polymer/polymer/lib/elements/dom-if.js';
import '/lib/@polymer/iron-icons/social-icons.js';
import '/lib/@polymer/iron-icons/iron-icons.js';

import '../critter-form/critter-form.js';
import '../critter-button/critter-button.js';
import '../critter-input/critter-input.js';
import '../critter-dialog/critter-dialog.js';
import '../critter-checkbox/critter-checkbox.js';
import '../critter-data-store/critter-data-store.js';


/*
# critter-insert

A Simple Button

## Example
```html
<critter-reset-password></critter-reset-password>
```

@demo
*/

class CritterLogin extends Toaster(I18n(PolymerElement)) {
    static get template() {
        return html`
            <style>
                #username_bar{
                    min-width: 180px;
                    display: inline-block;
                }
            
                #username_bar *{
                    float: left;
                }
            
                iron-icon{
                    margin: 10px 0px 0px;
                }
            
                .center{
                    padding: .8rem .5rem;
                }
            
                #login,
                #logout,
                #register,
                iron-icon,
                .username{
                    cursor: pointer;
                }
            
                #login_dialog,
                #register_dialog,
                critter-toaster{
                    color: #212529;
                }
           
                .controls critter-button{
                    margin: auto;
                }
                
                #forgot_password {
                    text-decoration: none;
                    color: #ffa600;
                }
            </style>
            
            <critter-data-store></critter-data-store>

            
            <div id="username_bar">
              <iron-icon id="icon" icon="social:person"></iron-icon>
              <div id="showProfile" class="username center" hidden$="[[showLogin]]">[[username]]</div>
              <div id="logout" class="center" hidden$="[[showLogin]]">[[__("logout")]]</div>
              <div id="login" class="center" hidden$="[[!showLogin]]">[[__("login")]]</div>
              <div id="register" class="center" hidden$="[[!showLogin]]">[[__("register")]]</div>
            </div>
            
            <critter-dialog id="login_dialog">
                <critter-form id="login_form" method="POST" target="[[loginTarget]]" >
                    <critter-input label="username" name="username"></critter-input><br>
                    <critter-input label="password" name="password" type="password"></critter-input><br>
                    <a href="forgotPassword.html" id="forgot_password">[[__("forgot_password")]]</a><br>
                    <div class="controls" slot="controls">
                        <critter-button submit>[[__("login")]]</critter-button>
                    </div>
                </critter-form>
            </critter-dialog>
            
            <critter-dialog id="register_dialog">
            <critter-form id="register_form" method="POST" target="[[registerTarget]]" >
                <critter-input label="username" name="username"></critter-input><br> 
                <critter-input label="Email" name="email"></critter-input><br>
                <critter-input label="password" name="password" type="password"></critter-input><br>
                <critter-input label="password_confirm" name="password" type="password" no-serialize match="password"></critter-input><br>
                <critter-input name="language" type="hidden" value="[[language]]"></critter-input><br>
                <div class="checkboxes" slot="checkboxes">
                    <critter-checkbox >[[__("agree_privacy")]]</critter-checkbox>
                </div>
                <div class="controls" slot="controls">
                    <critter-button submit>[[__("register")]]</critter-button>
                </div>
            </critter-form>
            </critter-dialog>
        `;
    }

    static get is() {
        return 'critter-login';
    }

    static get properties() {
        return {
            loginTarget: {
                type: String,
                value: "/users/login"
            },

            registerTarget: {
                type: String,
                value: "/users/register"
            },

            showLogin: {
                type: Boolean,
                value: true
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
            this.$.login.addEventListener("click", this._openLoginDialog.bind(this));
            this.$.icon.addEventListener("click", this._onIconClick.bind(this));
            this.$.register.addEventListener("click", this._openRegisterDialog.bind(this));
            this.$.logout.addEventListener("click", this._logout.bind(this));
            this.$.showProfile.addEventListener("click", this._showProfile);
            this.$.login_form.preSubmit = this._onPreSubmit.bind(this);
            this.$.login_form.onSuccess = this._onLoginSuccess.bind(this);
            this.$.login_form.onError = this._onError.bind(this);
            this.$.register_form.preSubmit = this._onPreSubmit.bind(this);
            this.$.register_form.onSuccess = this._onRegisterSuccess.bind(this);
            this.$.register_form.onError = this._onError.bind(this);
        });
    }

    _onLoginSuccess(e) {
        this._globalData.user = e.detail.__data.response;
        this.showSuccessToast("login_successful");
        this.$.login_dialog.close();
    }

    _onRegisterSuccess(e) {
        this.showSuccessToast("registration_successful")
        this.$.register_dialog.close();
    }

    _userChanged(){
        if(this._globalData.user) {
            this.username = this._globalData.user.username;
        }
        this.showLogin = !this.username;
    }

    _onIconClick() {
        if(this.showLogin){
            this._openLoginDialog();
        } else {
            this._showProfile();
        }
    }

    _showProfile() {
        window.location = "/profile";
    }

    _onPreSubmit() {
        this._globalData.setNewCookie();
    }

    _logout() {
        let req = document.createElement('iron-ajax');
        req.url = "/users/logout";
        req.method = "POST";
        req.handleAs = 'json';
        req.contentType = 'application/json';
        req.bubbles = true;
        req.rejectWithRequest = true;


        req.addEventListener('response', () => {
            this.username = null;
            this._globalData.user = undefined;
            this._globalData.setNewCookie();
            this.showLogin = true;
        });
        req.addEventListener('error', (e) => this._onError(e));

        let genRequest = req.generateRequest();
        req.completes = genRequest.completes;
    }

    _onError(e) {
        if(e.error === "Username or Password incorrect") {
            this.showErrorToast("invalid_username_or_password");
        } else if (e.error === "activate_first") {
            this.showErrorToast("activation_error");
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

    _openLoginDialog(){
        this.$.login_dialog.open();
    }

    _openRegisterDialog(){
        this.$.register_dialog.open();
    }

}

window.customElements.define(CritterLogin.is, CritterLogin);
