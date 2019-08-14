import { dedupingMixin } from '/lib/@polymer/polymer/lib/utils/mixin.js';
import { afterNextRender } from '/lib/@polymer/polymer/lib/utils/render-status.js';


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
                },

                language: {
                    type: String,
                    value: "en-US"
                }

            };
        }

        connectedCallback() {
            super.connectedCallback();


            afterNextRender(this, function () {
                this.dictionary = window.Core.dictionary;
                this.language = localStorage.getItem("language");
                this.__ = this.translate;
                window.addEventListener("_languageChanged", (event) => this._updateDictionary(event));

            });
        }

        translate(key) {
            if (!key) return;

            if(this.dictionary && this.dictionary[key]) {
                return this.dictionary[key];
            }
            console.warn("No Translation for " + key);
            return key;
        }

        _updateDictionary(event){
            this.language = event.detail.lang;
            this.dictionary = window.Core.dictionary;
            this.__ = (key) => {
                return this.translate(key);
            };

        }
    }
});
