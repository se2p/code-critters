import {html, PolymerElement} from '/lib/@polymer/polymer/polymer-element.js';
import { afterNextRender } from '/lib/@polymer/polymer/lib/utils/render-status.js';
import {Level} from '../critter-level-mixin/critter-level-mixin.js';
import '../critter-data-store/critter-data-store.js';
import '../critter-gameboard/critter-board.js';
import '../critter-critter/critter-critter.js';
import '../critter-button/critter-button.js';
import '../critter-blockly/critter-blockly.js';
import '../critter-toaster/critter-toaster.js';
import '../critter-tab/critter-tab.js';
import '../critter-element-selector/critter-element-selector.js';
import '../critter-mutant-creator/critter-mutant-creator.js';
import '../critter-input/critter-input.js';

import '/lib/@polymer/iron-ajax/iron-ajax.js';

/*
# critter game

Displays the game elements

## Example
```html
<critter-level-creator width="NUMBER" height="NUMBER"></critter-level-creator>
```

*/

window.Core = window.Core || {};

class CritterLevelCreator extends Level(PolymerElement) {
    static get template() {
        return html`
        <custom-style>
            <style>
                :host {
                    display: block;
                }

                :host > * {
                    --overlay-margin-top: 40px;
                }

                .tab {
                    display: none;
                }

                .tab-0{
                    display: block;
                }

                .tab-1 critter-blockly {
                    width: 45%;
                    float: left;
                }

                #blockly_init{
                    margin-right: 5%;
                }

                #save_button {
                    margin-left: 20px;
                    float: left;
                }

                #gameboard,
                #element_selector{
                    float: left;
                }

                #element_selector{
                    margin-left: 20px;
                }

                #name_input{
                    clear: both;
                    float: left;
                    margin-left: 20px;
                }

                #coordinate_container{
                    min-height: 40px;
                    left: 70px;
                    position: relative;
                    align-items: center;
                    margin-left: 20px;
                    float: left;
                }

            </style>
        </custom-style>

        <critter-data-store></critter-data-store>


        <critter-tab id="tabs" tabs="{{tabs}}"></critter-tab>
        <div class="tab-0 tab">
            <critter-gameboard id="gameboard"  selected-element="{{selectedElement}}" show-grid="false"></critter-gameboard>
            <critter-element-selector id="element_selector"  selected-element="{{selectedElement}}" height$="{{ _boardHeight}}">
            </critter-element-selector>
        </div>
        <div  class="tab-1 tab">
            <critter-blockly id="blockly_init" height$="{{ _boardHeight}}" controls="true" trashcan="true" cut>
                <span>Init Code</span>
            </critter-blockly>
            <critter-blockly id="blockly_CUT" height$="{{ _boardHeight}}" controls="true" trashcan="true" cut>
                <span>CUT</span>
            </critter-blockly>
        </div>
        <div class="tab-2 tab">
            <critter-blockly id="blockly_test" height$="{{ _boardHeight}}" trashcan="true" controls="true">
            </critter-blockly>
        </div>
        <div class="tab-3 tab">
            <critter-mutant-creator id="mutant_creator" height$="{{ _boardHeight}}" number-of-mutants="{{_globalData.numberOfMutants}}" ></critter-mutant-creator>
        </div>
        <br>
        <critter-input id="name_input" label="Name: " value="{{levelName}}"></critter-input>
        <critter-button id="save_button">Save</critter-button>
        <div id="coordinate_container">Coordinates: (X: {{_hoverX}}, Y: {{_hoverY}})</div>
        `;
    }


    static get is() {
        return 'critter-level-creator';
    }

    static get properties() {
        return {

            levelName: {
                type: String,
                value: ''
            },

            selectedElement: {
                type: String
            },

            tabs: {
                type: Array,
                value: [
                    {title: "Gameboard"},
                    {title: "CUT"},
                    {title: "Test"},
                    {title: "Critter"}
                ]
            },

            _boardHeight: {
                type: Number,
                computed: '_computeBoardHeight(_globalData.height, _blockSize)'
            },

            _blockSize: {
                type: Number,
                value: 40
            },

            _critterList: {
                type: Array,
                value: []
            },

            _hoverX: {
                type: Number
            },

            _hoverY: {
                type: Number
            },

            _names: {
                type: Array,
                value: []
            },

            _toasterTime: {
                type: Number,
                value: 5000
            }

        };
    }

    connectedCallback() {
        super.connectedCallback();

        window.Core.GameRoot = this;
        window.Core.Generator = true;

        afterNextRender(this, function () {
            this._globalData = window.Core.CritterLevelData;
            this.$.save_button.addEventListener("click", this._saveLevel.bind(this));
            this.addEventListener("hoverOver", (event) => this._handleHoverField(event));
            this.addEventListener("valueChanged", (event) => this._validateLevelName(event));
            this.$.tabs.addEventListener("tabChanged", (event) => this._onTabChanged(event));
            this._initLevel();
            this._initNames();
        });
    }

    /** initializes an empty level **/
    _initLevel() {
        this._globalData.level = [];
        let array = [];
        for (let j = 0; j < this._globalData.width; ++j) {
            array[j] = "grass";
        }
        for (let i = 0; i < this._globalData.width; ++i) {
            this._globalData.level[i] = array.slice();
        }
        this.$.gameboard.dispatchEvent(new CustomEvent('_levelChanged', {detail: {}, bubbles: true, composed: true}));
    }

