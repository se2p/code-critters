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
