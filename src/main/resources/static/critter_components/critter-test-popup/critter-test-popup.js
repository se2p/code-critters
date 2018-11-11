import {html, PolymerElement} from '/lib/@polymer/polymer/polymer-element.js';
import { afterNextRender } from '/lib/@polymer/polymer/lib/utils/render-status.js';
import {Level} from '../critter-level-mixin/critter-level-mixin.js';
import '../critter-popup/critter-popup.js';
import '../critter-button/critter-button.js';
import '../critter-blockly/critter-blockly.js';
import '../critter-toaster/critter-toaster.js';

import '/lib/@polymer/iron-icons/iron-icons.js';


/*
# critter-popup

A popup displayed on  certain position

## Example
```html
<critter-popup>{*Some Content*}</critter-popup>
```

@demo
*/
class CritterTestPopup extends Level(PolymerElement) {
    static get template() {
        return html`
        <style>
            :host{
                position: absolute;
                width: 100%;
                height: 100%;
                top: 0;
                pointer-events: none;
            }
                    
             #popup_blockly{
                width: calc(100% - 50px);
                float: left;
            }
            
            #popup_buttons{
                float: left;
                width: 40px;
                margin: auto;
                margin-left: 10px;
            }
            
            critter-button{
                width: 40px;
                height: 40px;
                margin-bottom: 5px;
            }
            
            critter-button iron-icon{
                width: 35px;
                height: 35px;
                margin: auto;
            }
        </style>
        <critter-popup id="mine_popup" block-size="{{blockSize}}" board-height="{{ boardHeight }}">
                <div id="popup_blockly">
                    <critter-blockly id="blockly_test" height$="{{ popupHeight}}" trashcan="true" controls="true">
                    </critter-blockly>
                </div>
                <div id="popup_buttons">
                    <critter-button id="copy_button" class="popup_button">
                        <iron-icon icon="icons::content-copy"></iron-icon>
                    </critter-button>
                    <critter-button id="paste_button" class="popup_button">
                        <iron-icon icon="icons::content-paste"></iron-icon>
                    </critter-button>
                    <critter-button id="help_button" class="popup_button">
                        <iron-icon icon="icons:help"></iron-icon>
                    </critter-button>
                    <critter-button id="save_button" class="popup_button">
                        <iron-icon icon="icons:check"></iron-icon>
                    </critter-button>
                    <critter-button id="delete_button" class="popup_button">
                        <iron-icon icon="icons:delete"></iron-icon>
                    </critter-button>
                </div>
            </critter-popup>
        `;
    }


    static get is() {
        return 'critter-test-popup';
    }

    static get properties() {
        return {
            y_position: {
                type: Number
            },

            _selectedBlock: {
                type: Object
            },

            blockSize: {
                type: Number
            },

            boardHeight: {
                type: Number
            },

            popupHeight: {
                type: Number
            },

            _copiedCode: {
                type: String
            }
        }
    }

    connectedCallback() {
        super.connectedCallback();

        this._globalData = window.Core.CritterLevelData;

        afterNextRender(this, function () {
            this.$.save_button.addEventListener("click", () => this._saveMine());
            this.$.delete_button.addEventListener("click", () => this._deleteMine());
            this.$.help_button.addEventListener("click", () => this._showHelp());
            this.$.copy_button.addEventListener("click", () => this._copyCode());
            this.$.paste_button.addEventListener("click", () => this._pasteCode());
        });
    }

    _saveMine(){
        let code = this.$.blockly_test.getJavaScript();
        if (code === '') {
            let toaster = document.createElement("critter-toaster");
            toaster.type = "error";
            toaster.msg = "You have to create a test first";
            this.shadowRoot.append(toaster);
            toaster.show(this._toasterTime);
            this._popupClose();
            return;
        }
        let detail = {};
        detail.code = new Function('x', 'y', code);
        detail.xml = this.$.blockly_test.getXML();
        this._globalData.mines[this._selectedBlock.x][this._selectedBlock.y] = detail;
        this.dispatchEvent(new CustomEvent('_mineSet', {detail: {position: this._selectedBlock}, bubbles: true, composed: true}));
        this._popupClose();
    }

    _deleteMine() {
        this._globalData.mines[this._selectedBlock.x][this._selectedBlock.y] = undefined;
        this.dispatchEvent(new CustomEvent('_mineRemoved', {detail: {position: this._selectedBlock}, bubbles: true, composed: true}));
        this._popupClose();
    }

    _popupClose() {
        this.$.mine_popup.hide();
    }

    _showHelp() {
        this.$.blockly_test.setCode(this._globalData.test);
    }

    _copyCode() {
        this._copiedCode = this.$.blockly_test.getXML();
    }

    _pasteCode() {
        this.$.blockly_test.setCode(this._copiedCode);
    }

    show(detail) {
        this._selectedBlock = detail;
        this.$.mine_popup.show(detail);
        if(this._globalData.mines[detail.x][detail.y]){
            this.$.blockly_test.setCode(this._globalData.mines[detail.x][detail.y].xml);
        } else {
            this.$.blockly_test.setCode('<xml xmlns="http://www.w3.org/1999/xhtml"></xml>');
        }
    }
}


window.customElements.define(CritterTestPopup.is, CritterTestPopup);
