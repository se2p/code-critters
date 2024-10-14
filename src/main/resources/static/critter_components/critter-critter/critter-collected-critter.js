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
import { afterNextRender } from '/lib/@polymer/polymer/lib/utils/render-status.js';
import {Level} from '../critter-level-mixin/critter-level-mixin.js';
import {I18n} from '../critter-i18n/critter-i18n-mixin.js';
import '../critter-button/critter-button.js';


// Displays a collected or already finished critter from the second stages. Can not walk but instead
// can show the recipe code of the critter on click

class CritterCollectedCritter extends I18n(Level(PolymerElement)) {
    static get template() {
        return html`
        <style>
            :host {
                display: block;
                --critter-display: block;
                --tooltip-display: none;
                --cut-xml-display: none;
            }
            
            /* Defines the width and height of the Critters, their clothes, and hair as well as the images to be used for small 20x20px critter-board-fields. */
            @media only screen and (max-width: 600px) {
                #critter_container {
                    position: absolute;
                    width: 20px;
                    height: 20px;
                    transition-timing-function: linear;
                    visibility: hidden;
                    z-index: 5;
                    display:  var(--critter-display);
                    margin: 1px;
                    cursor: pointer;
                }
                
                #critter,
                #ccritter,
                #hcritter{
                    width: 20px;
                    height: 20px;
                    animation-duration: 1s;
                    animation-timing-function: steps(9);
                    animation-iteration-count: infinite;
                    animation-direction: reverse;
                    position: absolute;
                }

                .human {
                    background-image: url(image/critter50/human.png)
                }

                .critter-white {
                    background-image: url(image/critter50/cloth_white.png)
                }

                .critter-green {
                    background-image: url(image/critter50/cloth_green.png);
                }

                .critter-blue {
                    background-image: url(image/critter50/cloth_blue.png);
                }

                .critter-cyan {
                    background-image: url(image/critter50/cloth_cyan.png);
                }

                .critter-black {
                    background-image: url(image/critter50/cloth_black.png);
                }

                .critter-yellow {
                    background-image: url(image/critter50/cloth_yellow.png);
                }

                .critter-orange {
                    background-image: url(image/critter50/cloth_orange.png);
                }

                .critter-pink {
                    background-image: url(image/critter50/cloth_pink.png);
                }

                .critter-red {
                    background-image: url(image/critter50/cloth_red.png);
                }

                .hair-red {
                    background-image: url(image/critter50/hair_red.png);
                }

                .hair-black {
                    background-image: url(image/critter50/hair_black.png);
                }

                .hair-blond {
                    background-image: url(image/critter50/hair_blond.png);
                }

                .hair-brown {
                    background-image: url(image/critter50/hair_brown.png);
                }

                .hair-gray {
                    background-image: url(image/critter50/hair_gray.png);
                }
                
                /* Defines the animation of Critters walking in different directions. */
                .critter-east{
                    animation-name: walk_east;
                    background-position: 0 20px;
                    -webkit-animation: walk_east 1s steps(9) infinite reverse;
                    animation: walk_east 1s steps(9) infinite reverse;
                }
                
                /* The following code specifies the background position of the images to be used for the Critter walking animation. */
                @keyframes walk_east {
                    from {
                        background-position: 0 20px;
                    }
                    to {
                        background-position: 187px 20px;
                    }
                }

                @-webkit-keyframes walk_east {
                    from {
                        background-position: 0 20px;
                    }
                    to {
                        background-position: 187px 20px;
                    }
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
            
            /* Defines the width and height of the Critters, their clothes, and hair as well as the images to be used for big 40x40px critter-board-fields. */
            @media only screen and (min-width: 601px) {
                #critter_container {
                    position: absolute;
                    width: 40px;
                    height: 40px;
                    transition-timing-function: linear;
                    visibility: hidden;
                    z-index: 5;
                    display:  var(--critter-display);
                    margin: 1px;
                    cursor: pointer;
                }
                
                #critter,
                #ccritter,
                #hcritter{
                    width: 40px;
                    height: 40px;
                    animation-duration: 1s;
                    animation-timing-function: steps(9);
                    animation-iteration-count: infinite;
                    animation-direction: reverse;
                    position: absolute;
                }

                .human {
                    background-image: url(image/critter/human.png)
                }

                .critter-white {
                    background-image: url(image/critter/cloth_white.png)
                }

                .critter-green {
                    background-image: url(image/critter/cloth_green.png);
                }

                .critter-blue {
                    background-image: url(image/critter/cloth_blue.png);
                }

                .critter-cyan {
                    background-image: url(image/critter/cloth_cyan.png);
                }

                .critter-black {
                    background-image: url(image/critter/cloth_black.png);
                }

                .critter-yellow {
                    background-image: url(image/critter/cloth_yellow.png);
                }

                .critter-orange {
                    background-image: url(image/critter/cloth_orange.png);
                }

                .critter-pink {
                    background-image: url(image/critter/cloth_pink.png);
                }

                .critter-red {
                    background-image: url(image/critter/cloth_red.png);
                }

                .hair-red {
                    background-image: url(image/critter/hair_red.png);
                }

                .hair-black {
                    background-image: url(image/critter/hair_black.png);
                }

                .hair-blond {
                    background-image: url(image/critter/hair_blond.png);
                }

                .hair-brown {
                    background-image: url(image/critter/hair_brown.png);
                }

                .hair-gray {
                    background-image: url(image/critter/hair_gray.png);
                }
                
                /* Defines the animation of Critters walking in different directions. */
                .critter-east{
                    animation-name: walk_east;
                    background-position: 0 40px;
                    -webkit-animation: walk_east 1s steps(9) infinite reverse;
                    animation: walk_east 1s steps(9) infinite reverse;
                }
                
                /* The following code specifies the background position of the images to be used for the Critter walking animation. */
                @keyframes walk_east {
                    from {
                        background-position: 0 40px;
                    }
                    to {
                        background-position: 374px 40px;
                    }
                }
                

                @-webkit-keyframes walk_east {
                    from {
                        background-position: 0 40px;
                    }
                    to {
                        background-position: 374px 40px;
                    }
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

            #tooltip {
                padding: 5px;
                font-size: 0.8em;
                width: 130px;
                background-color: #f9edbe;
                position: relative;
                left: 35px;
                top: 35px;
                display: var(--tooltip-display);
            }
            
            .buttons {
                top: 105px;
                max-width: 50px;
                position: absolute;
                left: 350px;
            }
            
            #blockly_cut_container {
                display: var(--cut-xml-display);
                min-width: 400px;
                z-index: 1000;
                margin-top: 100px;
                position: absolute;
            }

            #blockly_cut_container::before {
                content: '';
                position: absolute;
                top: -60px;
                left: 12px;
                width: 0;
                height: 0;
                border-left: 20px solid transparent;
                border-right: 20px solid transparent;
                border-bottom: 60px solid #FFA600;
                z-index: 999;
            }
            
            .critterCodeDiv {
                border-radius: 15px;
                border: 2px solid #FFA600;
                border-top-width: 50px;
                padding: 1%;
                margin-bottom: 1%;
                z-index: 1000;
                position: relative;
            }

            .recipeText {
                position: absolute;
                min-width: 300px;
                top: -30px;
                left: 20px;
                z-index: 1000;
                text-align: left;
                font-size: 1.3em;
            }

            #close_button:hover {
                color: red;
            }
            

            .critterCodeContainer {
                position: relative;
            }
            
            #white_berries {
                display: var(--white-berries-display);
            }

            #orange_berries {
                display: var(--orange-berries-display);
            }

            #red_berries {
                display: var(--red-berries-display);
            }

            #purple_berries {
                display: var(--purple-berries-display);
            }

            #pink_berries {
                display: var(--pink-berries-display);
            }

            #black_berries {
                display: var(--black-berries-display);
            }
            
            #inner_rounds {
                display: var(--inner-rounds-display);
            }
            
            #rounds_count {
                display: var(--rounds-count-display);
            }
            
            #variables {
                display: var(--variables-display);
            }

            .critter-stay{
                animation: none !important;
                -webkit-animation: none !important;
            }
            
        </style>
        
        <div id="critter_container"">
            <div id="critter"
                 class$="critter-east critter-size-{{size}} human
                 critter-stay">
            </div>
            <div id="ccritter"
                 class$="critter-east critter-{{color}} critter-size-{{size}}
                 critter-stay">
            </div>
            <div id="hcritter"
                 class$="critter-east hair-{{hair}} critter-size-{{size}}
                 critter-stay">
            </div>
            <div id="tooltip">
                <div class="flex col">
                    <div class="row"><h3>[[__('attributes')]]</h3></div>
                    <div id="red_berries" class="row">[[__('redBerryCount')]]: [[redBerryCount]]</div>
                    <div id="pink_berries" class="row">[[__('pinkBerryCount')]]: [[pinkBerryCount]]</div>
                    <div id="black_berries" class="row">[[__('blackBerryCount')]]: [[blackBerryCount]]</div>
                    <div id="orange_berries" class="row">[[__('orangeBerryCount')]]: [[orangeBerryCount]]</div>
                    <div id="purple_berries" class="row">[[__('purpleBerryCount')]]: [[purpleBerryCount]]</div>
                    <div id="white_berries" class="row">[[__('whiteBerryCount')]]: [[whiteBerryCount]]</div>
                    <div id="inner_rounds" class="row">[[__('innerRoundsCount')]]: [[innerRoundsCount]]</div>

                    <!--                use [[ ]] only for numbers, otherwise 0 will not show e.g.-->
                    <div id="rounds_count" class="row">[[__('roundsCount')]]: [[roundsCount]]</div>
                    <div class="row">[[__('color')]]: [[__(color)]]</div>
                    <div class="row">[[__('hair')]]: [[__(hair)]]</div>
                    <div id="variables"><h4>[[__('variables')]]</h4></div>
                    
                </div>
            </div>

            <div id="blockly_cut_container">
                <div class="critterCodeDiv">
                    <div class="recipeText">[[__("my_instr")]]</div>
                    <div class="buttons">
                        <critter-button id="close_button" class="popup_button">
                            <iron-icon icon="icons:close"></iron-icon>
                        </critter-button>
                    </div>
                    <!--<div id="blockly_container" class="col-lg mt-3">-->
                    <div class="critterCodeContainer">
                        <critter-blockly id="blockly_CUT" class="full_blockly" height$=120 controls="true"
                                         is-healing-cut="true" custom-xml-string="{{xmlCode}}""
                                         read-only>
                        </critter-blockly>
                    </div>
                </div>
            </div>
        </div>
        `;
    }

