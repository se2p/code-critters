import {html, PolymerElement} from '/lib/@polymer/polymer/polymer-element.js';
import { afterNextRender } from '/lib/@polymer/polymer/lib/utils/render-status.js';


/*
# critter-button

A Simple Button

## Example
```html
<critter-button>text</critter-button>
```

@demo
*/
class CritterDialog extends PolymerElement {

    static get template() {
        return html`
        <style>
    
            :host {
                --display-dialog: none;
            }
    
            #dialog_container {
                position: fixed;
                width: 100vw;
                height: 100vh;
                background-color: transparent;
                display: var(--display-dialog);
                z-index: 999;
                top: 0;
                left: 0;
            }
    
            #dialog{
                width: 300px;
                height: fit-content;
                padding: 10px;
                background-color: white;
                border: 1px solid darkgray;
                border-radius: 20px;
                margin: auto;
                z-index: 1000;
                position: relative;
            }
            
            slot{
                display: block;
            }
        </style>
    
    
        <div id="dialog_container">
             <div id="dialog">
                  <slot id="dialog_slot"></slot>
             </div>
        </div>
        `;
    }

    static get is() {
        return 'critter-dialog';
    }

    connectedCallback() {
        super.connectedCallback();

        afterNextRender(this, function () {
            this.$.dialog_container.addEventListener("click", (event) => this.close(event));
        });
    }

    open() {
        this.updateStyles({
            '--display-dialog': 'grid'
        });
    }

    close(e) {
        if (e && e.target.id !== "dialog_container") {
            return;
        }
        this.updateStyles({
            '--display-dialog': 'none'
        });
    }
}

window.customElements.define(CritterDialog.is, CritterDialog);
