import {html, PolymerElement} from '/lib/@polymer/polymer/polymer-element.js';

import '/lib/@polymer/iron-ajax/iron-ajax.js';

/*
# critter-i18n
*/

window.Core = window.Core || {};

class CritterI18n extends PolymerElement {

    static get template() {
        return html`
        <style>
    
            :host {
                --display-dialog: none;
            }
    
          #flag_container{
              position: relative;
              width: 100%;
              height: 15px;
          }
          
          #flag_container img{
              float: right;
              margin: 0 5px;
              cursor: pointer;
          }
          
        </style>
    
    
        <div id="flag_container">
             <img src="/translation/flags/de-DE.png" on-click="_selectLanguage" lang="de-DE">
             <img src="/translation/flags/en-US.png" on-click="_selectLanguage" lang="en-US">
        </div>
        `;
    }

    static get is() {
        return 'critter-i18n';
    }

    static get properties() {
        return {
            supportedLanguages: {
                type: Array,
                value: ["de-DE", "en-US"]
            }
        }
    }

    connectedCallback() {
        super.connectedCallback();

        if(!localStorage.getItem("language")) {
            if (this.supportedLanguages.includes(navigator.language)) {
                this._setLanguage(navigator.language);
            } else {
               this._setLanguage("en_US");
            }
        } else {
            this.loadTranslationData(localStorage.getItem("language"));
        }
    }

    _selectLanguage(event) {
        this._setLanguage(event.target.getAttribute('lang'));
    }

    _setLanguage(lang){
        localStorage.setItem("language", lang);
        this.loadTranslationData(lang);
    }

    loadTranslationData(lang) {
        let req = document.createElement('iron-ajax');
        req.url = "/translation/" + lang+ ".json";
        req.method = "GET";
        req.handleAs = 'json';
        req.contentType = 'application/json';
        req.bubbles = true;
        req.rejectWithRequest = true;

        req.addEventListener('response', e => {
            window.Core.dictionary = e.detail.__data.response;
            window.dispatchEvent(new CustomEvent('_languageChanged', {bubbles: true, composed: true}));
        });

        let genRequest = req.generateRequest();
        req.completes = genRequest.completes;
        return req;
    }
}

window.customElements.define(CritterI18n.is, CritterI18n);
