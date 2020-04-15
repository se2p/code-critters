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
import './critter-timeout.js';


/*
# critter-timeout-manager

A Simple Button

## Example
```html
<critter-timeout-manager></critter-timeout-manager>
```

@demo
*/

window.Core = window.Core || {};
window.Core.timeouts = window.Core.timeouts || [];

class CritterTimeoutManager extends PolymerElement {

    static get is() {
        return 'critter-timeout-manager';
    }

    static get properties() {
        return {
          timeouts: {
              type: Map,
              value: new Map()
          }
        }
    }

    connectedCallback() {
        super.connectedCallback();
        window.Core.timeouts = this;

    }

    add(callback, timeout) {
        let timeoutElement = document.createElement("critter-timeout");
        timeoutElement.callback = callback;
        timeoutElement.duration = timeout;
        let id = timeoutElement.start();
        this.timeouts.set(id, timeoutElement);
        timeoutElement.addEventListener("_timeoutOver", (event) => this._deleteTimeout(event));
        return id;
    }

    addElement(elem){
        this.timeouts.set(elem.id, elem);
    }

    pauseAll() {
        this.timeouts.forEach((timeout) => {
           timeout.pause();
        });
    }

    resumeAll() {
        this.timeouts.forEach((timeout) => {
            timeout.resume();
        });
    }

    _deleteTimeout(event){
        this.deleteTimeout(event.detail.id);
    }

    clear() {
        this.pauseAll();
        this.timeouts = new Map();
    }

    deleteTimeout(id){
        this.timeouts.delete(id);
    }
}

window.customElements.define(CritterTimeoutManager.is, CritterTimeoutManager);
