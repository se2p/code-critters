import { dedupingMixin } from '/lib/@polymer/polymer/lib/utils/mixin.js';
import {I18n} from '../critter-i18n/critter-i18n-mixin.js';

import '../critter-toaster/critter-toaster.js';


/*
#CritterMixins.Toaster

Holds data for Toasts

*/



export const Toaster = dedupingMixin(function(superClass) {
    return class extends I18n(superClass) {

        static get properties() {
            return {
                _toasterTime: {
                    type: Number,
                    value: 5000
                }
            };
        }


        showErrorToast(msg) {
            let toaster = document.createElement("critter-toaster");
            toaster.type = "static.error";
            toaster.msg = this.__(msg);

            this.shadowRoot.append(toaster);
            toaster.show(this._toasterTime);
        }

        showSuccessToast(msg) {
            let toaster = document.createElement("critter-toaster");
            toaster.type = "success";
            toaster.msg = this.__(msg);

            this.shadowRoot.append(toaster);
            toaster.show(this._toasterTime);
        }
    }
});
