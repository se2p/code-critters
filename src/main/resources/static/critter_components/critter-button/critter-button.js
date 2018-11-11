import {html, PolymerElement} from '/lib/@polymer/polymer/polymer-element.js';

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
      }


      #button {
        border-radius: 4px;
        min-height: 40px;
        color: whitesmoke;
        text-align: center;
        justify-content: center;
        align-items: center;
        display: flex;
        background-color: #039BE5;
        cursor: pointer;
      }
      
      #button:hover{
         background: #00b0ff;
      }

        #button.disabled,
        #button.disabled:hover{
            background: #677d91;
            cursor: not-allowed;
            color: gainsboro;
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
            }

        }
    }

    _isDisabled(disabled) {
        return (disabled ? "disabled" : "");
    }
}

window.customElements.define(CritterButton.is, CritterButton);
