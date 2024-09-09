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
import '../critter-critter/critter-critter.js';
import '../critter-button/critter-button.js';
import '../critter-control-button/critter-control-button.js';
import '../critter-blockly/critter-blockly.js';
import '../critter-dialog/critter-dialog.js';
import '../critter-test-popup/critter-test-popup.js';
import '../critter-timeout/critter-timeout-manager.js';
import '../critter-score/critter-score.js';
import '../critter-header/critter-header.js';
import '../critter-data-store/critter-data-store.js';
import './critter-game-image.js'
import '/lib/@polymer/iron-icons/iron-icons.js';
import '../critter-hint-assistant/critter-hint-assistant.js';
import '../critter-hint-speech-bubble/critter-hint-speech-bubble.js'
import '../critter-arrow-popup/critter-arrow-popup.js'
import {Toaster} from '../critter-toaster/critter-toaster-mixin.js';


import {critterStyle} from '/style/critter-botstrap.js'
import {normalCritterInterval, speedyCritterInterval} from "../constants.js";
import {translateVariableNames} from "../common.js";


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

class CritterGame extends Toaster(I18n(Level(PolymerElement))) {
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

                #send_button,
                #speedUp_button,
                #speedDown_button,
                #reload_button {
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

                #finished_container *, #killed_container * {
                    padding: 1%;
                    margin: 0;
                    float: left;
                }

                #healed_container * {
                    padding: 1%;
                    margin: 0;
                    float: left;
                }

                #send_button {
                    clear: both;
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

                #buttons, .heads {
                    border-radius: 15px;
                    border: 2px solid #FFA600;
                    padding: 1%;
                    max-width: 660px;
                    background-color: white;
                }
                
                .critterCodeDiv {
                    border-radius: 15px;
                    border: 2px solid #FFA600;
                    border-top-width: 50px;
                    padding: 1%;
                    margin-bottom: 1%;
                    z-index: 1;
                }
                
                .critterImage {
                    width: auto;
                    height: auto;
                    position: absolute;
                    top: 0;
                    left: 0;
                    z-index: 2;
                }
                
                .critterBehaviourText {
                    position: absolute;
                    top: 10px;
                    left: 40px;
                    z-index: 2;
                }
                
                .critterCodeContainer {
                    position: relative;
                }

                #healed_critters {
                    border-radius: 15px;
                    border: 2px solid #2d833b;
                    padding: 1%;
                    background-color: white;
                    margin: 0;
                    min-height: 100px;
                }

                .heads {
                    margin-top: 1%;
                }

                #mutant_button {
                    margin-left: auto;
                    margin-right: auto;
                }
                
                #hint_assistant_container {
                    cursor: pointer;
                }
                
                #hint_elements_container {
                    display: flex;
                    justify-content: end;
                    flex-direction: column;
                    align-items: center;
                    margin-bottom: 100px;
                    left: 0.5%;
                }
                
                #hint_container {
                    display: block;
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

                #dialog-buttons critter-button {
                    --critter-button-color-disabled: transparent;
                    --critter-button-color: transparent;
                    --critter-button-text-color: #666;
                    --critter-button-text-color-disabled: whitesmoke;
                    transition: 100ms

                }

                #close_intro_dialog:hover,
                #start_intro:hover {
                    font-size: 1.1em;
                    --critter-button-text-color: #ffa600;
                }

                @media only screen and (min-width: 1650px) {
                    #hint_elements_container {
                        left: -1.0%;
                    }
                }
                

                @media only screen and (min-width: 1800px) {
                    #hint_elements_container {
                        left: -2.0%;
                    }
                }
                
                @media only screen and (min-width: 2000px) {
                    #hint_elements_container {
                        left: -4.5%;
                    }
                }
                
                
                /* On small size screens Blockly Container goes in next row */
                @media only screen and (max-width: 1100px) {
                    #blockly_container {
                        min-width: 100%;
                    }
                    #hint_elements_container {
                        left: -5.5%;
                        margin-bottom: 0px;
                    }
                }

                /* On very small size screens the assistent must go into next row as well*/
                @media only screen and (max-width: 875px) {
                    #hint_elements_container {
                        min-width: 100%;
                    }
                }

                #board_container {
                    min-width: 661px;
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
                    <critter-score id="dialog_score"></critter-score>
                    <critter-button id="mutant_button">[[__('show_mutants')]]</critter-button>
                </div>
                <div id="selector_container">
                    <h3>[[__('select_next')]]</h3>
                    <critter-level-selector-simple initial-value="{{currentLevelName}}"></critter-level-selector-simple>
                </div>
            </critter-dialog>
            <div class="row">
                <div class="col-sm-12" id="header">
                    <critter-header></critter-header>
                    <hr>
                </div>
            </div>
            <div class="row" id="game_containers">
                <div id="board_container" class="col-sm-12 col-md-8 col-lg-6 col-xl-5">
                    <!--<div id="board_container" class=" col-lg mt-3 mx-auto" style="max-width: fit-content">-->
                    <div class="row">
                        <critter-gameboard id="gameboard" show-grid="{{showGrid}}"></critter-gameboard>
                        <div id="critter_container"></div>
                        <critter-arrow-popup id="arrow_popup" block-size="{{_blockSize}}"
                                             board-height="{{ _boardHeight }}">
                        </critter-arrow-popup>
                        <critter-test-popup id="mine_popup" block-size="{{_blockSize}}"
                                            board-height="{{ _boardHeight }}"
                                            popup-height="{{ _popupHeight}}">
                        </critter-test-popup>
                    </div>
                    <br>
                    <div class="row" id="buttons">
                        <div class="col-sm-12">
                            <critter-control-button id="send_button" class="game_button" shape="play">
                            </critter-control-button>
                            <critter-control-button id="speedUp_button" class="game_button" shape="fastforward"
                                                    hidden="{{_isSpeedUp}}" disabled>
                            </critter-control-button>
                            <critter-control-button id="speedDown_button" class="game_button" shape="normalSpeed"
                                                    hidden="{{!_isSpeedUp}}">
                            </critter-control-button>
                            <critter-control-button id="reload_button" class="game_button" shape="reload">
                            </critter-control-button>
                            <div id="coordinate_container">[[__('coordinates')]]: (X: {{_hoverX}}, Y: {{_hoverY}})</div>
                        </div>
                    </div>
                    <div>
                        <div class="row heads">
                            <div class="col-12 text">
                                <p>[[__("allCritters")]]</p>
                            </div>
                            <div class="col-12">
                                <div id="finished_container"></div>
                            </div>
                            <div class="col-12">
                                <div id="killed_container"></div>
                            </div>
                        </div>
                    </div>
                </div>
                <div id="hint_elements_container" class="col-1">
                    <div id="hint_container">
                        <critter-hint-speech-bubble id="hint_speech_bubble"></critter-hint-speech-bubble>
                    </div>
                    <div id="hint_assistant_container">
                        <critter-hint-assistant></critter-hint-assistant>
                    </div>
                </div>
                <div id="blockly_container" class="col">
