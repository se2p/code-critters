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
import {} from '/lib/@polymer/polymer/lib/elements/dom-if.js';
import {I18n} from '../critter-i18n/critter-i18n-mixin.js';

import '../critter-form/critter-form.js';
import '../critter-button/critter-button.js';
import '../critter-input/critter-input.js';
import '../critter-dialog/critter-dialog.js';



/*
# critter-insert

A Simple Button

## Example
```html
<critter-change-profile></critter-change-profile>
```

@demo
*/

class CritterChangeProfile extends I18n(PolymerElement) {
    static get template() {
        return html`
            <style>
            
            [hidden] {
                    display: none !important;
            }
            
            critter-form {
                font-family: Arial;
                font-size: 1.2em;
            }
            
            critter-dialog {
                font-family: Arial;
                font-size: 1.2em;
            }
            
            .controls{
                width: 50%;
                margin: 0 auto;
           }
            
            .controls critter-button{
                margin: auto 10px;
                float: left;
           }
           
           #changePasswordButton {
                margin: auto;
                float: none;
           }
           
           #privacy_policy {
                font-family: Arial;
                font-size: 1.5em;
                margin: 2em;
           }
           
           </style>
           <div class="row content">
           <critter-form id="form" method="POST" target="users/change" >
                <critter-input label="username" name="username" value="[[user.username]]"></critter-input><br> 
                <critter-input id="email" label="Email" name="email" value="[[user.email]]"></critter-input><br>
                <critter-button id="changePasswordButton" hidden="[[_changePassword]]">[[__("change_password")]]</critter-button>
                <critter-input id="oldPassword" label="old_password" name="oldPassword" type="password" hidden="[[!_changePassword]]"></critter-input><br>
                <critter-input label="password" name="password" type="password" hidden="[[!_changePassword]]"></critter-input><br>
                <critter-input label="password_confirm" name="password" type="password" no-serialize match="password" hidden="[[!_changePassword]]"></critter-input><br>
                <critter-input name="language" type="hidden" value="[[language]]"></critter-input><br>
                
                <div class="controls" slot="controls">
                    <critter-button id="submitButton" submit>[[__("save")]]</critter-button>
                    <critter-button id="preDeleteButton">[[__("delete_profile")]]</critter-button>
                </div>
            </critter-form>
            
            <critter-dialog id="delete_dialog">
            <p>[[__("really_delete_account")]]</p>
            <critter-button id="breakDeleteButton">[[__("break")]]</critter-button>
            <br>
            <critter-button id="deleteButton">[[__("delete_profile")]]</critter-button>
            </critter-dialog>
            </div>
        `;
    }

    static get is() {
        return 'critter-change-profile';
    }

    static get properties() {
        return {
            user: {
                type: Object
            },
            _changePassword: {
                type: Boolean,
                value: false
            }
        }
    }

    connectedCallback() {
        super.connectedCallback();

        this._globalData = window.Core.CritterLevelData;

        afterNextRender(this, function () {
            this.$.form.onSuccess = this._onSuccess;
            this.$.form.onError = this._onError;
            this._globalData.addEventListener("_userChanged", this._userChanged.bind(this));
            this.$.preDeleteButton.addEventListener("click", this.openDeleteDialog.bind(this));
            this.$.breakDeleteButton.addEventListener("click", this.closeDeleteDialog.bind(this));
            this.$.deleteButton.addEventListener("click", this.deleteAccount.bind(this));
            this.$.changePasswordButton.addEventListener("click", this.showChangePassword.bind(this));
        });
    }

    _userChanged(){
        if(this._globalData.user) {
            this.user = this._globalData.user;
        } else {
            window.location = "/";
        }
    }

    deleteAccount(){
        let req = document.createElement('iron-ajax');
        req.url = "/users/delete";
        req.method = "DELETE";
        req.handleAs = 'json';
        req.contentType = 'application/json';
        req.bubbles = true;
        req.rejectWithRequest = true;


        req.addEventListener('response', () => {
            this.username = null;
            this._globalData.user = undefined;
            this._globalData.setNewCookie();
            window.location = "/";
        });
        req.addEventListener('static.error', (e) => this._onError(e));

        let genRequest = req.generateRequest();
        req.completes = genRequest.completes;
    }

    closeDeleteDialog(){
        this.$.delete_dialog.close();
    }

    openDeleteDialog(){
        this.$.delete_dialog.open();
    }

    showChangePassword() {
        this._changePassword = true;
    }

    _onSuccess() {
        this.showSuccessToast("update_successful");
    }

    _onError(e) {
        if (e.error === "These fields cannot be empty") {
            this.showErrorToast("fill_fields");
        } else if (e.error === "The input has to be less than 50 characters!") {
            this.showErrorToast("long_data");
        } else if (e.error === "Password incorrect") {
            this.showErrorToast("invalid_password");
        } else if (e.error === "User with this username already exists!") {
            this.showErrorToast("username_exists");
        } else if (e.error === "User with this email already exists!") {
            this.showErrorToast("email_exists");
        } else if (e.error === "Bad Request") {
            this.showErrorToast("bad_request")
        } else {
            console.log(e.error);
            this.showErrorToast(e.msg_key);
        }
    }

}

window.customElements.define(CritterChangeProfile.is, CritterChangeProfile);
