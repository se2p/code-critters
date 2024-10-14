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
import {Level} from '../critter-level-mixin/critter-level-mixin.js';
import {I18n} from '../critter-i18n/critter-i18n-mixin.js';
import {blocklyVariableTranslations} from "../constants.js";


/*
# critter-blockly

Displays the Efficiencylable for tires of the class c1 (car) according to the EU-guideline for .

## Example
```html
<critter-blockly width="200" height="200" toolbox="[String Toolbox]"></critter-blockly>
```

@demo
*/

class CritterBlockly extends I18n(Level(PolymerElement)) {

    static get template() {
        return html`
    <style>
      :host {
        display: block;
      }

      iframe {
        border: none;
        width: 100%;
      }

      #heading{
        width: 100%;
        text-align: center;
      }
    </style>
    <div id="heading">
      <slot></slot>
    </div>
    <iframe id="blockly_frame" src$="[[importPath]]iFrame/blockly_frame.html" height$="{{height}}px"></iframe>
    `;
    }

    static get importMeta() {
        return import.meta;
    }

    static get is() {
        return 'critter-blockly';
    }

    static get properties() {

        return {

            width: {
                type: Number,
                value: 200
            },

            height: {
                type: Number,
                value: 200
            },

            trashcan: {
                type: Boolean,
                value: false,
                observer: '_trashcanChanged'
            },

            controls: {
                type: Boolean,
                value: false,
                observer: '_controlsChanged'
            },

            jsCode: {},

            cut: {
                type: Boolean,
                value: false,
                observer: '_codeChanged'
            },

            readOnly: {
                type: Boolean,
                value: false,
                observer: '_readOnlyChanged'
            },

            restarted: {
                type: Array,
                value: []
            },

            isHealingTest: {
                type: Boolean,
                value: false,
                observer: '_isHealingTestChanged'
            },

            isHealingCut: {
                type: Boolean,
                value: false,
                observer: '_isHealingCodeChanged'
            },

            customXmlString: { // can hold the recipe xml of a critter from second stage
                type: String,
                value: '',
                observer: '_isCustomXmlStringChanged'
            }

        };
    }

    static get observers() {
        return [
            '_onLanguageChanged(language)'
        ]
    }

    connectedCallback() {
        super.connectedCallback();

        afterNextRender(this, function () {
            this._globalData = window.Core.CritterLevelData;
            this.attachEventListeners();
            if (window.Core.Generator) {
                this._loadFullToolBox();
            }
            this._updateIFrame();
        });
    }

    attachEventListeners() {
        let rootNode = window.Core.GameRoot;
        if (this.cut) {
            rootNode.addEventListener("_xmlCodeChanged", this._codeChanged.bind(this));
            rootNode.removeEventListener("_testCodeChanged", this._codeChanged.bind(this));
            rootNode.addEventListener("_toolboxChanged", this._toolboxChanged.bind(this));

        } else if (this.isHealingTest) {
            rootNode.addEventListener("_healingToolboxChanged", this._toolboxChanged.bind(this));
            rootNode.addEventListener("_isHealingChanged", this._isHealingTestChanged.bind(this));
        } else if (this.isHealingCut) {
            rootNode.addEventListener("_healingCodeChanged", this._isHealingCodeChanged.bind(this));
        } else {
            rootNode.addEventListener("_testCodeChanged", this._codeChanged.bind(this));
            rootNode.removeEventListener("_xmlCodeChanged", this._codeChanged.bind(this));
            rootNode.addEventListener("_toolboxChanged", this._toolboxChanged.bind(this));

        }

        this.$.blockly_frame.contentWindow.addEventListener("_invalidComparison", (event) => this._dispatchInvalidBlocklyAssertWarning(event));
        this.$.blockly_frame.contentWindow.addEventListener("_userInteraction", (event) => this._dispatchUserInteractionEvent(event));
        this.$.blockly_frame.contentWindow.addEventListener("_blocklyReady", () => this._updateIFrame());
    }

