import { dedupingMixin } from '/lib/@polymer/polymer/lib/utils/mixin.js';
import { afterNextRender } from '/lib/@polymer/polymer/lib/utils/render-status.js';
import {html} from '/lib/@polymer/polymer/polymer-element.js';


import '/static/rasterizehtml/dist/rasterizeHTML.js';


/*
#CritterMixins.I18n

Holds data for i18n

*/



export const I18n = dedupingMixin(function(superClass) {
    return class extends superClass {

        static get properties() {
            return {
                __: {
                    type: Function
                },

                dictionary: {
                    type: Object,
                    value: {}
                }

            };
        }

        connectedCallback() {
            super.connectedCallback();


            afterNextRender(this, function () {
                this.dictionary = window.Core.dictionary;
                this.__ = this.translate;
                window.addEventListener("_languageChanged", this._updateDictionary.bind(this));

            });
        }

        translate(key) {
            if (!key) return;

            if(this.dictionary && this.dictionary[key]) {
                return this.dictionary[key];
            }
            return key;
        }

        _updateDictionary(){
            this.dictionary = window.Core.dictionary;
            this.__ = (key) => {
                return this.translate(key);
            };

        }
    }
});
