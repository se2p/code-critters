import {html, PolymerElement} from '/lib/@polymer/polymer/polymer-element.js';
import { afterNextRender } from '/lib/@polymer/polymer/lib/utils/render-status.js';
import {Level} from '../critter-level-mixin/critter-level-mixin.js';

/*
# critter-critter

Displays a critter.

## Example
```html
<critter-critter size="10", color="green", direction="south"></critter-critter>
```

@demo
*/

class CritterCritter extends Level(PolymerElement) {
    static get template() {
        return html`
        <style>
            :host {
                display: block;
                --critter-display: block;
                --tooltip-display: none;
            }

            #critter_container {
                position: absolute;
                width: 40px;
                height: 40px;
                transition-timing-function: linear;
                visibility: hidden;
                z-index: 5;
                display:  var(--critter-display);
            }

            #critter_container.speedy{
                transition-duration: 1.5s !important;
            }

            #tooltip {
                padding: 5px;
                font-size: 0.8em;
                width: 130px;
                background-color: #f9edbe;
                display: var(--tooltip-display);
            }

            #critter:before {
                z-index: -1;
            }

            #critter,
            #critter::before,
            #critter::after{
                width: 40px;
                height: 40px;
            }

            #critter::before,
            #critter::after{
                content: " ";
                position: absolute;
            }

            .critter::before {
                background-image: url(image/critter.png)
            }

            .human::before {
                background-image: url(image/human.png)
            }

            .critter-white {
                background-image: url(image/cloth_white.png)
            }

            .critter-green {
                background-image: url(image/cloth_green.png);
            }

            .critter-blue {
                background-image: url(image/cloth_blue.png);
            }

            .critter-cyan {
                background-image: url(image/cloth_cyan.png);
            }

            .critter-black {
                background-image: url(image/cloth_black.png);
            }

            .critter-yellow {
                background-image: url(image/cloth_yellow.png);
            }

            .critter-orange {
                background-image: url(image/cloth_orange.png);
            }

            .critter-pink {
                background-image: url(image/cloth_pink.png);
            }

            .critter-red {
                background-image: url(image/cloth_red.png);
            }

            .critter-red {
                background-image: url(image/cloth_red.png);
            }

            .hair-red::after {
                background-image: url(image/hair_red.png);
            }

            .hair-black::after {
                background-image: url(image/hair_black.png);
            }

            .hair-blond::after {
                background-image: url(image/hair_blond.png);
            }

            .hair-brown::after {
                background-image: url(image/hair_brown.png);
            }

            .hair-gray::after {
                background-image: url(image/hair_gray.png);
            }

            .critter-north,
            .critter-north::after,
            .critter-north::before{
                background-position: 0 0;
                -webkit-animation: walk_north 1s steps(9) infinite reverse;
                animation: walk_north 1s steps(9) infinite reverse;
            }

            .critter-east,
            .critter-east::after,
            .critter-east::before {
                background-position: 0 40px;
                -webkit-animation: walk_east 1s steps(9) infinite reverse;
                animation: walk_east 1s steps(9) infinite reverse;
            }

            .critter-west,
            .critter-west::after,
            .critter-west::before {
                background-position: 0 120px;
                -webkit-animation: walk_west 1s steps(9) infinite reverse;
                animation: walk_west 1s steps(9) infinite reverse;
            }

            .critter-south,
            .critter-south::after,
            .critter-south::before {
                background-position: 0 80px;
                -webkit-animation: walk_south 1s steps(9) infinite reverse;
                animation: walk_south 1s steps(9) infinite reverse;
            }

            .critter-stay {
                animation: none !important;
            }

            #critter.speedy{
                -webkit-animation-duration: 0.5s !important;
                animation-duration: 0.5s !important;
            }

            @keyframes walk_east {
                0% {
                    background-position: 0 40px;
                }
                100% {
                    background-position: 374px 40px;
                }
            }

            @keyframes walk_north {
                0% {
                    background-position: 0 0;
                }
                100% {
                    background-position: 374px 0;
                }
            }

            @keyframes walk_south {
                0% {
                    background-position: 0 80px;
                }
                100% {
                    background-position: 374px 80px;
                }
            }

            @keyframes walk_west {
                0% {
                    background-position: 0 120px;
                }
                100% {
                    background-position: 374px 120px;
                }
            }

            @-webkit-keyframes walk_east {
                0% {
                    background-position: 0 40px;
                }
                100% {
                    background-position: 374px 40px;
                }
            }

            @-webkit-keyframes walk_north {
                0% {
                    background-position: 0 0;
                }
                100% {
                    background-position: 374px 0;
                }
            }

            @-webkit-keyframes walk_south {
                0% {
                    background-position: 0 80px;
                }
                100% {
                    background-position: 374px 80px;
                }
            }

            @-webkit-keyframes walk_west {
                0% {
                    background-position: 0 120px;
                }
                100% {
                    background-position: 374px 120px;
                }
            }

        </style>
        <div id="critter_container" class$="{{_speedyString}}">
            <div id="critter"
                 class$="critter-{{direction}} critter-{{color}} hair-{{hair}} critter-size-{{size}} {{_humanString}}
                 {{_speedyString}} {{_playAnimation}}">

            </div>
            <div id="tooltip">
                <span><h3>Attributes:</h3></span>
                <span>Color: [[color]]</span><br>
                <span>Size: [[size]]</span><br>
                <span>canWalkOnWater: [[canWalkOnWater]]</span><br>
                <span>canWalkOnSnow: [[canWalkOnSnow]]</span><br>
                <span>direction: [[direction]]</span><br>
                <span><h3>Variables:</h3></span>
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
                value: false
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
            }
        };
    }

    connectedCallback() {
        super.connectedCallback();

        afterNextRender(this, () => {
            // this.addEventListener('position-changed', this._changePosition);
            this.notifyPath("position", this.position.y);
            this.notifyPath("position", this.position.x);
            this.$.critter.addEventListener('mouseover', this._onHover.bind(this));
            this.$.critter.addEventListener('mouseout', this._onHoverOut.bind(this));
            this._globalData = window.Core.CritterLevelData;
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
        setTimeout(() => {
            this.init();
            this._doStep(this._numberOfStarts);
            setTimeout(() => {
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
        setTimeout(() => {
            this.cut();
            this._updateTooltip();
        }, this._interval * 0.5);


        //runs tests
        setTimeout(() => {
            this._doElements();
        }, this._interval * 0.7);

        if (this.path.length > 1) {
            setTimeout(() => {
                this._doStep(start);
            }, this._interval);
        } else if (!last) {
            setTimeout(() => {
                this._doStep(start, true);
            }, this._interval);
        } else {
            setTimeout(() => {
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
            this.$.critter_container.style.top = (this.position.y * 40) + "px";
            this.$.critter_container.style.left = (this.position.x * 40) + "px";
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
        setTimeout(() => {
            if (!this.animate) {
                return;
            }
            this.dispatchEvent(new CustomEvent('_critterKilled', {
                detail: {x: x, y: y, human: this.human},
                bubbles: true,
                composed: true
            }));
            this.animate = false;
            this.updateStyles({
                '--critter-display': 'none'
            });
        }, this._interval * 0.17);
    }

    _onHover() {
        this.updateStyles({
            '--tooltip-display': 'block'
        });
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
}

window.customElements.define(CritterCritter.is, CritterCritter);
