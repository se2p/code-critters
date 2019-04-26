import {html, PolymerElement} from '/lib/@polymer/polymer/polymer-element.js';
import { afterNextRender } from '/lib/@polymer/polymer/lib/utils/render-status.js';

import '../critter-toaster/critter-toaster.js';



/*
# critter-insert

A Simple Button

## Example
```html
<critter-insert>text</critter-insert>
```

@demo
*/

class CritterParameterHandler extends PolymerElement {
    static get template() {
        return html``;
    }
    static get is() {
        return 'critter-parameter-handler';
    }

    static get properties() {
        return {
            _toasterTime: {
                type: Number,
                value: 5000
            }
        }
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
        let toaster = document.createElement("critter-toaster");
        if(activated !== "true"){
            toaster.type = "error";
            toaster.msg = "activation_error";
        } else {
            toaster.type = "success";
            toaster.msg = "activation_success";
        }
        this.shadowRoot.append(toaster);
        toaster.show(this._toasterTime);
    }
}

window.customElements.define(CritterParameterHandler.is, CritterParameterHandler);