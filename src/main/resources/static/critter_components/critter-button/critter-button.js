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
        background-color: #039BE5;
        display: block;
        width: -moz-fit-content;
        width: fit-content;
        cursor: pointer !important;
      }

      :host(:hover) {
        background: #00b0ff;
      }


      #button {
        min-width: 100px;
        min-height: 40px;
        color: whitesmoke;
        text-align: center;
        justify-content: center;
        align-items: center;
        display: flex;
      }

        .disabled {
            background: #677d91;
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
                value: false
            },

            _disabledString: {
                computed: "_isDisabled(disabled)"
            },

        }
    }

    _isDisabled(disabled) {
        return (disabled ? "disabled" : "");
    }
}

window.customElements.define(CritterButton.is, CritterButton);
