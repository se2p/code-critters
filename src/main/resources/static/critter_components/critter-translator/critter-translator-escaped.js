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
