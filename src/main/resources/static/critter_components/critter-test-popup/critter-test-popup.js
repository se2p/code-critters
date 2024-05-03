/*-
 * #%L
 * Code Critters
 * %%
 * Copyright (C) 2019 - 2023 Code Critter contributors
 * %%
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as
 * published by the Free Software Foundation, either version 3 of the
 * License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public
 * License along with this program.  If not, see
 * <http://www.gnu.org/licenses/gpl-3.0.html>.
 * #L%
 */
import {html, PolymerElement} from '/lib/@polymer/polymer/polymer-element.js';
import {afterNextRender} from '/lib/@polymer/polymer/lib/utils/render-status.js';
import {v4 as uuidv4} from '../../node_modules/uuid/dist/esm-browser/index.js';
import {Level} from '../critter-level-mixin/critter-level-mixin.js';
import {Toaster} from '../critter-toaster/critter-toaster-mixin.js';

import '../critter-popup/critter-popup.js';
import '../critter-button/critter-button.js';
import '../critter-blockly/critter-blockly.js';

import '/lib/@polymer/iron-icons/iron-icons.js';
import '/lib/@polymer/iron-iconset-svg/iron-iconset-svg.js';
import {leftEmptyAssertBlockly, rightEmptyAssertBlockly, warningMessages} from "../constants.js";

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
                :host {
                    position: absolute;
                    width: 100%;
                    height: 100%;
                    top: 0;
                    pointer-events: none;
                }

                @media only screen and (max-width: 600px) {
                    #popup_blockly {
                        width: calc(100%);
                        float: left;
                    }

                    #popup_buttons * {
                        float: left;
                        width: 40px;
                        display: block;
                    }

                    critter-button {
                        display: block;
                        --critter-button-color-disabled: transparent;
                        --critter-button-color: transparent;
                        --critter-button-text-color: #666;
                        --critter-button-text-color-disabled: whitesmoke;
                        transition: 100ms
                    }
                }

                @media only screen and (min-width: 601px) {
                    #popup_blockly {
                        width: calc(100% - 50px);
                        float: left;
                    }

                    #popup_buttons {
                        float: left;
                        width: 40px;
                        margin: auto;
                        margin-left: 10px;
                    }

                    #close_button {
                        margin-bottom: 20px;
                    }

                    #save_button {
                        margin-bottom: 0;
                    }

                    #save_button {
                        margin-top: 5px;
                    }

                    critter-button {
                        width: 40px;
                        height: 40px;
                        margin-bottom: 5px;
                        --critter-button-color-disabled: transparent;
                        --critter-button-color: transparent;
                        --critter-button-text-color: #666;
                        --critter-button-text-color-disabled: whitesmoke;
                        transition: 100ms
                    }

                    critter-button:hover iron-icon {
                        padding-bottom: 5px;
                    }

                    critter-button iron-icon {
                        --iron-icon-height: 35px;
                        --iron-icon-width: 35px;
                        margin: auto;
                    }
                }

                #dialog-container {
                    display: flex;
                    flex-direction: column;
                    align-items: center;
                    padding: 8px 8px 0 8px;
                }
                .dialog-title {
                    font-weight: bold;
                    margin-bottom: 12px;
                }

                #dialog-buttons {
                    display: flex;
                    flex-direction: row;
                    justify-content: space-around;
                }

                critter-dialog critter-button {
                    width: unset;
                    height: unset;
                    margin-bottom: unset;
                    --critter-button-text-color: #000000;
                }

                #close_button:hover,
                #delete_button:hover,
                #close_without_save:hover {
                    --critter-button-text-color: red;
                }

                #delete_button:hover {
                    margin-top: -2px;
                    height: 42px;
                }

                #delete_button:hover iron-icon {
                    height: 40px;
                }

                #save_button:hover,
                #first_save:hover {
                    --critter-button-text-color: limegreen;
                }

                #help_button:hover,
                #copy_button:hover,
                #paste_button:hover {
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
                                                sodipodi:nodetypes="ccccccccc"/>
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
                <div>
                    <critter-dialog id="close_mine_dialog">
                        <div class="row" id="dialog-container">
                            <div class="dialog-title">[[__("really_delete_unsaved")]]</div>
                            <div id="dialog-buttons">
                                <critter-button id="first_save" class="col-5">[[__("no_first_save")]]</critter-button>
                                <critter-button id="close_without_save" class="col-5">[[__("yes")]]</critter-button>
                            </div>
                        </div>
                    </critter-dialog>
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
            },

            _mineCreationStart: {
                type: Number,
                value: Date.now()
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
            this.$.close_button.addEventListener("click", () => this._popupCloseSafely());
            this.$.paste_button.addEventListener("click", () => this._pasteCode());
            this.$.close_without_save.addEventListener("click", () => this._popupClose());
            this.$.first_save.addEventListener("click", () => this._saveMine());
            window.addEventListener("_showValidationWarning", (event) => this._showWarning(event))
        });
    }


    /**
     * Shows a warning if the test contains an invalid comparison of different data types,
     * e.g. shirt color and a number
     * @param event holds the two block types being compared
     */
    _showWarning(event) {
        if (event.detail.curBlockType && event.detail.comparedWith) {
            const { curBlockType, comparedWith } = event.detail;
            const warningMessage = warningMessages[curBlockType]?.[comparedWith];
            if (warningMessage) {
                this.showWarningToast(warningMessage);
            }
        }
    }


    _saveMine() {
        let code = this.$.blockly_test.getJavaScript();

        if (this._isCodeNewAndEmpty(code)) { // show error if trying to initially save an empty test
            this._popupClose();
            return;
        }

        if (this._isCodeNewlyCleared(code)) { // if player deletes all blocks from test
            this._deleteMine();
            this._popupClose();
            return;
        }

        if (!this._isCodeChanged(code)) { // do nothing if the code has not changed
            this._popupClose();
            return;
        }

        if (code.toString().includes(leftEmptyAssertBlockly) || code.toString().includes(rightEmptyAssertBlockly)) {
            this.$.close_mine_dialog.close();
            this.showErrorToast("incomplete_assert_block");
            return;
        }

        let detail = {};
        detail.creationStart = this._mineCreationStart;
        detail.creationEnd = Date.now();
        detail.code = new Function('x', 'y', code);
        detail.js = code;
        detail.xml = this.$.blockly_test.getXML();
        detail.xPosition = this._selectedBlock.x + 1;
        detail.yPosition = this._selectedBlock.y;
        detail.deleted = false;
        detail.deletionDateTime = null;
        detail.updated = false;
        detail.frontEndId = uuidv4();

        // if an existing mine is edited
        if (this._globalData.mines[this._selectedBlock.x][this._selectedBlock.y] != null) {
            detail.updated = true;
        }
        this._globalData.mines[this._selectedBlock.x][this._selectedBlock.y] = detail;

        this.dispatchEvent(new CustomEvent('_mineSet', {
            detail: {position: this._selectedBlock, mine: detail},
            bubbles: true,
            composed: true
        }));
        this._popupClose();
    }

    _deleteMine() {
        let removedMine = this._globalData.mines[this._selectedBlock.x][this._selectedBlock.y];

        if (removedMine) {
            removedMine.creationStart = this._mineCreationStart;
            removedMine.creationEnd = Date.now();
            removedMine.deleted = true;
            removedMine.deletionDateTime = Date.now();

            this._globalData.mines[this._selectedBlock.x][this._selectedBlock.y] = undefined;

            this.dispatchEvent(new CustomEvent('_mineRemoved', {
                detail: {position: this._selectedBlock, mine: removedMine},
                bubbles: true,
                composed: true
            }));
        }
        // else, removedMine === undefined because the player uses the trashcan to remove a mine that she just
        // started to create (-> no portal saved yet)
        this._popupClose();
    }

    _popupClose() {
        this.$.close_mine_dialog.close();
        this.$.mine_popup.hide();
    }

    /**
     * Called to close the test-popup, it first checks if and which changes have been made
     * to the test and deletes/saves test data respectively
     */
    _popupCloseSafely() {
        let code = this.$.blockly_test.getJavaScript();

        if (this._isCodeNewAndEmpty(code)) { // if it is an empty test newly opened, do not ask for saving
            this._popupClose();
            return;
        }

        if (this._isCodeChanged(code)) { // if code has changed ask to save before closing the mine
            this.$.close_mine_dialog.open();
            return;
        }

        this._popupClose();
    }

    /**
     * Returns true if the code is empty, but it was NOT empty before, i.e. the user
     * deleted all blocks from the test
     */
    _isCodeNewlyCleared(code) {
        let existedBefore = this._globalData.mines[this._selectedBlock.x][this._selectedBlock.y]
            && this._globalData.mines[this._selectedBlock.x][this._selectedBlock.y].js.toString() !== '';
        return code === '' && existedBefore;
    }

    /**
     * Returns true if the code is empty and has been empty/non-existent before
     */
    _isCodeNewAndEmpty(code) {
        let justCreated = !this._globalData.mines[this._selectedBlock.x][this._selectedBlock.y];
        return code === '' && justCreated;
    }

    /**
     * Returns true if the code has been changed since the last save
     */
    _isCodeChanged(code) {
        let justCreated = !this._globalData.mines[this._selectedBlock.x][this._selectedBlock.y];
        let hasBeenChanged = this._globalData.mines[this._selectedBlock.x][this._selectedBlock.y]
            && code.toString() !== this._globalData.mines[this._selectedBlock.x][this._selectedBlock.y].js.toString();
        return justCreated || hasBeenChanged;
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
            // save mine creation or update start time
            this._mineCreationStart = Date.now();
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
