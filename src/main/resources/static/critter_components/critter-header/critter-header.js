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
import {afterNextRender} from '/lib/@polymer/polymer/lib/utils/render-status.js';
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
                
                @media only screen and (max-width: 480px) {
                    #image span {
                        font-size: 1.5em;
                    }
                    
                    #flags, #login_container, #image {
                        width: 33%;
                        padding: 2%;
                        margin: 0;
                    }
                    
                    img {
                        display: none;
                    }
                }
                
                @media only screen and (min-width: 481px) {
                    #image span {
                        font-size: 3em;
                        height: 100%;
                    }
                }
                
                #image {
                    text-align: center;
                }
                
                #image span{
                    text-decoration: none;
                    color: black;
                    vertical-align: middle !important;
                }
                
                #image a:hover {
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
                }
                
            </style>
            
            ${critterStyle}
            
            <div class="navbar navbar-dark navbar-fixed-top" id="header">
                <div class="col-sm-4" id="flags">
                    <critter-i18n></critter-i18n>
                    <critter-parameter-handler></critter-parameter-handler>
                </div>
                <div class="col-sm-4" id="image" class="container mx-auto" style="width: fit-content;">
                    <a href="/">
                        <img src="[[importPath]]images/logo.png">
                        <span>Code Critters</span>
                    </a>
                </div>
                <div class="col-sm-4" id="login_container">
                    <critter-login></critter-login>
                </div>
            </div>
        `;
    }

    static get importMeta() { return import.meta; }

    static get is() {
        return 'critter-header';
    }

}

window.customElements.define(CritterHeader.is, CritterHeader);
