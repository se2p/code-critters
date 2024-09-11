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
import {critterStyle} from '/style/critter-botstrap.js'
import { afterNextRender } from '/lib/@polymer/polymer/lib/utils/render-status.js';
import {I18n} from '../critter-i18n/critter-i18n-mixin.js';
import '../critter-blockly/critter-blockly.js';


// Is a speech bubble for the hints during a game.

class CritterHintSpeechBubble extends I18n(PolymerElement) {
    static get template() {
        return html`
            <style>
                :host {
                    --display-hint: none;
                }
                
                .speech-bubble {
                    display: var(--display-hint);
                    flex-direction: column;
                    background-color: #ffffff;
                    border: 2px solid #000000;
                    border-radius: 10px;
                    padding: 10px;
                    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.2); 
                    position: relative;
                    height: auto;
                    width: 450px;
                    z-index: 10000;
                }

                .speech-bubble::after {
                    content: '';
                    position: absolute;
                    bottom: -15px; 
                    left: 50%; 
                    transform: translateX(-50%); 
                    border-width: 15px 15px 0; 
                    border-style: solid;
                    border-color: #000000 transparent; 
                }

                slot{
                    display: block;
                }

                critter-button {
                    --critter-button-color-disabled: transparent;
                    --critter-button-color: transparent;
                    --critter-button-text-color: #666;
                    --critter-button-text-color-disabled: whitesmoke;
                    transition: 100ms
                }

                .popup_button {
                    margin-left: 5px;
                    max-width: 150px;
                }

                .popup_button:hover {
                    font-size: 1.1em;
                }

                critter-button:hover iron-icon {
                    padding-bottom: 5px;
                }

                critter-button iron-icon {
                    margin: auto;
                }

                #close_button:hover,
                #options_close_button:hover {
                    --critter-button-text-color: red;
                }

                #bubble_buttons {
                    position: relative;
                    bottom: 0;
                    right: 0;
                    display: flex;
                    flex-direction: row;
                    justify-content: space-evenly;
                    align-items: center;
                }
                
                .larger-font {
                    font-size: 1.2em;
                    margin-bottom: 5%;
                    text-align: center;
                }
                
            </style>
        ${critterStyle}
            
            <div class="speech-bubble" id="hint_container">
                
                <div hidden$="{{!isOnHoverInfoText}}">
                    <div class="row">
                        <div class="row-12 larger-font col">
                            [[__("click_me_for_help")]]
                        </div>
                    </div>
                </div>

                <div hidden$="{{!isOnHoverTextDuringGame}}">
                    <div class="row">
                        <div class="row-12 larger-font col">
                            [[__("good_luck_text")]]
                        </div>
                    </div>
                </div>
                
                <div hidden$="{{!isHintOptionSelection}}">
                    <div class="row">
                        <div class="row-12 larger-font col">
                            [[__("how_help")]]
                        </div>
                    </div>
                    

                    <div id="bubble_buttons" class="row-12">
                        <critter-button id="introduction" class="popup_button" hidden$="{{!isFirstLevel}}">
                            [[__("introduction")]]
                        </critter-button>
                        <critter-button id="first_portal" class="popup_button" hidden$="{{!forFirstPortal}}">
                            [[__("first_portal_hint")]]
                        </critter-button>
                        <critter-button id="general_field_hints" class="popup_button" hidden$="{{forFirstPortal}}">
                            [[__("general_portals_hint")]]
                        </critter-button>
                        <critter-button id="options_close_button" class="popup_button">
                            <iron-icon icon="icons:close"></iron-icon>
                        </critter-button>
                    </div>
                </div>

                
                <div hidden$="{{!isInHintMode}}">
                    <div class="row" hidden$="{{!hidePortalBlocklyCode}}">
                        <div id="hint" class="larger-font col">
                            <div id="hint_placeholder">
                                <span inner-h-t-m-l="[[__(currentHintText)]]"></span>
                            </div>
                        </div>
                    </div>

                    <div hidden$="{{hidePortalBlocklyCode}}">
                        <critter-blockly id="solution_portal" class="blockly" height$="500" controls="true"
                                         read-only>
                        </critter-blockly>
                    </div>

                    <div id="bubble_buttons">
                        <critter-button hidden$="{{hidePortalBlocklyCode}}" id="back_button_from_blockly_code" class="popup_button">
                            <iron-icon icon="icons:arrow-back"></iron-icon>
                        </critter-button>
                        <critter-button hidden$="[[computeHidden(isFirstHintStep, hideContinueButton)]]" id="back_button" class="popup_button" disabled="{{disableBackwardsButton}}">
                            <iron-icon icon="icons:arrow-back"></iron-icon>
                        </critter-button>
                        <critter-button hidden$="[[computeHidden(isLastHintStep, hideContinueButton)]]" id="next_button" class="popup_button" disabled="{{disableNextButton}}">
                            <iron-icon icon="icons:arrow-forward"></iron-icon>
                        </critter-button>
                        <critter-button hidden="{{hideCompareButton}}" id="compare_button" class="popup_button">
                            [[__("show_portal_hint_xml")]]
                        </critter-button>
                        <critter-button id="close_button" class="popup_button">
                            <iron-icon icon="icons:close"></iron-icon>
                        </critter-button>
                    </div> 
                </div>
            </div>
        `;
    }


