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


// Displays a critter in the second stages.

class CritterHealingCritter extends I18n(Level(PolymerElement)) {
    static get template() {
        return html`
            <style>
                :host {
                    display: block;
                    --critter-display: block;
                    --tooltip-display: none;
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
                        display: var(--critter-display);
                    }

                    #critter,
                    #ccritter,
                    #hcritter {
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

                    .isDirty::before {
                        content: "";
                        position: absolute;
                        top: 13px;
                        left: 2px;
                        width: 40%;
                        height: 40%;
                        background-image: url(image/critter/instructionDirty.png);
                        background-size: cover;
                        background-position: center;
                        opacity: 1;
                        pointer-events: none;
                    }

                    .isNotDirty::before {
                        content: "";
                        position: absolute;
                        top: 13px;
                        left: 3px;
                        width: 40%;
                        height: 40%;
                        background-image: url(image/critter/instructions2.png);
                        background-size: cover;
                        background-position: center;
                        opacity: 1;
                        pointer-events: none;
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
                    .critter-east {
                        animation-name: walk_east;
                        background-position: 0 20px;
                        -webkit-animation: walk_east 1s steps(9) infinite reverse;
                        animation: walk_east 1s steps(9) infinite reverse;
                    }

                    .critter-west {
                        animation-name: walk_west;
                        background-position: 0 60px;
                        -webkit-animation: walk_west 1s steps(9) infinite reverse;
                        animation: walk_west 1s steps(9) infinite reverse;
                    }

                    .critter-south {
                        animation-name: walk_south;
                        background-position: 0 40px;
                        -webkit-animation: walk_south 1s steps(9) infinite reverse;
                        animation: walk_south 1s steps(9) infinite reverse;
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

                    @keyframes walk_north {
                        from {
                            background-position: 0 0;
                        }
                        to {
                            background-position: 187px 0;
                        }
                    }

                    @keyframes walk_south {
                        from {
                            background-position: 0 40px;
                        }
                        to {
                            background-position: 187px 40px;
                        }
                    }

                    @keyframes walk_west {
                        from {
                            background-position: 0 60px;
                        }
                        to {
                            background-position: 187px 60px;
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

                    @-webkit-keyframes walk_north {
                        from {
                            background-position: 0 0;
                        }
                        to {
                            background-position: 187px 0;
                        }
                    }

                    @-webkit-keyframes walk_south {
                        from {
                            background-position: 0 40px;
                        }
                        to {
                            background-position: 187px 40px;
                        }
                    }

                    @-webkit-keyframes walk_west {
                        from {
                            background-position: 0 60px;
                        }
                        to {
                            background-position: 187px 60px;
                        }
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
                        display: var(--critter-display);
                    }

                    #critter,
                    #ccritter,
                    #hcritter {
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
                    
                    .isDirty::before {
                        content: "";
                        position: absolute;
                        top: 23px;
                        left: 5px;
                        width: 40%;
                        height: 40%;
                        background-image: url(image/critter/instructionDirty.png);
                        background-size: cover;
                        background-position: center;
                        opacity: 1;
                        pointer-events: none;
                    }

                    .isNotDirty::before {
                        content: "";
                        position: absolute;
                        top: 23px;
                        left: 5px;
                        width: 40%;
                        height: 40%;
                        background-image: url(image/critter/instructions2.png);
                        background-size: cover;
                        background-position: center;
                        opacity: 1;
                        pointer-events: none;
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
                    .critter-east {
                        animation-name: walk_east;
                        background-position: 0 40px;
                        -webkit-animation: walk_east 1s steps(9) infinite reverse;
                        animation: walk_east 1s steps(9) infinite reverse;
                    }

                    .critter-west {
                        animation-name: walk_west;
                        background-position: 0 120px;
                        -webkit-animation: walk_west 1s steps(9) infinite reverse;
                        animation: walk_west 1s steps(9) infinite reverse;
                    }

                    .critter-south {
                        animation-name: walk_south;
                        background-position: 0 80px;
                        -webkit-animation: walk_south 1s steps(9) infinite reverse;
                        animation: walk_south 1s steps(9) infinite reverse;
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

                    @keyframes walk_north {
                        from {
                            background-position: 0 0;
                        }
                        to {
                            background-position: 374px 0;
                        }
                    }

                    @keyframes walk_south {
                        from {
                            background-position: 0 80px;
                        }
                        to {
                            background-position: 374px 80px;
                        }
                    }

                    @keyframes walk_west {
                        from {
                            background-position: 0 120px;
                        }
                        to {
                            background-position: 374px 120px;
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

                    @-webkit-keyframes walk_north {
                        from {
                            background-position: 0 0;
                        }
                        to {
                            background-position: 374px 0;
                        }
                    }

                    @-webkit-keyframes walk_south {
                        from {
                            background-position: 0 80px;
                        }
                        to {
                            background-position: 374px 80px;
                        }
                    }

                    @-webkit-keyframes walk_west {
                        from {
                            background-position: 0 120px;
                        }
                        to {
                            background-position: 374px 120px;
                        }
                    }
                }

                #critter_container.speedy {
                    transition-duration: 1.5s !important;
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

                #variables {
                    display: var(--variables-display);
                }

                .critter-north {
                    animation-name: walk_north;
                    -webkit-animation: walk_north 1s steps(9) infinite reverse;
                    animation: walk_north 1s steps(9) infinite reverse;
                }

                .critter-stay {
                    animation: none !important;
                    -webkit-animation: none !important;
                }

                /* Used to speed up the Critter walking animation. */
                #critter.speedy,
                #hcritter.speedy,
                #ccritter.speedy {
                    -webkit-animation-duration: 0.5s !important;
                    animation-duration: 0.5s !important;
                }

                @keyframes throwOutLowerLeft {
                    to {
                        transform: translateX(-10vh) translateY(100vh);
                        opacity: 0;
                    }
                }

            </style>

            <div id="critter_container" class$="{{_speedyString}}">
                <div id="critter"
                     class$="critter-{{direction}} critter-size-{{size}} human
                 {{_speedyString}} {{_playAnimation}}">
                </div>
                <div id="ccritter"
                     class$="critter-{{direction}} critter-{{color}} critter-size-{{size}}
                 {{_speedyString}} {{_playAnimation}} {{isMutatedString}}">
                </div>
                <div id="hcritter"
                     class$="critter-{{direction}} hair-{{hair}} critter-size-{{size}}
                 {{_speedyString}} {{_playAnimation}}">
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
                        <div class="row">[[__('roundsCount')]]: [[roundsCount]]</div>
                        <div class="row">[[__('color')]]: [[__(color)]]</div>
                        <div class="row">[[__('hair')]]: [[__(hair)]]</div>
                        <div id="variables"><h4>[[__('variables')]]</h4></div>

                    </div>
                </div>
            </div>
        `;
    }