<!--                <div id="blockly_container" class="col-12 col-md-8 col-xl-5">-->
                    <!--<div id="blockly_container" class="col-lg mt-3">-->
                    <div id="blockly_cut_div">
                        <div class="critterCodeDiv">
                            <img class="critterImage" src="[[importPath]]images/fullCritter.png" alt="Critter Image">
                            <div class="critterBehaviourText text">[[__("my_behaviour")]]</div>
                            <div class="critterCodeContainer">
                                <critter-blockly id="blockly_CUT" class="full_blockly" height$="{{ _boardHeight}}" controls="true"
                                                 cut
                                                 read-only>
                                </critter-blockly>
                            </div>
                        </div>  
                    </div>
                    
                    <div class="col row" id="healed_critters">
                        <div class="col-12 text">
                            <p>[[__("healedCritters")]]</p>
                        </div>
                        <div id="healed_container" class="col-12"></div>
                    </div>
                </div>
                <div>
                    <critter-dialog id="start_intro_dialog">
                        <div class="row" id="dialog-container">
                            <div class="dialog-title">[[__("start_intro_question")]]</div>
                            <div id="dialog-buttons">
                                <critter-button id="close_intro_dialog" class="col-5">[[__("close_intro_confirm")]]</critter-button>
                                <critter-button id="start_intro" class="col-5">[[__("start_intro_confirm")]]</critter-button>
                            </div>
                        </div>
                    </critter-dialog>
                </div>
            </div>
        `;
    }

    static get importMeta() { return import.meta; }

    static get is() {
        return 'critter-game';
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

            baseScore: {
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

            _paused: {
                type: Boolean,
                value: true
            },

            _pauseStart: {
                type: Number,
                value: 0
            },

            _pauseEnd: {
                type: Number,
                value: 0
            },

            _startTime: {
                type: Number,
                value: 0
            },
            /**
             * !not the start time saved in db! that is created in backend when creating a game
             */
            _startGameTime: {
                type: Number,
                value: 0
            },

            _totalTime: {
                type: Number,
                value: 0
            },

            _gameTime: {
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

            _mines: {
                type: Array,
                value: []
            },

            _killedMutantsList: {
                type: Array,
                value: []
            },

            _killedHumansList: {
                type: Array,
                value: []
            },

            _finishedMutantsList: {
                type: Array,
                value: []
            },

            _finishedHumansList: {
                type: Array,
                value: []
            },

            _isSpeedUp: {
                type: Boolean,
                value: false
            },

            _inPortalHintMode: {
                type: Boolean,
                value: false
            },

            _hintObject: {
                type: Object
            },

            _stepNum: {
                type: Number,
                value: -1
            },

            _currentHintObject: {
                type: Object
            },

            _tipsForFieldsActivated: {
                type: Boolean,
                value: false
            },

            portalsSolutionsObject: {
                type: Object
            },

            _expectsUserSaveClick: {
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

            this.$.send_button.addEventListener("click", () => this._startCritters(this));
            this.$.speedUp_button.addEventListener("click", () => this._speedUpGame(this));
            this.$.speedDown_button.addEventListener("click", () => this._speedDownGame(this))
            this.$.reload_button.addEventListener("click", () => this._reloadGame(this));
            this.$.mutant_button.addEventListener("click", () => this._showMutants(this));
            this.$.board_container.addEventListener("mouseover", () => this._renderCoordinates(true));
            this.$.board_container.addEventListener("mouseout", () => this._renderCoordinates(false));
            window.addEventListener("resize", (event) => this._handleResize(event));
            window.addEventListener("beforeunload", (event) => this._saveGameData(event));
            this.addEventListener("hoverOver", (event) => this._handleHoverField(event));
            this.addEventListener("fieldClicked", (event) => this._onFieldClicked(event));

            this.addEventListener("_levelFinished", async () => await this._onLevelFinished());
            this.addEventListener("_critterKilled", (event) => this._onCritterKilled(event));
            this.addEventListener("_critterFinished", (event) => this._onCritterFinished(event));
            this.addEventListener("_critterNumberChanged", (event) => this._onCritterNumberChanged(event));

            this.addEventListener("_thirdStarReached", () => this._showStar(3));
            this.addEventListener("_secondStarReached", () => this._showStar(2));
            this.addEventListener("_firstStarReached", () => this._showStar(1));
            this.addEventListener("_mineSet", (event) => this._updateMine(event?.detail?.mine));
            this.addEventListener("_mineRemoved", (event) => this._updateMine(event?.detail?.mine));
            this.addEventListener("_portalMoved", (event) => this._updateMine(event?.detail?.mine));
            this.addEventListener("_hintClosed", (event) => this._resetHintSettingsOfStep(event.detail.stepNum, event.detail.hintObject, true));
            this.addEventListener("_portalSolutionsClosed", () => this._resetPortalSolutionVisuals(true));
            this.addEventListener("_showNextHint", (event) => this._showNextHintVisuals(event));
            this.addEventListener("_firstPortalHintMode", (event) => this._activateHintMode(event));
            this.addEventListener("_introPortalHintMode", (event) => this._activateHintMode(event));
            this.addEventListener("_startIntroModeQuestion", (event) => this._openIntroDialog(event));
            this.addEventListener("_giveHintForFieldMode", () => this._startFieldHintsMode());
            this.addEventListener("_helpRequested", () => this._openHintAssistent());
            this.addEventListener("_portalClosed", () => this._resetBlockColorsOnPortalClose());

            this.$.hint_assistant_container.addEventListener("mouseover", () => this._showHelpInfo());
            this.$.hint_assistant_container.addEventListener("mouseout", () => this._closeHelpInfo());
            this.$.hint_assistant_container.addEventListener("click", () => this._openHintAssistent());

            this.$.close_intro_dialog.addEventListener("click", () => this._closeAllHintDialogs());
            this.$.start_intro.addEventListener("click", () => this._startIntroRemovePortals());

            window.addEventListener("_userMovedBlockInHintMode", (event) => this._handleUserMovedBlockInHintMode(event));

            this._globalData.levelName = new URL(window.location.href).searchParams.get("level");
            this.currentLevelName = this._globalData.levelName;
            this._createGame();

            this._startTime = Date.now();
        });
    }

    _hasBuiltPortals() {
        let builtPortals = this._globalData.getMines();
        return (builtPortals.length > 0);
    }

    _openIntroDialog() {
        this.$.start_intro_dialog.open();
    }

    _closeIntroDialog() {
        this.$.start_intro_dialog.close();
    }

    _closeAllHintDialogs() {
        this.$.start_intro_dialog.close();
        this._closeHelpInfo();
    }

    _startIntroRemovePortals() {
        this._closeIntroDialog();
        this._updateAllMinesDeleted();
        this.dispatchEvent(new CustomEvent('_portalsDeletedBeforeIntro', {
            detail: { target: {id: "introduction"} },
            bubbles: true,
            composed: true
        }));
    }

    _startFieldHintsMode() {
        if (this.$.mine_popup._isOpen) { // if a portal is already open
            this.$.mine_popup._popupClose();
        }
        this.portalsSolutionsObject = this._globalData.portalSolutions;
        this._inPortalHintMode = true;
        this._tipsForFieldsActivated = true;
    }

    _resetBlockColorsOnPortalClose() {
        if (this._tipsForFieldsActivated && this._inPortalHintMode) {
            this._resetPortalSolutionVisuals();
            const speechBubble = this.$.hint_speech_bubble;
            while (speechBubble.firstChild) {
                speechBubble.removeChild(speechBubble.firstChild);
            }
            speechBubble._showHintsTextForField("click_on_fields_for_hints");
        }
    }

    /**
     * On click of field checks whether the clicked field is a good spot for a portal.
     * Gives feedback about the field.
     */
    _checkHintsOfField(event) {
        const coords = event.detail;
        if (this.$.mine_popup._isOpen) { // if a portal is already open
            this.$.mine_popup._popupCloseSafely();
        }
        this._resetPortalSolutionVisuals();
        let isOnGoodSpot = false;
        if (this.portalsSolutionsObject && this.portalsSolutionsObject.length > 0) {
            const speechBubble = this.$.hint_speech_bubble;
            while (speechBubble.firstChild) {
                speechBubble.removeChild(speechBubble.firstChild);
            }

            this.portalsSolutionsObject.forEach(portalSolution => { // iterate over all portal solutions
                const possibleCoordinates = portalSolution.possibleCoordinates;
                for (let i = 0; i < possibleCoordinates.length; i++) {
                    if (possibleCoordinates[i].x === coords.x && possibleCoordinates[i].y === coords.y) {
                        isOnGoodSpot = true;
                        if (this._globalData.mines[coords.x][coords.y]) {
                            this.$.mine_popup.show(coords);
                            speechBubble.hintPortalXml = portalSolution.portalSolutionXmls[0]; // adjust here if no list of xmls
                            speechBubble._showHintsTextForField("portal_on_correct_field", false);
                            const codeBlocksToBeTested = portalSolution.codeBlocksToBeTested;
                            const associatedComponentIds = portalSolution.associatedComponentIds;
                            this._highlightBlocks(codeBlocksToBeTested);
                            this._addBorderToHtmlElements(associatedComponentIds);
                            return;
                        } else {
                            this.$.mine_popup.show(coords);
                            speechBubble.hintPortalXml = portalSolution.portalSolutionXmls[0];
                            speechBubble._showHintsTextForField("good_field_for_portal", false);
                            const associatedCutBlocks = portalSolution.codeBlocksToBeTested;
                            const associatedComponentIds = portalSolution.associatedComponentIds;
                            this._highlightBlocks(associatedCutBlocks);
                            this._addBorderToHtmlElements(associatedComponentIds);
                            return;
                        }
                    }
                }
            })


            if (!isOnGoodSpot) {
                speechBubble._showHintsTextForField("bad_field_for_portal");
                this.portalsSolutionsObject.forEach(portalSolution => {
                    this._highlightBlocks(portalSolution.keyCodeBlocks);
                    this._addBorderToHtmlElements(portalSolution.associatedComponentIds);
                })
                return;
            }
        }
    }

    _deactivateHintMode() {
        this._tipsForFieldsActivated = false;
        this._inPortalHintMode = false;
        const testPopup = this.$.mine_popup;
        const blocklyTest = testPopup.$.blockly_test;
        blocklyTest.reactOnBlockMove(false);
    }

    _activateHintMode(event) {
        if (this.$.mine_popup._isOpen) {
            this.$.mine_popup._popupClose(); // if a portal is already open
        }
        if (event.detail && event.detail.stepNum >= 0 && event.detail.hintObject) {
            this._hintObject = event.detail.hintObject;
            this._stepNum = event.detail.stepNum;
            this._inPortalHintMode = true;
        }
    }

    /**
     * Adds a red arrow that points at a given coordinate of the board
     * to show fields in the hint mode.
     * @param step num of the current hint step
     * @param hintObject object to hold the required coordinates
     */
    _pointAtGameboardItemsOfHintstep(step, hintObject) {
        if (step === undefined || step < 0 || hintObject === undefined) {
            return;
        } else {
            const associatedCoordinates = hintObject.associatedCoordinates[step];
            if (associatedCoordinates) {
                this.$.arrow_popup.show(associatedCoordinates);
            }
        }
    }

    _removePointAtGameboardItemsOfHintstep() {
        this.$.arrow_popup.hide();
    }

    /**
     * Adds a red border style to elements their id to highlight them
     * in the hint mode.
     * @param step num of current hint step
     * @param hintObject object that holds the required element ids
     */
    _addBorderToComponentsOfStep(step, hintObject) {
        if (step === undefined || step < 0 || hintObject === undefined) {
            return;
        } else {
            const componentIdsToHighlight = hintObject.associatedComponentIds[step];
            this._addBorderToHtmlElements(componentIdsToHighlight);
        }
    }

    _addBorderToHtmlElements(elementIds) {
        if (elementIds.length > 0) {
            elementIds.forEach(id => {
                if (id.length <= 0) {
                    // nothing
                } else {
                    const component = this.$[id];
                    if (component) {
                        component.style.border = "3px solid red";
                    } else {
                        const shadowRootComponent = this.$.mine_popup.shadowRoot.querySelector('#' + id);
                        if (shadowRootComponent) {
                            shadowRootComponent.style.border = "3px solid red";
                        }
                    }
                }
            })
        }
    }

    /**
     * Fills a test portal with blocks in the hint mode.
     * @param step current step num
     * @param hintObject object that holds the blocks to fill in the portal
     */
    _fillPortalWithTestHint(step, hintObject) {
        if (step === undefined || step < 0 || hintObject === undefined) {
            return;
        } else {
            console.log("WHICH STEP: " + step)
            let portalXml = hintObject.portalXmls[step];
            if (portalXml) {
                const testPopup = this.$.mine_popup;
                const blocklyTest = testPopup.$.blockly_test;
                if (blocklyTest) {
                    if (!testPopup._isOpen && hintObject.expectedClickCoordinates.length >= step - 1
                        && hintObject.expectedClickCoordinates[step - 1][0].x
                        && hintObject.expectedClickCoordinates[step - 1][0].y) {
                        testPopup.show(hintObject.expectedClickCoordinates[step - 1][0])
                    }

                    blocklyTest._setCodeInCurrentLanguage(portalXml)
                }
            }
        }
    }

    /**
     * Handles interaction on block moves of a user during hint mode
     * @param event
     */
    _handleUserMovedBlockInHintMode(event) {
        // if last step, just close hint assistent
        if (this._currentHintObject && this._currentHintObject.hintTexts
            && this._currentHintObject.hintTexts.length - 1 === this._stepNum) {
            const speechBubble = this.$.hint_speech_bubble;
            speechBubble.close();
        }
        else if (event.detail && event.detail.xml && event.detail.jsCode) {
            const currentPortalContent = event.detail.xml;
            const currentJsCode = event.detail.jsCode;
            const otherLanguageTag = this._getOtherLanguageTag();
            const translatedCurrentJs = translateVariableNames(currentJsCode, otherLanguageTag);
            if (this._stepNum >= 0 && this._currentHintObject && this._currentHintObject.expectedUserInteractions
                && this._currentHintObject.expectedUserInteractions[this._stepNum]) {
                const expectedInteraction = this._currentHintObject.expectedUserInteractions[this._stepNum];
                if (expectedInteraction === "PORTAL_BUILD" && this._currentHintObject.expectedPortalJsCode
                    && this._currentHintObject.expectedPortalJsCode[this._stepNum]) {
                    const isAsExpected = (this._currentHintObject.expectedPortalJsCode[this._stepNum] === currentJsCode) || (this._currentHintObject.expectedPortalJsCode[this._stepNum] === translatedCurrentJs);

                    if (isAsExpected) {
                        this._expectsUserSaveClick = true;
                        this._showNextHint();
                    } else {
                        this.showWarningToast("hint_wrong_portal_content");
                    }
                }
            }
        }
    }

    /**
     * Highlights blocks of the CUT in the hint mode.
     * @param step current step num
     * @param hintObject holds the block ids to highlight
     */
    _highlightBlocksOfHintstep(step, hintObject) {
       if (step === undefined || step < 0 || hintObject === undefined) {
           return;
       } else {
           const blockIdsToBeHighlighted = hintObject.associatedCutBlocks[step];
           this._highlightBlocks(blockIdsToBeHighlighted);
       }
    }


    /**
     * Resets the UI changes in hint mode, e.g. to undo block highlighting.
     * @param step current hint step num
     * @param hintObject holds all required info, e.g. block ids to un-highlight
     * @param closeAssistent if true, the hint mode is ended after resetting the UI
     */
    _resetHintSettingsOfStep(step, hintObject, closeAssistent = false) {
        if (closeAssistent) { // close button click
            this._deactivateHintMode();
        }
        if (step === undefined || step < 0 || hintObject === undefined) {
            return;
        } else {
            const blocks = hintObject.associatedCutBlocks[step];
            this._resetBlockColors(blocks);
            if (hintObject.associatedCoordinates[step]) {
                this._removePointAtGameboardItemsOfHintstep()
            }

            const componentIds = hintObject.associatedComponentIds;
            this._removeBorderAroundComponents(componentIds);
        }
    }

    /**
     * Highlighted components and code blocks are reset.
     * @param stopHintMode if true: the portalHintMode is deactivated as well
     */
    _resetPortalSolutionVisuals(stopHintMode = false) {
        if (this.portalsSolutionsObject.length > 0) {
            this.portalsSolutionsObject.forEach(solution => {
                this._resetBlockColors(solution.keyCodeBlocks);
                this._resetBlockColors(solution.codeBlocksToBeTested);
                this._removeBorderAroundComponents(solution.associatedComponentIds);
            })
        }
        if (stopHintMode) {
            this._deactivateHintMode();
        }
    }

    /**
     * Shows the next hints, resets UI changes of the last step such as block highlighting
     * or arrows on the board, and applies UI changes for the current step
     * @param event holds the required stepNum and hint object
     */
    _showNextHintVisuals(event) {
        if (event && event.detail && event.detail.stepNum >= 0 && event.detail.hintObject !== null) {
            const stepNum = event.detail.stepNum;
            this._stepNum = stepNum;
            const previousStepNum = event.detail.previousStepNum;
            const hintObject = event.detail.hintObject;
            this._currentHintObject = hintObject;

            const testPopup = this.$.mine_popup;
            const blocklyTest = testPopup.$.blockly_test;

            let isLastStep =  hintObject.hintTexts && hintObject.hintTexts.length && hintObject.hintTexts.length - 1 === this._stepNum;

            if ((hintObject.expectedUserInteractions && hintObject.expectedUserInteractions[stepNum]
                && hintObject.expectedUserInteractions[stepNum] === "PORTAL_BUILD") || isLastStep) {
                blocklyTest.reactOnBlockMove(true);
            } else {
                blocklyTest.reactOnBlockMove(false);
            }

            this._resetHintSettingsOfStep(previousStepNum, hintObject);
            this._highlightBlocksOfHintstep(stepNum, hintObject);
            this._pointAtGameboardItemsOfHintstep(stepNum, hintObject);
            this._addBorderToComponentsOfStep(stepNum, hintObject);
            this._fillPortalWithTestHint(stepNum, hintObject);
        }
    }

    /**
     * Opens the speech bubble of the hint assistent, only before a game is started
     */
    _openHintAssistent() {
        if (!this._inPortalHintMode && !this._gameHasStarted()) {
            const isForFirstPortal = !this._hasBuiltPortals();
            this._inPortalHintMode = true;
            const speechBubble = this.$.hint_speech_bubble;
            while (speechBubble.firstChild) {
                speechBubble.removeChild(speechBubble.firstChild);
            }
            speechBubble.isOnHoverInfoText = false;
            speechBubble.showHintOptions(isForFirstPortal);
        }
    }

    /**
     * Shows the "I can help" info on hover over the assistant if not
     * already in hint mode or during game play.
     */
    _showHelpInfo() {
        if (!this._inPortalHintMode) {
            const speechBubble = this.$.hint_speech_bubble;
            while (speechBubble.firstChild) {
                speechBubble.removeChild(speechBubble.firstChild);
            }
            speechBubble.showHoverText(this._gameHasStarted());
        }
    }

    _closeHelpInfo() {
        if (!this._inPortalHintMode) {
            const speechBubble = this.$.hint_speech_bubble;
            speechBubble.closeHoverText();
        }
    }

    _showNextHint() {
        const speechBubble = this.$.hint_speech_bubble;
        while (speechBubble.firstChild) {
            speechBubble.removeChild(speechBubble.firstChild);
        }
        speechBubble.showNext();
    }

    _highlightBlocks(blockIds) {
        if (blockIds !== undefined && blockIds.length > 0) {
            const cut = this.$.blockly_CUT;
            blockIds.forEach(blockId => {
                cut.highlightBlock(blockId, "#ff0000");
            })
        }
    }

    _removeBorderAroundComponents(componentIds) {
        if (componentIds !== undefined && componentIds.length > 0) {
            componentIds.forEach(componentId => {
                if (componentId.length <= 0) {
                    // nothing
                }
                else {
                    const component = this.$[componentId];
                    if (component) {
                        component.style.border = "";
                    } else {
                        const shadowRootComponent = this.$.mine_popup.shadowRoot.querySelector('#' + componentId);
                        if (shadowRootComponent) {
                            shadowRootComponent.style.border = "";
                        }
                    }
                }
            })
        }
    }

    _resetBlockColors(highlightedBlockIds) {
        if (highlightedBlockIds !== undefined && highlightedBlockIds.length > 0) {
            const cut = this.$.blockly_CUT;
            highlightedBlockIds.forEach(blockId => {
                cut.resetColorOfBlock(blockId);
            })
        }
    }


    /**
     * Saves updates on mines to the database, i.e. on creation, editing or deletion of a mine.
     */
    _updateMine(mine) {
        if (this._inPortalHintMode && this._expectsUserSaveClick) {
            this._expectsUserSaveClick = false;
            this._showNextHint();
        }

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
            frontendId: mine.frontEndId
        }

        let req = this._generateRequest("/game/mine", mineDtoObject, "POST");

        let genRequest = req.generateRequest();
        req.completes = genRequest.completes;
        return req;
    }

    _updateAllMinesDeleted() {
        const mines = this._globalData.getMines();
        for (let mine of mines) {
            mine.creationEnd = new Date();
            mine.deleted = true;
            mine.deletionDateTime = Date.now();
            this._updateMine(mine)
        }

        this._globalData.deleteMines();
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

    _speedDownGame() {
        if (this._crittersSent) {
            this._critterList.forEach((critter) => {
                critter.speedy = false;
            });
            this._interval = normalCritterInterval;
        }
        this._isSpeedUp = this._interval === speedyCritterInterval;
    }

    _reloadGame() {
        this._gameTime += Date.now() - this._startGameTime;
        this._saveGameData();
        this._startTime = Date.now();
        this._totalTime = 0;
        this._paused = true;
        this._pauseStart = 0;
        this._pauseEnd = 0;
        this._crittersSent = false;
        this._finished = false;
        this._gameTime = 0;
        this._startGameTime = 0;
        this._finishedHumans = 0;
        this._doneCritters = 0;
        this._killedMutants = 0;
        this._killedHumans = 0;
        this.score = 0;
        this.baseScore = 0;
        this._interval = normalCritterInterval;
        this._critterList.forEach(critter => {
            critter.remove();
        });
        this._critterList = [];
        this._game = null;
        this._timeoutManager.clear();
        this._globalData.deleteMines();
        this._mines = [];
        this._isSpeedUp = this._interval === speedyCritterInterval;
        this._killedMutantsList = [];
        this._killedHumansList = [];
        this._finishedMutantsList = [];
        this._finishedHumansList = [];
        this.$.gameboard.removeAllMines();
        this.$.send_button.shape = "play";
        this.$.speedUp_button.disabled = true;
        this.$.speedUp_button.shape = "fastforward";

        this._onCritterNumberChanged();
        this._createGame();
    }


    /** starts the critters**/
    _startCritters(node) {
        this._startGameTime = Date.now();

        this.dispatchEvent(new CustomEvent('_crittersStarted', {detail: {}, bubbles: true, composed: true}));

        this._gameTime += (Date.now() - this._startGameTime);

        if (this._paused) {
            this._totalTime += (Date.now() - this._startTime);
            this._gameTime += (Date.now() - this._startGameTime);

            this._paused = false;
            this._pauseEnd = Date.now();

            // game is also "paused" before the first start; pauseStart is set once a real pause has been triggered
            if (this._pauseStart) {
                let data = {
                    gameId: this._game.id,
                    pauseStart: new Date(this._pauseStart),
                    pauseEnd: new Date(this._pauseEnd)
                }

                let req = this._generateRequest("game/pause", data, "POST");

                let genRequest = req.generateRequest();
                req.completes = genRequest.completes;
            }

            this.$.send_button.shape = "pause";
            if(!this._crittersSent) {
                this._addHumans();
                this._addCritters();
                this._sendCritters();
                this._crittersSent = true;
                this.$.speedUp_button.disabled = false;
                this._isSpeedUp = this._interval === speedyCritterInterval;
            } else {
                this._timeoutManager.resumeAll();
                this._critterList.forEach(critter => {
                    critter.resume();
                });
            }
        } else {
            this._startTime = Date.now();
            this._startGameTime = Date.now();
            this._timeoutManager.pauseAll();
            this._critterList.forEach(critter => {
                critter.pause();
            });
            this.$.send_button.shape = "play";
            this._paused = true;
            this._pauseStart = Date.now();
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
            // humans have no id (no reference to database element like for mutants)
            this._createCritter("", true, this._globalData.cut, this._globalData.init);
        }
    }

    _createCritter(id, human, cut, init) {
        let container = this.$.critter_container;
        let critter = document.createElement("critter-critter");
        critter.id = id;
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
                this._createCritter(mutants[i % (mutants.length)].id, false, new Function (mutants[i % (mutants.length)].code),
                    new Function (mutants[i % (mutants.length)].init));
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
        return ((height * 0.5) * size) - 29;
    }

    _renderCoordinates(render) {
        this.$.coordinate_container.style.visibility = (render ? "visible" : "hidden");
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

    /**
     * Displays the coordinates when the user hovers over gameboard-fields.
     * @param event The hover event triggering the function.
     * @private
     */
    _handleHoverField(event) {
        let detail = event.detail;
        this._hoverX = detail.x + 1;
        this._hoverY = this._globalData.width - detail.y;
    }

    /**
     * Displays the mine-popup, when the user clicks on a gameboard-field.
     * If the user is in the hint mode: Only clicks on wanted fields results
     * in a portal popup, else a warning is displayed.
     * @param event The click event triggering the function.
     * @private
     */
    _onFieldClicked(event) {
        if (this._inPortalHintMode) { // if in hint mode
            if (this._tipsForFieldsActivated) {
                this._checkHintsOfField(event);
            } // else if it is the last step of hints, allow field click and end hint mode
            else if (this._hintObject && this._hintObject.hintTexts && this._hintObject.hintTexts.length - 1 === this._stepNum) {
                const speechBubble = this.$.hint_speech_bubble;
                speechBubble.close();
                let detail = event.detail;
                this.$.mine_popup.show(detail);
            }
            else if (this._hintObject && this._hintObject.situation === "INTRODUCTION" && this._hintObject.expectedUserInteractions
                && this._hintObject.expectedUserInteractions[this._stepNum] && this._hintObject.expectedUserInteractions[this._stepNum] === "FIELD_CLICK") {
                // in introduction case it does not matter on which field is clicked
                let detail = event.detail;
                this.$.mine_popup.show(detail);
                this._showNextHint();
            }
            else if (this._hintObject && this._hintObject.expectedUserInteractions
                && this._hintObject.expectedUserInteractions[this._stepNum]
                && this._hintObject.expectedUserInteractions[this._stepNum] === "FIELD_CLICK") { // only open if user interaction "Field click" is expected
                if (this._hintObject.expectedClickCoordinates && this._hintObject.expectedClickCoordinates[this._stepNum].length > 0) { // if the next hint step involves a portal
                    let detail = event.detail;
                    const expectedCoords = this._hintObject.expectedClickCoordinates[this._stepNum];

                    let isCorrectField = false;

                    expectedCoords.forEach(coordinates => { // compare clicked field with all correct fields
                       if (detail.x === coordinates.x && detail.y === coordinates.y) { // if player clicks on correct coords
                           isCorrectField = true;
                       }
                    });

                    if (isCorrectField) {
                        this.$.mine_popup.show(detail);
                        this._showNextHint();
                    } else {
                        this.showWarningToast("hint_wrong_field");
                    }
                }
            }

        } else {
            let detail = event.detail;
            this.$.mine_popup.show(detail);
        }
    }

    /**
     * Adds a given number to the current score.
     * @param x The number to be added.
     * @private
     */
    _updateScore(x) {
        this.score += x;
    }

    /**
     * If the killed Critter is a mutant, killedCritters is updated along with the killed_container displaying
     * alive and dead mutants.
     * @param e
     * @private
     */
    _onCritterKilled(e) {
        // this._updateScore(e.detail.human ? -100 : 50);
        if (!e.detail.human) {
            this._killedMutants++;
            this._killedMutantsList.push(e.detail.critterId)
            let killed = this._killedMutants;
            let alive = this._globalData.numberOfCritters - this._killedMutants;
            this.$.killed_container.innerHTML = "";
            while (killed > 0) {
                let imageGrey = document.createElement("critter-game-image");
                imageGrey.name = "mutant_gray.png";
                this.$.killed_container.appendChild(imageGrey);

                killed--;
            }
            while (alive > 0) {
                let image = document.createElement("critter-game-image");
                image.name = "mutant_head.png";
                this.$.killed_container.appendChild(image);
                alive--;
            }
            let imageHealed = document.createElement("critter-game-image");
            imageHealed.name = "mutant_head.png";
            this.$.healed_container.appendChild(imageHealed);

        } else {
            // if human was killed
            this._killedHumans++;
            let humanInitAndCode = {
                init: `${e.detail.critterInit}`,
                cut: `${e.detail.critterCut}`
            };
            this._killedHumansList.push(humanInitAndCode)
            let imageHealed = document.createElement("critter-game-image");
            imageHealed.name = "critter_head.png";
            this.$.healed_container.appendChild(imageHealed);
        }


        this._onCritterDone()
    }

    /**
     * If the Critter that finished is human, finishedHumans is updated along with the finished_container displaying
     * alive and dead humans.
     * @param e
     * @private
     */
    _onCritterFinished(e) {
        // this._updateScore(e.detail.human ? 50 : -100);
        if (e.detail.human) {
            this._finishedHumans++;
            let humanInitAndCode = {
                init: `${e.detail.critterInit}`,
                cut: `${e.detail.critterCut}`
            };
            this._finishedHumansList.push(humanInitAndCode);
            let finishedCritter = this._finishedHumans;
            let notFinished = this._globalData.numberOfHumans - this._finishedHumans;
            this.$.finished_container.innerHTML = "";
            while (finishedCritter > 0) {
                let image = document.createElement("critter-game-image");
                image.name = "critter_head.png";
                this.$.finished_container.appendChild(image);
                finishedCritter--;
            }
            while (notFinished > 0) {
                let image = document.createElement("critter-game-image");
                image.name = "critter_gray.png";
                this.$.finished_container.appendChild(image);
                notFinished--;
            }
        } else {
            // if mutant made it to the tower
            this._finishedMutantsList.push(e.detail.critterId);
        }
        this._onCritterDone()
    }

    _onCritterDone() {
        this._doneCritters++;
        if (this._doneCritters === this._critterList.length) {
            this.dispatchEvent(new CustomEvent('_levelFinished', {detail: {}, bubbles: true, composed: true}));
        }
    }

    async _onLevelFinished() {
        // this.score -= 25 * (this._globalData.countMines());
        // this.score = (this.score < 0 ? 0 : this.score);
        this._gameTime += (Date.now() - this._startGameTime);
        this._finished = true;
        this._mines = this._globalData.getMines();
        let numMines = this._mines.length;
        let freeMines = this._globalData.freeMines;
        this.$.score_dialog.open();

        let timeBonus = 0;
        if(numMines > freeMines) {
            this.baseScore = -25 * (numMines - freeMines);
        }

        if (numMines < 1) {
            this.baseScore = 0;
            this.score = 0;
        } else {
            this.baseScore = this.baseScore + (this._finishedHumans + this._killedMutants) * 50;
            timeBonus = this._calculateTimeBonus();
            this.score = this.baseScore + timeBonus;
        }

        await this.showScore(numMines, timeBonus);
        let stars = 0;
        if(this.score >= 950){
            stars = 3;
        } else if (this.score >= 800){
            stars = 2;
        } else if (this.score >= 500){
            stars = 1;
        }
        this._storeResult(stars);
        this._saveGame();
        this.removeEventListener("beforeunload", this._saveGameData);
    }

    /**
     * Calculates the time bonus points for a game. It can maximally be 10 % of the achieved score (i.e. 100)
     * @returns {number}
     */
    _calculateTimeBonus() {
        let baseScore = this.baseScore;
        const timeBonusPercentage = this._calculateTimeBonusRatio();
        const timeBonusRatio = timeBonusPercentage / 100;

        return Math.round((timeBonusRatio/10) * baseScore) // to achieve a maximum of 10 % time bonus
    }

    /**
     * Calculates the time bonus percentage. It is 100 % if the playerTime is equal/less than freeSeconds,
     * if playerTime is larger than freeSeconds the time bonus percentage linearly decreases from 100 to 0.
     * @returns {number} from 0 to 100
     */
    _calculateTimeBonusRatio() {
        let timeBonusRatio = 0;
        const freeTime = this._globalData.freeSeconds;
        const playerTime = (Math.round(this._totalTime / 1000));
        if (playerTime <= freeTime) {
            timeBonusRatio = 1.0;
        } else if (playerTime <= freeTime * 2) {
            timeBonusRatio = 1.0 - (playerTime - freeTime) / freeTime;
        }

        const timeBonusPercentage = timeBonusRatio * 100;

        return Math.round(timeBonusPercentage);
    }

    async showScore(numMines, timeBonus) {
        let dialogScore = this.$.dialog_score;
        let freeMines = this._globalData.freeMines;
        let finishedHumansPercentage = Math.round((this._finishedHumans / this._globalData.numberOfHumans) * 100);
        let killedCritterPercentage = Math.round((this._killedMutants / this._globalData.numberOfCritters) * 100);
        dialogScore.overallScore = this.score;

        await dialogScore.insertData("finished_humans_line", this._finishedHumans * 50, finishedHumansPercentage, "%");
        await dialogScore.insertData("killed_critters_line", this._killedMutants * 50, killedCritterPercentage, "%");

        if (numMines < 1) { // if no portal is on gameboard
            const penaltyForPortalAbsence = this._finishedHumans * 50 + this._killedMutants * 50 + timeBonus;
            await dialogScore.insertData("portal_absence_penalty", - penaltyForPortalAbsence, 100, "%")
        } else if(numMines > freeMines) {
            await dialogScore.insertData("mines_line", -25 * (numMines - freeMines), numMines);
            await dialogScore.insertData("time_line", timeBonus, this._calculateTimeBonusRatio(), "%");
        } else {
            await dialogScore.insertData("mines_line", 0, numMines);
            await dialogScore.insertData("time_line", timeBonus, this._calculateTimeBonusRatio(), "%");
        }
    }

    _showStar(number) {
        let star = this.shadowRoot.querySelector("#star" + number);
        star.classList.add("visibleStar");
        this.stars = number;
    }

    /**
     * Initializes the killed_container and finished_container with a picture for each alive mutant and human
     * respectively.
     * @private
     */
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

        this.$.healed_container.innerHTML = "";
        let killedMutants = this._killedMutants;
        while (killedMutants > 0) {
            let imageHealed = document.createElement("critter-game-image");
            imageHealed.name = "mutant_head.png";
            this.$.healed_container.appendChild(imageHealed);
            killedMutants--;
        }
        let killedHumans = this._killedHumans;
        while (killedHumans > 0) {
            let imageHealed = document.createElement("critter-game-image");
            imageHealed.name = "critter_head.png";
            this.$.healed_container.appendChild(imageHealed);
            killedHumans--;
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

    /**
     * Redirects to the mutants page where the mutant code for the current level is displayed.
     * @private
     */
    _showMutants() {
        window.location.href = "/mutants?level=" + this._globalData.levelName;
    }

    /**
     * Creates a game data set with initial values for the starting time, the level and the user, if logged in.
     * @returns {HTMLElement}
     * @private
     */
    _createGame() {
        let data = {name: this._globalData.levelName}
        let req = this._generateRequest("/game/create", data, "POST");

        req.addEventListener('response', e => {
            this._game = e.detail.__data.response;
            this._game.name = this._globalData.levelName;
        });

        let genRequest = req.generateRequest();
        req.completes = genRequest.completes;
        return req;
    }

    /**
     * Saves the current data when the user has finished the game.
     * @returns {HTMLElement}
     * @private
     */
    _saveGame() {
        this._game.mutantsKilled = this._killedMutants;
        this._game.humansFinished = this._finishedHumans;
        this._game.gameTime = this._gameTime;
        this._game.score = this.score;
        this._game.killedMutantsList = this._killedMutantsList;
        this._game.killedHumansList = this._killedHumansList;
        this._game.finishedMutantsList = this._finishedMutantsList;
        this._game.finishedHumansList = this._finishedHumansList;

        let req = this._generateRequest("/game/save", this._game, "POST");

        let genRequest = req.generateRequest();
        req.completes = genRequest.completes;
        return req;
    }

    /**
     * Saves the mine code for all mines present at the point of saving.
     * @returns {HTMLElement}
     * @private
     */
    _saveMines() {
        let data = {
            game: this._game.id,
            mines: this._computeMineData()
        }

        let req = this._generateRequest("/game/mines", data, "POST");

        let genRequest = req.generateRequest();
        req.completes = genRequest.completes;
        return req;
    }

    /**
     * Returns the code and xml of the mines the user created.
     * @returns {[]} An array holding the data of all mines.
     * @private
     */
    _computeMineData() {
        let mineData = [];
        for (let i = 0; i < this._mines.length; i++) {
            mineData.push({
                xPosition: this._mines[i].xPosition,
                yPosition: this._mines[i].yPosition,
                creationStart: new Date(this._mines[i].creationStart),
                creationEnd: new Date(this._mines[i].creationEnd),
                code: this._mines[i].js,
                xml: this._mines[i].xml
            });
        }
        return mineData;
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

        this._game.mutantsKilled = this._killedMutants;
        this._game.humansFinished = this._finishedHumans;
        this._gameTime += Date.now() - this._startGameTime;
        this._game.gameTime = this._gameTime;
        this._game.killedMutantsList = this._killedMutantsList;
        this._game.killedHumansList = this._killedHumansList;
        this._game.finishedMutantsList = this._finishedMutantsList;
        this._game.finishedHumansList = this._finishedHumansList;
        let req = this._generateRequest("/game/save", this._game, "POST");

        let genRequest = req.generateRequest();
        req.completes = genRequest.completes;

        return req;
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
     * Returns the language tag of the currently NOT used language.
     * E.g. current language is german, it returns 'en'
     */
    _getOtherLanguageTag() {
        const currentLangTag = this.language.substring(0, 2);
        let otherLangTag = 'de';
        if (currentLangTag === 'de') {
            otherLangTag = 'en'
        }

        return otherLangTag;
    }

    _gameHasStarted() {
        return this._crittersSent;
    }
}

window.customElements.define(CritterGame.is, CritterGame);