    /** updates the IFrame **/
    _updateIFrame() {
        if (this.$.blockly_frame.contentWindow.ready) {
            this._toolboxChanged();
            this._controlsChanged();
            this._trashcanChanged();
            this._readOnlyChanged();
            this._onLanguageChanged();
            this._isInHealingLevelChanged();

            if (this.isHealingTest || this.isHealingCut) {
                this._isHealingTestChanged();
                this._isHealingCodeChanged();
            } else {
                this._codeChanged();
            }
        } else {
            this.restartFunction(this._updateIFrame)
        }

    }

    /** updates the toolbox of the IFrame **/
    _toolboxChanged() {
        if (!this.$.blockly_frame || !this.$.blockly_frame.contentWindow.setToolbox) {
            this.restartFunction(this._toolboxChanged);
            return;
        }
        if (this.isHealingTest) {
            this.$.blockly_frame.contentWindow.setToolbox(this._globalData.healingToolbox, this.cut || this.isHealingCut);
        } else if (((window.Core.Generator || !this.cut ))) {
            this.$.blockly_frame.contentWindow.setToolbox(this._globalData.toolbox, this.cut || this.isHealingCut);
        } else {
            this.$.blockly_frame.contentWindow.setToolbox("", this.cut || this.isHealingCut);
        }
    }

    _setToolBox(toolBox) {
        if (!this.$.blockly_frame || !this.$.blockly_frame.contentWindow.setToolbox) {
            this.restartFunction(this._setToolBox(toolBox));
            return;
        }
        this.$.blockly_frame.contentWindow.setToolbox(toolBox);
    }

    /** updates the trashcan symbol of the IFrame **/
    _trashcanChanged() {
        if (this.$.blockly_frame.contentWindow.setTrashcan) {
            this.$.blockly_frame.contentWindow.setTrashcan(this.trashcan, this.cut || this.isHealingCut);
        }
    }

    /** updates the controls of the IFrame **/
    _controlsChanged() {
        if (this.$.blockly_frame.contentWindow.setControls) {
            this.$.blockly_frame.contentWindow.setControls(this.controls, this.cut || this.isHealingCut);
        }
    }

    _isHealingTestChanged() {
        if (this.isHealingTest) {
            this.setCode('<xml xmlns="http://www.w3.org/1999/xhtml"></xml>');
        }
    }

    _isCustomXmlStringChanged() {
        this._isHealingCodeChanged();
    }

    _isHealingCodeChanged() {
        if (!this._globalData) {
            if(this.isHealingCut){
                this.restartFunction(this._isHealingCodeChanged);
            }
            return
        }
        let code = "";
        if (this.isHealingCut) {
            if (this.customXmlString.length > 1) {
                code = this.customXmlString;
            } else {
                code = this._globalData.healXml;
            }
            this.getHealingCenteredCode(code);
            if(!code){
                this.restartFunction(this._isHealingCodeChanged);
                return;
            }
        }
    }

    /** updates the code of the IFrame **/
    _codeChanged() {
        if (!this._globalData) {
            if(this.cut){
                this.restartFunction(this._codeChanged);
            }
            return
        }
        let code = "";
        if (this.cut) {
            if (this._globalData.xml) {
                code = this._globalData.xml;
                code = this.getCenteredCode(code);
                if(!code){
                    this.restartFunction(this._codeChanged);
                    return;
                }
            } else {
                this.restartFunction(this._codeChanged);
                return;
            }
        }
        // this.setCode(code);
    }

    /** Restart a funktion if not all required elements for the function are available **/
    restartFunction(func) {
        if (this.restarted.includes(func)) {
            return;
        }
        setTimeout(() => {
            this.restarted.splice(this.restarted.indexOf(func), 1);
            this[func.name]();
        }, 200);

    }

