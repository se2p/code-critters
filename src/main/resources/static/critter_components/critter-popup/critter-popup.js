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
                border: 3px solid #039be5;
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