    static get importMeta() { return import.meta; }

    static get is() {
        return 'critter-healing-critter';
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

            animate: {
                type: Boolean,
                value: false,
                notify: true
            },

            _playAnimation: {
                computed: "_isAnimated(animate)"
            },

            direction: {
                type: String,
                value: "east"
            },

            size: {
                type: Number,
                value: 10
            },

            canWalkOnWater: {
                type: Boolean,
                value: false
            },

            canWalkOnSnow: {
                type: Boolean,
                value: true
            },

            canWalkOnLava: {
                type: Boolean,
                value: false
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

            leaveAtNextExit: {
                type: Boolean,
                notify: true,
                value: false
            },

            isMutated: {
                type: Boolean,
                value: false
            },

            isMutatedString: {
                type: String,
                value: "isNotDirty"
            },

            xmlCode: {
                type: String,
                value: ''
            },

            id: {
                type: String
            },

            init: {
                type: Function,
                observer: '_displayVariables'
            },


            position: {
                type: Object,
                value: {
                    x: -1,
                    y: -1
                },
                observer: '_changePosition'
            },

            speedy: {
                type: Boolean,
                value: false
            },

            _speedyString: {
                computed: "_isSpeedy(speedy)"
            },

            healPath: {
                type: Array,
                value: []
            },

            mustWalkOut: {
                type: Boolean,
                value: false
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

            _numberOfStarts: {
                type: Number,
                value: 0
            },

            firstFaultyRound: {
                type: Number,
                value: 0
            },

            _paused: {
                type: Boolean,
                value: false
            },

            _fastForwardMode: {
                type: Boolean,
                value: false
            },

            codesPerBush: {
                type: Object,
                value: undefined
            }
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
            // this.addEventListener('position-changed', this._changePosition);
            this.notifyPath("position", this.position.y);
            this.notifyPath("position", this.position.x);
            this.$.critter_container.addEventListener('mouseover', this._onHover.bind(this));
            this.$.critter_container.addEventListener('mouseout', this._onHoverOut.bind(this));

            if (this.isMutated) {
                this.isMutatedString = "isDirty"
            }
        });
    }