    getHealingCenteredCode(code) {
        this.setCode(code);
        const blocklyWindow = this.$.blockly_frame.contentWindow;

        if (blocklyWindow.getBlockById) {
            const recipeStartWhileBlock = blocklyWindow.getBlockById("recipe_start_while");
            if (recipeStartWhileBlock) {
                const recipeWidth = recipeStartWhileBlock.width;
                const recipeHeight = recipeStartWhileBlock.height;

                let recipeX = 0;
                let recipeY = 0;

                if (this.$.blockly_frame.offsetWidth > recipeWidth + 50) {
                    recipeX = (this.$.blockly_frame.offsetWidth - recipeWidth) / 2;
                } else {
                    recipeY = (this.$.blockly_frame.offsetHeight - recipeHeight) / 2;
                }

                code = code.replace(/(id="recipe_start_while".{0,50}x=")(.*?)(")/ig, "$1" + recipeX + "$3");
                code = code.replace(/(id="recipe_start_while".{0,50}y=")(.*?)(")/ig, "$1" + recipeY + "$3");

                if (!this.customXmlString) {
                    this._globalData.healXml = code;
                }
            }
        } else {
            return;
        }
        return code;
    }

    getCenteredCode(code){
        this.setCode(code);
        if (this.$.blockly_frame.contentWindow.getBlockById) {
            if (this.$.blockly_frame.contentWindow.getBlockById("cut_head")
                && this.$.blockly_frame.contentWindow.getBlockById("init_head")) {
                let cutWidth = this.$.blockly_frame.contentWindow.getBlockById("cut_head").width;
                let initWidth = this.$.blockly_frame.contentWindow.getBlockById("init_head").width;

                let initX = 0;
                let initY = 0;
                let cutX = 0;
                let cutY = 0;

                if (this.$.blockly_frame.offsetWidth > cutWidth + initWidth + 50) {
                    cutX = initWidth + 25;
                } else {
                    let initHeight = this.$.blockly_frame.contentWindow.getBlockById("init_head").height;
                    cutY = initHeight + 75;
                }
                code = code.replace(/(id="cut_head".{0,50}x=")(.*?)(")/ig, "$1" + cutX + "$3");
                code = code.replace(/(id="init_head".{0,50}x=")(.*?)(")/ig, "$1" + initX + "$3");
                code = code.replace(/(id="cut_head".{0,50}y=")(.*?)(")/ig, "$1" + cutY + "$3");
                code = code.replace(/(id="init_head".{0,50}y=")(.*?)(")/ig, "$1" + initY + "$3");
                this._globalData.xml = code;
            }
        } else {
            return
        }
        return code;
    }

    setCodeAndCenter(code, tries = 0) {
        this.setCode(code);
        let viewHeight = 0;
        if (this.$.blockly_frame.contentWindow.getMetrics) {
            const metrics = this.$.blockly_frame.contentWindow.getMetrics();
            viewHeight = metrics.viewHeight;
        }

        if (tries < 3 && viewHeight === 0) { // retry if blockly workspace is not fully initialized yet
            setTimeout(() => {
                return this.setCodeAndCenter(code, tries + 1)
            }, 50)
        } else {
            return code;
        }
    }

    /** sets the blockly code**/
    setCode(code){
        if (this.$.blockly_frame.contentWindow.setCode) {
            this.$.blockly_frame.contentWindow.setCode(code, this.cut || this.isHealingCut);
        }
    }

    /**
     * Changes the color of a block.
     * @param blockId of the wanted block
     * @param color string of the color hex code
     */
    highlightBlock(blockId, color) {
        if (this.$.blockly_frame.contentWindow.highlightBlockWithColor) {
            this.$.blockly_frame.contentWindow.highlightBlockWithColor(blockId, color)
        }
    }

    /**
     * Resets the color of a block.
     * @param blockId
     */
    resetColorOfBlock(blockId) {
        if (this.$.blockly_frame.contentWindow.setDefaultBlockColor) {
            this.$.blockly_frame.contentWindow.setDefaultBlockColor(blockId)
        }
    }

    /**
     * If true, an event is thrown on each block move by a user (necessary during hint mode)
     */
    reactOnBlockMove(react) {
        if (this.$.blockly_frame.contentWindow.setInHintMode) {
            this.$.blockly_frame.contentWindow.setInHintMode(react);
        }
    }

