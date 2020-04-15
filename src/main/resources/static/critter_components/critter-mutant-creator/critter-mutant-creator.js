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
import {Toaster} from '../critter-toaster/critter-toaster-mixin.js';

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
class CritterMutantCreator extends Toaster(Level(PolymerElement)) {
    static get template() {
        return html`
    <style>
      :host {
        display: block;
      }

      .tab {
        display: none;
        width: 90%;
        margin-right: 5%;
        float: left;
      }

      .tab-0{
        display: block;
      }
    </style>
    <critter-tab id="tabs" tabs="{{tabs}}"></critter-tab>
    <critter-blockly class="tab code tab-0" height$="{{ _boardHeight}}" controls="true" trashcan="true" cut>
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
        newTab.className = "tab code tab-" + number;
        newTab.trashcan = true;
        newTab.height = this._boardHeight;
        newTab.controls = true;
        newTab.cut = true;
        newTab.xml = true;
        newTab.innerHTML = "<span>Mutant Code</span>";
        this.shadowRoot.append(newTab);
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

        req.addEventListener('static.error', e => {
            let toaster = document.createElement("critter-toaster");
            toaster.type = "static.error";
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

            let code = this.shadowRoot.querySelector('.init.tab-' + i).getJavaScript();

            let regExpInit = /\/\/INIT_START\r?\n((?!\/\/INIT_START)(?!\/\/CUT_START)[^])*\r?\n\/\/INIT_END/g;
            let matchesInit = code.match(regExpInit) || [];

            let regExpCUT =  /\/\/CUT_START\r?\n((?!\/\/INIT_START)(?!\/\/CUT_START)[^])*\r?\n\/\/CUT_END/g;
            let matchesCUT = code.match(regExpCUT)  || [];

            if(matchesCUT.length > 1){
                this.showErrorToast("Too many CUTs in mutant");
                return;
            }

            if(matchesInit.length > 1){
                this.showErrorToast("Too many Initializations in mutant");
                return;
            }

            let init = matchesInit[0];
            let cut = matchesCUT[0];

            reqData.push({
                init: init,
                code: cut
            });
        }
        return reqData;
    }

}

window.customElements.define(CritterMutantCreator.is, CritterMutantCreator);
