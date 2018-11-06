import {html, PolymerElement} from '/lib/@polymer/polymer/polymer-element.js';
import { afterNextRender } from '/lib/@polymer/polymer/lib/utils/render-status.js';

/*
# critter-gameboard

Renders the gameboard and its textures.

## Example
```html
<critter-gameboard level="[Array with texture code]"></critter-gameboard>
```

@demo
*/
class CritterGameboardHoverField extends PolymerElement {
    static get template() {
        return html`
            <style>
                :host {
                    display: block;
                }
    
                #field {
                    width: 40px;
                    height: 40px;
                    float: left;
                    cursor: pointer;
                }
    
                .good:hover{
                    background-color: rgba(0, 128, 0, 0.65);
                }
    
                .bad:hover{
                    background-color: rgba(128, 0, 0, 0.65);
                 }
    
                .defTower:hover::after {
                    content: " ";
                    background-image: url(image/buildings.png);
                    background-position: -52px -26px;
                    width: 40px;
                    height: 64px;
                    display: block;
                    position: relative;
                    bottom: 24px;
                    right: 0;
                }
    
                .tower:hover::after {
                    content: " ";
                    background-image: url(image/buildings.png);
                    background-position: -96px 0;
                    width: 40px;
                    height: 90px;
                    display: block;
                    position: relative;
                    bottom: 47px;
                    right: 2px;
                    z-index: 3;
                }
    
                .spawn:hover::after{
                    content: " ";
                    background-image: url(image/buildings.png);
                    background-position: 0 -36px;
                    width: 50px;
                    height: 50px;
                    display: block;
                    position: relative;
                    bottom: 11px;
                    right: 5px;
                    z-index: 3;
                }
    
                .mine:hover::after {
                    content: " ";
                    background-image: url(image/mine.png);
                    background-position: 0 0;
                    width: 25px;
                    height: 25px;
                    display: block;
                    position: relative;
                    top: 7px;
                    left: 7px;
                }
    
                .wood:hover{
                    background-image: url(image/texture.png);
                    background-position: -480px -240px;
                    width: 40px;
                    height: 40px;
                    display: block;
                    position: relative;
                }
    
                .grass:hover {
                    background-image: url(image/texture.png);
                    background-position: -42px -28px;
                    background-size: 520%;
                    width: 40px;
                    height: 40px;
                    display: block;
                    position: relative;
                }
    
                .ice:hover {
                    background-image: url(image/texture.png);
                    background-position: -125px -111px;
                    background-size: 520%;
                    width: 40px;
                    height: 40px;
                    display: block;
                    position: relative;
                }
    
                .water:hover {
                    background-image: url(image/texture.png);
                    background-position: -125px -28px;
                    background-size: 520%;
                    width: 40px;
                    height: 40px;
                    display: block;
                    position: relative;
                }
    
                .dirt:hover {
                    background-image: url(image/texture.png);
                    background-position: 0 -27px;
                    background-size: 507%;
                    width: 40px;
                    height: 40px;
                    display: block;
                    position: relative;
                }
            </style>
            <div id="field" class$="[[state]] [[element]]"></div>
        `;
    }

    static get importMeta() { return import.meta; }

    static get is() {
        return 'critter-gameboard-hover-field';
    }

    static get properties() {

        return {
            x: {
                type: Number,
                value: 0
            },

            y: {
                type: Number,
                value: 0
            },

            element: {
                type: String
            }
        };
    }


    connectedCallback() {
        super.connectedCallback();

        afterNextRender(this, function () {
            this.addEventListener("mouseover", () => {
                this.element = this.getRootNode().host.selectedElement;
                this.dispatchEvent(new CustomEvent('hoverOver', {
                    detail: {x: this.x, y: this.y},
                    bubbles: true,
                    composed: true
                }));
            });

            this.addEventListener("click", () => {
                this.dispatchEvent(new CustomEvent('fieldClicked', {
                    detail: {x: this.x, y: this.y},
                    bubbles: true,
                    composed: true
                }));
            });

        });
    }
}

window.customElements.define(CritterGameboardHoverField.is, CritterGameboardHoverField);