    static get importMeta() { return import.meta; }

    static get is() {
        return 'critter-collected-critter';
    }

    static get properties() {

        return {

            color: {
                type: String,
                value: "green"
            },

            hair: {
                type: String,
                value: "blond"
            },

            direction: {
                type: String,
                value: "east"
            },

            size: {
                type: Number,
                value: 10
            },

            roundsCount: {
                type: Number,
                notify: true,
                value: 0
            },

            innerRoundsCount: { // counts the number of nested loop cycles
                type: Number,
                notify: true,
                value: 0
            },

            redBerryCount: {
                type: Number,
                notify: true,
                value: 0
            },

            pinkBerryCount: {
                type: Number,
                notify: true,
                value: 0
            },

            blackBerryCount: {
                type: Number,
                notify: true,
                value: 0
            },

            orangeBerryCount: {
                type: Number,
                notify: true,
                value: 0
            },

            purpleBerryCount: {
                type: Number,
                notify: true,
                value: 0
            },

            whiteBerryCount: {
                type: Number,
                notify: true,
                value: 0
            },

            isMutated: {
                type: Boolean,
                value: false
            },

            xmlCode: {
                type: String,
                value: ''
            },

            showXmlCode: {
                type: Boolean,
                value: false
            },

            id: {
                type: String
            },

            init: {
                type: Function,
                observer: '_displayVariables'
            },

            variables: {
                type: Object,
                value: {}
            },

            _interval: {
                type: Number,
                value: 3000
            },

            _backup: {
                type: Object,
                value: {}
            },

            firstFaultyRound: {
                type: Number,
                value: 0
            },

            showTooltip: {
                type: Boolean,
                value: true
            },
        };
    }

