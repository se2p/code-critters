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
            background-color: #bbcce2;
            margin-bottom: 5px;
            white-space: nowrap;
            overflow-y: scroll;
          }
    
          .tab:hover,
          .tab.selected{
            border-bottom: 35px solid #00b0ff;
          }
    
          .tab {
            width: fit-content;
            min-width: 70px;
            height: 0;
            color: whitesmoke;
            text-align: center;
            border-bottom: 35px solid #039BE5;
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
