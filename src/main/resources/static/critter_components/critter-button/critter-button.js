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


class CritterButton extends PolymerElement {
    static get template() {
        return html`
    <style>
      :host {
        display: block;
        width: -moz-fit-content;
        width: fit-content;
        
        --critter-button-color-disabled: #677d91;
        --critter-button-color: #039BE5;
        --critter-button-text-color: whitesmoke;
        --critter-button-text-color-disabled: gainsboro;

      }


      #button {
        border-radius: 4px;
        min-height: 40px;
        color: var(--critter-button-text-color);
        text-align: center;
        justify-content: center;
        align-items: center;
        display: flex;
        background-color: var(--critter-button-color);
        cursor: pointer;
      }
      
      #button:hover{
         background-color: var(--critter-button-color);
      }

        #button.disabled,
        #button.disabled:hover{
            background-color: var(--critter-button-color-disabled);
            cursor: not-allowed;
            color: var(--critter-button-text-color-disabled);
        }


    </style>
     <div id="button" class$="[[_disabledString]]">
          <slot></slot>
     </div>
    `;
    }

    static get is() {
        return 'critter-button';
    }

    static get properties() {
        return {
            disabled: {
                type: Boolean,
                value: false,
                notify: true
            },

            _disabledString: {
                computed: "_isDisabled(disabled)"
            },

            submit: {
                type: Boolean
            },

            dismiss: {
                type: Boolean
            }

        }
    }

    connectedCallback() {
        super.connectedCallback();

        afterNextRender(this, function () {
            this.$.button.addEventListener("click", this._handleClick.bind(this));
        });
    }

    _handleClick() {
        if(this.submit){
            this.dispatchEvent(new CustomEvent('_submit', {
                detail: {},
                bubbles: true,
                composed: true
            }));
        } else if(this.dismiss){
            this.dispatchEvent(new CustomEvent('_dismiss', {
                detail: {},
                bubbles: true,
                composed: true
            }));
        }
    }

    _isDisabled(disabled) {
        return (disabled ? "disabled" : "");
    }
}

window.customElements.define(CritterButton.is, CritterButton);