    static get importMeta() { return import.meta; }

    static get is() {
        return 'critter-hint-speech-bubble';
    }

    static get properties() {
        return {
            isOpen: {
                type: Boolean,
                value: false
            },

            hintTexts: {
                type: Array,
                notify: true
            },

            currentHintStep: {
                type: Number,
                value: -1
            },

            isHintOptionSelection: {
                type: Boolean,
                value: false
            },

            isOnHoverInfoText: {
                type: Boolean,
                value: false
            },

            isOnHoverTextDuringGame: {
                type: Boolean,
                value: false
            },

            isInHintMode: {
                type: Boolean,
                value: false
            },

            currentHintObject: {
                type: Object
            },

            isFirstLevel: {
                type: Boolean,
                value: false
            },

            forFirstPortal: {
                type: Boolean,
                value: false
            },

            currentHintText: {
                type: String,
                value: ''
            },

            hideContinueButton: {
                type: Boolean,
                value: false
            },

            hideCompareButton: {
                type: Boolean,
                value: true
            },

            hintPortalXml: {
                type: String,
                value: ''
            },

            hidePortalBlocklyCode: {
                type: Boolean,
                value: true
            },

            isInPortalSolutionMode: {
                type: Boolean,
                value: false
            },

            isFirstHintStep: {
                type: Boolean,
                value: false
            },

            isLastHintStep: {
                type: Boolean,
                value: false
            },

            disableNextButton: {
                type: Boolean,
                value: false,
            },

            disableBackwardsButton: {
                type: Boolean,
                value: false
            },

            gameId: {
                type: String,
                value: ''
            },

            visitedStepsObject: {
                type: Array,
                value: [],
                notify: true
            }

        }
    }

    connectedCallback() {
        super.connectedCallback();


        afterNextRender(this, function () {
            this._globalData = window.Core.CritterLevelData;

            this.$.introduction.addEventListener("click", (event) => this.loadHint(event));
            this.$.first_portal.addEventListener("click", (event) => this.loadHint(event));
            this.$.general_field_hints.addEventListener("click", (event) => this.loadHint(event));
            this.$.close_button.addEventListener("click", () => this.close());
            this.$.options_close_button.addEventListener("click", () => this.close());
            this.$.next_button.addEventListener("click", () => {if (!this.disableNextButton) { this.showNext() }});
            this.$.back_button.addEventListener("click", () => {if (!this.disableBackwardsButton) { this.showNext(this.currentHintStep > 0 ? this.currentHintStep - 1 : undefined)}});
            this.$.compare_button.addEventListener("click", () => this._activateCompareWithPortalMode());
            this.$.back_button_from_blockly_code.addEventListener("click", () => this._showHintsTextForField(this.currentHintText, false));

            window.addEventListener("_portalsDeletedBeforeIntro", (event) => this.loadHint(event.detail));

            if (this.isOpen) {
                this.open();
            }

            if (this._globalData.levelName === "level_1") {
                this.isFirstLevel = true;
            }
        });
    }

