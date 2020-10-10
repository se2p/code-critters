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
import {critterStyle} from '/style/critter-botstrap.js';
import {I18n} from '../critter-i18n/critter-i18n-mixin.js';

/*
# critter-project-info

Information about the Code Critters project

## Example
```html
<critter-project-info></critter-project-info>
```

@demo
*/

class CritterProjectInfo extends I18n(PolymerElement) {
    static get template() {
        return html`
            <style>
                .card{
                    box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
                    text-align: center;
                    margin: auto;
                }

                .card-title {
                    color: #ffa600;
                    font-size: 18px;
                }

                .profile_img {
                    max-height: 200px;
                    max-width: 200px;
                    border-radius: 100px;
                    margin: auto;
                    overflow: hidden;
                    position: relative;
                }
                
                #project_text {
                    margin: 2%;
                    padding: 2%;
                }
                
                #project_text hr {
                    color: #ffa600;
                    background-color: #ffa600;
                    height: 3px;
                    margin: 0;
                }
                
                h6 {
                    color: #ffa600;
                }
            </style>
            
            ${critterStyle}
            
            <div class="row">
                <div class="col-sm-4">
                    <div class="card">
                        <img src="[[importPath]]images/unicorn.png" class="profile_img" alt="Gordon Fraser">
                            <h1>Gordon Fraser</h1>
                            <p class="card-title">[[__('chair_se2')]]</p>
                            <p>[[__('uni_passau')]]</p>
                    </div>
                    </div>
                        <div class="col-sm-4">
                            <div class="card">
                            <img src="[[importPath]]images/unterwelt.png" class="profile_img" alt="Gestalt der Unterwelt">
                            <h1>Gordon Fraser</h1>
                            <p class="card-title">[[__('shape')]]</p>
                            <p>[[__('nether_world')]]</p>
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <div class="card">
                            <img src="[[importPath]]images/schlumpf.png" class="profile_img" alt="Schlumpf">
                            <h1>Gordon Fraser</h1>
                            <p class="card-title">[[__('smurf')]]</p>
                            <p>[[__('smurf_home')]]</p>
                        </div>
                    </div>
                </div>
                <div class="row" id="project_text">
                    <div class="col-sm-4">
                        <hr>
                        <h3><b>[[__('about')]]</b></h3>
                        <h6><b>Code Critters</b></h6>
                    </div>
                    <div class="col-sm-8 text">[[__('project_text')]]</div>
                </div>
        `
    }

    static get importMeta() { return import.meta; }

    static get is() {
        return 'critter-project-info';
    }
}

window.customElements.define(CritterProjectInfo.is, CritterProjectInfo);