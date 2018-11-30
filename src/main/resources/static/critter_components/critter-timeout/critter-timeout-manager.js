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
