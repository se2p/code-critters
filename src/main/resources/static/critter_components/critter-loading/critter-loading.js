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
class CritterLoading extends PolymerElement {

    static get template() {
        return html`
        <style>
    
            :host {
                --display-loading: none;
            }
    
          #loading_container{
              position: fixed;
              width: 100vw;
              height: 100vh;
              background-color: rgba(136,136,143,0.3);
              display: var(--display-loading);
              z-index: 1000;
              top: 0;
              left: 0;
          }
    
            #loading{
                width: 64px;
                height: 64px;
                background-color: transparent;
                margin-top: calc((100vh - 500px) * 0.5);
                margin-left: calc((100vw - 300px) * 0.5);
                z-index: 1000;
                position: relative;
            }
            
            .lds-ring {
              display: inline-block;
              position: relative;
              width: 64px;
              height: 64px;
            }
            .lds-ring div {
              box-sizing: border-box;
              display: block;
              position: absolute;
              width: 51px;
              height: 51px;
              margin: 6px;
              border: 6px solid #039BE5;
              border-radius: 50%;
              animation: lds-ring 1.2s cubic-bezier(0.5, 0, 0.5, 1) infinite;
              border-color: #039BE5 transparent transparent transparent;
            }
            .lds-ring div:nth-child(1) {
              animation-delay: -0.45s;
            }
            .lds-ring div:nth-child(2) {
              animation-delay: -0.3s;
            }
            .lds-ring div:nth-child(3) {
              animation-delay: -0.15s;
            }
            @keyframes lds-ring {
              0% {
                transform: rotate(0deg);
              }
              100% {
                transform: rotate(360deg);
              }
            }
        </style>
    
    
        <div id="loading_container">
             <div id="loading">
                 <div class="lds-ring"><div></div><div></div><div></div><div></div></div>
             </div>
        </div>
        `;
    }

    static get is() {
        return 'critter-loading';
    }

    show() {
        this.updateStyles({
            '--display-loading': 'block'
        });
    }

    hide() {
        this.updateStyles({
            '--display-loading': 'none'
        });
    }
}

window.customElements.define(CritterLoading.is, CritterLoading);
