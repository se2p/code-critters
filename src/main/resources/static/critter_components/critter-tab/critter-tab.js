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


/*
# critter-button

A Simple Button

## Example
```html
<critter-tab>text</critter-tab>
```

@demo
*/

class CritterTab extends PolymerElement {
    static get template() {
        return html`
        <style>
    
          :host {
            display: block;
          }
    
          #tab_bar {
            width: 100%;
            min-height: 35px;
            background-color: #F3F4F6;
            margin-bottom: 5px;
            white-space: nowrap;
            overflow-y: scroll;
          }
    
          .tab:hover,
          .tab.selected{
            border-bottom.opacity: 0.7;
          }
    
          .tab {
            width: fit-content;
            min-width: 70px;
            height: 0;
            color: whitesmoke;
            text-align: center;
            border-bottom: 35px solid #FFA600;
            border-left: 8px solid transparent;
            border-right: 8px solid transparent;
            cursor: pointer !important;
            margin-right: 5px;
            display: inline-block;
          }
    
          .tab_title {
            padding-top: 10px;
          }
    
          ::-webkit-scrollbar {
            width: 10px;
          }
    
          ::-webkit-scrollbar-track {
            background: #f1f1f1;
          }
    
          ::-webkit-scrollbar-thumb {
            background: #888;
          }
    
          ::-webkit-scrollbar-thumb:hover {
            background: #555;
          }
        </style>
    
        <div id="tab_bar">
          <template id="tabs" is="dom-repeat" items="{{tabs}}">
            <div on-click="_showTab" class$=" tab title-[[index]]">
              <div class="tab_title">
                {{item.title}}
              </div>
            </div>
          </template>
    
        </div>
    `;
    }

    static get is() {
        return 'critter-tab';
    }

    static get properties() {

        return {
            tabs: {
                type: Array,
                value: [],
                observer: "_tabsChanged"
            },

            _selectedElement: {
                type: Number,
                value: 0
            }
        };
    }

    connectedCallback() {
        super.connectedCallback();

        afterNextRender(this, function () {
            this.shadowRoot.querySelector('.title-0').classList.add("selected");
        });
    }

    _showTab(event) {
        if (event.model.index === this._selectedElement) {
            return
        }
        this.shadowRoot.querySelector('.title-' + this._selectedElement).classList.remove("selected");
        this.shadowRoot.querySelector('.title-' + event.model.index).classList.add("selected");
        this.dispatchEvent(new CustomEvent('tabChanged', {
            detail: {
                new: event.model.index,
                old: this._selectedElement
            }
        }));
        this._selectedElement = event.model.index;
    }

    _tabsChanged() {
        this.$.tabs.render();
    }
}

window.customElements.define(CritterTab.is, CritterTab);
