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


class CritterHealingPopup extends PolymerElement {
    static get template() {
        return html`
        <style>
            :host {
                --display-popup: none;
                pointer-events: all;
            }

            #popup{
                position: absolute;
                width: 100%;
                z-index: 1000;
                display: var(--display-popup);
                background-color: white;
                border: 3px solid #FFA600;
                outline: 3px solid white;
            }
            
            #popup_container{
                margin: 10px;
            }
        </style>
        <div id="popup">
            <div id="popup_container">
                <slot></slot>
            </div>
        </div>
        `;
    }


    static get is() {
        return 'critter-healing-popup';
    }

    static get properties() {
        return {
        }
    }


    show() {
        this.updateStyles({
            '--display-popup': 'block'
        });
    }

    hide() {
        this.updateStyles({
            '--display-popup': 'none'
        });
    }
}

window.customElements.define(CritterHealingPopup.is, CritterHealingPopup);
