import {html, PolymerElement} from '/lib/@polymer/polymer/polymer-element.js';
import { afterNextRender } from '/lib/@polymer/polymer/lib/utils/render-status.js';

import '/lib/@polymer/iron-ajax/iron-ajax.js';
import './critter-level-preview.js'
/*
# critter-insert

A Simple Button

## Example
```html
<critter-level-selector></critter-level-selector>
```

@demo
*/

class CritterLevelRow extends PolymerElement {

    static get template() {
        return html`
            <style>
            #level_row *{
                float: left;
            }
            #row_container{
                clear: both;
            }
            </style>
            
            <div id="row_container">
                <span id="heading">[[name]]</span>
                <div id="level_row"></div>
            </div>

    `;
    }

    static get is() {
        return 'critter-level-row';
    }

    static get properties() {
        return {
            name: {
                type: String,
                value: ""
            },

            levels: {
                type: Array,
                value: [],
                notify: true
            }
        }
    }

    static get observers() {
        return [
            'addElements(levels)'
        ]
    }

    addElements() {
        this.$.level_row.innerHtml = "";
        this.levels.forEach((level) => {
            let preview = document.createElement("critter-level-preview");
            preview.name = level.name;
            preview.stars = level.stars;
            this.$.level_row.append(preview);
        })
    }
}

window.customElements.define(CritterLevelRow.is, CritterLevelRow);
