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

/*
# critter-critter

Displays a critter.

## Example
```html
<critter-critter size="10", color="green", direction="south"></critter-critter>
```

@demo
*/

class CritterCritter extends I18n(Level(PolymerElement)) {
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
                    display:  var(--critter-display);
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

                .critter {
                    background-image: url(image/critter50/critter.png)
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

                .critter-west{
                    animation-name: walk_west;
                    background-position: 0 60px;
                    -webkit-animation: walk_west 1s steps(9) infinite reverse;
                    animation: walk_west 1s steps(9) infinite reverse;
                }

                .critter-south{
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
                    display:  var(--critter-display);
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

                .critter {
                    background-image: url(image/critter/critter.png)
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

                .critter-west{
                    animation-name: walk_west;
                    background-position: 0 120px;
                    -webkit-animation: walk_west 1s steps(9) infinite reverse;
                    animation: walk_west 1s steps(9) infinite reverse;
                }

                .critter-south{
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

            #critter_container.speedy{
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
            
            #variables {
                display: var(--variables-display);
            }
            
            #water, #waterBreak {
                display: var(--water-display);
            }
            
            #snow, #snowBreak {
                display: var(--snow-display);
            }

            .critter-north{
                animation-name: walk_north;
                -webkit-animation: walk_north 1s steps(9) infinite reverse;
                animation: walk_north 1s steps(9) infinite reverse;
            }

            .critter-stay{
                animation: none !important;
                -webkit-animation: none !important;
            }

            /* Used to speed up the Critter walking animation. */
            #critter.speedy,
            #hcritter.speedy,
            #ccritter.speedy{
                -webkit-animation-duration: 0.5s !important;
                animation-duration: 0.5s !important;
            }
        </style>
        <div id="critter_container" class$="{{_speedyString}}">
            <div id="critter"
                 class$="critter-{{direction}} critter-size-{{size}} {{_humanString}}
                 {{_speedyString}} {{_playAnimation}}">
            </div>
            <div id="ccritter"
                 class$="critter-{{direction}} critter-{{color}} critter-size-{{size}}
                 {{_speedyString}} {{_playAnimation}}">
            </div>
            <div id="hcritter"
                 class$="critter-{{direction}} hair-{{hair}} critter-size-{{size}}
                 {{_speedyString}} {{_playAnimation}}">
            </div>
            <div id="tooltip">
                <span><h3>[[__('attributes')]]</h3></span>
                <span>[[__('color')]]: [[__(color)]]</span><br>
                <span>[[__('size')]]: [[size]]</span><br>
                <span>[[__('direction')]]: [[__(direction)]]</span><br>
                <span id="water">[[__('walk_on_water')]]: [[__('false')]]</span><br id="waterBreak">
                <span id="snow">[[__('walk_on_snow')]]: [[__(canWalkOnSnow)]]</span><br id="snowBreak">
                <span id="variables"><h3>[[__('variables')]]</h3></span>
            </div>
        </div>
        `;
    }

    static get importMeta() { return import.meta; }

    static get is() {
        return 'critter-critter';
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

            human: {
                type: Boolean,
                value: false
            },

            _humanString: {
                computed: "_isHuman(human)"
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

            cut: {
                type: Function,
                observer: '_displayVariables'
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


            path: {
                type: Array,
                value: []
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

            _paused: {
                type: Boolean,
                value: false
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
            // this.addEventListener('position-changed', this._changePosition);
            this.notifyPath("position", this.position.y);
            this.notifyPath("position", this.position.x);
            this.$.critter_container.addEventListener('mouseover', this._onHover.bind(this));
            this.$.critter_container.addEventListener('mouseout', this._onHoverOut.bind(this));
        });
    }

    /** starts the animation of the critter **/
    startAnimation() {
        if (this._numberOfStarts === 0) {
            this.animate = true;
            this._saveInitialData();
        }
        this._numberOfStarts += 1;
        this.path = this._computePath();
        this.position = this.path.shift();
        this.$.critter_container.style.transitionDuration = "3s";
        this._timeoutManager.add(() => {
            this.init();
            this._doStep(this._numberOfStarts);
            this._timeoutManager.add(() => {
                this.$.critter_container.style.visibility = "visible";
            }, this._interval * 0.5);
        }, 100);
    }

    /** perform the next Step **/
    _doStep(start, last = false) {
        if (start !== this._numberOfStarts || !this.animate) {
            return;
        }

        let temp = this.position;
        this.position = this.path.shift();

        //computes direction
        if (temp.x < this.position.x) {
            this.direction = "east";
        } else if (temp.x > this.position.x) {
            this.direction = "west";
        } else if (temp.y < this.position.y) {
            this.direction = "south";
        } else {
            this.direction = "north";
        }

        //runs CUT
        this._timeoutManager.add(() => {
            this.cut();
            this._updateTooltip();
        }, this._interval * 0.5);


        //runs tests
        this._timeoutManager.add(() => {
            this._doElements();
        }, this._interval * 0.7);

        if (this.path.length > 1) {
            this._timeoutManager.add(() => {
                this._doStep(start);
            }, this._interval);
        } else if (!last) {
            this._timeoutManager.add(() => {
                this._doStep(start, true);
            }, this._interval);
        } else {
            this._timeoutManager.add(() => {
                this.dispatchEvent(new CustomEvent('_critterFinished', {
                    detail: {human: this.human},
                    bubbles: true,
                    composed: true
                }));
                this.$.critter_container.style.display = "none";
            }, this._interval * 0.5);
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

    /** computes a path to the tower **/
    _computePath() {
        let source = this.position = (this.position && this.position.x !== -1 && this.position !== -1 ? this.position : this._globalData.spawn);
        return this.findPath(source);
    }

    /** computes the value for animating critters **/
    _isAnimated(animate) {
        return (animate ? "critter-move" : "critter-stay");
    }

    /** computes the string value for weather human or critter **/
    _isHuman(human) {
        return (human ? "human" : "critter");
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
    }

    /** resets the initial critterData **/
    _resetCritter() {
        this.color = this._backup.color;
        this.size = this._backup.size;
        this.canWalkOnLava = this._backup.canWalkOnLava;
        this.canWalkOnSnow = this._backup.canWalkOnSnow;
        this.canWalkOnWater = this._backup.canWalkOnWater;
    }

    _doElements() {
        this._doMines();
    }

    _doMines() {
        let mine;
        if(mine = this._globalData.mines[this.position.x][this.position.y]){
            mine.code.bind(this)(this.position.x,this.position.y);
        }
    }


    _killCritter(x, y) {
        if (!this.animate) {
            return;
        }
        this.dispatchEvent(new CustomEvent('_critterKilled', {
            detail: {x: x, y: y, human: this.human},
            bubbles: true,
            composed: true
        }));
        this._timeoutManager.add(() => {
            this.animate = false;
            this.updateStyles({
                '--critter-display': 'none'
            });
        }, this._interval * 0.3);
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

        if (!this._globalData.containsWater) {
            this.updateStyles({
                '--water-display': 'none'
            });
        }

        if (!this._globalData.containsSnow) {
            this.updateStyles({
                '--snow-display': 'none'
            })
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
        if(this.paused) {
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
        }
    }
}

window.customElements.define(CritterCritter.is, CritterCritter);
