import {html, PolymerElement} from '/lib/@polymer/polymer/polymer-element.js';
import { afterNextRender } from '/lib/@polymer/polymer/lib/utils/render-status.js';

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
class CritterScore extends PolymerElement {

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
            <critter-score-line id="finished_humans_line">Finished Humans</critter-score-line>
            <critter-score-line id="killed_humans_line">Killed Humans</critter-score-line>
            <critter-score-line id="killed_critters_line">Killed Critters</critter-score-line>
            <critter-score-line id="finished_critters_line">Finished Critters</critter-score-line>
            <critter-score-line id="mines_line">Needed Mines</critter-score-line>
            <critter-score-line id="time_line">Time Bonus</critter-score-line>
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
        this._shownScore = this.score + e.detail.score;
    }
}

window.customElements.define(CritterScore.is, CritterScore);
