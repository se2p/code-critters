/*-
 * #%L
 * Code Critters
 * %%
 * Copyright (C) 2019 - 2023 Code Critter contributors
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
import {I18n} from '../critter-i18n/critter-i18n-mixin.js';
import { afterNextRender } from '/lib/@polymer/polymer/lib/utils/render-status.js';

/*
# critter-button

A Simple Button

## Example
```html
<critter-button>text</critter-button>
```

@demo
*/


class CritterControlButton extends I18n(PolymerElement) {
    static get template() {
        return html`
            <style>
                :host {
                    display: block;
                    min-width: -moz-fit-content;
                    min-width: fit-content;
                    width: 35px;
                    height: 35px;
                }


                #button {
                    border: 0;
                    background: transparent;
                    display: block;
                    cursor: pointer;
                    transition: 100ms all ease;
                    box-sizing: border-box;
                    position: relative;
                }

                #button.disabled,
                #button.disabled:hover,
                #button.disabled:after,
                #button.disabled:hover:after {
                    cursor: not-allowed;
                }

                #button.play {
                    width: 0;
                    height: 35px;
                    border-style: solid;
                    border-width: 20px 0 20px 35px;
                    border-color: transparent transparent transparent #67cd51;
                }

                #button.normalSpeed {
                    width: 0;
                    height: 35px;
                    border-style: solid;
                    border-width: 20px 0 20px 35px;
                    border-color: transparent transparent transparent #1c5023;
                }

                #button.play.disabled,
                #button.play.disabled:hover {
                    border-color: transparent transparent transparent #c6e8c6;
                }

                #button.normalSpeed.disabled,
                #button.normalSpeed.disabled:hover {
                    border-color: transparent transparent transparent #71ac6a;
                }

                #button.fastforward.disabled,
                #button.fastforward.disabled:after,
                #button.fastforward.disabled:hover,
                #button.fastforward.disabled:hover:after {
                    border-color: transparent transparent transparent #71ac6a;
                }

                #button.fastforward,
                #button.fastforward:after {
                    width: 0;
                    height: 35px;
                    border-style: solid;
                    border-width: 20px 0 20px 25px;
                    border-color: transparent transparent transparent #1c5023;
                }

                #button.play:hover {
                    border-color: transparent transparent transparent #26cd17;
                }

                #button.normalSpeed:hover,
                #button.normalSpeed:hover:after {
                    border-color: transparent transparent transparent #82cc7d;
                }

                #button.pause {
                    width: 0;
                    height: 35px;
                    border-color: transparent transparent transparent #ff6c5c;
                    border-style: double;
                    border-width: 0px 0 0px 25px;
                    margin-left: 3px;
                }

                #button.pause:hover {
                    border-color: transparent transparent transparent #ff3e23;
                }

                #button.pause.disabled,
                #button.pause.disabled:hover {
                    border-color: transparent transparent transparent #ffa38a;
                }

                #button.fastforward:hover,
                #button.fastforward:hover:after {
                    border-color: transparent transparent transparent #82cc7d;
                }

                #button.fastforward:after {
                    content: " ";
                    background: transparent;
                    display: block;
                    cursor: pointer;
                    transition: 100ms all ease;
                    box-sizing: border-box;
                    position: absolute;
                    left: -6px;
                    top: -20px;
                }

                #button.reload {
                    height: 35px;
                    width: 35px;
                    box-sizing: border-box;
                    transition: 500ms all ease;
                }

                #button.reload:hover {
                    -webkit-transform: rotate(-80deg);
                    transform: rotate(-80deg);
                }

                #button.reload:after {
                    display: block;
                    content: " ";
                    border-color: transparent transparent transparent #868bff;
                    border-style: solid;
                    border-width: 11px 0 11px 13px;
                    height: 0;
                    position: absolute;
                    top: 1px;
                    left: 2px;
                    width: 0;
                    -webkit-transform: rotate(120deg);
                    transform: rotate(120deg);
                    box-sizing: border-box;
                }

                #button.reload:before {
                    content: " ";
                    display: block;
                    border-radius: 50%;
                    border: 6px solid #868bff;
                    border-top-color: transparent;
                    height: 35px;
                    width: 35px;
                    -webkit-transform: rotate(-80deg);
                    transform: rotate(-80deg);
                    box-sizing: border-box;
                }

                #button.reload:hover:after {
                    border-color: transparent transparent transparent #5b67ff;
                }

                #button.reload:hover:before {
                    border-color: transparent #5b67ff #5b67ff #5b67ff;
                }

                #button.jump-to-end {
                    height: 35px;
                    width: 35px;
                    box-sizing: border-box;
                    transition: 500ms all ease;
                    position: relative;
                }

                #button.jump-to-end:after {
                    display: block;
                    content: " ";
                    border-color: transparent transparent transparent #868bff;
                    border-style: solid;
                    border-width: 20px 0 20px 25px;
                    height: 0;
                    position: absolute;
                    top: 1px;
                    left: 7px;
                    width: 0;
                    box-sizing: border-box;
                }

                #button.jump-to-end:before {
                    display: block;
                    content: " ";
                    border-color: transparent transparent transparent #868bff;
                    border-style: solid;
                    border-width: 20px 0 20px 25px;
                    height: 0;
                    position: absolute;
                    top: 1px;
                    left: 16px;
                    width: 0;
                    box-sizing: border-box;
                }

                #button.jump-to-end:hover:after,
                #button.jump-to-end:hover:before {
                    border-color: transparent transparent transparent #5b67ff;
                }

                #button.jump-to-end:hover .hover-text-end {
                    display: block;
                }

                #button.jump-to-end.disabled:hover .hover-text-end {
                    display: none;
                }

                #button.jump-to-end.disabled,
                #button.jump-to-end.disabled:after,
                #button.jump-to-end.disabled:before,
                #button.jump-to-end.disabled:hover,
                #button.jump-to-end.disabled:hover:after {
                    border-color: transparent transparent transparent #9192b6;
                }

                .hover-text-end {
                    display: none;
                    position: absolute;
                    top: 40px;
                    background-color: #5b67ff;
                    color: white;
                    padding: 5px 10px;
                    border-radius: 5px;
                    font-size: 12px;
                    z-index: 1;
                }

                .hover-text-faster {
                    display: none;
                    position: absolute;
                    top: 40px;
                    background-color: #1c5023;
                    color: white;
                    padding: 5px 10px;
                    border-radius: 5px;
                    font-size: 12px;
                    z-index: 1;
                }

                .hover-text-reload {
                    display: none;
                    position: absolute;
                    top: 40px;
                    background-color: #5b67ff;
                    color: white;
                    padding: 5px 10px;
                    border-radius: 5px;
                    font-size: 12px;
                    z-index: 1;
                }

                .hover-text-normal-speed {
                    display: none;
                    position: absolute;
                    top: 40px;
                    background-color: #1c5023;
                    color: white;
                    padding: 5px 10px;
                    border-radius: 5px;
                    font-size: 12px;
                    z-index: 1;
                }

            </style>

            <div id="button" class$="[[_disabledString]] [[shape]]">
            </div>
            <div>
                <span class="hover-text-reload">[[__("restart_game")]]</span>
                <span class="hover-text-end">[[__("jump_to_end")]]</span>
                <span class="hover-text-faster">[[__("faster")]]</span>
                <span class="hover-text-normal-speed">[[__("normal_speed")]]</span>
            </div>
        `;
    }

