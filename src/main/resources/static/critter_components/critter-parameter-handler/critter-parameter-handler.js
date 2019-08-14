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
import {Toaster} from '../critter-toaster/critter-toaster-mixin.js';



/*
# critter-insert

A Simple Button

## Example
```html
<critter-insert>text</critter-insert>
```

@demo
*/

class CritterParameterHandler extends Toaster(PolymerElement) {

    static get is() {
        return 'critter-parameter-handler';
    }

    connectedCallback() {
        super.connectedCallback();
        afterNextRender(this, function () {
            let activated;
            if(activated = new URL(window.location.href).searchParams.get("activated")){
                this._showActivatedToast(activated);
            }
        });
    }

    _showActivatedToast(activated) {
        if(activated !== "true"){
            this.showErrorToast("activation_error");
        } else {
            this.showSuccessToast("activation_success");
        }
    }
}

window.customElements.define(CritterParameterHandler.is, CritterParameterHandler);