    /**
     * Starts the animation of the critter.
     **/
    startHealingCritterAnimation() {
        if (this._numberOfStarts === 0) {
            this.animate = true;
            this._saveInitialData();
        }
        this.init();
        this._numberOfStarts += 1;

        let temp = this.position;
        this.position = this.healPath.shift();

        this._computeDirection(temp);

        this.$.critter_container.style.transitionDuration = "3s";
        this.$.critter_container.style.visibility = "visible";

        // Count rounds
        if (this.position && this.position.x === this._globalData.loopStartingPoint.x
            && this.position.y === this._globalData.loopStartingPoint.y) { // if we walk over the loop start point
            this.roundsCount = this.roundsCount + 1; // starts at 0, is 1 for the first round
        }

        return this._timeoutManager.add(() => {
            this._doPortals(); // if portal is placed on first path field
            this._doStepInLoop(this._numberOfStarts);
        }, 100);
    }

    /**
     * Performs the steps of the critter.
     * @param numStarts number of critters that started
     */
    _doStepInLoop(numStarts) {
        if (numStarts !== this._numberOfStarts || !this.animate) {
            return this._timeoutManager.add(() => {
                return this._doStepInLoop(numStarts);
            }, this._interval);
        }

        if (this._fastForwardMode) {
            return this._finishQuicklyDoStepInLoop(numStarts);
        }
        if (this.healPath.length >= 1) {
            let temp = this.position;
            this.position = this.healPath.shift();

            this._computeDirection(temp);


            // Count rounds
            if (this.position && this.position.x === this._globalData.loopStartingPoint.x
                && this.position.y === this._globalData.loopStartingPoint.y) { // if we walk over the loop start point
                this.roundsCount = this.roundsCount + 1; // start 0, is 1 for the first round
            }

            // inner rounds
            if (this.position && this._globalData.innerLoopStartingPoint !== null && this.position.x === this._globalData.innerLoopStartingPoint.x
                && this.position.y === this._globalData.innerLoopStartingPoint.y) {
                this.innerRoundsCount = this.innerRoundsCount + 1; // starts at 0, is 1 for the first round
            }

            // Run CUT on bushes
            this._timeoutManager.add(() => {
                const isOnBerryField = this._isOnBushField();
                if (isOnBerryField) {
                    //runs the berry collecting CUT for the current bush
                    if (this.codesPerBush && isOnBerryField.berryType && this.codesPerBush[isOnBerryField.berryType]) {
                        this.codesPerBush[isOnBerryField.berryType].bind(this)();
                    } else { // Should never be the case!
                        console.log("Collector does not hold a collection instruction for this bush!")
                    }
                    this._updateTooltip();
                }
            }, this._interval);


            // Run portals / tests
            return this._timeoutManager.add(() => {
                this._doPortals();
                return this._doStepInLoop(numStarts);
            }, this._interval);

        } else {
            if (!this.mustWalkOut) { // because if mustWalkOut the healingCritterKilled has been fired already!
                this.dispatchEvent(new CustomEvent('_healingCritterFinished', {
                    detail: {isMutated: this.isMutated, critterId: this.id, critterInit: this.init, xmlCode: this.xmlCode, totalRoundsCount: this.roundsCount + this.innerRoundsCount,
                        firstFaultyRound: this.firstFaultyRound,
                        tooltip: {redBerryCount: this.redBerryCount, pinkBerryCount: this.pinkBerryCount, blackBerryCount: this.blackBerryCount, whiteBerryCount: this.whiteBerryCount,
                            orangeBerryCount: this.orangeBerryCount, purpleBerryCount: this.purpleBerryCount, roundsCount: this.roundsCount, innerRoundsCount: this.innerRoundsCount}},
                    bubbles: true,
                    composed: true
                }));
            }
            this.$.critter_container.style.display = "none";
            return;
        }
    }

