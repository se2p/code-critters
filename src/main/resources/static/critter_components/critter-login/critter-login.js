/*-
 * #%L
 * Code Critters
 * %%
 * Copyright (C) 2019 - 2023 Code Critter contributors
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
                    display: flex;
                    flex-direction: row;
                    align-items: center;
                    justify-content: flex-end;
                }
            
                #username_bar *{
                    float: left;
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
                
                critter-toaster{
                    color: #212529;
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
            this.$.login.addEventListener("click", this._goToLogin.bind(this));
            this.$.icon.addEventListener("click", this._onIconClick.bind(this));
            this.$.register.addEventListener("click", this._goToRegister.bind(this));
            this.$.logout.addEventListener("click", this._logout.bind(this));
            this.$.showProfile.addEventListener("click", this._showProfile);
        });
    }

    _userChanged(){
        if(this._globalData.user) {
            this.username = this._globalData.user.username;
        }
        this.showLogin = !this.username;
    }

    _onIconClick() {
        if(this.showLogin){
            this._goToLogin();
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
            window.dispatchEvent(new CustomEvent('_refresh', {detail: { user: undefined }, bubbles: true, composed: true}));
            this.showSuccessToast("logout_successful");
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

    _goToRegister(){
        window.location.href = "/register";
    }

    _goToLogin() {
        window.location.href = "/login";
    }

}

window.customElements.define(CritterLogin.is, CritterLogin);
