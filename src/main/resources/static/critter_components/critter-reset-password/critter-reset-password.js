import {html, PolymerElement} from '/lib/@polymer/polymer/polymer-element.js';
import { afterNextRender } from '/lib/@polymer/polymer/lib/utils/render-status.js';
import {I18n} from '../critter-i18n/critter-i18n-mixin.js';

import '../critter-form/critter-form.js';
import '../critter-button/critter-button.js';
import '../critter-input/critter-input.js';





/*
# critter-insert

A Simple Button

## Example
```html
<critter-reset-password></critter-reset-password>
```

@demo
*/

class CritterResetPassword extends I18n(PolymerElement) {
    static get template() {
        return html`
            <style>
            .controls critter-button{
                margin: auto;
           }
            </style>
            
            <critter-form id="form" method="POST" target="[[target]]" >
                <critter-input label="password" name="password" type="password"></critter-input><br>
                <critter-input label="password_confirm" name="password" type="password" no-serialize match="password"></critter-input><br>
                <div class="controls" slot="controls">
                    <critter-button submit>[[__("reset")]]</critter-button>
                </div>
            </critter-form>
        `;
    }

    static get is() {
        return 'critter-reset-password';
    }

    static get properties() {
        return {
            target: {
                type: String
            }
        }
    }

    connectedCallback() {
        super.connectedCallback();

        afterNextRender(this, function () {
            let secret = new URL(window.location.href).searchParams.get("secret");
            if(!secret){
                window.location.replace("/?badSecret=true");
            }
            this.target = "/users/reset/" + new URL(window.location.href).searchParams.get("secret");
            this.$.form.onSuccess = this._onSuccess;
            this.$.form.onError = this._onError;
        });
    }

    _onSuccess() {
        window.location.replace("/?resetSuccess=true");
    }

    _onError() {
        console.log("Error");
        window.location.replace("/?resetSuccess=false");
    }

}

window.customElements.define(CritterResetPassword.is, CritterResetPassword);