    /**
     * Performs the steps of the critter but in super speed and invisible to jump to end.
     * @param numStarts number of critters that started
     */
    async _finishQuicklyDoStepInLoop(numStarts) {
        if (numStarts !== this._numberOfStarts || !this.animate) {
            return await this._finishQuicklyDoStepInLoop(numStarts);
        }
        this.$.critter_container.style.visibility = "hidden";
        if (this.healPath.length >= 1) {
            this.position = this.healPath.shift();

            // Count rounds
            if (this.position && this.position.x === this._globalData.loopStartingPoint.x
                && this.position.y === this._globalData.loopStartingPoint.y) { // if we walk over the loop start point
                this.roundsCount = this.roundsCount + 1; // start 0, is 1 for the first round
            }

            // inner rounds
            if (this.position && this._globalData.innerLoopStartingPoint !== null && this.position.x === this._globalData.innerLoopStartingPoint.x
                && this.position.y === this._globalData.innerLoopStartingPoint.y) {
                this.innerRoundsCount = this.innerRoundsCount + 1; // starts at 0, is 1 for the first round
            }

            // Run CUT on bushes
            const isOnBerryField = this._isOnBushField();
            if (isOnBerryField) {
                //runs the berry collecting CUT for the current bush
                if (this.codesPerBush && isOnBerryField.berryType && this.codesPerBush[isOnBerryField.berryType]) {
                    this.codesPerBush[isOnBerryField.berryType].bind(this)();
                } else { // Should never be the case!
                    console.log("Collector does not hold a collection instruction for this bush!")
                }
            }


            // Run portals / tests
            await this._doPortals();
            return await this._finishQuicklyDoStepInLoop(numStarts);

        } else {
            if (!this.mustWalkOut) { // because if mustWalkOut the healingCritterKilled has been fired already!
                this.dispatchEvent(new CustomEvent('_healingCritterFinished', {
                    detail: {isMutated: this.isMutated, critterId: this.id, critterInit: this.init, xmlCode: this.xmlCode, totalRoundsCount: this.roundsCount + this.innerRoundsCount,
                        firstFaultyRound: this.firstFaultyRound,
                        tooltip: {redBerryCount: this.redBerryCount, pinkBerryCount: this.pinkBerryCount, blackBerryCount: this.blackBerryCount, whiteBerryCount: this.whiteBerryCount,
                            orangeBerryCount: this.orangeBerryCount, purpleBerryCount: this.purpleBerryCount, roundsCount: this.roundsCount, innerRoundsCount: this.innerRoundsCount}},
                    bubbles: true,
                    composed: true
                }));
            }
            this.$.critter_container.style.display = "none";
            return;
        }
    }


