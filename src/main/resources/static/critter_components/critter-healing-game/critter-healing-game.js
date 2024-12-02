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
import '../critter-level-selector/critter-level-selector-simple.js';
import '../critter-gameboard/critter-board.js';
import '../critter-gameboard/critter-healing-board.js';
import '../critter-critter/critter-healing-critter.js';
import '../critter-critter/critter-collected-critter.js';
import '../critter-button/critter-button.js';
import '../critter-control-button/critter-control-button.js';
import '../critter-blockly/critter-blockly.js';
import '../critter-dialog/critter-dialog.js';
import '../critter-test-popup/critter-test-popup.js';
import '../critter-healing-test-popup/critter-healing-test-popup.js';
import '../critter-timeout/critter-timeout-manager.js';
import '../critter-score/critter-healing-score.js';
import '../critter-header/critter-header.js';
import '../critter-data-store/critter-data-store.js';
import '../critter-arrow-popup/critter-arrow-popup.js';

import '/lib/@polymer/iron-icons/iron-icons.js';

import {critterStyle} from '/style/critter-botstrap.js'
import {normalCritterInterval, speedyCritterInterval} from "../constants.js";
import {Toaster} from '../critter-toaster/critter-toaster-mixin.js';


/*
The second stage game
*/

window.Core = window.Core || {};
window.Core.GameRoot = window.Core.GameRoot || [];

