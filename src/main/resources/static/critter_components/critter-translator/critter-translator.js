import {html, PolymerElement} from '/lib/@polymer/polymer/polymer-element.js';
import {I18n} from '../critter-i18n/critter-i18n-mixin.js';

/*
# critter-translator
*/


class CritterTranslator extends I18n(PolymerElement) {

    static get template() {
        return html`
            [[__(key)]]    
        `;
    }

    static get is() {
        return 'critter-translator';
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

window.customElements.define(CritterTranslator.is, CritterTranslator);
