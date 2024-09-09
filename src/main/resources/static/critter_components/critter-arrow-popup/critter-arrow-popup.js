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


class CritterArrowPopup extends PolymerElement {
    static get template() {
        return html`
        <style>
            :host {
                --display-popup: none;
                pointer-events: all;
            }

            #popup{
                position: absolute;
                z-index: 1000;
                display: var(--display-popup);
                max-height: 50px;
            }
            
            #popup:before{
              content: " ";
              width: 0;
              height: 0;
              position: absolute;
              top: -25px;
              margin-left: -6px;
            }

            .arrow-container {
                display: flex;
                align-items: center;
            }
            .base-arrow {
                width: 0;
                height: 0;
                margin: 5px;
                border-top: 18px solid transparent;
                border-bottom: 18px solid transparent;
                border-right: 25px solid #F10C0C;
                transform: rotate(-90deg);
            }
            .arrow-move {
                position: relative;
                animation: move 3s ease-in-out infinite;
            }
            @keyframes move {
                0% {
                    transform: rotate(-90deg) translateY(0);
                }
                
                25% {
                    transform: rotate(-90deg) translateY(-10px);
                }
                75% {
                    transform: rotate(-90deg) translateY(10px);
                }
                100% {
                    transform: rotate(-90deg) translateY(0);
                }
            }
        </style>
        <div id="popup" style$="top: [[y_position]];left: [[x_position]];">
            <p class="arrow-container">
                <span class="base-arrow arrow-move"></span>
            </p>
        </div>
        `;
    }


    static get is() {
        return 'critter-arrow-popup';
    }

    static get properties() {
        return {
            y_position: {
                type: Number
            },
            x_position: {
                type: Number
            }

        }
    }

    show(position) {
        this.computePosition(position);
        this.updateStyles({
            '--display-popup': 'block'
        });
    }

    hide() {
        this.updateStyles({
            '--display-popup': 'none'
        });
    }

    computePosition(position) {
        this.y_position = (position.y - 1) * this.blockSize + "px";
        this.x_position = (position.x * this.blockSize) + (this.blockSize/2) + "px";
    }
}

window.customElements.define(CritterArrowPopup.is, CritterArrowPopup);
