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

import '/lib/@polymer/iron-ajax/iron-ajax.js';
import './critter-level-preview.js';
import '../critter-translator/critter-translator-escaped.js';
import {I18n} from '../critter-i18n/critter-i18n-mixin.js';
/*
# critter-insert

Inserts a level row containing a preview of all levels belonging to that row.

## Example
```html
<critter-level-row></critter-level-row>
```

@demo
*/

class CritterLevelRow extends I18n(PolymerElement) {

    static get template() {
        return html`
            <style>
            #level_row *{
                float: left;
            }
            
            #row_container{
                clear: both;
                overflow: auto;
            }
            
            #heading hr {
                display: block;
                color: #FFA600;
                background-color: #FFA600;
                height: 3px;
                margin-right: 0;
                width: 25%;
            }
            
            #heading {
                text-align: right;
            }
            </style>
            
            <div class="row" id="row_container">
                <div class="col-sm-4">
                    <span id="heading">
                        <hr align="right">
                        <!-- The name of the level row -->
                        <h3><b id="category">[[name]]</b></h3>
                    </span>
                </div>
                <div class="col-sm-8">
                    <!-- Contains the preview images of levels belonging to this row with achieved stars -->
                    <div id="level_row"></div>
                </div>
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

    /**
     * Adds a level preview with images of the levels and achieved stars for each level row and a translator to display
     * the name of each row in the current language.
     */
    addElements() {
        this.$.level_row.innerHtml = "";
        this.levels.forEach((level) => {
            let preview = document.createElement("critter-level-preview");
            preview.name = level.name;
            preview.stars = level.stars;
            this.$.level_row.append(preview);
        })
        this.$.category.innerHTML = "";
        let translation = document.createElement("critter-translator-escaped");
        translation.setAttribute("key", this.name.toLowerCase());
        this.$.category.append(translation);
    }
}

window.customElements.define(CritterLevelRow.is, CritterLevelRow);
