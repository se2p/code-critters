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


/*
# critter-button

A Simple Button

## Example
```html
<critter-button>text</critter-button>
```

@demo
*/
class CritterScoreLine extends PolymerElement {

    static get template() {
        return html`
        <style>
            .score_cell {
                display: table-cell;
            }
            
            .align_right{
                text-align: right;
            }
            
            .align_left {
                text-align: left;
            }
            #percentage_cell{
                padding-right: 10px;
                font-size: 0.8em;
            }
        </style>
    
    

             <div class="score_cell align_left">
             <slot></slot>
             </div>
             <div class="score_cell align_right" id="percentage_cell">
             [[_shownPercentageText]]
             </div>
             <div class="score_cell align_right">             
             [[_shownScoreText]]
             </div>
        `;
    }

    static get is() {
        return 'critter-score-line';
    }

    static get properties() {
        return {
            score: {
                type: Number,
                value: 0
            },

            unit: {
                type: String
            },

            percentage: {
                type: Number,
                observer: "_onPercentageChange"
            },

            _shownScore: {
                type: Number,
                value: 0,
                observer: "_renderScoreText"
            },

            _shownPercentage: {
                type: Number,
                value: 0,
                observer: "_renderPercentageText"
            },

            _shownScoreText: {
                type: String,
                value: ""
            },

            _shownPercentageText: {
                type: String,
                value: ""
            },

            _show: {
                type: Boolean,
                value: false
            }
        }
    }
    count() {
        this._show = true;
        this._shownPercentage = this.percentage;

        return new Promise(resolve => {
            let interval = setInterval(() => {
                if(this._shownScore < this.score - 25){
                    this._shownScore += 25;
                    this._renderTexts();
                    this.dispatchEvent(new CustomEvent('_scoreUpdated', {detail: {score: this._shownScore}, bubbles: true, composed: true}));
                } else{
                    this._shownScore = this.score;
                    clearInterval(interval);
                    this._renderTexts();
                    resolve();
                }
            }, 50);
        });

    }

    _onPercentageChange(){
        if(!this.percentage || this.percentage < 0) {
            this.$.percentage_cell.style.visability = "hidden";
            this._renderPercentageText();
        }
    }

    _renderTexts(){
        this._renderScoreText();
        this._renderPercentageText();
    }

    _renderScoreText() {
        this._shownScoreText = (this._show ? this._shownScore : "");
    }

    _renderPercentageText() {
        this._shownPercentageText = (this._show ? this._shownPercentage + " " + this.unit : "");
    }
}

window.customElements.define(CritterScoreLine.is, CritterScoreLine);
