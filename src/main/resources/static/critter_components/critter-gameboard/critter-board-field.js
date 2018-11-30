import {html, PolymerElement} from '/lib/@polymer/polymer/polymer-element.js';
import {htmlLiteral} from '/lib/@polymer/polymer/lib/utils/html-tag.js';

/*
# critter-gameboard

Renders the gameboard and its textures.

## Example
```html
<critter-gameboard level="[Array with texture code]"></critter-gameboard>
```

@demo
*/

class CritterGameboardField extends PolymerElement {

    static get template() {
        return html`
        <style>
            :host {
                display: block;
            }

            #field {
                background-image: url(image/texture.png);
                width: 40px;
                height: 40px;
                float: left;
            }

            #field::before {
                content: " ";
                width: 40px;
                height: 40px;
                display: block;
                position: relative;
                bottom: 0;
                right: 0;
            }

            .no_background {
                background-image: none !important;
            }

            .background-grass {
                background-position: -200px -200px;
            }

            .background-grass::before{
                background-image: url(image/texture.png);
            }

            .grass0 {
                background-position: -120px -200px;
            }

            .grass1 {
                background-position: -160px -200px;
            }

            .grass3 {
                background-position: -160px -120px;
            }

            .grass-single{
                background-position: -42px -28px;
                background-size: 520%;
            }

            .dirt0 {
                background-position: 0 -200px;
            }

            .dirt1 {
                background-position: -40px -200px;
            }

            .dirt2 {
                background-position: -80px -200px;
            }

            .water0 {
                background-position: -360px -200px;
            }

            .water1 {
                background-position: -400px -200px;
            }

            .water2 {
                background-position: -440px -200px;
            }

            .water3 {
                background-position: -400px -120px;
            }

            .ice0 {
                background-position: -360px -440px;
            }

            .ice1 {
                background-position: -400px -440px;
            }

            .ice2 {
                background-position: -440px -440px;
            }

            .ice3 {
                background-position: -400px -360px;
            }

            /* new code for ice*/

            .ice-diagonal-up-right::before,
            .ice-diagonal-down-right::before{
                background-position: -120px -440px;
            }

            .ice-diagonal-down-right::before{
                transform: rotate(90deg);
            }

            .ice-full-up-left::before,
            .ice-full-down-left::before,
            .ice-full-up-right::before,
            .ice-full-down-right::before{
                background-position: -120px -400px;
            }

            .ice-full-up-left::before{
                transform: rotate(90deg);
            }

            .ice-full-up-right::before{
                transform: rotate(180deg);
            }

            .ice-full-down-right::before{
                transform: rotate(-90deg);
            }

            .ice-t-right::before,
            .ice-t-left::before,
            .ice-t-up::before,
            .ice-t-down::before{
                background-position: -80px -440px;
            }

            .ice-t-down::before{
                transform: rotate(90deg);
            }

            .ice-t-up::before{
                transform: rotate(-90deg);

            }

            .ice-t-left::before{
                transform: rotate(180deg);
            }

            .ice-cross::before{
                background-position: -40px -440px;
            }

            .ice-horizontal::before,
            .ice-vertical::before{
                background-position: -40px -400px;
            }

            .ice-horizontal-up::before{
                transform: rotate(-90deg);
            }

            .ice-horizontal-down::before{
                transform: rotate(90deg);
            }

            .ice-horizontal-left::before{
                transform: rotate(180deg);
            }

            .ice-horizontal-right::before,
            .ice-horizontal-left::before,
            .ice-vertical-up::before,
            .ice-vertical-down::before{
                background-position: -80px -400px;
            }

            .ice-horizontal-up-left::before{
                transform: rotate(-90deg);
            }

            .ice-horizontal-up-right::before{
                transform: rotate(90deg) scaleX(-1);
            }

            .ice-horizontal-down-left::before{
                transform: rotate(-90deg) scaleX(-1);
            }

            .ice-horizontal-down-right::before{
                transform: rotate(90deg);
            }

            .ice-vertical::before{
                transform: rotate(90deg);
            }

            .ice-vertical-left::before{
                transform: rotate(180deg);
            }

            .ice-vertical-right::before,
            .ice-vertical-left::before,
            .ice-horizontal-up::before,
            .ice-horizontal-down::before{
                background-position: 0 -440px;
            }

            .ice-vertical-up::before{
                transform: rotate(-90deg);
            }

            .ice-vertical-down::before{
                transform: rotate(90deg);
            }

            .ice-vertical-left-up::before{
                transform: scaleX(-1);
            }

            .ice-vertical-left-down::before{
                transform: rotate(180deg);

            }

            .ice-vertical-right-up::before,
            .ice-vertical-left-down::before,
            .ice-vertical-left-up::before,
            .ice-vertical-right-down::before,
            .ice-horizontal-up-left::before,
            .ice-horizontal-up-right::before,
            .ice-horizontal-down-left::before,
            .ice-horizontal-down-right::before{
                background-position: -160px -400px;
            }

            .ice-vertical-right-down::before{
                transform: scaleY(-1);
            }

            .ice-bow-down-right::before,
            .ice-bow-down-left::before,
            .ice-bow-up-right::before,
            .ice-bow-up-left::before{
                background-position: 0 -400px;
            }

            .ice-bow-down-left::before{
                transform: rotate(90deg);
            }

            .ice-bow-up-right::before{
                transform: rotate(-90deg);
            }

            .ice-bow-up-left::before{
                transform: rotate(180deg);
            }

            .ice-only::before{
                background-position: -360px -280px;
            }

            /* end new code for ice*/

            .grass2,
            .wood,
            .wood-left,
            .wood-right {
                background-position: -200px -200px;
            }

            .wood::before {
                background-image: url(image/texture.png);
                background-position: -520px -360px;
            }

            .wood-right::before {
                background-position: -560px -360px;
            }

            .wood-left::before {
                background-position: -480px -360px;
            }

            .wood-up::before {
                background-position: -520px -320px;
            }

            .wood-down::before {
                background-position: -520px -400px;
            }

            .wood-right.wood-up:before {
                background-position: -560px -320px;
            }

            .wood-right.wood-down::before {
                background-position: -560px -400px;
            }

            .wood-left.wood-up:before {
                background-position: -480px -320px;
            }

            .wood-left.wood-down::before {
                background-position: -480px -400px;
            }

            .wood-up.wood-down::before {
                background-position: -520px -440px;
            }

            .wood-left.wood-up.wood-down::before {
                background-position: -480px -440px;
            }

            .wood-right.wood-up.wood-down::before {
                background-position: -560px -440px;
            }

            .wood-right-down::before {
                background-position: -520px -241px;
            }

            .wood-right-up::before {
                background-position: -520px -280px;
            }

            .wood-left-up::before {
                background-position: -560px -280px;
            }

            .wood-left-down::before {
                background-position: -560px -241px;
            }

            .wood-single{
                background-position: -480px -240px;
            }

            .ice-right::before {
                background-position: -440px -360px;
            }

            .ice-left::before {
                background-position: -360px -360px;
            }

            .ice-up::before {
                background-position: -400px -321px;
            }

            .ice-down::before {
                background-position: -400px -399px;
            }

            .ice-right.ice-up:before {
                background-position: -440px -321px;
            }

            .ice-right.ice-down::before {
                background-position: -440px -399px;
            }

            .ice-left.ice-up:before {
                background-position: -360px -321px;
            }

            .ice-left.ice-down::before {
                background-position: -360px -399px;
            }

            .ice-left.ice-up.ice-down::before {
                background-position: -360px -439px;
            }

            .ice-right.ice-up.ice-down::before {
                background-position: -440px -439px;
            }

            .ice-right-down::before {
                background-position: -400px -240px;
            }

            .ice-right-up::before {
                background-position: -400px -280px;
            }

            .ice-left-up::before {
                background-position: -440px -280px;
            }

            .ice-left-down::before {
                background-position: -440px -240px;
            }

            .ice-single{
                background-position: -125px -111px;
                background-size: 520%;
            }

            .water-right::before {
                background-position: -440px -120px;
            }

            .water-left::before {
                background-position: -360px -120px;
            }

            .water-up::before {
                background-position: -400px -80px;
            }

            .water-down::before {
                background-position: -400px -158px;
            }

            .water-right.water-up:before {
                background-position: -440px -80px;
            }

            .water-right.water-down::before {
                background-position: -440px -158px;
            }

            .water-left.water-up:before {
                background-position: -360px -80px;
            }

            .water-left.water-down::before {
                background-position: -360px -158px;
            }

            .water-left.water-up.water-down::before {
                background-position: -360px -200px;
            }

            .water-right.water-up.water-down::before {
                background-position: -440px -200px;
            }

            .water-right-down::before {
                background-position: -400px 0;
            }

            .water-right-up::before {
                background-position: -400px -39px;
            }

            .water-left-up::before {
                background-position: -440px -39px;
            }

            .water-left-down::before {
                background-position: -440px 0;
            }

            /* new code for water*/

            .water-diagonal-up-right::before,
            .water-diagonal-down-right::before{
                background-position: -120px -360px;
            }

            .water-diagonal-down-right::before{
                transform: rotate(90deg);
            }

            .water-full-up-left::before,
            .water-full-down-left::before,
            .water-full-up-right::before,
            .water-full-down-right::before{
                background-position: -120px -320px;
            }

            .water-full-up-left::before{
                transform: rotate(90deg);
            }

            .water-full-up-right::before{
                transform: rotate(180deg);
            }

            .water-full-down-right::before{
                transform: rotate(-90deg);
            }

            .water-t-right::before,
            .water-t-left::before,
            .water-t-up::before,
            .water-t-down::before{
                background-position: -80px -360px;
            }

            .water-t-down::before{
                transform: rotate(90deg);
            }

            .water-t-up::before{
                transform: rotate(-90deg);

            }

            .water-t-left::before{
                transform: rotate(180deg);
            }

            .water-cross::before{
                background-position: -40px -360px;
            }

            .water-horizontal::before,
            .water-vertical::before{
                background-position: -40px -320px;
            }

            .water-horizontal-up::before{
                transform: rotate(-90deg);
            }

            .water-horizontal-down::before{
                transform: rotate(90deg);
            }

            .water-horizontal-left::before{
                transform: rotate(180deg);
            }

            .water-horizontal-right::before,
            .water-horizontal-left::before,
            .water-vertical-up::before,
            .water-vertical-down::before{
                background-position: -80px -320px;
            }

            .water-horizontal-up-left::before{
                transform: rotate(-90deg);
            }

            .water-horizontal-up-right::before{
                transform: rotate(90deg) scaleX(-1);
            }

            .water-horizontal-down-left::before{
                transform: rotate(-90deg) scaleX(-1);
            }

            .water-horizontal-down-right::before{
                transform: rotate(90deg);
            }

            .water-vertical::before{
                transform: rotate(90deg);
            }

            .water-vertical-left::before{
                transform: rotate(180deg);
            }

            .water-vertical-right::before,
            .water-vertical-left::before,
            .water-horizontal-up::before,
            .water-horizontal-down::before{
                background-position: 0 -360px;
            }

            .water-vertical-up::before{
                transform: rotate(-90deg);
            }

            .water-vertical-down::before{
                transform: rotate(90deg);
            }

            .water-vertical-left-up::before{
                transform: scaleX(-1);
            }

            .water-vertical-left-down::before{
                transform: rotate(180deg);

            }

            .water-vertical-right-up::before,
            .water-vertical-left-down::before,
            .water-vertical-left-up::before,
            .water-vertical-right-down::before,
            .water-horizontal-up-left::before,
            .water-horizontal-up-right::before,
            .water-horizontal-down-left::before,
            .water-horizontal-down-right::before{
                background-position: -160px -320px;
            }

            .water-vertical-right-down::before{
                transform: scaleY(-1);
            }

            .water-bow-down-right::before,
            .water-bow-down-left::before,
            .water-bow-up-right::before,
            .water-bow-up-left::before{
                background-position: 0 -320px;
            }

            .water-bow-down-left::before{
                transform: rotate(90deg);
            }

            .water-bow-up-right::before{
                transform: rotate(-90deg);
            }

            .water-bow-up-left::before{
                transform: rotate(180deg);
            }

            .water-only::before{
                background-position: -360px 0;
            }

            /* end new code for water*/

            .water-single{
                background-position: -125px -28px;
                background-size: 520%;
            }

            .dirt-right::before {
                background-position: -80px -120px;
            }

            .dirt-left::before {
                background-position: 0 -120px;
            }

            .dirt-up::before {
                background-position: -40px -80px;
            }

            .dirt-down::before {
                background-position: -40px -159px;
            }

            .dirt-right.dirt-up::before {
                background-position: -80px -80px;
            }

            .dirt-right.dirt-down::before {
                background-position: -80px -159px;
            }

            .dirt-left.dirt-up::before {
                background-position: 0 -80px;
            }

            .dirt-left.dirt-down::before {
                background-position: 0 -159px;
            }

            .dirt-left.dirt-up.dirt-down::before {
                background-position: 0 -200px;
            }

            .dirt-right.dirt-up.dirt-down::before {
                background-position: -80px -200px;
            }

            .dirt-right-down::before {
                background-position: -40px 0;
            }

            .dirt-right-up::before {
                background-position: -40px -40px;
            }

            .dirt-left-up::before {
                background-position: -80px -40px;
            }

            .dirt-left-down::before {
                background-position: -80px 0;
            }

            /* new code for dirt*/

            .dirt-diagonal-up-right::before,
            .dirt-diagonal-down-right::before{
                background-position: -120px -280px;
            }

            .dirt-diagonal-down-right::before{
                transform: rotate(90deg);
            }

            .dirt-full-up-left::before,
            .dirt-full-down-left::before,
            .dirt-full-up-right::before,
            .dirt-full-down-right::before{
                background-position: -120px -240px;
            }

            .dirt-full-up-left::before{
                transform: rotate(90deg);
            }

            .dirt-full-up-right::before{
                transform: rotate(180deg);
            }

            .dirt-full-down-right::before{
                transform: rotate(-90deg);
            }

            .dirt-t-right::before,
            .dirt-t-left::before,
            .dirt-t-up::before,
            .dirt-t-down::before{
                background-position: -80px -280px;
            }

            .dirt-t-down::before{
               transform: rotate(90deg);
            }

            .dirt-t-up::before{
                transform: rotate(-90deg);

            }

            .dirt-t-left::before{
                transform: rotate(180deg);
            }

            .dirt-cross::before{
                background-position: -40px -280px;
            }

            .dirt-horizontal::before,
            .dirt-vertical::before{
                background-position: -40px -240px;
            }

            .dirt-horizontal-up::before{
                transform: rotate(-90deg);
            }

            .dirt-horizontal-down::before{
                transform: rotate(90deg);
            }

            .dirt-horizontal-left::before{
                transform: rotate(180deg);
            }

            .dirt-horizontal-right::before,
            .dirt-horizontal-left::before,
            .dirt-vertical-up::before,
            .dirt-vertical-down::before{
                background-position: -80px -240px;
            }

            .dirt-horizontal-up-left::before{
                transform: rotate(-90deg);
            }

            .dirt-horizontal-up-right::before{
                transform: rotate(90deg) scaleX(-1);
            }

            .dirt-horizontal-down-left::before{
                transform: rotate(-90deg) scaleX(-1);
            }

            .dirt-horizontal-down-right::before{
                transform: rotate(90deg);
            }

            .dirt-vertical::before{
                transform: rotate(90deg);
            }

            .dirt-vertical-left::before{
                transform: rotate(180deg);
            }

            .dirt-vertical-right::before,
            .dirt-vertical-left::before,
            .dirt-horizontal-up::before,
            .dirt-horizontal-down::before{
                background-position: 0 -280px;
            }

            .dirt-vertical-up::before{
                transform: rotate(-90deg);
            }

            .dirt-vertical-down::before{
                transform: rotate(90deg);
            }

            .dirt-vertical-left-up::before{
                transform: scaleX(-1);
            }

            .dirt-vertical-left-down::before{
                transform: rotate(180deg);

            }

            .dirt-vertical-right-up::before,
            .dirt-vertical-left-down::before,
            .dirt-vertical-left-up::before,
            .dirt-vertical-right-down::before,
            .dirt-horizontal-up-left::before,
            .dirt-horizontal-up-right::before,
            .dirt-horizontal-down-left::before,
            .dirt-horizontal-down-right::before{
                background-position: -160px -240px;
            }

            .dirt-vertical-right-down::before{
                transform: scaleY(-1);
            }

            .dirt-bow-down-right::before,
            .dirt-bow-down-left::before,
            .dirt-bow-up-right::before,
            .dirt-bow-up-left::before{
                background-position: 0 -240px;
            }

            .dirt-bow-down-left::before{
                transform: rotate(90deg);
            }

            .dirt-bow-up-right::before{
                transform: rotate(-90deg);
            }

            .dirt-bow-up-left::before{
                transform: rotate(180deg);
            }

            .dirt-only::before{
                background-position: 0 0;
            }

            /* end new code for dirt*/

            .dirt-single{
                background-position: 0 -27px;
                background-size: 507%;
            }

            .towerField::after {
                content: " ";
                background-image: url(image/buildings.png);
                background-position: -96px 0;
                width: 40px;
                height: 90px;
                display: block;
                position: relative;
                bottom: 87px;
                right: 2px;
                z-index: 3;
            }

            .spawnField::after{
                content: " ";
                background-image: url(image/buildings.png);
                background-position: 0 -36px;
                width: 50px;
                height: 50px;
                display: block;
                position: relative;
                bottom: 51px;
                right: 5px;
                z-index: 3;
            }

            .mine::after {
                content: " ";
                background-image: url(image/mine.png);
                background-position: 0 0;
                width: 40px;
                height: 40px;
                display: block;
                position: relative;
                top: -40px;
                left: 0;
                z-index: 3;
                cursor: pointer;
                pointer-events: none;
            }

            .mine.explosion::after {
                -webkit-animation: explode 1s steps(11) 1;
                animation: explode 1s steps(11) 1;
            }

            @keyframes explode {
                0% {
                    background-position: 0 0;
                }
                100% {
                    background-position: 440px 0;
                }
            }

            @-webkit-keyframes explode {
                0% {
                    background-position: 0 0;
                }
                100% {
                    background-position: 440px 0;
                }
            }

        </style>
        <div id="field" class$="[[class]]"></div>
    `;
    }

    static get importMeta() { return import.meta; }

    static get urlTemplate() {
        let string = new URL('.', import.meta.url).toString();
        return string;
    }

    static get is() {
        return 'critter-gameboard-field';
    }

    static get properties() {

        return {
            x: {
                type: Number,
                value: 0
            },

            y: {
                type: Number,
                value: 0
            },

            class: {
                type: String,
                value: ''
            }
        };
    }

    playExplosion() {
        this.$.field.classList.add("explosion");
        window.Core.timeouts.add(() => {
            this.$.field.classList.remove("explosion");
        }, 1000);
    }

}

window.customElements.define(CritterGameboardField.is, CritterGameboardField);