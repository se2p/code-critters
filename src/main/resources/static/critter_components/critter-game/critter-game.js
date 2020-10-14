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
import { afterNextRender } from '/lib/@polymer/polymer/lib/utils/render-status.js';
import {Level} from '../critter-level-mixin/critter-level-mixin.js';
import {I18n} from '../critter-i18n/critter-i18n-mixin.js';
import '../critter-level-selector/critter-level-selector-simple.js';
import '../critter-gameboard/critter-board.js';
import '../critter-critter/critter-critter.js';
import '../critter-button/critter-button.js';
import '../critter-control-button/critter-control-button.js';
import '../critter-blockly/critter-blockly.js';
import '../critter-dialog/critter-dialog.js';
import '../critter-test-popup/critter-test-popup.js';
import '../critter-timeout/critter-timeout-manager.js';
import '../critter-score/critter-score.js';
import '../critter-header/critter-header.js';
import './critter-game-image.js'

import '/lib/@polymer/iron-icons/iron-icons.js';

import {critterStyle} from '/style/critter-botstrap.js'



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

class CritterGame extends I18n(Level(PolymerElement)) {
    static get template() {
        return html`
        ${critterStyle}

        <style>
            :host {
                display: block;
            }

            #critter_container {
                position: absolute;
                top: -1px;
                left: 36px;
                pointer-events: none;
            }

            #critter_container critter-critter {
                pointer-events: all;
            }

            .full_blockly{
                width: 95%;
                margin-right: 5%;
                float: left;
            }

            #send_button,
            #speedUp_button,
            #reload_button,
            #coordinate_container{
                padding: 2%;
                margin: 2%;
                float: left;
            }
            
            #game_containers {
                padding: 2%;
            }

            #coordinate_container{
                visibility: hidden;
            }
            
            #finished_container *, #killed_container *{
                padding: 1%;
                margin: 0;
                float: left;
            }
            
            #finished_container, #killed_container {
                margin: 2%;
            }

            #send_button {
                clear: both;
            }


            #blockly_CUT {
                margin-bottom: 5px;
            }

            #star_container{
                color: gold;
                height: 50px;
                width: fit-content;
                margin: auto;
            }
            
            #star_container iron-icon{
                width: 100px;
                height: 100px;
                visibility: hidden;
                transition: width 100ms, height 100ms;
            }
            
            #star_container .star{
                width: 50px;
                height: 50px;
                position: relative;
                margin: 20px 8px 0 8px;
                float: left;
            }
            
            #star_container .visibleStar{
                width: 50px;
                height: 50px;
                visibility: visible;
            }
            
             #star_container .star.star2 {
                margin-top: 0;
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

            #selector_container critter-level-selector-simple{
                --margin-selector-button: auto;
            }
            
            critter-button {
                min-width: 100px;
                min-height: 40px;
            }
            
            critter-store {
                font-size: 0.85em;
            }
            
            #header hr {
                color: #FFA600;
                background-color: #FFA600;
                height: 3px;
                margin: 0;
            }
            
            .row #buttons, .row #heads {
                margin-bottom: 2%;
                margin-top: 2%
            }
        </style>

        
        <critter-timeout-manager></critter-timeout-manager>


        <critter-dialog id="score_dialog">
            <div id="star_container">
                <div class="star">
                    <iron-icon id="star1" icon="icons:star"></iron-icon>
                </div>
                <div class="star star2">
                    <iron-icon id="star2" icon="icons:star"></iron-icon>
                </div>
                <div class="star">
                    <iron-icon id="star3" icon="icons:star"></iron-icon>
                </div>
            </div>
            <div id="dialog_text">
                <critter-score id="dialog_score"></critter-score>
            </div>
            <div id="selector_container">
                <h3>[[__('select_next')]]</h3>
                <critter-level-selector-simple></critter-level-selector-simple>
            </div>
        </critter-dialog>
        
        <div class="row">
            <div class="col-sm-12" id="header">
                <critter-header></critter-header>
                <hr>
            </div>
        </div>
        <div class="row" id="game_containers">
            <div id="board_container" class="col-sm-6">
            <!--<div id="board_container" class=" col-lg mt-3 mx-auto" style="max-width: fit-content">-->
                <div class="row">
                    <critter-gameboard id="gameboard" show-grid="{{showGrid}}"></critter-gameboard>
                    <div id="critter_container"></div>
                    <critter-test-popup id="mine_popup" block-size="{{_blockSize}}" board-height="{{ _boardHeight }}" popup-height="{{ _popupHeight}}">
                    </critter-test-popup>
                </div>
                <br>
                <div class="row" id="buttons">
                    <div class="col-sm-6">
                        <critter-control-button id="send_button" class="game_button" shape="play"></critter-control-button>
                        <critter-control-button id="speedUp_button" class="game_button" shape="fastforward" disabled></critter-control-button>
                        <critter-control-button id="reload_button" class="game_button" shape="reload"></critter-control-button>
                    </div>
                    <div class="col-sm-6">
                        <div id="coordinate_container">[[__('coordinates')]]: (X: {{_hoverX}}, Y: {{_hoverY}})</div>
                    </div>
                </div>
                <div class="row" id="heads">
                    <div class="col-sm-4">
                        <div id="finished_container"></div>
                    </div>
                    <div class="col-sm-8">
                        <div id="killed_container"></div>
                    </div>
                </div>
            </div>
            <div id="blockly_container" class="col-sm-6">
            <!--<div id="blockly_container" class="col-lg mt-3">-->
                <critter-blockly id="blockly_CUT" class="full_blockly" height$="{{ _boardHeight}}" controls="true" cut
                                 read-only>
                </critter-blockly>
            </div>
        </div>
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

            _boardHeight: {
                type: Number,
                computed: '_computeBoardHeight(_globalData.height, _blockSize)'
            },

            _boardWidth: {
                type: Number,
                computed: '_computeBoardWidth(_globalData.width, _blockSize)'
            },

            _popupHeight: {
                type: Number,
                computed: '_computePopupHeight(_globalData.height, _blockSize)'
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

            stars: {
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

            _paused: {
                type: Boolean,
                value: true
            },

            _startTime: {
                type: Number,
                value: 0
            },

            _totalTime: {
                type: Number,
                value: 0
            }

        };
    }

    connectedCallback() {
        super.connectedCallback();

        window.Core.GameRoot = this;
        window.Core.Generator = false;


        this._globalData = window.Core.CritterLevelData;
        this._timeoutManager = window.Core.timeouts;

        afterNextRender(this, function () {
            this.$.send_button.addEventListener("click", () => this._startCritters(this));
            this.$.speedUp_button.addEventListener("click", () => this._speedUpGame(this));
            this.$.reload_button.addEventListener("click", () => this._reloadGame(this));
            this.$.board_container.addEventListener("mouseover", () => this._renderCoordinates(true));
            this.$.board_container.addEventListener("mouseout", () => this._renderCoordinates(false));
            this.addEventListener("hoverOver", (event) => this._handleHoverField(event));
            this.addEventListener("fieldClicked", (event) => this._onFieldClicked(event));

            this.addEventListener("_levelFinished", () => this._onLevelFinished());
            this.addEventListener("_critterKilled", (event) => this._onCritterKilled(event));
            this.addEventListener("_critterFinished", (event) => this._onCritterFinished(event));
            this.addEventListener("_critterNumberChanged", (event) => this._onCritterNumberChanged(event));

            this.addEventListener("_thirdStarReached", () => this._showStar(3));
            this.addEventListener("_secondStarReached", () => this._showStar(2));
            this.addEventListener("_firstStarReached", () => this._showStar(1));


            this._globalData.levelName = new URL(window.location.href).searchParams.get("level");

            this._startTime = Date.now();
        });
    }

    _speedUpGame() {
        if(this._crittersSent) {
            this._critterList.forEach((critter) => {
                critter.speedy = true;
            });
            this._interval = 1500;
        }
        this.$.speedUp_button.disabled = true;
    }

    _reloadGame() {
        this._startTime = Date.now();
        this._totalTime = 0;
        this._paused = true;
        this._crittersSent = false;
        this._finishedHumans = 0;
        this._doneCritters = 0;
        this._killedCritters = 0;
        this.score = 0;
        this._interval = 2000;
        this._critterList.forEach(critter => {
            critter.remove();
        });
        this._critterList = [];
        this._timeoutManager.clear();
        this._globalData.deleteMines();
        this.$.gameboard.removeAllMines();
        this.$.send_button.shape = "play";
        this.$.speedUp_button.disabled = true;
        this._onCritterNumberChanged();
    }


    /** starts the critters**/
    _startCritters(node) {
        window.onbeforeunload = function() {
            return true;
        };

        this.dispatchEvent(new CustomEvent('_crittersStarted', {detail: {}, bubbles: true, composed: true}));

        if (this._paused) {
            this._totalTime += (Date.now() -  this._startTime);

            this._paused = false;
            this.$.send_button.shape = "pause";
            if(!this._crittersSent) {
                this._addHumans();
                this._addCritters();
                this._sendCritters();
                this._crittersSent = true;
                this.$.speedUp_button.disabled = false;
            } else {
                this._timeoutManager.resumeAll();
                this._critterList.forEach(critter => {
                    critter.resume();
                });
            }
        } else {
            this._startTime = Date.now();
            this._timeoutManager.pauseAll();
            this._critterList.forEach(critter => {
                critter.pause();
            });
            this.$.send_button.shape = "play";
            this._paused = true;
        }
    }

    /** sends one critter after another**/
    _sendCritters(i = 0) {
        if (!i && this._critterList.length !== this._globalData.numberOfHumans + this._globalData.numberOfCritters) {
            this._timeoutManager.add(() => {
                this._sendCritters(0);
            }, 100);
            return;
        }
        if (i < this._critterList.length) {
            this._critterList[i].startAnimation();
            this._timeoutManager.add(() => {
                this._sendCritters(++i);
            }, this._randomNumber(this._interval * 0.6, this._interval));
        }
    }

    /** creates and append humans**/
    _addHumans() {
        let i = 0;
        while (i++ < this._globalData.numberOfHumans) {
            this._createCritter(true, this._globalData.cut, this._globalData.init);
        }
    }

    _createCritter(human, cut, init) {
        let container = this.$.critter_container;
        let critter = document.createElement("critter-critter");
        critter.human = human;
        critter.cut = cut;
        critter.init = init;
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
                this._createCritter(false, new Function (mutants[i % (mutants.length)].code), new Function (mutants[i % (mutants.length)].init));
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

    _computePopupHeight(height, size){
        return ((height * 0.5) * size) - 29;
    }

    _renderCoordinates(render) {
        this.$.coordinate_container.style.visibility = (render ? "visible" : "hidden");
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
        this.$.mine_popup.show(detail);
    }

    _updateScore(x) {
        this.score += x;
    }

    _onCritterKilled(e) {
        // this._updateScore(e.detail.human ? -100 : 50);
        if (!e.detail.human) {
            this._killedCritters++;
            let killed = this._killedCritters;
            let alive = this._globalData.numberOfCritters - this._killedCritters;
            this.$.killed_container.innerHTML = "";
            while (killed > 0) {
                let image = document.createElement("critter-game-image");
                image.name = "mutant_gray.png";
                this.$.killed_container.appendChild(image);
                killed--;
            }
            while (alive > 0) {
                let image = document.createElement("critter-game-image");
                image.name = "mutant_head.png";
                this.$.killed_container.appendChild(image);
                alive--;
            }
        }
        this._onCritterDone()
    }

    _onCritterFinished(e) {
        // this._updateScore(e.detail.human ? 50 : -100);
        if (e.detail.human) {
            this._finishedHumans++;
            let finished = this._finishedHumans;
            let notFinished = this._globalData.numberOfHumans - this._finishedHumans;
            this.$.finished_container.innerHTML = "";
            while (finished > 0) {
                let image = document.createElement("critter-game-image");
                image.name = "critter_head.png";
                this.$.finished_container.appendChild(image);
                finished--;
            }
            while (notFinished > 0) {
                let image = document.createElement("critter-game-image");
                image.name = "critter_gray.png";
                this.$.finished_container.appendChild(image);
                notFinished--;
            }
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
        // this.score -= 25 * (this._globalData.countMines());
        // this.score = (this.score < 0 ? 0 : this.score);
        this.$.score_dialog.open();
        if(this._globalData.countMines() > 2) {
            this.score = -25 * (this._globalData.countMines() - 2); //TODO free mines
        }
        this.score = (this._finishedHumans + this._killedCritters) * 50 +
            Math.max((Math.round(- this._totalTime / 1000) + this._globalData.freeSeconds) * 10, 0);
        this.showScore();
        let stars = 0;
        if(this.score >= 950){
            stars = 3;
        } else if (this.score >= 800){
            stars = 2;
        } else if (this.score >= 500){
            stars = 1;
        }
        window.onbeforeunload = null;
        this._storeResult(stars);
    }

    async showScore() {
        let dialogScore = this.$.dialog_score;
        let finishedHumansPercentage = Math.round((this._finishedHumans / this._globalData.numberOfHumans) * 100);
        let killedCritterPercentage = Math.round((this._killedCritters / this._globalData.numberOfCritters) * 100);
        dialogScore.overallScore = this.score;
        if(this._globalData.countMines() > 2) {
            await dialogScore.insertData("mines_line", -25 * (this._globalData.countMines() - 2), this._globalData.countMines());
        } else {
            await dialogScore.insertData("mines_line", 0, this._globalData.countMines());
        }
        await dialogScore.insertData("finished_humans_line", this._finishedHumans * 50, finishedHumansPercentage, "%");
        await dialogScore.insertData("killed_critters_line", this._killedCritters * 50, killedCritterPercentage, "%");
        await dialogScore.insertData("time_line", Math.max((Math.round(- this._totalTime / 1000) + this._globalData.freeSeconds) * 10, 0), this._globalData.freeSeconds, 's');
    }

    _showStar(number) {
        let star = this.shadowRoot.querySelector("#star" + number);
        star.classList.add("visibleStar");
        this.stars = number;
    }

    _onCritterNumberChanged() {
        this.$.killed_container.innerHTML = "";
        let mutants = this._globalData.numberOfCritters;
        while(mutants > 0) {
            let image = document.createElement("critter-game-image");
            image.name = "mutant_head.png";
            this.$.killed_container.appendChild(image);
            mutants--;
        }
        this.$.finished_container.innerHTML = "";
        let humans = this._globalData.numberOfHumans;
        while(humans > 0) {
            let image = document.createElement("critter-game-image");
            image.name = "critter_gray.png";
            this.$.finished_container.appendChild(image);
            humans--;
        }
    }

    _storeResult(stars) {
        let req = document.createElement('iron-ajax');
        req.url = "/result";
        req.method = "POST";
        req.handleAs = 'json';
        req.contentType = 'application/json';
        req.bubbles = true;
        req.rejectWithRequest = true;
        req.body = {
            level: this._globalData.levelName,
            score: this.score,
            stars: stars
        };

        let genRequest = req.generateRequest();
        req.completes = genRequest.completes;
        return req;
    }
}

window.customElements.define(CritterGame.is, CritterGame);

