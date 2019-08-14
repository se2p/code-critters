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
