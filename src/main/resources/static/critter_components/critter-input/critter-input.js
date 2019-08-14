import {html, PolymerElement} from '/lib/@polymer/polymer/polymer-element.js';
import {I18n} from '../critter-i18n/critter-i18n-mixin.js';


/*
# critter-insert

A Simple Button

## Example
```html
<critter-insert>text</critter-insert>
```

@demo
*/

class CritterInput extends I18n(PolymerElement) {
    static get template() {
        return html`
            <style>
                               
                *{
                    height: 30px;
                }
                
                :host {
                     --display-field: table-row;
                     display: var(--display-field);
                }
        
                span{
                    cursor: default;
                    text-align: center;
                    justify-content: center;
                    align-items: center;
                    display: table-cell;
                }
        
                input{
                    margin-left: 10px;
                    padding: 0 5px;
                    font-size: 1em;
                    background-color: transparent;
                    border: none;
                    border-bottom: 2px solid #039BE5;
                    display: table-cell;
                }
        
                input:focus{
                    border: none;
                    border-bottom: 2px solid #039BE5;
                    outline: none;
                }
        
                input:invalid{
                    border: none;
                    border-bottom: 2px solid #e5424a;
                    outline: none;
                }
            </style>
            
            <span>[[__(label)]]</span>
            <input id="field" type="[[type]]" value="{{value::input}}" name="[[name]]" placeholder$="{{placeholder}}">
        `;
    }

    static get is() {
        return 'critter-input';
    }

    static get properties() {
        return {
            value: {
                type: String,
                observer: "_onValueChange",
                notify: true
            },

            name: {
                type: String,
                value: ""
            },

            type: {
                type: String,
                value: "text",
                observer: "_onTypeChange"
            },

            placeholder: {
                type: String
            },

            label: {
                type: String
            },

            valid: {
                type: Boolean,
                value: true,
                observer: "_onValidChange"
            },

            noSerialize: {
                type: Boolean
            },

            match: {
                type: String,
                value: ""
            },
        }
    }

    _onValueChange() {
        this.dispatchEvent(new CustomEvent('valueChanged', {
            detail: {name: this.value},
            bubbles: true,
            composed: true
        }));
    }

    _onValidChange() {
        this.$.field.setCustomValidity(this.valid ? "" : "name already exists");
    }

    _onTypeChange(){
        if(this.type === "hidden") {
            this.updateStyles({
                '--display-field': 'none'
            });
        } else {
            this.updateStyles({
                '--display-field': 'table-row'
            });
        }
    }

    serialize() {
        if(!this.noSerialize) {
            let data = {};
            data[this.name] = this.value;
            return data;
        }
    }
}

window.customElements.define(CritterInput.is, CritterInput);