    constructor() {
        super();
        this._globalData = window.Core.CritterLevelData;
        this._timeoutManager = window.Core.timeouts;
    }

    connectedCallback() {
        super.connectedCallback();

        afterNextRender(this, () => {
            if (this.showTooltip) {
                this.$.critter_container.addEventListener('mouseover', this._onHover.bind(this));
                this.$.critter_container.addEventListener('mouseout', this._onHoverOut.bind(this));
            }

            this.$.critter_container.addEventListener('click', this._onClickOnDetected.bind(this));

            if (this.showXmlCode) {
                this.$.close_button.addEventListener("click", () => this._closeOnClick());
            }
        });
    }

    _closeOnClick() {
        if (this.showXmlCode) {
            this.updateStyles({
                '--cut-xml-display': 'none'
            });
            this.showXmlCode = false;
        }
    }

    /**
     * Show a critter standing around.
     */
    showCollectedCritter() {
        this._timeoutManager.add(() => {
            this.init();
            this._timeoutManager.add(() => {
                if (!this.isMutated) {
                    this.$.critter_container.style.border = "1px solid red"
                }
                this.$.critter_container.style.visibility = "visible";
            }, this._interval * 0.5);
        }, 100);
    }

    showFinishedCritter() {
        this.init();
        this._timeoutManager.add(() => {
            if (this.isMutated) {
                this.$.critter_container.style.border = "1px solid red"
            }
            this.$.critter_container.style.visibility = "visible";
            }, this._interval * 0.5);
    }

