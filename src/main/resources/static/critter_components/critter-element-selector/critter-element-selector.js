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
import '../critter-gameboard/critter-board-field.js';


/*
# critter-gameboard

Renders the gameboard and its textures.

## Example
```html
<critter-gameboard level="[Array with texture code]"></critter-gameboard>
```

@demo
*/

class CritterElementSelector extends PolymerElement {

    static get template() {
        return html`
            <style>
                :host {
                    display: block;
                }
                
                @media only screen and (max-width: 423px) {
                    #element-container {
                        background-color: aliceblue;
                        width: 320px;
                        height: fit-content;
                        overflow-y: scroll;
                    }
                    
                    #element-container *{
                        float: left;
                    }
        
                    .element{
                        margin: 2%;
                        margin-top: 30px;
                        width: 35px;
                        height: fit-content;
                        cursor: pointer;
                    }
                    
                    .element span {
                        margin: 2%;
                        height: fit-content;
                    }
                    
                    .element tower {
                        margin-top: 90px;
                    }
                    
                    .heading{
                        display: none;
                    }
        
                    .heading1{
                        display: none;
                    }
                }
                
                @media only screen and (max-width: 600px) and (min-width: 424px){
                    .element{
                        margin: 20px 0;
                        width: 100%;
                        height: 20px;
                        cursor: pointer;
                    }
                    
                    #element-container {
                        background-color: aliceblue;
                        width: 100%;
                        height: 320px;
                        overflow-y: scroll;
                    }
                    
                    .element span{
                        margin-left: 5px;
                        height: 20px;
                        justify-content: center;
                        align-items: center;
                        display: flex;
                    }
                }
              
                @media only screen and (max-width: 984px) and (min-width: 601px){
                    #element-container {
                        background-color: aliceblue;
                        width: 640px;
                        height: fit-content;
                        overflow-y: scroll;
                    }
                    
                    #element-container *{
                        float: left;
                    }
        
                    .element {
                        margin: 2%;
                        margin-top: 45px;
                        width: 50px;
                        height: fit-content;
                        cursor: pointer;
                    }
                    
                    .element span {
                        margin: 2%;
                        display: flex;
                    }
                    
                    .heading{
                        display: none;
                    }
        
                    .heading1{
                        display: none;
                    }
                }
              
                @media only screen and (min-width: 985px) {
                    #element-container {
                        background-color: aliceblue;
                        width: 300px;
                        height: 640px;
                        overflow-y: scroll;
                    }
        
                    .element{
                        margin: 20px 0;
                        width: 100%;
                        height: 40px;
                        cursor: pointer;
                    }
        
                    .element span{
                        margin-left: 20px;
                        height: 40px;
                        justify-content: center;
                        align-items: center;
                        display: flex;
                    }
                    
                    .heading{
                        margin: 20px 0;
                        width: 100%;
                        height: 40px;
                        font-size: 1.5em;
                        cursor: default;
                    }
        
                    .heading1{
                        margin-bottom: 40px;
                    }
                }
                
                .element span {
                    font-size: 1.2em;
                }
                
                .element *{
                    float: left;
                    pointer-events: none;
                }
        
                .element:hover{
                    background-color: whitesmoke;
                }
            </style>
            <div id="element-container">
              <div class="heading0 heading">
                <span>Textures</span>
              </div>
              <div class="element" on-click="_selectElement" element='grass'>
                <critter-gameboard-field class="grass-single"></critter-gameboard-field>
                <span>Grass</span>
              </div>
              <div class="element" on-click="_selectElement" element='dirt'>
                <critter-gameboard-field class="dirt-single"></critter-gameboard-field>
                <span>Dirt</span>
              </div>
              <div class="element" on-click="_selectElement" element='water'>
                <critter-gameboard-field class="water-single"></critter-gameboard-field>
                <span>Water</span>
              </div>
              <div class="element" on-click="_selectElement" element='ice'>
                <critter-gameboard-field class="ice-single"></critter-gameboard-field>
                <span>Ice</span>
              </div>
              <div class="element" on-click="_selectElement" element='wood'>
                <critter-gameboard-field class="wood-single"></critter-gameboard-field>
                <span>Wood</span>
              </div>
              <div class="heading1 heading">
                <span>Buildings</span>
              </div>
              <div class="element" on-click="_selectElement" element='tower'>
                <critter-gameboard-field class="no_background towerField"></critter-gameboard-field>
                <span>Tower</span>
              </div>
              <div class="element" on-click="_selectElement" element='spawn'>
                <critter-gameboard-field class="no_background spawnField"></critter-gameboard-field>
                <span>Spawn</span>
              </div>
            </div>
        `;
    }

    static get is() {
        return 'critter-element-selector';
    }

    static get properties() {

        return {
            selectedElement: {
                type: String,
                notify: true
            },

            height: {
                type: Number
            }
        };
    }

    _selectElement(event) {
        this.selectedElement = event.target.getAttribute('element');
    }

}

window.customElements.define(CritterElementSelector.is, CritterElementSelector);
