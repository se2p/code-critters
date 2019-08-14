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
import {I18n} from '../critter-i18n/critter-i18n-mixin.js';

import './critter-score-line.js';



/*
# critter-button

A Simple Button

## Example
```html
<critter-button>text</critter-button>
```

@demo
*/
class CritterScore extends I18n(PolymerElement) {

    static get template() {
        return html`
        <style>
        #score_table{
            display: table;
            width: 100%;
        }
        
        critter-score-line,
         .score_row{
            display: table-row;
        }
        
         .score_cell{
            display: table-cell;
        }
        
        #full_score_cell{
            font-weight: bolder;
            border-top: 2px solid black;
        }
    
        </style>
    
    
        <div id="score_table">
            <critter-score-line id="finished_humans_line">[[__('finished_humans')]]</critter-score-line>
            <critter-score-line id="killed_critters_line">[[__('killed_mutants')]]</critter-score-line>
            <critter-score-line id="mines_line">[[__('needed_mines')]]</critter-score-line>
            <critter-score-line id="time_line">[[__('time_bonus')]]</critter-score-line>
            <div class="score_row" id="final_score_line">
                  <div class="score_cell"></div>
                  <div class="score_cell"></div>
                  <div class="score_cell" id="full_score_cell">
                  [[_shownScore]]
                  </div>
            </div>
        </critter-store-line>
        `;
    }

    static get is() {
        return 'critter-score';
    }

    static get properties() {
        return {
            score: {
                type: Number,
                value: 0
            },

            _shownScore: {
                type: Number,
                value: 0
            },

            _prevScore: {
                type: Number,
                value: 0
            }
        }
    }

    connectedCallback() {
        super.connectedCallback();

        afterNextRender(this, function () {
            this.addEventListener("_scoreUpdated", (event) => this._onScoreIncreased(event));
        });
    }

    insertData(id, score, percentage = -1, unit = "") {
        let scoreLine = this.shadowRoot.getElementById(id);
        scoreLine.score = score;
        scoreLine.unit = unit;
        scoreLine.percentage = percentage;
        return new Promise( resolve => {
            scoreLine.count().then(() => {
                    this.score += score;
                    this._shownScore = this.score;
                    resolve();
                }
            );
        });
    }

    _onScoreIncreased(e) {
        let newScore = this.score + e.detail.score;
        if(this._prevScore < 950 && newScore >= 950) {
            this.dispatchEvent(new CustomEvent('_thirdStarReached', {bubbles: true, composed: true}));
        } else if (this._prevScore < 800 && newScore >= 800) {
            this.dispatchEvent(new CustomEvent('_secondStarReached', {bubbles: true, composed: true}));
        } else if (this._prevScore < 500 && newScore >= 500) {
            this.dispatchEvent(new CustomEvent('_firstStarReached', {bubbles: true, composed: true}));
        }
        this._prevScore = newScore;
        this._shownScore = this.score + e.detail.score;
    }
}

window.customElements.define(CritterScore.is, CritterScore);
