/*-
 * #%L
 * Code Critters
 * %%
 * Copyright (C) 2019 Michael Gruber
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
        } else {
            rootNode.addEventListener("_testCodeChanged", this._codeChanged.bind(this));
            rootNode.removeEventListener("_xmlCodeChanged", this._codeChanged.bind(this));
        }
        this.$.blockly_frame.contentWindow.addEventListener("_blocklyReady", () => this._updateIFrame());
        rootNode.addEventListener("_toolboxChanged", this._toolboxChanged.bind(this));
    }

    /** updates the IFrame **/
    _updateIFrame() {
        if (this.$.blockly_frame.contentWindow.ready) {
            this._toolboxChanged();
            this._controlsChanged();
            this._trashcanChanged();
            this._codeChanged();
            this._readOnlyChanged();
            this._onLanguageChanged();
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
        if (((window.Core.Generator || !this.cut ))) {
            this.$.blockly_frame.contentWindow.setToolbox(this._globalData.toolbox);
        } else {
            this.$.blockly_frame.contentWindow.setToolbox("");
        }
    }

    /** updates the trashcan symbol of the IFrame **/
    _trashcanChanged() {
        if (this.$.blockly_frame.contentWindow.setTrashcan) {
            this.$.blockly_frame.contentWindow.setTrashcan(this.trashcan);
        }
    }

    /** updates the controls of the IFrame **/
    _controlsChanged() {
        if (this.$.blockly_frame.contentWindow.setControls) {
            this.$.blockly_frame.contentWindow.setControls(this.controls);
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
        this.setCode(code);
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

    /** sets the blockly code**/
    setCode(code){
        if (this.$.blockly_frame.contentWindow.setCode) {
            this.$.blockly_frame.contentWindow.setCode(code);
        }
    }


    /** disables changing the blockly code **/
    _readOnlyChanged() {
        if (this.$.blockly_frame.contentWindow.setReadOnly) {
            this.$.blockly_frame.contentWindow.setReadOnly(this.readOnly);
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
            await this.$.blockly_frame.contentWindow.changeLanguage(langTag);
            this._codeChanged();
        }
    }
}

window.customElements.define(CritterBlockly.is, CritterBlockly);
