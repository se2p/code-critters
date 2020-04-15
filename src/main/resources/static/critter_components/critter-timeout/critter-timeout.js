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


/*
# critter-timeout-manager

A Simple Button

## Example
```html
<critter-timeout></critter-timeout>
```

@demo
*/

class CritterTimeout extends PolymerElement {

    static get is() {
        return 'critter-timeout';
    }

    static get properties() {
        return {
            callback: {
                type: Function
            },

            duration: {
                type: Number
            },

            start: {
                type: Date
            },

            id: {
                type: Number
            },
            paused: {
                type: Boolean,
                value: true
            },

            done: {
                type: Boolean,
                value: false
            }
        }
    }

    start() {
        return this.resume();
    }

    pause() {
        if (!this.paused) {
            clearTimeout(this.id);
            this.duration -= new Date() - this.start;
            if (this.duration <= 0) {
                this.done = true;
                this._timeoutFinished();
            }
            this.paused = true;
        }
    }

    resume() {
        if (this.paused) {
            if (!this.done) {
                this.start = new Date();
                clearTimeout(this.id);
                this.id = setTimeout(() => {
                    this.callback();
                    this.done = true;
                    this._timeoutFinished();
                }, this.duration);
                this.paused = false;
                return this.id;
            } else if (this.duration <= 0 && !this.done) {
                this.callback();
                this.done = true;
                this._timeoutFinished();
            }
        }
    }

    _timeoutFinished() {
        this.dispatchEvent(new CustomEvent('_timeoutOver', {
            detail: {id: this.id},
            bubbles: true,
            composed: true
        }));
    }

}

window.customElements.define(CritterTimeout.is, CritterTimeout);