class CritterHealingGame extends Toaster(I18n(Level(PolymerElement))) {
    static get template() {
        return html`
            ${critterStyle}

            <style>
                :host {
                    display: block;
                }
                
                #board_container {
                    display: flex;
                    flex-direction: column;
                    justify-content: space-between;
                }

                /* Causes the blockly_container to only take up 1/3 of the screen in order to not overlap with the
                fixed-size gameboard. */
                @media only screen and (max-width: 1350px) and (min-width: 1150px) {
                    #board_container {
                        max-width: 62%;
                    }

                    #blockly_container {
                        max-width: 38%;
                        margin-left: 2%;
                    }

                    .full_blockly {
                        width: 100%;
                    }
                }

                /* Causes the blockly_container to be positioned below the gameboard. */
                @media only screen and (max-width: 1149px) {
                    #board_container {
                        max-width: 100%;
                        width: 100%;
                    }

                    #blockly_container {
                        max-width: 100vw;
                        width: 100vw;
                    }

                    .full_blockly {
                        max-width: 640px;
                    }
                }

                #game_critter_container {
                    position: absolute;
                    top: -1px;
                    left: 36px;
                    pointer-events: none;
                }

                #game_critter_container critter-healing-critter {
                    pointer-events: all;
                }

                #critter_container, #critter_container_finished, #critter_container_all_collectors {
                    position: relative;
                    pointer-events: none;
                    display: flex;
                    flex-direction: row;
                    justify-content: left;
                    border-radius: 15px;
                    max-width: 430px;
                    background-color: white;
                    margin: 1%;
                }

                #critter_container {
                    max-width: 350px;
                }

                #critter_container critter-collected-critter, #critter_container_finished critter-collected-critter, #critter_container_all_collectors critter-collected-critter{
                    pointer-events: all;
                    width: 40px;
                    height: 40px;
                }

                #send_button,
                #speedUp_button,
                #speedDown_button,
                #reload_button,
                #jump_to_end_button {
                    padding: 0 1%;
                    margin: 0 1%;
                    float: left;
                }

                #game_containers {
                    padding: 2%;
                }

                #coordinate_container {
                    visibility: hidden;
                    float: right;
                    margin-top: 1%;
                    margin-bottom: 1%;
                }

                #critter_container *, #critter_container_finished * {
                    padding: 1%;
                    margin: 0;
                    float: left;
                }

                #send_button {
                    clear: both;
                }

                .critterCodeDiv {
                    border-radius: 15px;
                    border: 2px solid #FFA600;
                    border-top-width: 50px;
                    padding: 1%;
                    z-index: 1;
                }

                .critterIntrText {
                    position: absolute;
                    top: 10px;
                    left: 20px;
                    z-index: 2;
                }

                .critterCodeContainer {
                    position: relative;
                }

                #star_container {
                    color: gold;
                    height: 50px;
                    width: fit-content;
                    margin: auto;
                }

                #star_container iron-icon {
                    width: 100px;
                    height: 100px;
                    visibility: hidden;
                    transition: width 100ms, height 100ms;
                }

                #star_container .star {
                    width: 50px;
                    height: 50px;
                    position: relative;
                    margin: 20px 8px 0 8px;
                    float: left;
                }

                #star_container .visibleStar {
                    width: 50px;
                    height: 50px;
                    visibility: visible;
                }

                #star_container .star.star2 {
                    margin-top: 0;
                }

                #dialog_text {
                    margin-top: 40px;
                    font-size: 1.5em;
                    text-align: center;
                }

                #selector_container {
                    margin-top: 60px;
                    text-align: center;
                    max-width: 500px;
                }

                #selector_container critter-level-selector-simple {
                    --margin-selector-button: auto;
                }

                .text {
                    text-align: left;
                    font-size: 1.3em;
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

                #buttons {
                    border-radius: 15px;
                    border: 2px solid #FFA600;
                    padding: 1%;
                    max-width: 350px;
                    background-color: white;
                }

                #sent_back_critters, #finished_critters, #all_collectors {
                    position: relative;
                    pointer-events: none;
                    display: flex;
                    flex-direction: row;
                    justify-content: left;
                    border-radius: 15px;
                    border: 2px solid #FFA600;
                    padding: 1%;
                    max-width: 430px;
                    background-color: white;
                    flex-wrap: wrap;
                }

                #sent_back_critters {
                    margin-top: 3%;
                    left: -15px;
                    max-width: 350px;
                }

                #finished_critters, #all_collectors {
                    margin-top: 1%;
                }

                #mutant_button {
                    margin-left: auto;
                    margin-right: auto;
                }

                #retry_button, #next_level_button {
                    margin-left: auto;
                    margin-right: auto;
                    font-size: 1.5em;
                    text-align: center;
                }
                
                #retry_button {
                    margin-bottom: 15px;
                }

                .dialog_container {
                    display: flex;
                    flex-direction: column;
                    align-items: center;
                    padding: 8px 8px 0 8px;
                }

                .dialog_title {
                    font-weight: bold;
                    margin-bottom: 12px;
                }

                #dialog_buttons {
                    display: flex;
                    flex-direction: row;
                    justify-content: space-around;
                }
                
                #restart_game_confirm:hover,
                #continue_confirm:hover,
                #cont_normal_confirm:hover,
                #jump_to_end_confirm:hover {
                    font-size: 1.1em;
                    --critter-button-text-color: #ffa600;
                }
                

                #dialog_buttons critter-button {
                    --critter-button-color-disabled: transparent;
                    --critter-button-color: transparent;
                    --critter-button-text-color: #666;
                    --critter-button-text-color-disabled: whitesmoke;
                    transition: 100ms
                }

            </style>


            <critter-data-store></critter-data-store>
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
                    <critter-healing-score id="dialog_score"></critter-healing-score>
                </div>
                <div id="selector_container">
                    <template is="dom-if" if="{{_hasFullScore}}">
                        <h3>[[__('congrats')]]</h3>
                    </template>
                    <template is="dom-if" if="{{!_hasFullScore}}">
                        <critter-button id="retry_button">[[__('retry')]]</critter-button>
                        <h3>[[__('try_again_later')]]</h3>
                    </template>
                    <critter-button id="next_level_button">[[__('to_next_level')]]</critter-button>
                    
                   <!-- <h3>[[__('select_next')]]</h3>
                    <critter-level-selector-simple initial-value="{{currentLevelName}}"></critter-level-selector-simple>-->
                </div>
            </critter-dialog>

            <div class="row">
                <div class="col-sm-12" id="header">
                    <critter-header></critter-header>
                    <hr>
                </div>
            </div>
            <div class="col">
                <div class="row justify-content-center" id="game_containers">
                    <div id="board_container" class="col-4">
                        <div class="row position-relative">
                            <critter-healing-board id="gameboard" show-grid="{{showGrid}}"></critter-healing-board>
                            <div id="game_critter_container"></div>
                            <critter-arrow-popup id="arrow_popup" block-size="{{_blockSize}}"
                                                board-height="{{ _boardHeight }}">
                            </critter-arrow-popup>
                        </div>
                        <div class="row" id="buttons">
                            <div class="col">
                                <critter-control-button id="send_button" class="game_button" shape="play">
                                </critter-control-button>
                                <critter-control-button id="speedUp_button" class="game_button" shape="fastforward"
                                                        hidden="{{_isSpeedUp}}" disabled>
                                </critter-control-button>
                                <critter-control-button id="speedDown_button" class="game_button" shape="normalSpeed"
                                                        hidden="{{!_isSpeedUp}}">
                                </critter-control-button>
                                <critter-control-button id="jump_to_end_button" class="game_button" shape="jump-to-end" 
                                                        disabled>
                                </critter-control-button>
                                <!--<critter-control-button id="reload_button" class="game_button" shape="reload">
                                </critter-control-button>-->
                                <div id="coordinate_container">[[__('coordinates')]]: (X: {{_hoverX}}, Y: {{_hoverY}})</div>
                            </div>
                        </div>
                        <div class="col" id="sent_back_critters">
                            <div class="col-12 text">
                                <p>[[__("sent_home_critters")]]</p>
                            </div>
                            <div id="critter_container" class="row">
                            </div>
                        </div>
                        
                    </div>
                    <div id="blockly_container" class="col-sm-6 px-0">
                        <div class="critterCodeDiv">
                            <div class="critterIntrText text">[[__("wizard_instr")]]</div>
                            <!--<div id="blockly_container" class="col-lg mt-3">-->
                            <div class="critterCodeContainer">
                                <critter-blockly id="blockly_CUT" class="full_blockly" height$="{{ _healingCutHeight}}" controls="true"
                                                 is-healing-cut="true"
                                                 read-only>
                                </critter-blockly>
                            </div>
                        </div>
                        <div id="finished_critters" class="col" hidden="{{!_finished}}">
                            <div class="col-12 text">
                                <p>[[__("finished_critters")]]</p>
                            </div>
                            <div id="critter_container_finished" class="row">
                            </div>
                        </div>
                        <div id="all_collectors" class="col" hidden="{{_finished}}">
                            <div class="col-12 text">
                                <p>[[__("critters_on_journey")]]</p>
                            </div>
                            <div id="critter_container_all_collectors" class="row">
                            </div>
                        </div>
                    </div>
                </div>
                

                <div id="signpost_popup_div" class="row justify-content-center">
                    <critter-healing-test-popup class="col-10" id="mine_popup" block-size="{{_blockSize}}"
                                                board-height="{{ _boardHeight }}"
                                                popup-height="400"
                    >
                    </critter-healing-test-popup>
                </div>
                <div>
                    <critter-dialog id="restart_game_dialog">
                        <div class="row dialog_container">
                            <div class="dialog_title">[[__("restart_confirm")]]</div>
                            <div id="dialog_buttons">
                                <critter-button id="continue_confirm" class="col-5">[[__("no_continue")]]</critter-button>
                                <critter-button id="restart_game_confirm" class="col-5">[[__("yes_restart")]]</critter-button>
                            </div>
                        </div>
                    </critter-dialog>
                </div>
                <div>
                    <critter-dialog id="jump_to_end_dialog">
                        <div class="row dialog_container">
                            <div class="dialog_title">[[__("jump_to_end_question")]]</div>
                            <div id="dialog_buttons">
                                <critter-button id="cont_normal_confirm" class="col-5">[[__("no")]]</critter-button>
                                <critter-button id="jump_to_end_confirm" class="col-5">[[__("yes")]]</critter-button>
                            </div>
                        </div>
                    </critter-dialog>
                </div>
            </div>
        `;
    }

