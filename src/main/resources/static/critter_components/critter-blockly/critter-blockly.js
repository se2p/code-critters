import {html, PolymerElement} from '/lib/@polymer/polymer/polymer-element.js';
import { afterNextRender } from '/lib/@polymer/polymer/lib/utils/render-status.js';
import {Level} from '../critter-level-mixin/critter-level-mixin.js';


/*
# critter-blockly

Displays the Efficiencylable for tires of the class c1 (car) according to the EU-guideline for .

## Example
```html
<critter-blockly width="200" height="200" toolbox="[String Toolbox]"></critter-blockly>
```

@demo
*/

class CritterBlockly extends Level(PolymerElement) {

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

    static get importMeta() { return import.meta; }

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

            init: {
                type: Boolean,
                value: false,
                observer: '_codeChanged'
            },

            readOnly: {
                type: Boolean,
                value: false,
                observer: '_readOnlyChanged'
            },

        };
    }

    connectedCallback() {
        super.connectedCallback();

        afterNextRender(this, function () {
            let rootNode = window.Core.GameRoot;
            this.$.blockly_frame.addEventListener("load", () => this._updateIFrame());
            rootNode.addEventListener("_toolboxChanged", this._toolboxChanged);
            this._globalData = window.Core.CritterLevelData;
            if (window.Core.Generator) {
                this._loadFullToolBox();
            }
        });
    }

    _attachEventListeners() {
        let rootNode = window.Core.GameRoot;
        if (this.cut) {
            rootNode.addEventListener("_xmlCodeChanged", this._codeChanged);
            rootNode.removeEventListener("_testCodeChanged", this._codeChanged);
        } else {
            rootNode.addEventListener("_testCodeChanged", this._codeChanged);
            rootNode.removeEventListener("_xmlCodeChanged", this._codeChanged);
        }
    }

    /** updates the IFrame **/
    _updateIFrame() {
        this._toolboxChanged();
        this._controlsChanged();
        this._trashcanChanged();
        this._codeChanged();
        this._readOnlyChanged();
    }

    /** updates the toolbox of the IFrame **/
    _toolboxChanged() {
        if (!this.$.blockly_frame || !this.$.blockly_frame.contentWindow.setToolbox) {
            return;
        }
        if (((window.Core.Generator || (!this.cut && !this.init)))) {
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
            return
        }
        let code = "";
        if (this.cut) {
            code = this._globalData.xml;
            this.setCode(code);
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
        } else {
            return
        }

        this.setCode(code);
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
        if (this._globalData) {
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
        }
    }
}

window.customElements.define(CritterBlockly.is, CritterBlockly);