    /**
     * Performs the remaining critter steps after the game is finished.
     */
    _doStepAfterGameFinished() {
        if (!this.animate) {
            return this._timeoutManager.add(() => {
                return this._doStepAfterGameFinished();
            }, this._interval);
        }
        if (this.healPath.length >= 1) {
            let temp = this.position;

            this.position = this.healPath.shift();
            this._computeDirection(temp);

            // Count rounds
            if (this.position && this.position.x === this._globalData.loopStartingPoint.x
                && this.position.y === this._globalData.loopStartingPoint.y) { // if we walk over the loop start point
                this.roundsCount = this.roundsCount + 1; // start 0, is 1 for the first round
            }

            // inner rounds
            if (this.position && this._globalData.innerLoopStartingPoint !== null && this.position.x === this._globalData.innerLoopStartingPoint.x
                && this.position.y === this._globalData.innerLoopStartingPoint.y) {
                this.innerRoundsCount = this.innerRoundsCount + 1; // starts at 0, is 1 for the first round
            }

            // Run CUT on bushes
            return this._timeoutManager.add(() => {
                this._doPortals();
                return this._doStepAfterGameFinished();
            }, this._interval);
        } else {
            this.$.critter_container.style.display = "none";
            return;
        }
    }

    /**
     * Computes the direction of the critter.
     * @param temp the previous position x, y
     */
    _computeDirection(temp) {
        if (temp) {
            if (temp.x < this.position.x) {
                this.direction = "east";
            } else if (temp.x > this.position.x) {
                this.direction = "west";
            } else if (temp.y < this.position.y) {
                this.direction = "south";
            } else {
                this.direction = "north";
            }
        } else {
            this.direction = "south";
        }

    }


    /** updates the styling**/
    _changePosition() {
        if (this.position && this.position.x !== -1 && this.position.y !== -1) {
            if(window.matchMedia("(max-width: 600px)").matches) {
                this.$.critter_container.style.top = (this.position.y * 20) + "px";
                this.$.critter_container.style.left = (this.position.x * 20) + "px";
            } else {
                this.$.critter_container.style.top = (this.position.y * 40) + "px";
                this.$.critter_container.style.left = (this.position.x * 40) + "px";
            }
        }
    }


    /** computes the value for animating critters **/
    _isAnimated(animate) {
        return (animate ? "critter-move" : "critter-stay");
    }


    /** computes the string value for weather speedy or not **/
    _isSpeedy(speedy) {
        if (speedy) {
            this._interval = 1500;
            return "speedy";
        }
        return "";
    }

    /** stores the initial critterData **/
    _saveInitialData() {
        this._backup.color = this.color;
        this._backup.size = this.size;
        this._backup.canWalkOnLava = this.canWalkOnLava;
        this._backup.canWalkOnSnow = this.canWalkOnSnow;
        this._backup.canWalkOnWater = this.canWalkOnWater;
        this._backup.roundsCount = this.roundsCount;
        this._backup.innerRoundsCount = this.innerRoundsCount;
        this._backup.redBerryCount = this.redBerryCount;
        this._backup.pinkBerryCount = this.pinkBerryCount;
        this._backup.blackBerryCount = this.blackBerryCount;
        this._backup.orangeBerryCount = this.orangeBerryCount;
        this._backup.purpleBerryCount = this.purpleBerryCount;
        this._backup.whiteBerryCount = this.whiteBerryCount;
        this._backup.healPath = this.healPath;
        this._backup.xmlCode = this.xmlCode;


    }

