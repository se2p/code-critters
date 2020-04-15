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
