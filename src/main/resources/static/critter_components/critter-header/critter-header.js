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
# critter-insert

A Simple Button

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
                
                #image a{
                    float: left;
                }
                
                #image span{
                    color: #464c53;
                    text-decoration: none;
                    font-size: 3em;
                    height: 100%;
                    display: table-cell;
                    vertical-align: middle;
                    float: left;
                    margin: 0 8px;
                }
                #image img {
                    margin-bottom: 3px;
                }
                header{
                    clear: both;
                }
                
                critter-login {
                    position: absolute;
                    right: 30px;
                    color: rgba(255,255,255,.5);
                }
                
            </style>
            
            ${critterStyle}
            
            <critter-i18n></critter-i18n>
            <critter-parameter-handler></critter-parameter-handler>
       
            <div id="image" class="container mx-auto" style="width: fit-content;">
                <a href="/">
                    <img src="[[importPath]]images/logo.png">
                </a>
                <span>Code Critters</span>
            </div>
             <header class="navbar navbar-dark navbar-expand-sm bg-dark">
             <ul class="navbar-nav">
                 <li class="nav-item">
                    <a class="nav-link" href="/">[[__('home')]]</a>
                 </li>
                 <li class="nav-item">
                    <a class="nav-link" href="/levels">[[__('levels')]]</a>
                 </li>
                 <li class="nav-item">
                    <a class="nav-link" href="/highscore">[[__('highscore')]]</a>
                 </li>
             </ul>
             <critter-login></critter-login>
             </header>
        `;
    }

    static get importMeta() { return import.meta; }

    static get is() {
        return 'critter-header';
    }

}

window.customElements.define(CritterHeader.is, CritterHeader);
