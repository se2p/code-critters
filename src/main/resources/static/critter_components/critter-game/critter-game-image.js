/*-
 * #%L
 * Code Critters
 * %%
 * Copyright (C) 2020 Laura Caspari
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

/*
# critter-game-image

Displaying the images of human and mutant heads during games.

## Example
```html
<critter-game-image></critter-game-image>
```

@demo
*/

class CritterGameImage extends PolymerElement {
    static get template() {
        return html`
            <style>
                
            </style>

            <div id="critter_head">
                <!--Imports the images of the mutant or human heads depending on the value inserted in the name placeholder-->
                <img src="[[importPath]]images/[[name]]">
            </div>
        `;
    }

    static get importMeta() {
        return import.meta;
    }

    static get is() {
        return 'critter-game-image';
    }

    static get properties() {
        return {
            name: {
                type: String,
                value: ""
            }
        }
    }
}

window.customElements.define(CritterGameImage.is, CritterGameImage);