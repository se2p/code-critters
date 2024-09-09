/*-
 * #%L
 * Code Critters
 * %%
 * Copyright (C) 2019 - 2023 Code Critter contributors
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
import {critterStyle} from '/style/critter-botstrap.js'

// Is the assistant for a game represented by a sorceress
class CritterHintAssistant extends PolymerElement {
    static get template() {
        return html`
            <style>
                
                img.assistant-witch {
                    width: 120px;
                }
                
                
            </style>
        ${critterStyle}
            <div class="witch-assistent-container">
                <img class="assistant-witch" src="[[importPath]]images/030-witch.png" alt="Assistent Witch">
            </div>
            
        `;
    }


    static get importMeta() { return import.meta; }

    static get is() {
        return 'critter-hint-assistant';
    }

    static get properties() {
        return {
        }
    }

}

window.customElements.define(CritterHintAssistant.is, CritterHintAssistant);
