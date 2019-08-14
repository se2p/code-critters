import {html, PolymerElement} from '/lib/@polymer/polymer/polymer-element.js';
import {afterNextRender} from '/lib/@polymer/polymer/lib/utils/render-status.js';
import {Level} from '../critter-level-mixin/critter-level-mixin.js';
import {Toaster} from '../critter-toaster/critter-toaster-mixin.js';

import '../critter-popup/critter-popup.js';
import '../critter-button/critter-button.js';
import '../critter-blockly/critter-blockly.js';

import '/lib/@polymer/iron-icons/iron-icons.js';
import '/lib/@polymer/iron-iconset-svg/iron-iconset-svg.js';


/*
# critter-popup

A popup displayed on  certain position

## Example
```html
<critter-popup>{*Some Content*}</critter-popup>
```

@demo
*/
class CritterTestPopup extends Toaster(Level(PolymerElement)) {
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
                --critter-button-color-disabled: transparent;
                --critter-button-color: trasnparent;
                --critter-button-text-color: #666;
                --critter-button-text-color-disabled: whitesmoke;
                transition: 100ms
            }
            
            critter-button:hover iron-icon{
                padding-bottom: 5px;
            }
            
            critter-button iron-icon{
                --iron-icon-height: 35px;
                --iron-icon-width: 35px;
                margin: auto;
            }
            
            #close_button{
                margin-bottom: 20px;
            }
            
            #save_button{
                margin-bottom: 0;
            }
            
            #save_button{
                margin-top: 5px;
            }
            
            #close_button:hover,
            #delete_button:hover{
                --critter-button-text-color: red;
            }
            
            #delete_button:hover{
                margin-top: -2px;
                height: 42px;
            }
            
            #delete_button:hover iron-icon{
                height: 40px;
            }
            
            #save_button:hover{
                --critter-button-text-color: limegreen;
            }
            
            #help_button:hover,
            #copy_button:hover,
            #paste_button:hover{
                --critter-button-text-color: #039BE5;
            }
            
        </style>
        <critter-popup id="mine_popup" block-size="{{blockSize}}" board-height="{{ boardHeight }}">
                <div id="popup_blockly">
                    <critter-blockly id="blockly_test" height$="{{ popupHeight}}" trashcan="true" controls="true">
                    </critter-blockly>
                </div>
                <div id="popup_buttons">
                    <critter-button id="close_button" class="popup_button">
                        <iron-icon icon="icons:close"></iron-icon>
                    </critter-button>   
                    <critter-button id="copy_button" class="popup_button">
                        <iron-icon icon="icons::content-copy"></iron-icon>
                    </critter-button>
                    <critter-button id="paste_button" class="popup_button" disabled>
                        <iron-icon icon="icons::content-paste"></iron-icon>
                    </critter-button>
                    <critter-button id="help_button" class="popup_button">
                        <iron-icon icon="icons:help-outline"></iron-icon>
                    </critter-button>
                    <critter-button id="delete_button" class="popup_button">
                        <!--<iron-icon icon="icons:delete"></iron-icon> -->
                         <iron-iconset-svg name="inline">
                          <svg>
                           <defs>
                           <g id="delete">
                              <path
                                 d="m 19.094496,4.1511902 h -3.5 l -1,-1 H 9.5944942 l -1,1 h -3.5 v 2 H 19.094496 Z"
                                 id="delete_top"
                                 style="transition: 100ms; position: relative;"
                                 inkscape:connector-curvature="0"
                                 sodipodi:nodetypes="ccccccccc" />
                              <path
                                 style="stroke-width:1"
                                 d="m 6.1528276,19.209525 c 0,1.1 0.9,2 2,2 h 8.0000014 c 1.1,0 2,-0.9 2,-2 V 7.2095242 H 6.1528276 Z"
                                 id="delete_bottom"/>
                                 </g>
                               </defs>
                          </svg>
                          </iron-iconset-svg>
                          <iron-icon icon="inline:delete"></iron-icon>
                    </critter-button>
                    <critter-button id="save_button" class="popup_button">
                        <iron-icon icon="icons:check"></iron-icon>
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
            this.$.delete_button.addEventListener("mouseover", () => this._animateTrashcan());
            this.$.delete_button.addEventListener("mouseleave", () => this._resetTrashcan());
            this.$.help_button.addEventListener("click", () => this._showHelp());
            this.$.copy_button.addEventListener("click", () => this._copyCode());
            this.$.close_button.addEventListener("click", () => this._popupClose());
            this.$.paste_button.addEventListener("click", () => this._pasteCode());
        });
    }

    _saveMine() {
        let code = this.$.blockly_test.getJavaScript();
        if (code === '') {
            this.showErrorToast("You have to create a test first");
            this._popupClose();
            return;
        }
        let detail = {};
        detail.code = new Function('x', 'y', code);
        detail.xml = this.$.blockly_test.getXML();
        this._globalData.mines[this._selectedBlock.x][this._selectedBlock.y] = detail;
        this.dispatchEvent(new CustomEvent('_mineSet', {
            detail: {position: this._selectedBlock},
            bubbles: true,
            composed: true
        }));
        this._popupClose();
    }

    _deleteMine() {
        this._globalData.mines[this._selectedBlock.x][this._selectedBlock.y] = undefined;
        this.dispatchEvent(new CustomEvent('_mineRemoved', {
            detail: {position: this._selectedBlock},
            bubbles: true,
            composed: true
        }));
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
        let xmlElement = new DOMParser().parseFromString(this._copiedCode, 'text/html').body.childNodes[0];
        this.$.paste_button.disabled = xmlElement.innerHTML === "";
    }

    _pasteCode() {
        this.$.blockly_test.setCode(this._copiedCode);
    }

    show(detail) {
        this._selectedBlock = detail;
        this.$.mine_popup.show(detail);
        if (this._globalData.mines[detail.x][detail.y]) {
            this.$.blockly_test.setCode(this._globalData.mines[detail.x][detail.y].xml);
        } else {
            this.$.blockly_test.setCode('<xml xmlns="http://www.w3.org/1999/xhtml"></xml>');
        }
    }

    _animateTrashcan() {
        let trashcanSVG = this.$.delete_button.shadowRoot.querySelector("slot").assignedNodes()[4].shadowRoot.querySelector("#delete_top");
        trashcanSVG.style.transform = "rotate(20deg) translate(0.5px,-8px)";
    }

    _resetTrashcan() {
        let trashcanSVG = this.$.delete_button.shadowRoot.querySelector("slot").assignedNodes()[4].shadowRoot.querySelector("#delete_top");
        trashcanSVG.style.transform = "rotate(0) translate(0,0)";
    }
}


window.customElements.define(CritterTestPopup.is, CritterTestPopup);
