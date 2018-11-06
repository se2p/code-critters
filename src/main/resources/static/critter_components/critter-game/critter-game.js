import {html, PolymerElement} from '/lib/@polymer/polymer/polymer-element.js';
import { afterNextRender } from '/lib/@polymer/polymer/lib/utils/render-status.js';
import {Level} from '../critter-level-mixin/critter-level-mixin.js';
import '../critter-data-store/critter-data-store.js';
import '../critter-gameboard/critter-board.js';
import '../critter-critter/critter-critter.js';
import '../critter-button/critter-button.js';
import '../critter-blockly/critter-blockly.js';
import '../critter-dialog/critter-dialog.js';
import '../critter-toaster/critter-toaster.js';
import '../critter-level-selector/critter-level-selector.js';


import '/lib/@polymer/iron-icons/iron-icons.js';


/*
# critter game

Displays the game elements

## Example
```html
<critter-game level="[Array with texture code]"></critter-game>
```

@demo

*/

window.Core = window.Core || {};
window.Core.GameRoot = window.Core.GameRoot || [];

class CritterGame extends Level(PolymerElement) {
    static get template() {
        return html`
        <style>
            :host {
                display: block;
            }

            #critter_container {
                position: absolute;
                top: 8px;
                left: 29px;
                pointer-events: none;
            }

            #critter_container critter-critter {
                pointer-events: all;
            }

            .half_blockly{
                width: 45%;
                margin-right: 5%;
                float: left;
            }

            #board_container,
            #blockly_container {
                float: left;
            }

            #blockly_container {
                margin-left: 10px;
            }

            #grid_button,
            #send_button,
            #search_button,
            #coordinate_container{
                margin-left: 20px;
                float: left;
            }

            #coordinate_container{
                min-height: 40px;
                left: 230px;
                position: relative;
                align-items: center;
                display: flex;
                width: 165px;
            }
            #killed_container{
                float: left;
                min-height: 40px;
                margin-left: 50px;
                align-items: center;
                display: flex;
            }
            #finished_container{
                float: left;
                min-height: 40px;
                margin-left: 260px;
                align-items: center;
                display: flex;
                clear: both;
            }

            #grid_button {
                clear: both;
            }

            #blockly_test {
                margin-bottom: 5px;
            }

            #blockly_CUT {
                margin-bottom: 5px;
            }

            #star_container{
                color: gold;
                width: 100%;
                height: 50px;
                text-align: center;
            }
            #star_container iron-icon{
                width: 50px;
                height: 50px;
            }

            #dialog_text{
                margin-top: 40px;
                font-size: 1.5em;
                text-align: center;
            }

            #selector_container{
                margin-top: 60px;
                text-align: center;
            }

            #selector_container critter-level-selector{
                --margin-selector-button: auto;
            }

        </style>

        <critter-data-store></critter-data-store>

        <critter-dialog id="score_dialog">
            <div id="star_container">
                <iron-icon id="star" icon="icons:star"></iron-icon>
            </div>
            <div id="dialog_text">
                Score: [[score]] points
            </div>
            <div id="selector_container">
                <h3>Select the next level:</h3>
                <critter-level-selector></critter-level-selector>
            </div>
        </critter-dialog>

        <div id="board_container">
            <critter-gameboard id="gameboard" selected-element="{{selectedElement}}" show-grid="{{showGrid}}">

            </critter-gameboard>
            <div id="critter_container" style$="width: {{ _boardWidth }}px; height:{{ _boardHeight }}px">
            </div>
        </div>
        <div id="blockly_container" style$="width: calc(-{{ _boardWidth }}px - 70px + 100vw)">
            <critter-blockly id="blockly_init" class="half_blockly" height$="{{ _blocklyHeight}}" controls="true"
                             init read-only>
                <span>Init Code</span>
            </critter-blockly>
            <critter-blockly id="blockly_CUT" class="half_blockly" height$="{{ _blocklyHeight}}" controls="true" cut
                             read-only>
                <span>Code under Test</span>
            </critter-blockly>
            <critter-blockly id="blockly_test" height$="{{ _blocklyHeight}}" trashcan="true" controls="true">
                <span>Test</span>
            </critter-blockly>
        </div>
        <br>
        <critter-button id="grid_button">Show Grid</critter-button>
        <critter-button id="send_button">Send Critters</critter-button>
        <div id="coordinate_container">Coordinates: (X: {{_hoverX}}, Y: {{_hoverY}})</div>
        <div id="finished_container">{{_finishedHumans}} of&nbsp;<span id="humansNumber"></span>&nbsp;humans has finished</div>
        <div id="killed_container">{{_killedCritters}} of&nbsp;<span id="critterNumber"></span> &nbsp;critters has been detected</div>
        `;
    }