    /** resets the initial critterData **/
    _resetCritter() {
        this.color = this._backup.color;
        this.size = this._backup.size;
        this.canWalkOnLava = this._backup.canWalkOnLava;
        this.canWalkOnSnow = this._backup.canWalkOnSnow;
        this.canWalkOnWater = this._backup.canWalkOnWater;
        this.roundsCount = this._backup.roundsCount;
        this.innerRoundsCount = this._backup.innerRoundsCount;
        this.redBerryCount = this._backup.redBerryCount;
        this.pinkBerryCount = this._backup.pinkBerryCount;
        this.blackBerryCount = this._backup.blackBerryCount;
        this.orangeBerryCount = this._backup.orangeBerryCount;
        this.purpleBerryCount = this._backup.purpleBerryCount;
        this.whiteBerryCount = this._backup.whiteBerryCount;
        this.healPath = this._backup.healPath;
        this.xmlCode = this._backup.xmlCode;
    }

    async _doPortals() {
        let mine;
        if (mine = this._globalData.secondStagePortals[this.position.x][this.position.y]) {
            await mine.code.bind(this)(this.position.x,this.position.y);
        }
    }

    _isOnBushField() {
        const isBush = this._doBushes();
        return isBush;
    }


    /**
     * Returns whether a bush is at the current critter position, if so, returns the bush itself
     * @returns {boolean}
     * @private
     */
    _doBushes() {
        let bushCode;
        if (this._globalData.berryBushes && this._globalData.berryBushes.length > 0) {
            const bushes = this._globalData.berryBushes;

            let currentBush;
            bushes.forEach(bush => {
                if (bush.coordinates.x === this.position.x
                    && bush.coordinates.y === this.position.y) {
                    currentBush = bush;
                }
            })
            if (currentBush) {
                return currentBush;
            }
        }
        return false;
    }


    async _killCritter(x, y, valueTarget, valuevalue) {
        if (!this.animate) {
            return;
        }

        if (this.mustWalkOut) {
            return;
        } else {
            this.mustWalkOut = true;
        }

        await this._timeoutManager.add(() => {
            this.animate = false;
            this.updateStyles({
                'animation': 'throwOutLowerLeft 1s ease-out forwards',
            });
        }, this._interval * 0.1)

        this.healPath = [];

        this.dispatchEvent(new CustomEvent('_healingCritterKilled', {
            detail: {x: x, y: y, isMutated: this.isMutated, critterId: this.id, critterInit: this.init, xmlCode: this.xmlCode, totalRoundsCount: this.roundsCount + this.innerRoundsCount,
                firstFaultyRound: this.firstFaultyRound,
                tooltip: {redBerryCount: this.redBerryCount, pinkBerryCount: this.pinkBerryCount, blackBerryCount: this.blackBerryCount, whiteBerryCount: this.whiteBerryCount,
                    orangeBerryCount: this.orangeBerryCount, purpleBerryCount: this.purpleBerryCount, roundsCount: this.roundsCount, innerRoundsCount: this.innerRoundsCount}},
            bubbles: true,
            composed: true
        }));
    }

    _onHover() {
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
    }

    _onHoverOut() {
        this.updateStyles({
            '--tooltip-display': 'none'
        });
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

    pause() {
        if(this.animate) {
            this.animate = false;
            this.paused = true;
            let computedStyle = window.getComputedStyle(this.$.critter_container);
            this.$.critter_container.style.top = computedStyle.getPropertyValue('top');
            this.$.critter_container.style.left = computedStyle.getPropertyValue('left');
            this.$.critter_container.style.transitionDuration = null;
        }
    }

    resume() {
        // TODO check
        //if(this.paused) {
            this.animate = true;
            this.paused = false;
            this.$.critter_container.style.transitionDuration = "3s";
            if(window.matchMedia("(max-width: 600px)").matches) {
                this.$.critter_container.style.top = (this.position.y * 20) + "px";
                this.$.critter_container.style.left = (this.position.x * 20) + "px";
            } else {
                this.$.critter_container.style.top = (this.position.y * 40) + "px";
                this.$.critter_container.style.left = (this.position.x * 40) + "px";
            }
       // }
    }
}

window.customElements.define(CritterHealingCritter.is, CritterHealingCritter);
