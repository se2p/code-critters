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
import {afterNextRender} from '/lib/@polymer/polymer/lib/utils/render-status.js';
import {critterStyle} from '/style/critter-botstrap.js';
import {I18n} from '../critter-i18n/critter-i18n-mixin.js';

/*
# critter-copyright

Copyright notice for Code Critters

## Example
```html
<critter-copyright></critter-copyright>
```

@demo
*/

class CritterCopyright extends I18n(PolymerElement) {
    static get template() {
        return html`
            <style>
                h6 {
                    color: #ffa600;
                }
            </style>
            
            ${critterStyle}
            
            <div class="row">
                <div class="col-sm-4">
                    <h3>[[__('maintained_by')]]</h3>
                    <p>
                        Universität Passau<br>
                        Fakultät für Informatik und Mathematik<br>
                        Innstraße 33<br>
                        Lehrstuhl für Software Engineering II<br>
                        94032 Passau
                    </p>
                    <p>
                        <h6><b>[[__('representative')]]</b></h6>
                        <p>Gordon Fraser</p>
                    </p>
                </div>
                <div class="col-sm-4">
                    <h3>[[__('contact')]]</h3>
                    <p>
                        Tel.: +49 851 ???? <br>
                        Fax: +49 851 ???? <br>
                        E-Mail: ??@uni-passau.de
                    </p>
                    <p>Copyright &copy; 2020 Code Critters</p>
                </div>
                <div class="col-sm-4">
                    <h3>[[__('legal_form')]]</h3>
                    <p>[[__('legal_text')]]</p>
                </div>
            </div>
        `
    }

    static get is() {
        return 'critter-copyright';
    }
}

window.customElements.define(CritterCopyright.is, CritterCopyright);