    static get is() {
        return 'critter-game';
    }

    static get properties() {
        return {
            showGrid: {
                type: Boolean,
                value: true
            },

            selectedElement: {
                type: String,
                value: 'mine'
            },

            _blocklyHeight: {
                type: Number,
                computed: '_computeBlocklyHeight(_globalData.height, _blockSize)'
            },

            _boardHeight: {
                type: Number,
                computed: '_computeBoardHeight(_globalData.height, _blockSize)'
            },

            _boardWidth: {
                type: Number,
                computed: '_computeBoardWidth(_globalData.width, _blockSize)'
            },

            _blockSize: {
                type: Number,
                value: 40
            },

            _critterList: {
                type: Array,
                value: []
            },

            _interval: {
                type: Number,
                value: 2000
            },

            _hoverX: {
                type: Number
            },

            _hoverY: {
                type: Number
            },

            _crittersSent: {
                type: Boolean,
                value: false
            },

            score: {
                type: Number,
                value: 0
            },

            _killedCritters: {
                type: Number,
                value: 0
            },

            _finishedHumans: {
                type: Number,
                value: 0
            },

            _doneCritters: {
                type: Number,
                value: 0
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
        window.Core.Generator = false;


        this._globalData = window.Core.CritterLevelData;

        afterNextRender(this, function () {
            this.$.grid_button.addEventListener("click", () => this._showGrid(this));
            this.$.send_button.addEventListener("click", () => this._startCritters(this));
            this.addEventListener("hoverOver", (event) => this._handleHoverField(event));
            this.addEventListener("fieldClicked", (event) => this._onFieldClicked(event));

            this.addEventListener("_levelFinished", () => this._onLevelFinished());
            this.addEventListener("_critterKilled", (event) => this._onCritterKilled(event));
            this.addEventListener("_critterFinished", (event) => this._onCritterFinished(event));
            this.addEventListener("_critterNumberChanged", (event) => this._onCritterNumberChanged(event));

            this._globalData.levelName = new URL(window.location.href).searchParams.get("level");
        });
    }

    /** change the grid rendering**/
    _showGrid(node) {
        node.showGrid = !node.showGrid;
    }

    /** starts the critters**/
    _startCritters(node) {
        if (!this._crittersSent) {
            let cut = this.$.blockly_CUT.getJavaScript();
            let init = this.$.blockly_init.getJavaScript();
            this._addHumans(cut, init);
            this._addCritters();
            this._sendCritters();
            this._crittersSent = true;
            this.$.send_button.innerHTML = "Speed Up"
        } else {
            this.$.send_button.disabeld = true;
            this._critterList.forEach((critter) => {
                critter.speedy = true;
            });
            this._interval = 1500;
        }
    }

    /** sends one critter after another**/
    _sendCritters(i = 0) {
        if (!i && this._critterList.length !== this._globalData.numberOfHumans + this._globalData.numberOfCritters) {
            setTimeout(() => {
                this._sendCritters(0);
            }, 100);
            return;
        }
        if (i < this._critterList.length) {
            this._critterList[i].startAnimation();
            setTimeout(() => {
                this._sendCritters(++i);
            }, this._randomNumber(this._interval * 0.6, this._interval));
        }
    }

    /** creates and append humans**/
    _addHumans(cut, init) {
        let i = 0;
        while (i++ < this._globalData.numberOfHumans) {
            this._createCritter(true, cut, init);
        }
    }

    _createCritter(human, cut, init) {
        let container = this.$.critter_container;
        let critter = document.createElement("critter-critter");
        critter.human = human;
        critter.cut = new Function(cut);
        critter.init = new Function(init);
        container.append(critter);
        this._critterList.push(critter);
    }

    _addCritters() {
        let req = document.createElement('iron-ajax');
        req.url = "/level/mutants";
        req.method = "GET";
        req.handleAs = 'json';
        req.contentType = 'application/json';
        req.bubbles = true;
        req.rejectWithRequest = true;
        req.params = {level: this._globalData.levelName};

        req.addEventListener('response', e => {
            let mutants = e.detail.__data.response;
            for (let i = 0; i < this._globalData.numberOfCritters; i++) {
                this._createCritter(false, mutants[i % (mutants.length)].code, mutants[i % (mutants.length)].init);
            }
            this._critterList = this._shuffleArray(this._critterList);

        });

        let genRequest = req.generateRequest();
        req.completes = genRequest.completes;
        return req;
    }

    /** computes the heights of critter-container**/
    _computeBlocklyHeight(height, size) {
        return height * 0.5 * size - 5;
    }

    /** computes the heights of critter-board**/
    _computeBoardHeight(height, size) {
        return height * size;
    }

    /** computes the width of critter-board**/
    _computeBoardWidth(width, size) {
        return width * size;
    }

    /** handels the hover event and displays the coordinates **/
    _handleHoverField(event) {
        let detail = event.detail;
        this._hoverX = detail.x + 1;
        this._hoverY = this._globalData.width - detail.y;
    }

    /** handels the clickField event and creates the element **/
    _onFieldClicked(event) {
        let detail = event.detail;
        let code = this.$.blockly_test.getJavaScript();
        if (code === '') {
            let toaster = document.createElement("critter-toaster");
            toaster.type = "error";
            toaster.msg = "You have to create a test first";
            this.shadowRoot.append(toaster);
            toaster.show(this._toasterTime);
            return;
        }
        detail.code = new Function('x', 'y', code);
        detail.xml = this.$.blockly_test.getXML();
        this._globalData.mines.push(detail);
    }

    _updateScore(x) {
        this.score += x;
    }

    _onCritterKilled(e) {
        this._updateScore(e.detail.human ? -100 : 50);
        if (!e.detail.human) {
            this._killedCritters++;
        }
        this._onCritterDone()
    }

    _onCritterFinished(e) {
        this._updateScore(e.detail.human ? 50 : -100);
        if (e.detail.human) {
            this._finishedHumans++;
        }
        this._onCritterDone()
    }

    _onCritterDone() {
        this._doneCritters++;
        if (this._doneCritters === this._critterList.length) {
            this.dispatchEvent(new CustomEvent('_levelFinished', {detail: {}, bubbles: true, composed: true}));
        }
    }

    _onLevelFinished() {
        this.score -= 25 * (this._globalData.mines.length);
        this.score = (this.score < 0 ? 0 : this.score);
        this.$.score_dialog.open();
        this._storeResult();
    }

    _onCritterNumberChanged() {
        this.$.critterNumber.innerHTML = this._globalData.numberOfCritters;
        this.$.humansNumber.innerHTML = this._globalData.numberOfHumans;
    }

    _storeResult() {

        //Function disabled
        return;

        this._globalData.mines.forEach((mine) => {
            mine.code = mine.code.toString();
        });
        let req = document.createElement('iron-ajax');
        req.url = "/result";
        req.method = "POST";
        req.handleAs = 'json';
        req.contentType = 'application/json';
        req.bubbles = true;
        req.rejectWithRequest = true;
        req.body = {
            level: this._globalData.levelName,
            mines: this._globalData.mines,
            score: this._globalData.score,
            cookie: this.getCookie()
        };

        let genRequest = req.generateRequest();
        req.completes = genRequest.completes;
        return req;
    }

    setCookie(name, value) {
        document.cookie = name + "=" + value + ";" + ";path=/";
    }

    getCookie() {
        let decodedCookie = decodeURIComponent(document.cookie);
        let ca = decodedCookie.split(';');
        for (let i = 0; i < ca.length; i++) {
            let c = ca[i];
            while (c.charAt(0) == ' ') {
                c = c.substring(1);
            }
            if (c.indexOf('id') == 0) {
                return c.substring(3, c.length);
            }
        }
        let cookie = Math.random().toString(36).replace(/[^a-z]+/g, '').substr(0, 5);
        this.setCookie('id', cookie);
        return cookie;
    }
}

window.customElements.define(CritterGame.is, CritterGame);

