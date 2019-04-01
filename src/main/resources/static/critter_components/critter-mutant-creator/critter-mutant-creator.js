import {html, PolymerElement} from '/lib/@polymer/polymer/polymer-element.js';
import { afterNextRender } from '/lib/@polymer/polymer/lib/utils/render-status.js';
import {Level} from '../critter-level-mixin/critter-level-mixin.js';
import '../critter-blockly/critter-blockly.js';
import '../critter-tab/critter-tab.js';

/*
# critter-mutuant-creator

A creator for mutated critters

## Example
```html
<critter-gameboard level="[Array with texture code]"></critter-gameboard>
```

*/
class CritterMutantCreator extends Level(PolymerElement) {
    static get template() {
        return html`
    <style>
      :host {
        display: block;
      }

      .tab {
        display: none;
        width: 45%;
        margin-right: 5%;
        float: left;
      }

      .tab-0{
        display: block;
      }
    </style>
    <critter-tab id="tabs" tabs="{{tabs}}"></critter-tab>
    <critter-blockly class="tab init tab-0" height$="{{ _boardHeight}}" controls="true" trashcan="true" cut>
      <span>Mutant init Code</span>
    </critter-blockly>
    <critter-blockly class="tab code tab-0" height$="{{ _boardHeight}}" controls="true" trashcan="true" init>
      <span>Mutant Code</span>
    </critter-blockly>
     `;
    }

    static get is() {
        return 'critter-mutant-creator';
    }

    static get properties() {

        return {
            numberOfMutants: {
                type: Number
            },

            tabs: {
                type: Array,
                value: [
                    {title: "Critter 1"},
                    {title: "+"}
                ]
            },

            _boardHeight: {
                type: Number,
                computed: '_computeBoardHeight(height)'
            },

            height: {
                type: Number
            }

        };
    }

    connectedCallback() {
        super.connectedCallback();

        afterNextRender(this, function () {
            this._globalData = window.Core.CritterLevelData;
            this.$.tabs.addEventListener("tabChanged", (event) => this._onTabChanged(event));
        });
    }

    _onTabChanged(event) {
        let detail = event.detail;
        if (detail.old === this.tabs.length - 1) {
            if (this.tabs[this.tabs.length - 1].title !== "+") {
                this._setDisplayTab("none", detail.old);
            }
        } else {
            this._setDisplayTab("none", detail.old)
        }
        if (detail.new === this.tabs.length - 1 && this.tabs[this.tabs.length - 1].title === "+") {
            this._createMutant(detail.new);
            this.tabs.splice(detail.new, 0, {title: "Critter " + (detail.new + 1)});
            if (detail.new === this.numberOfMutants - 1) {
                this.tabs.splice(-1, 1);
            }
            this.$.tabs._tabsChanged();
        }
        this._setDisplayTab("block", detail.new)

    }

    _setDisplayTab(value, number) {
        let elements = this.shadowRoot.querySelectorAll('.tab-' + number);
        for (let i = 0; i < elements.length; ++i)
            elements[i].style.display = value;
    }

    _createMutant(number) {
        let newTab = document.createElement("critter-blockly");
        newTab.className = "tab init tab-" + number;
        newTab.trashcan = true;
        newTab.height = this._boardHeight;
        newTab.controls = true;
        newTab.init = true;
        newTab.innerHTML = "<span>Mutant init Code</span>";
        this.shadowRoot.append(newTab);

        let newTab2 = document.createElement("critter-blockly");
        newTab2.className = "tab code tab-" + number;
        newTab2.trashcan = true;
        newTab2.height = this._boardHeight;
        newTab2.controls = true;
        newTab2.cut = true;
        newTab2.innerHTML = "<span>Mutant Code</span>";
        this.shadowRoot.append(newTab2);
    }

    /** computes the heights of critter-board**/
    _computeBoardHeight(height) {
        return height - 40;
    }

    saveMutants(levelName) {
        let req = document.createElement('iron-ajax');
        req.url = "/generator/mutants/create";
        req.method = "post";
        req.handleAs = 'json';
        req.contentType = 'application/json';
        req.bubbles = true;
        req.rejectWithRequest = true;
        req.body = {
            name: levelName,
            mutants: this._computeReqData()
        };

        req.addEventListener('response', e => {
            let toaster = document.createElement("critter-toaster");
            toaster.type = "success";
            toaster.msg = "Critter has been created";
            this.shadowRoot.append(toaster);
            toaster.show(this._toasterTime);
        });

        req.addEventListener('error', e => {
            let toaster = document.createElement("critter-toaster");
            toaster.type = "error";
            toaster.msg = "Could not save mtants";
            this.shadowRoot.append(toaster);
            toaster.show(this._toasterTime);
        });


        let genRequest = req.generateRequest();
        req.completes = genRequest.completes;

        return req;
    }

    _computeReqData() {
        let reqData = [];
        for (let i = 0; i < this.tabs.length; ++i) {
            if (i === this.tabs.length - 1 && this.tabs[i].title === "+") {
                break;
            }
            reqData.push({
                init: this.shadowRoot.querySelector('.init.tab-' + i).getJavaScript(),
                code: this.shadowRoot.querySelector('.code.tab-' + i).getJavaScript()
            });
        }
        return reqData;
    }

}

window.customElements.define(CritterMutantCreator.is, CritterMutantCreator);