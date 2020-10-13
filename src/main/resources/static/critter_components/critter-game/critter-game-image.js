import {html, PolymerElement} from '/lib/@polymer/polymer/polymer-element.js';

class CritterGameImage extends PolymerElement {
    static get template() {
        return html`
            <style>
                
            </style>

            <div id="critter_head">
                <img src="[[importPath]]images/[[name]]">
            </div>
        `;
    }

    static get importMeta() {
        return import.meta;
    }

    static get is() {
        return 'critter-game-image';
    }

    static get properties() {
        return {
            name: {
                type: String,
                value: ""
            }
        }
    }
}

window.customElements.define(CritterGameImage.is, CritterGameImage);