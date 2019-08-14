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

/*
# critter-critter

Displays a critter.

## Example
```html
<critter-critter size="10", color="green", direction="south"></critter-critter>
```

@demo
*/

class CritterSimpleCritter extends PolymerElement {
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
                background-image: url(image/critter.png)
            }

            .human {
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

            .hair-red {
                background-image: url(image/hair_red.png);
            }

            .hair-black {
                background-image: url(image/hair_black.png);
            }

            .hair-blond {
                background-image: url(image/hair_blond.png);
            }

            .hair-brown {
                background-image: url(image/hair_brown.png);
            }

            .hair-gray {
                background-image: url(image/hair_gray.png);
            }

            .critter-north{
                animation-name: walk_north;
                -webkit-animation: walk_north 1s steps(9) infinite reverse;
                animation: walk_north 1s steps(9) infinite reverse;
            }

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

            .critter-south{
                animation-name: walk_south;
                background-position: 0 80px;
                -webkit-animation: walk_south 1s steps(9) infinite reverse;
                animation: walk_south 1s steps(9) infinite reverse;
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
        <div id="critter_container" >
            <div id="critter"
                 class$="critter-{{direction}} critter-{{color}} hair-{{hair}} critter-size-{{size}} {{_humanString}}
                 critter-move">
                  <div id="icritter"
                         class$="icritter-{{direction}} icritter-{{color}} ihair-{{hair}} icritter-size-{{size}} i{{_humanString}}
                         critter-move">
                    </div>
            </div>
            <div id="critter"
                 class$="critter-{{direction}} critter-size-{{size}} {{_humanString}}
                 critter-move">
            </div>
            <div id="ccritter"
                 class$="critter-{{direction}} critter-{{color}} critter-size-{{size}}
                 critter-move">
            </div>
            <div id="hcritter"
                 class$="critter-{{direction}} hair-{{hair}} critter-size-{{size}}
                 {critter-move">
            </div>
        </div>
        `;
    }

    static get importMeta() { return import.meta; }

    static get is() {
        return 'critter-simple-critter';
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

            position: {
                type: Object,
                value: {
                    x: -1,
                    y: -1
                },
                observer: '_changePosition'
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

            _detached: {
                type: Boolean,
                value: false
            }
        };
    }

    detach() {
        this._detached = true;
    }

    /** starts the animation of the critter **/
    startAnimation() {
        this.position = this.path.shift();
        this.$.critter_container.style.transitionDuration = "3s";
        setTimeout(() => {
            this._doStep();
            setTimeout(() => {
                this.$.critter_container.style.visibility = "visible";
            }, this._interval * 0.5);
        }, 100);
    }

    /** perform the next Step **/
    _doStep(start, last = false) {

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
                if(!this._detached) {
                    this.dispatchEvent(new CustomEvent('_critterFinished', {
                        detail: {human: this.human},
                        bubbles: true,
                        composed: true
                    }));
                }
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

    /** computes the string value for weather human or critter **/
    _isHuman(human) {
        return (human ? "human" : "critter");
    }
}

window.customElements.define(CritterSimpleCritter.is, CritterSimpleCritter);
