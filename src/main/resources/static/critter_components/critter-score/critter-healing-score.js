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
import {I18n} from '../critter-i18n/critter-i18n-mixin.js';

import './critter-score-line.js';


class CritterHealingScore extends I18n(PolymerElement) {

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
            <critter-score-line id="finished_humans_line">[[__('finished_healthy_collectors')]]</critter-score-line>
            <critter-score-line id="killed_critters_line">[[__('killed_mutant_collectors')]]</critter-score-line>
            <critter-score-line id="time_penalty">[[__('time_penalty')]]</critter-score-line>
            <div class="score_row" id="final_score_line">
                  <div class="score_cell"></div>
                  <div class="score_cell"></div>
                  <div class="score_cell" id="full_score_cell">
                  [[overallScore]]
                  </div>
            </div>
        </critter-store-line>
        `;
    }

    static get is() {
        return 'critter-healing-score';
    }

    static get properties() {
        return {
            score: {
                type: Number,
                value: 0
            },
            overallScore: {
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
        scoreLine.style.display = "table-row";
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

    clearComponent() {
        this.score = 0;
        this.overallScore = 0;
        this._shownScore = 0;
        this._prevScore = 0;


        const scoreLines = [
            "finished_humans_line",
            "killed_critters_line",
            "time_penalty",
        ];

        scoreLines.forEach(id => {
            const scoreLine = this.shadowRoot.getElementById(id);
            if (scoreLine) {
                // hide all score lines and reset
                scoreLine.style.display = "none";
                scoreLine._shownScore = 0;
                scoreLine._shownPercentage = 0;
            }
        });
    }

    _onScoreIncreased(e) {
        let newScore = this.score + e.detail.score;
        if(this.overallScore >= newScore) {
            if (this._prevScore < 950 && newScore >= 950) {
                this.dispatchEvent(new CustomEvent('_healingThirdStarReached', {
                    bubbles: true,
                    composed: true
                }));
            } else if (this._prevScore < 700 && newScore >= 700) {
                this.dispatchEvent(new CustomEvent('_healingSecondStarReached', {
                    bubbles: true,
                    composed: true
                }));
            } else if (this._prevScore < 600 && newScore >= 600) {
                this.dispatchEvent(new CustomEvent('_healingFirstStarReached', {
                    bubbles: true,
                    composed: true
                }));
            }
        }
        this._prevScore = newScore;
        this._shownScore = this.score + e.detail.score;
    }
}

window.customElements.define(CritterHealingScore.is, CritterHealingScore);