    static get is() {
        return 'critter-healing-game';
    }

    static get properties() {
        return {
            currentLevelName: {
                type: String,
                value: "",
                notify: true
            },

            showGrid: {
                type: Boolean,
                value: true
            },

            _healingCutHeight: {
                type: Number,
                value: 350
            },

            _boardHeight: {
                type: Number,
                computed: '_computeBoardHeight(_globalData.healLevelHeight, _blockSize)'
            },

            _boardWidth: {
                type: Number,
                computed: '_computeBoardWidth(_globalData.healLevelWidth, _blockSize)'
            },

            _popupHeight: {
                type: Number,
                computed: '_computePopupHeight(_globalData.healLevelHeight, _blockSize)'
            },

            _blockSize: {
                type: Number,
                computed: '_computeBlockSize()'
            },

            _critterList: {
                type: Array,
                value: []
            },

            _interval: {
                type: Number,
                value: normalCritterInterval
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

            _killedMutants: {
                type: Number,
                value: 0
            },

            _finishedHumans: {
                type: Number,
                value: 0
            },

            _killedHumans: {
                type: Number,
                value: 0
            },

            _doneCritters: {
                type: Number,
                value: 0
            },

            _startTime: {
                type: Number,
                value: 0
            },

            _gameTime: {
                type: Number,
                value: 0
            },

            _testWritingEndTime: {
                type: Number,
                value: 0
            },

            _finished: {
                type: Boolean,
                value: false
            },

            _game: {
                type: Object,
                value: null
            },

            _portals: {
                type: Array,
                value: []
            },

            _killedMutantsList: {
                type: Array,
                value: []
            },

            _killedCollectorsList: {
                type: Array,
                value: []
            },

            _finishedMutantsList: {
                type: Array,
                value: []
            },

            _finishedCollectorsList: {
                type: Array,
                value: []
            },

            _isSpeedUp: {
                type: Boolean,
                value: false
            },

            _hasFullScore: {
                type: Boolean,
                value: false
            },

            _showJumpToEnd: {
                type: Boolean,
                value: false
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
            //this.$.reload_button.addEventListener("click", () => this._reloadGame(this));
            this.$.speedDown_button.addEventListener("click", () => this._speedDownGame(this))
            this.$.speedUp_button.addEventListener("click", () => this._speedUpGame(this));
            this.$.send_button.addEventListener("click", () => this._startCritters(this));
            this.$.jump_to_end_button.addEventListener("click", (event) => this._showJumpToEndDialog(event))
            if (this.shadowRoot.querySelector('#retry_button')) {
                this.shadowRoot.querySelector('#retry_button').addEventListener("click", () => this._retryGame(false));
            }

            this.$.next_level_button.addEventListener("click", () => this._loadNextLevel(this));

            this.$.board_container.addEventListener("mouseover", () => this._renderCoordinates(true));
            this.$.board_container.addEventListener("mouseout", () => this._renderCoordinates(false));
            window.addEventListener("resize", (event) => this._handleResize(event));
            window.addEventListener("beforeunload", (event) => this._saveGameData(event));
            this.addEventListener("fieldClicked", (event) => this._onFieldClicked(event));
            this.addEventListener("hoverOver", (event) => this._handleHoverField(event));
            this.addEventListener("_healingCritterFinished", (event) => this._onCritterFinished(event));

            this.addEventListener("_healingCritterKilled", (event) => this._onCritterKilled(event));

            this.addEventListener("_healingThirdStarReached", () => this._showStar(3));
            this.addEventListener("_healingSecondStarReached", () => this._showStar(2));
            this.addEventListener("_healingFirstStarReached", () => this._showStar(1));

            this.addEventListener("_healingMineSet", (event) => this._updateMine(event?.detail?.mine));
            this.addEventListener("_healingMineRemoved", (event) => this._updateMine(event?.detail?.mine));
            this.addEventListener("_healingPortalMoved", (event) => this._updateMine(event?.detail?.mine));

            this.addEventListener("_closeTestPopup", () => this.$.arrow_popup.hide());

            this.$.continue_confirm.addEventListener("click", () => this._closeConfirmDialog());
            this.$.restart_game_confirm.addEventListener("click", () => this._reloadGameAndCloseDialog());
            this.$.cont_normal_confirm.addEventListener("click", () => this._closeJumpToEndDialog());
            this.$.jump_to_end_confirm.addEventListener("click", () => this._finishGameQuickly(this));

            // TRIGGERS THE LEVEL BACKEND FETCHES IN THE GLOBAL DATASTORE VIA OBSERVER
            this._globalData.healLevelName = new URL(window.location.href).searchParams.get("level");

            this._createGame();
            this._addMutantAndNormalCritters();

            this._startTime = Date.now();

            //this.$.score_dialog.open(); // to test

        });
    }

    disconnectedCallback() {
        super.disconnectedCallback();
        window.removeEventListener("resize", (event) => this._handleResize(event));
        window.removeEventListener("beforeunload", (event) => this._saveGameData(event));
    }


    /**
     * Saves updates on mines to the database, i.e. on creation, editing or deletion of a mine.
     */
    _updateMine(mine) {
        let mineDtoObject = {
            game: this._game.id,
            xPosition: mine.xPosition,
            yPosition: mine.yPosition,
            creationStart: new Date(mine.creationStart),
            creationEnd: new Date(mine.creationEnd),
            code: mine.js,
            xml: mine.xml,
            deleted: mine.deleted,
            deletionDateTime: mine.deletionDateTime ? new Date(mine.deletionDateTime) : null,
            updated: mine.updated,
            frontendId: mine.frontEndId,
            blockCount: mine.blockCount
        }
        let req;
        let url;

        url = `/healing-game/${this._game.id}/portal`;
        req = this._generateRequest(url, mineDtoObject, "POST");

        let genRequest = req.generateRequest();
        req.completes = genRequest.completes;
        return req;
    }

    /**
     * Ends the game, shows the score and saves game result.
     */
    async _onLevelFinished() {
        this._finished = true;
        this._portals = this._globalData.getPortals();
        let numSigns = this._portals.length; // maybe use for score??

        this.$.score_dialog.open();
        let score = (this._finishedHumans) * 100 + ((this._killedMutants) * 100);
        this.score = score + this._getKilledMutantsPenalty();
        await this.showScore();
        let stars = 0;
        if(this.score >= 950){
            stars = 3;
            this._hasFullScore = true;
        } else if (this.score >= 700){
            stars = 2;
        } else if (this.score >= 600){
            stars = 1;
        }

        this._storeResult(stars);
        this._saveGame();
        this.removeEventListener("beforeunload", this._saveGameData);
    }

    /**
     * Keeps count of the finished critters (critters that walked all rounds and finished).
     * @param e the critter
     */
    _onCritterFinished(e) {
        if (!e.detail.isMutated) {
            this._finishedHumans++;
            this._finishedCollectorsList.push(e.detail.critterId);
        } else {
            // if mutant made it through all rounds
            this._finishedMutantsList.push(e.detail.critterId);
        }

        this._createFinishedCritter(e.detail.critterId, e.detail.isMutated, e.detail.critterInit, e.detail.xmlCode, e.detail.tooltip)

        this._onCritterDone()
    }

    /**
     Keeps count of the "killed" critters (critters that have been sent out of the loop).
     @param e the critter
     */
    _onCritterKilled(e) {
        if (e.detail.isMutated) {
            this._killedMutants++;
            this._globalData.numKilledMutantCollectors++;
            this._killedMutantsList.push({id: e.detail.critterId, currentRoundNum: e.detail.totalRoundsCount, firstFaultyRound: e.detail.firstFaultyRound});

        } else {
            // if human was killed
            this._killedHumans++;
            this._killedCollectorsList.push(e.detail.critterId);
        }

        this._createReroutedCritter(e.detail.critterId, e.detail.isMutated, e.detail.critterInit, e.detail.xmlCode, e.detail.tooltip);

        this._onCritterDone()
    }


    /**
     * Checks if a game is done after the current critter is done and finished the level.
     */
    _onCritterDone() {
        this._doneCritters++;
        this._globalData.numDoneCollectors = this._doneCritters;
        if (this._doneCritters === this._critterList.length) {
            this._onLevelFinished();
        }
    }


    _speedDownGame() {
        if (this._crittersSent) {
            this._critterList.forEach((critter) => {
                critter.speedy = false;
            });
            this._interval = normalCritterInterval;
        }
        this._isSpeedUp = this._interval === speedyCritterInterval;
    }

    _speedUpGame() {
        if (this._crittersSent) {
            this._critterList.forEach((critter) => {
                critter.speedy = true;
            });
            this._interval = speedyCritterInterval;
        }
        this._isSpeedUp = this._interval === speedyCritterInterval;
    }


    _finishGameQuickly() {
        if (this._crittersSent) {
            this._critterList.forEach((critter) => {
                critter._fastForwardMode = true;
            });
        }
        this._closeJumpToEndDialog();
    }

    /**
     * Navigate to the next level
     */
    _loadNextLevel() {
        let nextLevel = this._globalData.healLevelName;
        window.location.href = "/game?level=" + nextLevel;
    }

    _retryGame(saveGameData = true) {
        this.$.score_dialog.close();
        this._reloadGame(saveGameData);
    }

    _clearCrittersContainer() {
        let container = this.$.critter_container;
        container.innerHTML = "";
        let containerFinished = this.$.critter_container_finished;
        containerFinished.innerHTML = "";
        let allCrittersContainer = this.$.critter_container_all_collectors;
        allCrittersContainer.innerHTML = "";
    }

    _reloadGame(saveGameData = true) {
        if (saveGameData) {
            this._saveGameData()
        }
        this._startTime = Date.now();
        this._testWritingEndTime = 0;
        this._crittersSent = false;
        this._finished = false;
        this._gameTime = 0;
        this._finishedHumans = 0;
        this._doneCritters = 0;
        this._killedMutants = 0;
        this._killedHumans = 0;
        this.score = 0;
        this._interval = normalCritterInterval;
        this._critterList.forEach(critter => {
            critter.remove();
        });
        this._critterList = [];
        this._game = null;
        this._timeoutManager.clear();
        this._globalData.deletePortals();
        this._portals = [];
        this._isSpeedUp = this._interval === speedyCritterInterval;
        this._killedMutantsList = [];
        this._killedCollectorsList = [];
        this._finishedMutantsList = [];
        this._finishedCollectorsList = [];
        this.$.send_button.shape = "play";
        this.$.speedUp_button.disabled = true;
        this.$.jump_to_end_button.disabled = true;

        this._clearCrittersContainer();
        this.resetScoreDialog();

        this._createGame();
        this._addMutantAndNormalCritters();
    }

    /**
     * Displays the mine-popup, when the user clicks on a gameboard-field.
     * @param event The click event triggering the function.
     * @private
     */
    _onFieldClicked(event) {
        let detail = event.detail;
        this.$.mine_popup.showPortal(detail, this._crittersSent);
        this.$.arrow_popup.show(detail);
    }

    _startCritters() {
        if (this._crittersSent) {
            this._showConfirmationDialog();
        } else {
            this._testWritingEndTime = new Date();

            this.dispatchEvent(new CustomEvent('_healingCrittersStarted', {detail: {}, bubbles: true, composed: true}));

            if (!this._crittersSent) {
                this._sendMutantAndNormalCritters();

                this._crittersSent = true;
                this.$.speedUp_button.disabled = false;
                this._isSpeedUp = this._interval === speedyCritterInterval;
                this.$.send_button.shape = "reload";
            }
        }
    }

    _showJumpToEndDialog(event) {
        if (event.target.disabled) {
            return;
        }
        this.$.jump_to_end_dialog.open();
    }

    _closeJumpToEndDialog() {
        this.$.jump_to_end_dialog.close();
    }

    _showConfirmationDialog() {
        this.$.restart_game_dialog.open();
    }

    _closeConfirmDialog() {
        this.$.restart_game_dialog.close();
    }

    _reloadGameAndCloseDialog() {
        this._closeConfirmDialog();
        this._reloadGame();
    }


    _sendMutantAndNormalCritters(i = 0) {
        if (!i && this._critterList.length !== this._globalData.numberOfCollectors) {
            this._timeoutManager.add(() => {
                this._sendMutantAndNormalCritters(0);
            }, 100);
            return;
        }
        if (i < this._critterList.length) {
            this._critterList[i].startHealingCritterAnimation();
            this._timeoutManager.add(() => {
                this._sendMutantAndNormalCritters(++i);
                if (i === this._critterList.length - 1) { // all critters sent
                    this._showJumpToEnd = true;
                    this.$.jump_to_end_button.disabled = false;
                }
            }, this._randomNumber(this._interval * 0.8, this._interval * 2.5));
        }
    }

    _addMutantAndNormalCritters() {
        let req = document.createElement('iron-ajax');
        req.url = "/healing-level/collectors";
        req.method = "GET";
        req.handleAs = 'json';
        req.contentType = 'application/json';
        req.bubbles = true;
        req.rejectWithRequest = true;
        req.params = {level: this._globalData.healLevelName};

        req.addEventListener('response', e => {
            let mutants = e.detail.__data.response;

            for (const mutant of mutants) {
                const codesPerBushWithFunctions = {};

                // turn the javascript string CUT into a function for each code
                if (typeof mutant.codesPerBush === 'object') {
                    for (const key in mutant.codesPerBush) {
                        if (mutant.codesPerBush.hasOwnProperty(key)) {
                            codesPerBushWithFunctions[key] = new Function(mutant.codesPerBush[key]);
                        }
                    }
                }
                this._createGameCritter(mutant.id, mutant.mutated, new Function(mutant.init),
                    mutant.xml, mutant.pathList, mutant.firstFaultyRound, codesPerBushWithFunctions);
            }

            this._critterList = this._shuffleArray(this._critterList);

            for (const critter of this._critterList) {
                this._createCritterRepresentation(critter.id, critter.isMutated, critter.cut, critter.init, critter.xmlCode);
            }
        });

        let genRequest = req.generateRequest();
        req.completes = genRequest.completes;
        return req;
    }


    _createGameCritter(id, isMutated, init, xmlCode, path, firstFaultyRound, codesPerBush) {
        let container = this.$.game_critter_container;
        let critter = document.createElement("critter-healing-critter");
        critter.id = id;
        critter.isMutated = isMutated;
        critter.init = init;
        critter.healPath = path;
        critter.xmlCode = xmlCode;
        critter.firstFaultyRound = firstFaultyRound;
        critter.codesPerBush = codesPerBush;
        container.append(critter);
        this._critterList.push(critter);
    }

    _createCritterRepresentation(id, mutated, cut, init, xmlCode) {
        let container = this.$.critter_container_all_collectors;
        let critter = document.createElement("critter-collected-critter");
        critter.id = id;
        critter.isMutated = mutated;
        critter.cut = cut;
        critter.init = init;
        critter.xmlCode = xmlCode;
        critter.showTooltip = false;
        critter.showCritterRepresentation();
        container.appendChild(critter);
    }

    _removeFromOnJourneyContainer(id) {
        let container = this.$.critter_container_all_collectors;

        let escapedId = CSS.escape(id);
        let critter = container.querySelector(`#${escapedId}`);
        if (critter) {
            container.removeChild(critter);
        }
    }

    _createReroutedCritter(id, mutated, init, xmlCode, tooltipInfo) {
        let container = this.$.critter_container;
        let critter = document.createElement("critter-collected-critter");
        critter.id = id;
        critter.isMutated = mutated;
        critter.init = init;
        critter.xmlCode = xmlCode;
        critter.redBerryCount = tooltipInfo.redBerryCount;
        critter.pinkBerryCount = tooltipInfo.pinkBerryCount;
        critter.blackBerryCount = tooltipInfo.blackBerryCount;
        critter.orangeBerryCount = tooltipInfo.orangeBerryCount;
        critter.purpleBerryCount = tooltipInfo.purpleBerryCount;
        critter.whiteBerryCount = tooltipInfo.whiteBerryCount;
        critter.roundsCount = tooltipInfo.roundsCount;
        critter.innerRoundsCount = tooltipInfo.innerRoundsCount;
        critter.showCollectedCritter();
        container.appendChild(critter);

        this._removeFromOnJourneyContainer(id);
    }

    _createFinishedCritter(id, mutated, init, xmlCode, tooltipInfo) {
        let container = this.$.critter_container_finished;
        let critter = document.createElement("critter-collected-critter");
        critter.id = id;
        critter.isMutated = mutated;
        critter.init = init;
        critter.xmlCode = xmlCode;
        critter.redBerryCount = tooltipInfo.redBerryCount;
        critter.pinkBerryCount = tooltipInfo.pinkBerryCount;
        critter.blackBerryCount = tooltipInfo.blackBerryCount;
        critter.orangeBerryCount = tooltipInfo.orangeBerryCount;
        critter.purpleBerryCount = tooltipInfo.purpleBerryCount;
        critter.whiteBerryCount = tooltipInfo.whiteBerryCount;
        critter.roundsCount = tooltipInfo.roundsCount;
        critter.innerRoundsCount = tooltipInfo.innerRoundsCount;
        //critter.showTooltip = false; // cause is wrong in level 1/2 when ended before actually done
        critter.showFinishedCritter();
        container.appendChild(critter);
    }

    /** Creates a game data set with initial values for the starting time, the level and the user.**/
    _createGame() {
        let data = {name: this._globalData.healLevelName}
        let req = this._generateRequest("/healing-game/create", data, "POST");

        req.addEventListener('response', e => {
            this._game = e.detail.__data.response;
            this._game.name = this._globalData.healLevelName;
        });

        let genRequest = req.generateRequest();
        req.completes = genRequest.completes;
        return req;
    }

    /**
     * Saves the current data when the user has finished the game.
     */
    _saveGame() {
        this._gameTime = (Date.now() - this._startTime);

        this._game.end = this._testWritingEndTime.toISOString();
        this._game.killedMutants = this._killedMutants;
        this._game.finishedCollectors = this._finishedHumans;
        this._game.gameTime = this._gameTime;
        this._game.score = this.score;
        this._game.killedMutantsList = this._killedMutantsList.map(({firstFaultyRound, ...rest}) => rest);
        this._game.killedCollectorsList = this._killedCollectorsList;
        this._game.finishedMutantsList = this._finishedMutantsList;
        this._game.finishedCollectorsList = this._finishedCollectorsList;

        let req = this._generateRequest("/healing-game/save", this._game, "POST");

        let genRequest = req.generateRequest();
        req.completes = genRequest.completes;
        return req;
    }

    /**
     * Saves the current game data when a user leaves the page without completing the level.
     * @private
     */
    _saveGameData(event) {
        if (this._finished) {
            return;
        }

        if (event !== undefined) {
            event.preventDefault();
        }

        this._gameTime = (Date.now() - this._startTime);

        if (!(this._testWritingEndTime === 0)) {
            this._game.end = this._testWritingEndTime.toISOString();
        }
        this._game.killedMutants = this._killedMutants;
        this._game.finishedCollectors = this._finishedHumans;
        this._game.gameTime = this._gameTime;
        this._game.score = this.score;
        this._game.killedMutantsList = this._killedMutantsList.map(({firstFaultyRound, ...rest}) => rest);
        this._game.killedCollectorsList = this._killedCollectorsList;
        this._game.finishedMutantsList = this._finishedMutantsList;
        this._game.finishedCollectorsList = this._finishedCollectorsList;


        let req = this._generateRequest("/healing-game/save", this._game, "POST");

        let genRequest = req.generateRequest();
        req.completes = genRequest.completes;

        return req;
    }

    _storeResult(stars) {
        let req = document.createElement('iron-ajax');
        req.url = "/second-stage-result";
        req.method = "POST";
        req.handleAs = 'json';
        req.contentType = 'application/json';
        req.bubbles = true;
        req.rejectWithRequest = true;
        req.body = {
            level: this._globalData.healLevelName,
            score: this.score,
            stars: stars
        };

        let genRequest = req.generateRequest();
        req.completes = genRequest.completes;
        return req;
    }

    async showScore() {
        let dialogScore = this.$.dialog_score;
        let finishedHumansPercentage = Math.round((this._finishedHumans / (this._globalData.numberOfCollectors - this._globalData.numberOfHealMutants)) * 100);
        let killedCritterPercentage = Math.round(this._killedMutants * 100 / this._globalData.numberOfHealMutants);
        dialogScore.overallScore = this.score;
        await dialogScore.insertData("finished_humans_line", this._finishedHumans * 100, finishedHumansPercentage, "%");
        await dialogScore.insertData("killed_critters_line", this._killedMutants * 100, killedCritterPercentage, "%");
        await dialogScore.insertData("time_penalty", this._getKilledMutantsPenalty(), "", undefined);
    }

    resetScoreDialog() {
        this.stars = 0;

        let dialogScore = this.$.dialog_score;
        dialogScore.clearComponent();

        for (let i = 1; i <= 3; i++) {
            let star = this.shadowRoot.querySelector("#star" + i);
            star.classList.remove("visibleStar");
        }
    }

    /**
     * Calculates the penalty coming from mutants that where detected too late.
     * @returns {number} score penalty (negative number)
     * @private
     */
    _getKilledMutantsPenalty() {
        let penalty = 0;
        this._killedMutantsList.forEach(mutant => {
            if (mutant.currentRoundNum > mutant.firstFaultyRound) {
                let penaltyPerMutant = (mutant.currentRoundNum - mutant.firstFaultyRound) * 25;
                penalty -= penaltyPerMutant;
            }
        })
        return penalty;
    }


    _showStar(number) {
        let star = this.shadowRoot.querySelector("#star" + number);
        star.classList.add("visibleStar");
        this.stars = number;
    }

    /** computes the heights of critter-container**/
    _computeBlocklyHeight(height, size) {
        return height * 0.5 * size - 5;
    }

    /**
     * Returns the height of a critter-board-field depending on the screen size.
     * @returns {number} The field's height.
     * @private
     */
    _computeBlockSize() {
        if(window.matchMedia("(max-width: 600px)").matches) {
            return 20;
        } else {
            return 40;
        }
    }

    /**
     * Computes the height of the critter-gameboard given the height and size.
     * @param height The gameboard's height is the number of critter-board-fields along its y-axis.
     * @param size The height of a critter-board-field in pixels.
     * @returns {number} The gameboard's height in pixels.
     * @private
     */
    _computeBoardHeight(height, size) {
        return height * size;
    }

    /**
     * Computes the height of the critter-gameboard given the width and size.
     * @param width The gameboard's width is the number of critter-board-fields along its x-axis.
     * @param size The height of a critter-board-field in pixels.
     * @returns {number} The gameboard's width in pixels.
     * @private
     */
    _computeBoardWidth(width, size) {
        return width * size;
    }

    /**
     * Computes the height of the mine-popud dialog.
     * @param height The gameboard's height in board-fields.
     * @param size The height of a critter-board-field in pixels.
     * @returns {number} The popup's height in pixels.
     * @private
     */
    _computePopupHeight(height, size){
        return height * size;
    }

    _renderCoordinates(render) {
        this.$.coordinate_container.style.visibility = (render ? "visible" : "hidden");
    }

    /**
     * Displays the coordinates when the user hovers over gameboard-fields.
     * @param event The hover event triggering the function.
     * @private
     */
    _handleHoverField(event) {
        let detail = event.detail;
        this._hoverX = detail.x + 1;
        this._hoverY = this._globalData.healLevelWidth - detail.y;
    }


    /**
     * Generates a post or get request with the given url and the given data to be submitted.
     * @param url The url of the request.
     * @param data The data to be transmitted.
     * @param method The method to use (post or get).
     * @returns {HTMLElement} The request to be sent to the database.
     * @private
     */
    _generateRequest(url, data, method) {
        let req = document.createElement('iron-ajax');
        req.url = url;
        req.method = method;
        req.handleAs = 'json';
        req.contentType = 'application/json';
        req.bubbles = true;
        req.rejectWithRequest = true;
        req.body = data;

        return req;
    }

    /**
     * Triggers a page reload to resize the gameboard and adapt it to the current screen size.
     * @param event
     * @private
     */
    _handleResize(event) {
        if((window.matchMedia("(max-width: 600px)").matches)) {
            if(this.$.gameboard.clientWidth > 600) {
                window.location.href = window.location.href;
            }
        }
        if((window.matchMedia("(min-width: 601px)").matches)) {
            if(this.$.gameboard.clientWidth < 600) {
                window.location.href = window.location.href;
            }
        }
    }
}

window.customElements.define(CritterHealingGame.is, CritterHealingGame);