    /** gets all existing level names **/
    _initNames() {
        let req = document.createElement('iron-ajax');
        req.url = "/generator/names";
        req.method = "GET";
        req.handleAs = 'json';
        req.contentType = 'application/json';
        req.bubbles = true;
        req.rejectWithRequest = true;

        req.addEventListener('response', e => {
            this._names = e.detail.__data.response;
        });

        let genRequest = req.generateRequest();
        req.completes = genRequest.completes;
        return req;
    }

    /** validates the Level Name **/
    _validateLevelName(event) {
        this.$.name_input.valid = !this._names.includes(event.detail.name);
    }

    /** saves the Level Data**/
    _saveLevel() {
        if (this.levelName === '') {
            this.$.name_input.valid = false;
        }

        if (!this.$.name_input.valid) {
            let toaster = document.createElement("critter-toaster");
            toaster.type = "error";
            toaster.msg = "Please enter a valid name";
            this.shadowRoot.append(toaster);
            toaster.show(this._toasterTime);
            return;
        }

        if (!this.$.blockly_CUT.getJavaScript()) {
            let toaster = document.createElement("critter-toaster");
            toaster.type = "error";
            toaster.msg = "Please create some CUT";
            this.shadowRoot.append(toaster);
            toaster.show(this._toasterTime);
            return;
        }

        if (!this._globalData.tower || this._globalData.tower.x === -1) {
            let toaster = document.createElement("critter-toaster");
            toaster.type = "error";
            toaster.msg = "Please set the tower";
            this.shadowRoot.append(toaster);
            toaster.show(this._toasterTime);
            return;
        }

        if (!this._globalData.spawn || this._globalData.spawn.x === -1) {
            let toaster = document.createElement("critter-toaster");
            toaster.type = "error";
            toaster.msg = "Please set the tower";
            this.shadowRoot.append(toaster);
            toaster.show(this._toasterTime);
            return;
        }
        if (!this.existPath(this._globalData.spawn)) {
            let toaster = document.createElement("critter-toaster");
            toaster.type = "error";
            toaster.msg = "There is no path to the tower";
            this.shadowRoot.append(toaster);
            toaster.show(this._toasterTime);
            return;
        }

        let req = document.createElement('iron-ajax');
        req.url = "/generator/level/create";
        req.method = "post";
        req.handleAs = 'json';
        req.contentType = 'application/json';
        req.bubbles = true;
        req.rejectWithRequest = true;
        req.body = {
            name: this.levelName,
            level: this._globalData.level,
            tower: this._globalData.tower,
            spawn: this._globalData.spawn,
            numberOfCritters: this._globalData.numberOfCritters,
            numberOfHumans: this._globalData.numberOfHumans,
            cut: this.$.blockly_CUT.getJavaScript(),
            init: this.$.blockly_init.getJavaScript(),
            test: this.$.blockly_test.getXML(),
            xml: this.getXmlWithHeads(),
    };

        req.addEventListener('response', e => {
            let data = e.detail;
            this.$.mutant_creator.saveMutants(this.levelName);
        });

        req.addEventListener('error', e => {
            let toaster = document.createElement("critter-toaster");
            toaster.type = "error";
            toaster.msg = "Could not save level";
            this.shadowRoot.append(toaster);
            toaster.show(this._toasterTime);
        });

        let genRequest = req.generateRequest();
        req.completes = genRequest.completes;

        return req;
    }

    getXmlWithHeads(){
        let xml = '<xml xmlns=\"http://www.w3.org/1999/xhtml\">\n';
        let initXML;
        let cutXML;
        if(initXML = this.$.blockly_init.getXML()){
            xml += '<block type="cut_head" id="init_head" x="42" y="105">\n' +
                '<statement name="Content">\n';
            let div = document.createElement('div');
            div.innerHTML = initXML;
            xml += div.firstChild.innerHTML;
            xml += '</statement>\n' +
                '</block>\n';
        }if(cutXML = this.$.blockly_CUT.getXML()){
            xml += '<block type="init_head" id="cut_head" x="450" y="105">\n' +
                '<statement name="Content">\n';
            let div = document.createElement('div');
            div.innerHTML = cutXML;
            xml += div.firstChild.innerHTML;
            xml += '</statement>\n' +
                '</block>\n';
        }
        console.log(xml);
        return  xml + '</xml>';
    }

    /** computes the heights of critter-board**/
    _computeBoardHeight(height, size) {
        return height * size;
    }

    /** handels the hover event and displays the coordinates **/
    _handleHoverField(event) {
        let detail = event.detail;
        this._hoverX = detail.x + 1;
        this._hoverY = this._globalData.width - detail.y;
    }

    _onTabChanged(event) {
        let detail = event.detail;
        this.shadowRoot.querySelector('.tab-' + detail.old).style.display = "none";
        this.shadowRoot.querySelector('.tab-' + detail.new).style.display = "block";
        if (detail.old === 0) {
            this.shadowRoot.querySelector('#coordinate_container').style.display = "none";
        } else if (detail.new === 0) {
            this.shadowRoot.querySelector('#coordinate_container').style.display = "block";
        }
        if (detail.new === 3) {
            this._globalData.cut = this.$.blockly_CUT.getXML();
            this._globalData.init = this.$.blockly_init.getXML();
        }
    }

}

window.customElements.define(CritterLevelCreator.is, CritterLevelCreator);
