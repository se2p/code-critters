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


class CritterControlButton extends PolymerElement {
    static get template() {
        return html`
    <style>
      :host {
        display: block;
        min-width: -moz-fit-content;
        min-width: fit-content;
        width: 35px;
        height: 35px;
      }


      #button {
        border: 0;
        background: transparent;
        display: block;
        cursor: pointer;
        transition: 100ms all ease;
        box-sizing: border-box;
        position: relative;
      }
      
        #button.disabled,
        #button.disabled:hover,
        #button.disabled:after,
        #button.disabled:hover:after{
            cursor: not-allowed;
        }
        
        #button.play{
            width: 0;
            height: 35px;
            border-style: solid;
            border-width: 20px 0 20px 35px;
            border-color: transparent transparent transparent #67cd51;
        }
        
        #button.play.disabled,
        #button.play.disabled:hover,
        #button.fastforward.disabled,
        #button.fastforward.disabled:after,
        #button.fastforward.disabled:hover,
        #button.fastforward.disabled:hover:after{
             border-color: transparent transparent transparent #c6e8c6;
        }
        
        #button.fastforward,
        #button.fastforward:after{
            width: 0;
            height: 35px;
            border-style: solid;
            border-width: 20px 0 20px 25px;
            border-color: transparent transparent transparent #67cd51;
        }
        
        #button.play:hover {
            border-color: transparent transparent transparent #26cd17;
        }
        
        #button.pause {
            width: 0;
            height: 35px;
            border-color: transparent transparent transparent #ff6c5c;
            border-style: double;
            border-width: 0px 0 0px 25px;
            margin-left: 3px;
        }
        
        #button.pause:hover {
            border-color: transparent transparent transparent #ff3e23;
        }
        
        #button.pause.disabled,
        #button.pause.disabled:hover{
             border-color: transparent transparent transparent #ffa38a;
        }
        
        #button.fastforward:hover,
        #button.fastforward:hover:after{
            border-color: transparent transparent transparent #26cd17;
        }
        
        #button.fastforward:after{
            content: " ";
            background: transparent;
            display: block;
            cursor: pointer;
            transition: 100ms all ease;
            box-sizing: border-box;
            position: absolute;
            left: -6px;
            top: -20px;
        }
        
        #button.reload{
            height: 35px;
            width: 35px;
            box-sizing: border-box;
            transition: 500ms all ease;
        }
        
        #button.reload:hover{
           -webkit-transform: rotate(-80deg);
            transform: rotate(-80deg);
        }
        
        #button.reload:after{
            display: block;
            content: " ";
            border-color: transparent transparent transparent #868bff;
            border-style: solid;
            border-width: 11px 0 11px 13px;
            height: 0;
            position: absolute;
            top: 1px;
            left: 2px;
            width: 0;
            -webkit-transform: rotate(120deg);
            transform: rotate(120deg);
            box-sizing: border-box;
        }
        
        #button.reload:before{
            content: " ";
            display: block;
            border-radius: 50%;
            border: 6px solid #868bff;border-top-color: transparent;
            height: 35px;
            width: 35px;
            -webkit-transform: rotate(-80deg);
            transform: rotate(-80deg);
            box-sizing: border-box;
        }
        
        #button.reload:hover:after{
            border-color: transparent transparent transparent #5b67ff;
            }
        
        #button.reload:hover:before{
            border-color: transparent #5b67ff #5b67ff #5b67ff;
        }
       

    </style>
     <div id="button" class$="[[_disabledString]] [[shape]]">
     </div>
    `;
    }

    static get is() {
        return 'critter-control-button';
    }

    static get properties() {
        return {
            disabled: {
                type: Boolean,
                value: false,
                notify: true
            },

            shape: {
                type: String,
                value: "Play"
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

window.customElements.define(CritterControlButton.is, CritterControlButton);