    static get is() {
        return 'critter-control-button';
    }

    static get properties() {
        return {
            disabled: {
                type: Boolean,
                value: false,
                notify: true
            },

            shape: {
                type: String,
                value: "Play"
            },

            _disabledString: {
                computed: "_isDisabled(disabled)"
            }

        }
    }

    connectedCallback() {
        super.connectedCallback();

        afterNextRender(this, function () {
            this.$.button.addEventListener('mouseover', this._onHover.bind(this));
            this.$.button.addEventListener('mouseout', this._onHoverOut.bind(this));
        });
    }

    _onHover() {
        this._toggleTooltip(true)
    }

    _onHoverOut() {
        this._toggleTooltip(false);
    }

    _toggleTooltip(show) {
        if (this.$.button.className && !this.$.button.className.includes("disabled")) {
            const tooltip = this._getTooltipElement();
            if (tooltip) {
                tooltip.style.display = show ? 'block' : 'none';
            }
        }
    }

    /** Returns the tooltip element that corresponds to the button shape */
    _getTooltipElement() {
        const classMap = {
            'reload': '.hover-text-reload',
            'fastforward': '.hover-text-faster',
            'normalSpeed': '.hover-text-normal-speed',
            'jump-to-end': '.hover-text-end'
        };

        for (let key in classMap) {
            if (this.$.button.className.includes(key)) {
                return this.shadowRoot.querySelector(classMap[key]);
            }
        }
        return null;
    }

    _isDisabled(disabled) {
        return (disabled ? "disabled" : "");
    }
}

window.customElements.define(CritterControlButton.is, CritterControlButton);
