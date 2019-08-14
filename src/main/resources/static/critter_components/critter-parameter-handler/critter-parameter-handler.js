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