    open() {
        this.isOpen = true;
        this.updateStyles({
            '--display-hint': 'flex'
        });
    }

    close() {
        this.isOpen = false;
        this.updateStyles({
            '--display-hint': 'none'
        });

        if (this.isInPortalSolutionMode) {
            this.dispatchEvent(new CustomEvent('_portalSolutionsClosed', {
                detail: { },
                bubbles: true,
                composed: true
            }));
        } else {

            // saves usage activity in backend
            this.storeAssistentDetails(true);

            this.dispatchEvent(new CustomEvent('_hintClosed', {
                detail: { stepNum: this.currentHintStep, hintObject: this.currentHintObject},
                bubbles: true,
                composed: true
            }));
        }

        this.currentHintStep = -1;
        this.isInHintMode = false;
        this.isOnHoverInfoText = false;
        this.isOnHoverTextDuringGame = false;
        this.isHintOptionSelection = false;
        this.currentHintText = '';
        this.forFirstPortal = false;
        this.hideContinueButton = false;
        this.hideCompareButton = true;
        this.hintPortalXml = '';
        this.hidePortalBlocklyCode = true;
        this.isInPortalSolutionMode = false;
        this.isFirstHintStep = false;
        this.isLastHintStep = false;
        this.disableNextButton = false;
        this.disableBackwardsButton = false;
        this.gameId = '';
        this.visitedStepsObject = [];
    }

    hide() {
        this.isOpen = false;
        this.updateStyles({
            '--display-hint': 'none'
        });
    }

    showNext(next) {
        if (this.hintTexts.length > 0 && (this.hintTexts.length > this.currentHintStep + 1 || this.hintTexts.length > next)) {
            const previousStep = this.currentHintStep;
            this.currentHintStep++;

            if (next !== undefined) { // if param next exists => overwrite hint step and text with param
                this.currentHintStep = next;
                this.currentHintText = this.hintTexts[next];
            } else {
                this.currentHintText = this.hintTexts[this.currentHintStep];
            }

            this.setFirstAndLastStep();
            this.disableNextButton = this.isUserInteractionRequested();
            this.disableBackwardsButton = this.canGoBack();

            this.addAssistentInfoStep(this.currentHintStep);

            this.dispatchEvent(new CustomEvent('_showNextHint', {
                detail: { stepNum: this.currentHintStep, hintObject: this.currentHintObject, previousStepNum: previousStep },
                bubbles: true,
                composed: true
            }));
        } else {
            this.close();
        }
    }

    showHintOptions(forFirstPortal = false) {
        if (this._globalData.levelName === "level_1") {
            this.isFirstLevel = true;
        }
        this.forFirstPortal = forFirstPortal;
        this.isHintOptionSelection = true;
        this.open();
    }

    /**
     * Is called on hover over the hint assistant to display info.
     */
    showHoverText(duringGame) {
        if (duringGame) {
            this.isOnHoverTextDuringGame = true;
        } else {
            this.isOnHoverInfoText = true;
        }
        this.open();
    }

    closeHoverText() {
        this.isOnHoverInfoText = false;
        this.isOnHoverTextDuringGame = false;
        this.hide();
    }

    _activateCompareWithPortalMode() {
        if (this.hintPortalXml.length > 0) {
            this.hidePortalBlocklyCode = false;
            this.hideCompareButton = true;
            this.$.solution_portal._setCodeInCurrentLanguage(this.hintPortalXml);
        }
    }

    _showHintsTextForField(hintText, hideCompareButton = true) {
        this.currentHintText = hintText;
        this.hideCompareButton = hideCompareButton;
        this.currentHintObject = undefined;
        this.isHintOptionSelection = false;
        this.isInHintMode = true;
        this.hideContinueButton = true;
        this.isInPortalSolutionMode = true;
        this.hidePortalBlocklyCode = true;
    }

