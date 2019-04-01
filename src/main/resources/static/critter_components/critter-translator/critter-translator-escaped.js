import {html, PolymerElement} from '/lib/@polymer/polymer/polymer-element.js';
import {I18n} from '../critter-i18n/critter-i18n-mixin.js';

/*
# critter-translator
*/


class CritterTranslatorEscaped extends I18n(PolymerElement) {

    static get template() {
        return html`
        <div  inner-h-t-m-l="[[__(key)]]"></div>
            
        `;
    }

    static get is() {
        return 'critter-translator-escaped';
    }

    static get properties() {
        return {
            key: {
                type: String,
                value: ""
            }
        }
    }
}

window.customElements.define(CritterTranslatorEscaped.is, CritterTranslatorEscaped);
