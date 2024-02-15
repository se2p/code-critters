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


class CritterLoginPage extends Toaster(I18n(PolymerElement)) {
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

            #forgot_password {
                text-decoration: none;
                color: #ffa600;
            }
            
            #register {
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
        
        <div class="row justify-content-center">
            <div class="col-6">
                <critter-form id="login_form" method="POST" target="[[loginTarget]]">
                    <critter-input label="username" name="username"></critter-input><br>
                    <critter-input label="password" name="password" type="password"></critter-input><br>
                    <a href="forgotPassword" id="forgot_password">[[__("forgot_password")]]</a><br>
                    <div class="row justify-content-center controls" slot="controls">
                        <critter-button class="col-4" submit>[[__("login")]]</critter-button>
                    </div>
                </critter-form>
                <div id="register" class="center">[[__("not_registered")]]</div>
            </div>
        </div>
        `;
    }

    static get is() {
        return 'critter-login-page';
    }

    static get properties() {
        return {
            loginTarget: {
                type: String,
                value: "/users/login"
            },

            username: {
                type: String,
                value: null
            },

            fullPathName: {
                type: String,
                value: "",
                notify: true
            }
        }
    }

    connectedCallback() {
        super.connectedCallback();

        this._globalData = window.Core.CritterLevelData;
        this.fullPathName = window.location.href;

        afterNextRender(this, function () {
            this._globalData.addEventListener("_userChanged", this._userChanged.bind(this));
            this.$.register.addEventListener("click", this._goToRegister.bind(this));
            this.$.login_form.preSubmit = this._onPreSubmit.bind(this);
            this.$.login_form.onSuccess = this._onLoginSuccess.bind(this);
            this.$.login_form.onError = this._onError.bind(this);

            // If user is routed to this loginpage after account activation
            if (this.fullPathName.includes("activated=true")) {
                this._onActivationSuccess();
            } else if (this.fullPathName.includes("activated=false")) {
                this._onActivationViaLinkFailed();
            }
        });
    }

    _onActivationViaLinkFailed() {
        this.showErrorToast("incorrect_secret");
    }

    _onActivationSuccess() {
        this.showSuccessToast("activation_success");
    }

    _onLoginSuccess(e) {
        this._globalData.user = e.detail.__data.response;
        window.dispatchEvent(new CustomEvent('_refresh', {detail: { user: this._globalData.user }, bubbles: true, composed: true}));
        this.showSuccessToast("login_successful");
    }

    _onRegisterSuccess(e) {
        this.showSuccessToast("registration_successful");
        window.location.href = "/";
    }

    _onPreSubmit() {
        this._globalData.setNewCookie();
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

    _userChanged(){
        if(this._globalData.user) {
            this.username = this._globalData.user.username;
        }
    }

    _goToRegister() {
        window.location.href = "/register"
    }
}

window.customElements.define(CritterLoginPage.is, CritterLoginPage);
