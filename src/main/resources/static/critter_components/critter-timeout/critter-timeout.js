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
