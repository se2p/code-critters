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


/*
# critter-popup

A popup displayed on  certain position

## Example
```html
<critter-popup>{*Some Content*}</critter-popup>
```

@demo
*/
class CritterPopup extends PolymerElement {
    static get template() {
        return html`
        <style>
            :host {
                --display-popup: none;
                --display-popup-top: none;
                --display-popup-bottom: none;
                --display-popup-arrow-left: 0px;
                pointer-events: all;
            }

            #popup{
                position: absolute;
                left: 24px;
                width: calc(100% - 37px);
                z-index: 1000;
                display: var(--display-popup);
                background-color: white;
                border: 3px solid #FFA600;
                outline: 3px solid white;
            }
            
            #popup:before{
              content: " ";
              width: 0;
              height: 0;
              border-left: 20px solid transparent;
              border-right: 20px solid transparent;
              border-bottom: 20px solid white;
              position: absolute;
              top: -25px;
              margin-left: -6px;
              display: var(--display-popup-top);
              left: var(--display-popup-arrow-left);
            }
            
             #popup:after{
               position: absolute;
              content: " ";
              width: 0;
              height: 0;
              border-left: 20px solid transparent;
              border-right: 20px solid transparent;
              border-top: 20px solid white;
              bottom: -25px;
              margin-left: -6px;
              display: var(--display-popup-bottom);
              left: var(--display-popup-arrow-left);
            }
            
            #popup_container{
                margin: 10px;
            }
        </style>
        <div id="popup" style$="top: [[y_position]];">
            <div id="popup_container">
                <slot></slot>
            </div>
        </div>
        `;
    }


    static get is() {
        return 'critter-popup';
    }

    static get properties() {
        return {
            y_position: {
                type: Number
            },

            blockSize: {
                type: Number
            },

            boardHeight: {
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
        let pos = position.y * this.blockSize;
        if (pos < this.boardHeight / 2) {
            this.y_position = (pos + this.blockSize) + "px";
            this.updateStyles({
                '--display-popup-bottom': 'none',
                '--display-popup-top': 'block',
                '--display-popup-arrow-left' :  (position.x * this.blockSize) + "px"
            });
        } else {
            this.y_position = (pos - this.boardHeight / 2) + "px";
            this.updateStyles({
                '--display-popup-bottom': 'block',
                '--display-popup-top': 'none',
                '--display-popup-arrow-left' :  (position.x * this.blockSize) + "px"
            });
        }
    }
}

window.customElements.define(CritterPopup.is, CritterPopup);