    showCritterRepresentation() {
        this.init();
        this._timeoutManager.add(() => {
            this.$.critter_container.style.visibility = "visible";
        }, this._interval * 0.5);
    }

    _onHover() {
        if(this.showXmlCode) {
            return;
        }
        this.updateStyles({
            '--tooltip-display': 'block'
        });

        if (Object.entries(this.variables).length === 0) {
            this.updateStyles({
                '--variables-display': 'none'
            });
        } else {
            this.updateStyles({
                '--variables-display': 'block'
            });
        }

        if (this.redBerryCount > 0) {
            this.updateStyles({
                '--red-berries-display': 'block'
            });
        } else {
            this.updateStyles({
                '--red-berries-display': 'none'
            });
        }

        if (this.pinkBerryCount > 0) {
            this.updateStyles({
                '--pink-berries-display': 'block'
            });
        } else {
            this.updateStyles({
                '--pink-berries-display': 'none'
            });
        }

        if (this.whiteBerryCount > 0) {
            this.updateStyles({
                '--white-berries-display': 'block'
            });
        } else {
            this.updateStyles({
                '--white-berries-display': 'none'
            });
        }

        if (this.orangeBerryCount > 0) {
            this.updateStyles({
                '--orange-berries-display': 'block'
            });
        } else {
            this.updateStyles({
                '--orange-berries-display': 'none'
            });
        }

        if (this.purpleBerryCount > 0) {
            this.updateStyles({
                '--purple-berries-display': 'block'
            });
        } else {
            this.updateStyles({
                '--purple-berries-display': 'none'
            });
        }

        if (this.blackBerryCount > 0) {
            this.updateStyles({
                '--black-berries-display': 'block'
            });
        } else {
            this.updateStyles({
                '--black-berries-display': 'none'
            });
        }

        if (this.innerRoundsCount > 0) {
            this.updateStyles({
                '--inner-rounds-display': 'block'
            });
        } else {
            this.updateStyles({
                '--inner-rounds-display': 'none'
            });
        }

        if (this.roundsCount > 0) {
            this.updateStyles({
                '--rounds-count-display': 'block'
            });
        } else {
            this.updateStyles({
                '--rounds-count-display': 'none'
            });
        }
    }

    _onHoverOut() {
        this.updateStyles({
            '--tooltip-display': 'none'
        });
    }

    _onClickOnDetected() {
        if (this.showXmlCode) {
            this.updateStyles({
                '--cut-xml-display': 'none'
            });
            this.showXmlCode = false;
        } else {
            // TODO later??
            this.$.blockly_CUT._onLanguageChanged();
            this.updateStyles({
                '--cut-xml-display': 'block',
                '--tooltip-display': 'none'
            });
            this.showXmlCode = true;
        }
    }

    _displayVariables(newValue) {
        let str = newValue.toString();
        let i = 0;
        while ((i = str.indexOf("variable_", i)) !== -1) {
            let temp = str.substring(i + 9, i = str.indexOf(")", i));
            if (this.variables[temp] === undefined) {
                let span = document.createElement("span");
                span.innerHTML = temp + ": " + this["variable_" + temp];
                this.$.tooltip.append(span);
                this.$.tooltip.append(document.createElement("br"));
                let temp2 = Object.assign({}, this.variables);
                temp2[temp] = span;
                this.variables = temp2;
            }
        }
    }

    _updateTooltip() {
        if (this.variables !== {}) {
            let temp = Object.assign({}, this.variables);
            for (let prop in temp) {
                // skip loop if the property is from prototype
                if (!temp.hasOwnProperty(prop)) continue;

                temp[prop].innerHTML = prop + ": " + this["variable_" + prop];
            }
            this.variables = temp;
        }
    }
}

window.customElements.define(CritterCollectedCritter.is, CritterCollectedCritter);
