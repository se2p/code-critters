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
import {critterStyle} from '/style/critter-botstrap.js'
import {I18n} from '../critter-i18n/critter-i18n-mixin.js';

import '../critter-i18n/critter-i18n.js';
import '../critter-login/critter-login.js';
import '../critter-parameter-handler/critter-parameter-handler.js';

/*
# critter-header

The page header

## Example
```html
<critter-header></critter-header>
```

@demo
*/

class CritterHeader extends I18n(PolymerElement) {
    static get template() {
        return html`
            <style>
                :host {
                    width: 100%;
                    height: 0;
                }
                
                .image-container {
                    display: flex;
                    justify-content: center;
                }

                .large-image {
                    display: block;
                }

                .small-image {
                    display: none;
                }
                
                .image a:hover {
                    color: #ffa600 !important;
                    text-decoration: none;
                }
                
                #login_container{
                    color: black;
                    text-align: end;
                }
                
                #header {
                    background-color: white;
                    color: black;
                    height: 100px;
                    display: flex;
                    flex-direction: row;
                    align-items: center;
                    justify-content: space-between;
                }

                @media only screen and (max-width: 820px) {
                    .image-container {
                        justify-content: center;
                    }

                    .large-image {
                        display: none;
                    }

                    .small-image {
                        display: block;
                    }
                }
                
            </style>
            
            ${critterStyle}
            
            <div id="header">
                <div class="col-md-2 col-sm-1" id="flags">
                    <critter-i18n></critter-i18n>
                    <critter-parameter-handler></critter-parameter-handler>
                </div>
                <div class="col-md-8 col-sm-10 image-container">
                    <a href="/" class="large-image image">
                        <img src="[[importPath]]images/largeLogo.png">
                    </a>
                    <a href="/" class="small-image image">
                    <img src="[[importPath]]images/smallLogo.png">
                    </a>
                </div>
                <div class="col-md-2 col-sm-1" id="login_container">
                    <critter-login hidden$="[[hideLoginButtons]]"></critter-login>
                </div>
            </div>
        `;
    }

    static get importMeta() { return import.meta; }

    static get is() {
        return 'critter-header';
    }

    static get properties() {
        return {
            hideLoginButtons: { // hide login buttons of header e.g. if we are on login or register page
                type: Boolean,
                value: false,
                notify: true
            },
        }
    }

}

window.customElements.define(CritterHeader.is, CritterHeader);