    loadHint(event) {
        if (!this.isOpen) {
            this.open();
        }
        let buttonId;
        if (event && event.target && event.target.id) {
            buttonId = event.target.id;
        }
        const hintObjects = [...this._globalData.hintObjectsArray];

        if (buttonId === "introduction") {
            this.currentHintObject = hintObjects.find(ob => ob.situation === "INTRODUCTION");
            if (this.currentHintObject !== undefined) {
                this.hintTexts = this.currentHintObject.hintTexts;

                if (this._globalData.getMines().length >= 1) { // check if portals already exist
                    this.dispatchEvent(new CustomEvent('_startIntroModeQuestion', {
                        detail: { stepNum: this.currentHintStep, hintObject: this.currentHintObject },
                        bubbles: true,
                        composed: true
                    }));
                    this.hide();
                } else {
                    this.isHintOptionSelection = false;
                    this.isInHintMode = true;
                    this.showNext();
                    this.dispatchEvent(new CustomEvent('_introPortalHintMode', {
                        detail: { stepNum: this.currentHintStep, hintObject: this.currentHintObject },
                        bubbles: true,
                        composed: true
                    }));
                }
                this.storeAssistentDetails();
            }
        } else if (buttonId === "first_portal") {

            this.currentHintObject = hintObjects.find(ob => ob.situation === "FIRST_PORTAL");
            if (this.currentHintObject !== undefined) {
                this.hintTexts = this.currentHintObject.hintTexts;
                this.isHintOptionSelection = false;
                this.isInHintMode = true;
                this.showNext();
                this.dispatchEvent(new CustomEvent('_firstPortalHintMode', {
                    detail: { stepNum: this.currentHintStep, hintObject: this.currentHintObject },
                    bubbles: true,
                    composed: true
                }));
                this.storeAssistentDetails();
            }
        } else if (buttonId === "general_field_hints") {

            this._showHintsTextForField("click_on_fields_for_hints")
            this.dispatchEvent(new CustomEvent('_giveHintForFieldMode', {
                    detail: { },
                    bubbles: true,
                    composed: true
                }));
            }
    };

    /**
     * Saves the usage activities of the hint assistent in the backend.
     */
    storeAssistentDetails(closeAssistent = false) {
        let dto;

        if (this._globalData.assistentUsageInfoObject !== null && closeAssistent) { // if updates existing info object
            dto = {...this._globalData.assistentUsageInfoObject, visitedSteps: this.visitedStepsObject, timeClosed: new Date()};
            this._globalData.assistentUsageInfoObject = null; // set info object to null on close of assistent
        } else { // if first save
            dto = {
                gameId: this.gameId,
                visitedSteps: this.visitedStepsObject,
                hintSituation: this.currentHintObject.situation,
            }
        }

        const url = `/game/${this.gameId}/assistant-details`;

        let req = this._generateRequest(url, dto, "POST");

        if (!closeAssistent) { // store initial info object in globaldata for further updates
            req.addEventListener('response', e => {
                this._globalData.assistentUsageInfoObject = e.detail.__data.response;
            });
        }

        let genRequest = req.generateRequest();
        req.completes = genRequest.completes;
        return req;
    }

    addAssistentInfoStep(currentHintStep) {
        let details = {
            timeSeen: new Date(),
            hintStep: currentHintStep,
        }
        this.visitedStepsObject.push(details);
    }

    isUserInteractionRequested() {
        return (this.currentHintObject && this.currentHintObject.expectedUserInteractions && this.currentHintObject.expectedUserInteractions[this.currentHintStep])
    }

    canGoBack() {
        return (this.currentHintObject && this.currentHintObject.expectedUserInteractions && this.currentHintObject.expectedUserInteractions[this.currentHintStep - 1])
    }

    setFirstAndLastStep() {
        if (this.currentHintStep === 0) {
            this.isFirstHintStep = true;
            this.isLastHintStep = false;
        } else if (this.currentHintStep === this.hintTexts.length - 1) {
            this.isFirstHintStep = false;
            this.isLastHintStep = true;
        } else {
            this.isFirstHintStep = false;
            this.isLastHintStep = false;
        }
    }

    computeHidden(isFirstOrLastHintStep, hideContinueButton) {
        return isFirstOrLastHintStep || hideContinueButton;
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
}

window.customElements.define(CritterHintSpeechBubble.is, CritterHintSpeechBubble);
