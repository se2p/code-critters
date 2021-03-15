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
      <span>
        <p>Mutant Code</p>
        <p style="color:#FFA600">Updating the CUT or changing the language will cause the mutant code to be overwritten!</p>
      </span>
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
            this._setDisplayTab("block", detail.new);
        } else {
            this._setDisplayTab("block", detail.new);
            let element = this.shadowRoot.querySelector('.tab-' + detail.new);
            let code = "";
            if (element.update) {
                code = element.xml;
                element.update = false;
                element.xml = true;
            } else {
                code = element.getXML();
            }
            element._toolboxChanged();
            element.setCode(code);
        }
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
        newTab.innerHTML = "<span><p>Mutant Code</p><p style=\"color:#FFA600\">Updating the CUT or changing the "
            + "language will cause the mutant code to be overwritten!</p></span>";
        this.shadowRoot.append(newTab);
        return newTab;
    }

    /**
     * Creates new tabs for all the mutants of the level that is being edited.
     * @param number The number of the tab.
     * @param mutant The mutant data.
     * @private
     */
    _initializeMutants(number, mutant) {
        if (number !== 0) {
            let tab = this._createMutant(number);
            tab.id = mutant.id;
            tab.xml = mutant.xml;
            tab.update = true;
            this.tabs.splice(number, 0, {title: "Critter " + (number + 1)});
        } else {
            let tab = this.shadowRoot.querySelector('.tab-' + number);
            tab.id = mutant.id;
            tab.cut = true;
            tab.xml = true;
            tab.update = false;
            tab._toolboxChanged();
            tab.getCenteredCode(mutant.xml);
        }

        this.$.tabs._tabsChanged();
    }

    /** computes the heights of critter-board**/
    _computeBoardHeight(height) {
        return height - 40;
    }

    /**
     * Saves the changes to all mutants that already exist in the database for the given level name.
     * @param levelName The name of the level to which the mutants belong.
     * @returns {HTMLElement}
     */
    updateMutants(levelName) {
        let req = document.createElement('iron-ajax');
        req.url = "/generator/mutants/update";
        req.method = "post";
        req.handleAs = 'json';
        req.contentType = 'application/json';
        req.bubbles = true;
        req.rejectWithRequest = true;
        req.body = {
            name: levelName,
            mutants: this._getUpdatedMutants()
        };

        req.addEventListener('response', e => {
            this._createToaster("success", "Critter has been updated");
        });

        req.addEventListener('error', e => {
            this._createToaster("error", "Could not update mutants");
        });


        let genRequest = req.generateRequest();
        req.completes = genRequest.completes;

        return req;
    }

    /**
     * Returns the data of all mutants that have been updated.
     * @returns {[]} The mutant data to be saved.
     * @private
     */
    _getUpdatedMutants() {
        let reqData = [];
        for (let i = 0; i < this.tabs.length; ++i) {
            if (i === this.tabs.length - 1 && this.tabs[i].title === "+") {
                break;
            }

            let tab = this.shadowRoot.querySelector('.tab-' + i);

            if (tab.id && !tab.update) {
                let data = this._verifyCode(i);

                if(!data) {
                    return;
                }

                reqData.push({
                    id: tab.id,
                    init: data.init,
                    code: data.cut,
                    xml: data.xml
                });
            }
        }
        return reqData;
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
            this._createToaster("success", "Critter has been created");
        });

        req.addEventListener('error', e => {
            this._createToaster("error", "Could not save mutants");
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

            let tab = this.shadowRoot.querySelector('.tab-' + i);

            if (!tab.id) {
                let data = this._verifyCode(i);

                if(!data) {
                    return;
                }

                reqData.push({
                    init: data.init,
                    code: data.cut,
                    xml: data.xml
                });
            }
        }
        return reqData;
    }

    /**
     * Checks, whether the mutant code in the tab with the given number matches the requirements.
     * @param tabNumber The number of the tab to check.
     * @returns {{init: (*), cut: (*), xml: *}|boolean} False, if the code is invalid, or the computed data, if it is.
     * @private
     */
    _verifyCode(tabNumber) {
        if (this.shadowRoot.querySelector('.tab.code.tab-' + tabNumber) === null) {
            this.showErrorToast("Mutant has no init");
            return false;
        }

        let code = this.shadowRoot.querySelector('.tab.code.tab-' + tabNumber).getJavaScript();
        let xml = this.shadowRoot.querySelector('.tab.code.tab-' + tabNumber).getXML();

        let regExpInit = /\/\/INIT_START\r?\n((?!\/\/INIT_START)(?!\/\/CUT_START)[^])*\r?\n\/\/INIT_END/g;
        let matchesInit = code.match(regExpInit) || [];

        let regExpCUT =  /\/\/CUT_START\r?\n((?!\/\/INIT_START)(?!\/\/CUT_START)[^])*\r?\n\/\/CUT_END/g;
        let matchesCUT = code.match(regExpCUT)  || [];

        if(matchesCUT.length > 1){
            this.showErrorToast("Too many CUTs in mutant");
            return false;
        }

        if(matchesInit.length > 1){
            this.showErrorToast("Too many initializations in mutant");
            return false;
        }

        return {init: matchesInit[0], cut: matchesCUT[0], xml: xml};
    }

    /**
     * Creates a simple toaster with the given type and message.
     * @param type The type of the toaster.
     * @param msg The message the toaster should display.
     * @private
     */
    _createToaster(type, msg) {
        let toaster = document.createElement("critter-toaster");
        toaster.type = type;
        toaster.msg = msg;
        this.shadowRoot.append(toaster);
        toaster.show(this._toasterTime);
    }

}

window.customElements.define(CritterMutantCreator.is, CritterMutantCreator);