    /** disables changing the blockly code **/
    _readOnlyChanged() {
        if (this.$.blockly_frame.contentWindow.setReadOnly) {
            this.$.blockly_frame.contentWindow.setReadOnly(this.readOnly, this.cut || this.isHealingCut);
        }
    }

    /** Sets the type of level: base or loop/healing level */
    _isInHealingLevelChanged() {
        if (this.$.blockly_frame.contentWindow.setIsInLoopLevel) {
            let isLoopLevel = (this.isHealingCut || this.isHealingTest)
            this.$.blockly_frame.contentWindow.setIsInLoopLevel(isLoopLevel);
        }
    }

    /** generates JavaScript **/
    getJavaScript() {
        if (this.$.blockly_frame.contentWindow.getCode) {
            this.jsCode = this.$.blockly_frame.contentWindow.getCode();
            return this.jsCode;
        }
    }

    /** generates XML **/
    getXML() {
        if (this.$.blockly_frame.contentWindow.getCode) {
            this.jsCode = this.$.blockly_frame.contentWindow.getXML();
            return this.jsCode;
        }
    }

    /** Returns the number of blocks in the workspace */
    getBlockNum() {
        if (this.$.blockly_frame.contentWindow.getBlockNumber) {
            return this.$.blockly_frame.contentWindow.getBlockNumber();
        }
    }

    /** loads full toolbox **/
    _loadFullToolBox() {
        if (this._globalData && this.$.blockly_frame.contentWindow.ready) {
            let req = document.createElement('iron-ajax');
            req.url = "/generator/toolbox";
            req.method = "GET";
            req.handleAs = 'text';
            req.contentType = 'application/json';
            req.bubbles = true;
            req.rejectWithRequest = true;

            req.addEventListener('response', e => {
                this._globalData.toolbox = e.detail.__data.response;
            });
            req.generateRequest();
        } else {
            this.restartFunction(this._loadFullToolBox);
        }
    }

    async _onLanguageChanged() {
        let langTag = this.language.substr(0, 2);
        if (this.$.blockly_frame.contentWindow.changeLanguage) {
            this._globalData.xml = this.translateVariableNames(this._globalData.xml, langTag);
            await this.$.blockly_frame.contentWindow.changeLanguage(langTag, this.cut);
            this._codeChanged();
        }
    }

    async _setCodeInCurrentLanguage(code) {
        let langTag = this.language.substr(0, 2);
        if (this.$.blockly_frame.contentWindow.changeLanguage) {
            const translatedCode = this.translateVariableNames(code, langTag);
            await this.$.blockly_frame.contentWindow.changeLanguage(langTag, this.cut);
            this.setCodeAndCenter(translatedCode);
        }
    }

    _dispatchInvalidBlocklyAssertWarning(event) {
        if (event.detail && event.detail.curBlockType && event.detail.comparedWith) {
            const { curBlockType, comparedWith } = event?.detail
            window.dispatchEvent(new CustomEvent('_showValidationWarning', {detail: { curBlockType, comparedWith }, bubbles: true, composed: true}));
        }
    }

    _dispatchUserInteractionEvent(event) {
        if (event.detail && event.detail.xml && event.detail.jsCode) {
            const { xml, jsCode } = event.detail;

            window.dispatchEvent(new CustomEvent('_userMovedBlockInHintMode', {detail: { xml, jsCode}, bubbles: true, composed: true}));
        }
    }

    /**
     * Extract variable names of a level XML (for now: "count") and replace with translation in current language.
     */
    translateVariableNames(xmlString, language) {
        for (const originalName in blocklyVariableTranslations) {
            if (blocklyVariableTranslations.hasOwnProperty(originalName)) {
                const translatedName = blocklyVariableTranslations[originalName][language];
                if (translatedName) {
                    // replace all occurrences of variable names with translated names in xml string
                    xmlString = xmlString.split(`<field name="NAME">${originalName}</field>`).join(`<field name="NAME">${translatedName}</field>`);
                }
            }
        }
        return xmlString;
    }
}

window.customElements.define(CritterBlockly.is, CritterBlockly);
