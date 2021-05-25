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
import {htmlLiteral} from '/lib/@polymer/polymer/lib/utils/html-tag.js';
import {Generator} from '../critter-generator-mixin/critter-generator-mixin.js';


import '/static/rasterizehtml/dist/rasterizeHTML.allinone.js';


/*
# critter-gameboard

Renders the gameboard and its textures.

## Example
```html
<critter-gameboard level="[Array with texture code]"></critter-gameboard>
```

@demo
*/

class CritterGameboardField extends Generator(PolymerElement) {

    static get template() {
        return html`
        <style>
            :host {
                display: block;
            }
            
            /* Defines the field width and height as well as the background images for a gameboard with 20x20px fields. */
            @media only screen and (max-width: 600px) {
                #field {
                    background-image: url(image/texture50.png);
                    width: 20px;
                    height: 20px;
                    float: left;
                }

                #field::before,
                .mine{
                    content: " ";
                    width: 20px;
                    height: 20px;
                    display: block;
                    position: relative;
                    bottom: 0;
                    right: 0;
                }
                
                .mine{
                    position:absolute;
                }
                
                .background-grass {
                    background-position: -100px -100px;
                }

                .background-grass::before{
                    background-image: url(image/texture50.png);
                }

                .grass0 {
                    background-position: -60px -100px;
                }

                .grass1 {
                    background-position: -80px -100px;
                }

                .grass3 {
                    background-position: -80px -60px;
                }

                .grass-single{
                    background-position: -21px -14px;
                    background-size: 520%;
                }

                .dirt0 {
                    background-position: 0 -100px;
                }

                .dirt1 {
                    background-position: -20px -100px;
                }

                .dirt2 {
                    background-position: -40px -100px;
                }

                .water0 {
                    background-position: -180px -100px;
                }

                .water1 {
                    background-position: -200px -100px;
                }

                .water2 {
                    background-position: -220px -100px;
                }

                .water3 {
                    background-position: -200px -60px;
                }

                .ice0 {
                    background-position: -180px -220px;
                }

                .ice1 {
                    background-position: -200px -220px;
                }

                .ice2 {
                    background-position: -220px -220px;
                }

                .ice3 {
                    background-position: -200px -180px;
                }
                
                .ice-diagonal-up-right::before,
                .ice-diagonal-down-right::before{
                    background-position: -60px -220px;
                }
                
                .ice-full-up-left::before,
                .ice-full-down-left::before,
                .ice-full-up-right::before,
                .ice-full-down-right::before{
                    background-position: -60px -200px;
                }
                
                .ice-t-right::before,
                .ice-t-left::before,
                .ice-t-up::before,
                .ice-t-down::before{
                    background-position: -40px -220px;
                }
                
                .ice-cross::before{
                    background-position: -20px -220px;
                }

                .ice-horizontal::before,e5c16ba6-e1d9-4133-87d0-60207c7fd4ba
                .ice-vertical::before{
                    background-position: -20px -200px;
                }
                
                .ice-horizontal-right::before,
                .ice-horizontal-left::before,
                .ice-vertical-up::before,
                .ice-vertical-down::before{
                    background-position: -40px -200px;
                }
                
                .ice-vertical-right::before,
                .ice-vertical-left::before,
                .ice-horizontal-up::before,
                .ice-horizontal-down::before{
                    background-position: 0 -220px;
                }
                
                .ice-vertical-right-up::before,
                .ice-vertical-left-down::before,
                .ice-vertical-left-up::before,
                .ice-vertical-right-down::before,
                .ice-horizontal-up-left::before,
                .ice-horizontal-up-right::before,
                .ice-horizontal-down-left::before,
                .ice-horizontal-down-right::before{
                    background-position: -80px -200px;
                }
                
                .ice-bow-down-right::before,
                .ice-bow-down-left::before,
                .ice-bow-up-right::before,
                .ice-bow-up-left::before{
                    background-position: 0 -200px;
                }
                
                .ice-only::before{
                    background-position: -180px -140px;
                }
                
                .grass2,
                .wood,
                .wood-left,
                .wood-right {
                    background-position: -100px -100px;
                }

                .wood::before {
                    background-image: url(image/texture50.png);
                    background-position: -260px -180px;
                }

                .wood-right::before {
                    background-position: -280px -180px;
                }

                .wood-left::before {
                    background-position: -240px -180px;
                }

                .wood-up::before {
                    background-position: -260px -160px;
                }

                .wood-down::before {
                    background-position: -260px -200px;
                }

                .wood-right.wood-up:before {
                    background-position: -280px -160px;
                }

                .wood-right.wood-down::before {
                    background-position: -280px -200px;
                }

                .wood-left.wood-up:before {
                    background-position: -240px -160px;
                }

                .wood-left.wood-down::before {
                    background-position: -240px -200px;
                }

                .wood-up.wood-down::before {
                    background-position: -260px -220px;
                }

                .wood-left.wood-up.wood-down::before {
                    background-position: -240px -220px;
                }

                .wood-right.wood-up.wood-down::before {
                    background-position: -280px -220px;
                }

                .wood-right-down::before {
                    background-position: -260px -121px;
                }

                .wood-right-up::before {
                    background-position: -260px -140px;
                }

                .wood-left-up::before {
                    background-position: -280px -140px;
                }

                .wood-left-down::before {
                    background-position: -280px -121px;
                }

                .wood-single{
                    background-position: -240px -120px;
                }

                .ice-right::before {
                    background-position: -220px -180px;
                }

                .ice-left::before {
                    background-position: -180px -180px;
                }

                .ice-up::before {
                    background-position: -200px -161px;
                }

                .ice-down::before {
                    background-position: -200px -200px;
                }

                .ice-right.ice-up:before {
                    background-position: -220px -161px;
                }

                .ice-right.ice-down::before {
                    background-position: -220px -200px;
                }

                .ice-left.ice-up:before {
                    background-position: -180px -161px;
                }

                .ice-left.ice-down::before {
                    background-position: -180px -200px;
                }

                .ice-left.ice-up.ice-down::before {
                    background-position: -180px -220px;
                }

                .ice-right.ice-up.ice-down::before {
                    background-position: -220px -220px;
                }

                .ice-right-down::before {
                    background-position: -200px -120px;
                }

                .ice-right-up::before {
                    background-position: -200px -140px;
                }

                .ice-left-up::before {
                    background-position: -220px -140px;
                }

                .ice-left-down::before {
                    background-position: -220px -120px;
                }

                .ice-single{
                    background-position: -63px -56px;
                    background-size: 520%;
                }

                .water-right::before {
                    background-position: -220px -60px;
                }

                .water-left::before {
                    background-position: -180px -60px;
                }

                .water-up::before {
                    background-position: -200px -40px;
                }

                .water-down::before {
                    background-position: -200px -79px;
                }

                .water-right.water-up:before {
                    background-position: -220px -40px;
                }

                .water-right.water-down::before {
                    background-position: -220px -79px;
                }

                .water-left.water-up:before {
                    background-position: -180px -40px;
                }

                .water-left.water-down::before {
                    background-position: -180px -79px;
                }

                .water-left.water-up.water-down::before {
                    background-position: -180px -100px;
                }

                .water-right.water-up.water-down::before {
                    background-position: -220px -100px;
                }

                .water-right-down::before {
                    background-position: -200px 0;
                }

                .water-right-up::before {
                    background-position: -200px -20px;
                }

                .water-left-up::before {
                    background-position: -220px -20px;
                }

                .water-left-down::before {
                    background-position: -220px 0;
                }
                
                .water-diagonal-up-right::before,
                .water-diagonal-down-right::before{
                    background-position: -60px -180px;
                }
                
                .water-full-up-left::before,
                .water-full-down-left::before,
                .water-full-up-right::before,
                .water-full-down-right::before{
                    background-position: -60px -160px;
                }
                
                .water-t-right::before,
                .water-t-left::before,
                .water-t-up::before,
                .water-t-down::before{
                    background-position: -40px -180px;
                }
                
                .water-cross::before{
                    background-position: -20px -180px;
                }

                .water-horizontal::before,
                .water-vertical::before{
                    background-position: -20px -160px;
                }
                
                .water-horizontal-right::before,
                .water-horizontal-left::before,
                .water-vertical-up::before,
                .water-vertical-down::before{
                    background-position: -40px -160px;
                }
                
                .water-vertical-right::before,
                .water-vertical-left::before,
                .water-horizontal-up::before,
                .water-horizontal-down::before{
                    background-position: 0 -180px;
                }
                
                .water-vertical-right-up::before,
                .water-vertical-left-down::before,
                .water-vertical-left-up::before,
                .water-vertical-right-down::before,
                .water-horizontal-up-left::before,
                .water-horizontal-up-right::before,
                .water-horizontal-down-left::before,
                .water-horizontal-down-right::before{
                    background-position: -80px -160px;
                }
                
                .water-bow-down-right::before,
                .water-bow-down-left::before,
                .water-bow-up-right::before,
                .water-bow-up-left::before{
                    background-position: 0 -160px;
                }
                
                .water-only::before{
                    background-position: -180px 0;
                }
            
                .water-single{
                    background-position: -63px -14px;
                    background-size: 520%;
                }

                .dirt-right::before {
                    background-position: -40px -60px;
                }

                .dirt-left::before {
                    background-position: 0 -60px;
                }

                .dirt-up::before {
                    background-position: -20px -40px;
                }

                .dirt-down::before {
                    background-position: -20px -80px;
                }

                .dirt-right.dirt-up::before {
                    background-position: -40px -40px;
                }

                .dirt-right.dirt-down::before {
                    background-position: -40px -80px;
                }

                .dirt-left.dirt-up::before {
                    background-position: 0 -40px;
                }

                .dirt-left.dirt-down::before {
                    background-position: 0 -80px;
                }

                .dirt-left.dirt-up.dirt-down::before {
                    background-position: 0 -100px;
                }

                .dirt-right.dirt-up.dirt-down::before {
                    background-position: -40px -100px;
                }

                .dirt-right-down::before {
                    background-position: -20px 0;
                }

                .dirt-right-up::before {
                    background-position: -20px -20px;
                }

                .dirt-left-up::before {
                    background-position: -40px -20px;
                }

                .dirt-left-down::before {
                    background-position: -40px 0;
                }

                .dirt-diagonal-up-right::before,
                .dirt-diagonal-down-right::before{
                    background-position: -60px -140px;
                }
                
                .dirt-full-up-left::before,
                .dirt-full-down-left::before,
                .dirt-full-up-right::before,
                .dirt-full-down-right::before{
                    background-position: -60px -120px;
                }
                
                .dirt-t-right::before,
                .dirt-t-left::before,
                .dirt-t-up::before,
                .dirt-t-down::before{
                    background-position: -40px -140px;
                }
                
                .dirt-cross::before{
                    background-position: -20px -140px;
                }

                .dirt-horizontal::before,
                .dirt-vertical::before{
                    background-position: -20px -120px;
                }
                
                .dirt-horizontal-right::before,
                .dirt-horizontal-left::before,
                .dirt-vertical-up::before,
                .dirt-vertical-down::before{
                    background-position: -40px -120px;
                }
                
                .dirt-vertical-right::before,
                .dirt-vertical-left::before,
                .dirt-horizontal-up::before,
                .dirt-horizontal-down::before{
                    background-position: 0 -140px;
                }
                
                .dirt-vertical-right-up::before,
                .dirt-vertical-left-down::before,
                .dirt-vertical-left-up::before,
                .dirt-vertical-right-down::before,
                .dirt-horizontal-up-left::before,
                .dirt-horizontal-up-right::before,
                .dirt-horizontal-down-left::before,
                .dirt-horizontal-down-right::before{
                    background-position: -80px -120px;
                }
                
                .dirt-bow-down-right::before,
                .dirt-bow-down-left::before,
                .dirt-bow-up-right::before,
                .dirt-bow-up-left::before{
                    background-position: 0 -120px;
                }
                
                .dirt-only::before{
                    background-position: 0 0;
                }

                .dirt-single{
                    background-position: 0 -14px;
                    background-size: 507%;
                }

                .towerField::after {
                    content: " ";
                    background-image: url(image/buildings50.png);
                    background-position: -48px 0;
                    width: 20px;
                    height: 45px;
                    display: block;
                    position: relative;
                    bottom: 44px;
                    right: 1px;
                    z-index: 3;
                }

                .spawnField::after{
                    content: " ";
                    background-image: url(image/buildings50.png);
                    background-position: 0 -18px;
                    width: 25px;
                    height: 25px;
                    display: block;
                    position: relative;
                    bottom: 26px;
                    right: 3px;
                    z-index: 3;
                }

                .mine {
                    content: " ";
                    background-image: url(image/mine50.png);
                    background-position: 0 0;
                    width: 20px;
                    height: 20px;
                    display: block;
                    position: relative;
                    top: -20px;
                    left: 0;
                    z-index: 3;
                    cursor: pointer;
                    pointer-events: none;
                }
                
                /* Animation for the mine explosion. */
                .mine.explosion{
                    animation-name: explode;
                    animation-duration: 1s;
                    animation-timing-function: steps(11);
                    animation-iteration-count: 1;
                    -webkit-animation: explode 1s steps(11) 1;
                    animation: explode 1s steps(11) 1;
                }
                
                /* Specifying the background position in the mine.png for the animation. */
                @keyframes explode {
                    0% {
                        background-position: 0 0;
                    }
                    100% {
                        background-position: 220px 0;
                    }
                }

                @-webkit-keyframes explode {
                    0% {
                        background-position: 0 0;
                    }
                    100% {
                        background-position: 220px 0;
                    }
                }
            
                canvas{
                    display: none;
                    width: 20px;
                    height: 20px;
                }
            }
            
            /* Defines the field width and height as well as the background images for a gameboard with 40x40px fields. */
            @media only screen and (min-width: 601px) {
                #field {
                    background-image: url(image/texture.png);
                    width: 40px;
                    height: 40px;
                    float: left;
                }

                #field::before,
                .mine {
                    content: " ";
                    width: 40px;
                    height: 40px;
                    display: block;
                    position: relative;
                    bottom: 0;
                    right: 0;
                }
                
                .mine {
                    position:absolute;
                }
                
                .background-grass {
                    background-position: -200px -200px;
                }

                .background-grass::before {
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
                
                .ice-diagonal-up-right::before,
                .ice-diagonal-down-right::before {
                    background-position: -120px -440px;
                }
                
                .ice-full-up-left::before,
                .ice-full-down-left::before,
                .ice-full-up-right::before,
                .ice-full-down-right::before {
                    background-position: -120px -400px;
                }
                
                .ice-t-right::before,
                .ice-t-left::before,
                .ice-t-up::before,
                .ice-t-down::before {
                    background-position: -80px -440px;
                }
                
                .ice-cross::before {
                    background-position: -40px -440px;
                }

                .ice-horizontal::before,
                .ice-vertical::before {
                    background-position: -40px -400px;
                }
                
                .ice-horizontal-right::before,
                .ice-horizontal-left::before,
                .ice-vertical-up::before,
                .ice-vertical-down::before {
                    background-position: -80px -400px;
                }
                
                .ice-vertical-right::before,
                .ice-vertical-left::before,
                .ice-horizontal-up::before,
                .ice-horizontal-down::before {
                    background-position: 0 -440px;
                }
                
                .ice-vertical-right-up::before,
                .ice-vertical-left-down::before,
                .ice-vertical-left-up::before,
                .ice-vertical-right-down::before,
                .ice-horizontal-up-left::before,
                .ice-horizontal-up-right::before,
                .ice-horizontal-down-left::before,
                .ice-horizontal-down-right::before {
                    background-position: -160px -400px;
                }
                
                .ice-bow-down-right::before,
                .ice-bow-down-left::before,
                .ice-bow-up-right::before,
                .ice-bow-up-left::before {
                    background-position: 0 -400px;
                }
                
                .ice-only::before {
                    background-position: -360px -280px;
                }
                
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
                
                .water-diagonal-up-right::before,
                .water-diagonal-down-right::before{
                    background-position: -120px -360px;
                }
                
                .water-full-up-left::before,
                .water-full-down-left::before,
                .water-full-up-right::before,
                .water-full-down-right::before{
                    background-position: -120px -320px;
                }
                
                .water-t-right::before,
                .water-t-left::before,
                .water-t-up::before,
                .water-t-down::before{
                    background-position: -80px -360px;
                }
                
                .water-cross::before{
                    background-position: -40px -360px;
                }

                .water-horizontal::before,
                .water-vertical::before{
                    background-position: -40px -320px;
                }
                
                .water-horizontal-right::before,
                .water-horizontal-left::before,
                .water-vertical-up::before,
                .water-vertical-down::before{
                    background-position: -80px -320px;
                }
                
                .water-vertical-right::before,
                .water-vertical-left::before,
                .water-horizontal-up::before,
                .water-horizontal-down::before{
                    background-position: 0 -360px;
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
                
                .water-bow-down-right::before,
                .water-bow-down-left::before,
                .water-bow-up-right::before,
                .water-bow-up-left::before{
                    background-position: 0 -320px;
                }
                
                .water-only::before{
                    background-position: -360px 0;
                }
            
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

                .dirt-diagonal-up-right::before,
                .dirt-diagonal-down-right::before{
                    background-position: -120px -280px;
                }
                
                .dirt-full-up-left::before,
                .dirt-full-down-left::before,
                .dirt-full-up-right::before,
                .dirt-full-down-right::before{
                    background-position: -120px -240px;
                }
                
                .dirt-t-right::before,
                .dirt-t-left::before,
                .dirt-t-up::before,
                .dirt-t-down::before{
                    background-position: -80px -280px;
                }
                
                .dirt-cross::before{
                    background-position: -40px -280px;
                }

                .dirt-horizontal::before,
                .dirt-vertical::before{
                    background-position: -40px -240px;
                }
                
                .dirt-horizontal-right::before,
                .dirt-horizontal-left::before,
                .dirt-vertical-up::before,
                .dirt-vertical-down::before{
                    background-position: -80px -240px;
                }
                
                .dirt-vertical-right::before,
                .dirt-vertical-left::before,
                .dirt-horizontal-up::before,
                .dirt-horizontal-down::before{
                    background-position: 0 -280px;
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
                
                .dirt-bow-down-right::before,
                .dirt-bow-down-left::before,
                .dirt-bow-up-right::before,
                .dirt-bow-up-left::before{
                    background-position: 0 -240px;
                }
                
                .dirt-only::before{
                    background-position: 0 0;
                }

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

                .mine {
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
                
                /* Animation for the mine explosion. */
                .mine.explosion{
                    animation-name: explode;
                    animation-duration: 1s;
                    animation-timing-function: steps(11);
                    animation-iteration-count: 1;
                    -webkit-animation: explode 1s steps(11) 1;
                    animation: explode 1s steps(11) 1;
                }
                
                /* Specifying the background position in the mine.png for the animation. */
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
            
                canvas{
                    display: none;
                    width: 40px;
                    height: 40px;
                }
            }

            .no_background {
                background-image: none !important;
            }

            .ice-diagonal-down-right::before{
                transform: rotate(90deg);
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

            .ice-t-down::before{
                transform: rotate(90deg);
            }

            .ice-t-up::before{
                transform: rotate(-90deg);

            }

            .ice-t-left::before{
                transform: rotate(180deg);
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

            .ice-vertical-right-down::before{
                transform: scaleY(-1);
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

            .water-diagonal-down-right::before{
                transform: rotate(90deg);
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

            .water-t-down::before{
                transform: rotate(90deg);
            }

            .water-t-up::before{
                transform: rotate(-90deg);

            }

            .water-t-left::before{
                transform: rotate(180deg);
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

            .water-vertical-right-down::before{
                transform: scaleY(-1);
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

            .dirt-diagonal-down-right::before{
                transform: rotate(90deg);
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

            .dirt-t-down::before{
               transform: rotate(90deg);
            }

            .dirt-t-up::before{
                transform: rotate(-90deg);

            }

            .dirt-t-left::before{
                transform: rotate(180deg);
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

            .dirt-vertical-right-down::before{
                transform: scaleY(-1);
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
        </style>
        <div id="field" class$="[[class]]">
            <div id="mineField" class$="[[_mineString]]">
            </div>
        </div>
        
        <canvas id="cnavasBuffer"></canvas>     

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
            },

            mine: {
                type: Boolean,
                value: false
            },

            _mineString: {
                computed: "_isMine(mine)"
            }
        };
    }

    /**
     * Computes the string value for whether the field contains a mine or not.
     * @param mine The given value.
     * @returns {string} The computed string.
     * @private
     */
    _isMine(mine) {
        return (mine ? "mine" : "");
    }

    playExplosion() {
        this.$.mineField.classList.add("explosion");
        window.Core.timeouts.add(() => {
            this.$.mineField.classList.remove("explosion");
        }, 1000);
    }

    /**
     * Computes the image to be drawn for the current x and y coordinate for the current class on saving the level.
     * @param x The x coordinate on the board.
     * @param y The y coordinate on the board.
     * @returns {Promise<{img: HTMLImageElement, x, y}|{img, x, y}>} The drawn image together with its coordinates.
     */
    async computeImg(x, y) {
        if(this.imgBuffer.has(this.class)){
            return {x: x, y: y, img: this.imgBuffer.get(this.class)};
        }
        let canvas = this.$.cnavasBuffer;
        let context = canvas.getContext('2d');
        const image = new Image();
        image.src = '/critter_components/critter-gameboard/image/texture.png';

        if(this.class.includes("tower")){
            context.drawImage(image, 160, 120, 40, 40, 0, 0, 40, 90);
            const buildings = new Image();
            buildings.src = '/critter_components/critter-gameboard/image/buildings.png';
            context.drawImage(buildings, 100, 0, 40, 90, 0, 0, 40, 90);
            let img = new Image(40, 90);
            img.src = canvas.toDataURL("image/png").replace("image/png", "image/octet-stream");
            return {x: x, y: y, img: img};
        }

        if(this.class.includes("spawn")){
            context.drawImage(image, 160, 120, 50, 50, 0, 0, 50, 50);
            const buildings = new Image();
            buildings.src = '/critter_components/critter-gameboard/image/buildings.png';
            context.drawImage(buildings, 0, 40, 50, 50, 0, 0, 50, 50);
            let img = new Image(50, 50);
            img.src = canvas.toDataURL("image/png").replace("image/png", "image/octet-stream");
            return {x: x, y: y, img: img};
        }

        if (this.class.includes("wood")) {
            let coordinates = this._getWoodCoordinates(this.class);
            context.drawImage(image, 160, 120, 40, 40, 0, 0, 40, 40);
            context.drawImage(image, coordinates[0], coordinates[1], 40, 40, 0, 0, 40, 40);
        } else if (this.class.includes("dirt") || this.class.includes("water")
            || this.class.includes("ice")) {

            let coordinates;

            if (this.class.includes("dirt")) {
                coordinates = this._getDirtCoordinates(this.class);
            } else if (this.class.includes("water")) {
                coordinates = this._getWaterCoordinates(this.class);
            } else {
                coordinates = this._getIceCoordinates(this.class);
            }

            context.drawImage(image, 160, 120, 40, 40, 0, 0, 40, 40);

            if (coordinates[2] !== 0) {
                if (coordinates[2] === 90) {
                    if (this.class.includes("horizontal-up-right")) {
                        context.setTransform(-1, 0, 0, 1, 0, 0);
                    } else {
                        context.translate(40, 0);
                    }
                    context.rotate(90 * Math.PI / 180);
                    context.drawImage(image, coordinates[0], coordinates[1], 40, 40, 0, 0, 40, 40);
                } else if (coordinates[2] === -90) {
                    if (this.class.includes("horizontal-down-left")) {
                        context.setTransform(-1, 0, 0, 1, 0, 0);
                        context.translate(-40, -40);
                    } else {
                        context.translate(0, 40);
                    }
                    context.rotate(-90 * Math.PI / 180);
                    context.drawImage(image, coordinates[0], coordinates[1], 40, 40, 0, 0, 40, 40);
                } else {
                    context.translate(40, 40);
                    context.rotate(180 * Math.PI / 180);
                    context.drawImage(image, coordinates[0], coordinates[1], 40, 40, 0, 0, 40, 40);
                }
            } else {
                if (this.class.includes("vertical-left-up")) {
                    context.setTransform(-1, 0, 0, 1, 0, 0);
                    context.translate(-40, 0);
                } else if (this.class.includes("vertical-right-down")) {
                    context.setTransform(1, 0, 0, -1, 0, 0);
                    context.translate(0, -40);
                }
                context.drawImage(image, coordinates[0], coordinates[1], 40, 40, 0, 0, 40, 40);
            }
        } else if (this.class.includes("grass")) {
            let coordinates = this._getGrassCoordinates(this.class);
            context.drawImage(image, coordinates[0], coordinates[1], 40, 40, 0, 0, 40, 40);
        } else {
            context.drawImage(image, 160, 120, 40, 40, 0, 0, 40, 40);
        }

        let img = new Image(40, 40);
        img.src = canvas.toDataURL("image/png").replace("image/png", "image/octet-stream");
        this.imgBuffer.set(this.class, img);

        return {x: x, y: y, img: img};
    }

    /**
     * Returns the background coordinates of the given wood class string according to the styles specifications above.
     * @param classString The string containing the class information.
     * @returns {number[]} The background coordinates.
     * @private
     */
    _getWoodCoordinates(classString) {
        let coordinates;

        if (classString === "wood wood-single") {
            coordinates = [480, 240];
        } else if (classString === "wood wood-left-down") {
            coordinates = [560, 241];
        } else if (classString === "wood wood-left-up") {
            coordinates = [560, 280];
        } else if (classString === "wood wood-right-up") {
            coordinates = [520, 280];
        } else if (classString === "wood wood-right-down") {
            coordinates = [520, 241];
        } else if (classString === "wood wood-right wood-up wood-down") {
            coordinates = [560, 440];
        } else if (classString === "wood wood-left wood-up wood-down") {
            coordinates = [480, 440];
        } else if (classString === "wood wood-up wood-down") {
            coordinates = [520, 440];
        } else if (classString === "wood wood-left wood-down") {
            coordinates = [480, 400];
        } else if (classString === "wood wood-left wood-up") {
            coordinates = [480, 320];
        } else if (classString === "wood wood-right wood-down") {
            coordinates = [560, 400];
        } else if (classString === "wood wood-right wood-up") {
            coordinates = [560, 320];
        } else if (classString === "wood wood-down") {
            coordinates = [520, 400];
        } else if (classString === "wood wood-up") {
            coordinates = [520, 320];
        } else if (classString === "wood wood-left") {
            coordinates = [480, 360];
        } else if (classString === "wood wood-right") {
            coordinates = [560, 360];
        } else {
            coordinates = [520, 360];
        }

        return coordinates;
    }

    /**
     * Returns the background coordinates of the given dirt class string and the rotation of the image according to the
     * styles specifications above.
     * @param classString The string containing the class information.
     * @returns {number[]} The background coordinates and rotation.
     * @private
     */
    _getDirtCoordinates(classString) {
        let coordinates;

        if (classString.includes("dirt-only")) {
            coordinates = [0, 0, 0];
        } else if (classString.includes("dirt-bow")) {
            if (classString.includes("dirt-bow-down-left")) {
                coordinates = [0, 240, 90];
            } else if (classString.includes("dirt-bow-up-right")) {
                coordinates = [0, 240, -90];
            } else if (classString.includes("dirt-bow-up-left")) {
                coordinates = [0, 240, 180];
            } else {
                coordinates = [0, 240, 0];
            }
        } else if (classString.includes("dirt-horizontal-up-")
            || classString.includes("dirt-horizontal-down-")
            || classString.includes("dirt-vertical-right-")
            || classString.includes("dirt-vertical-left-")) {
            if (classString.includes("dirt-horizontal-up-left")
                || classString.includes("dirt-horizontal-down-left")) {
                coordinates = [160, 240, -90];
            } else if (classString.includes("dirt-horizontal-up-right")
                || classString.includes("dirt-horizontal-down-right")) {
                coordinates = [160, 240, 90];
            } else if (classString.includes("dirt-vertical-left-down")) {
                coordinates = [160, 240, 180];
            } else {
                coordinates = [160, 240, 0];
            }
        } else if (classString.includes("dirt-vertical-")
            || classString.includes("dirt-horizontal-")) {
            if (classString.includes("dirt-horizontal-up")) {
                coordinates = [0, 280, -90];
            } else if (classString.includes("dirt-horizontal-down")) {
                coordinates = [0, 280, 90];
            } else if (classString.includes("dirt-horizontal-left")) {
                coordinates = [80, 240, 180];
            } else if (classString.includes("dirt-horizontal-right")) {
                coordinates = [80, 240, 0];
            } else if (classString.includes("dirt-vertical-left")) {
                coordinates = [0, 280, 180];
            } else if (classString.includes("dirt-vertical-up")) {
                coordinates = [80, 240, -90];
            } else if (classString.includes("dirt-vertical-down")) {
                coordinates = [80, 240, 90];
            } else {
                coordinates = [0, 280, 0];
            }
        } else if (classString.includes("dirt-horizontal") || classString.includes("dirt-vertical")) {
            if (classString.includes("dirt-vertical")) {
                coordinates = [40, 240, 90];
            } else {
                coordinates = [40, 240, 0];
            }
        } else if (classString.includes("dirt-cross")) {
            coordinates = [40, 280, 0];
        } else if (classString.includes("dirt-t")) {
            if (classString.includes("dirt-t-down")) {
                coordinates = [80, 280, 90];
            } else if (classString.includes("dirt-t-up")) {
                coordinates = [80, 280, -90];
            } else if (classString.includes("dirt-t-left")) {
                coordinates = [80, 280, 180];
            } else {
                coordinates = [80, 280, 0];
            }
        } else if (classString.includes("dirt-full")) {
            if (classString.includes("dirt-full-up-left")) {
                coordinates = [120, 240, 90];
            } else if (classString.includes("dirt-full-up-right")) {
                coordinates = [120, 240, 180];
            } else if (classString.includes("dirt-full-down-right")) {
                coordinates = [120, 240, -90];
            } else {
                coordinates = [120, 240, 0];
            }
        } else if (classString.includes("dirt-diagonal")) {
            if (classString.includes("dirt-diagonal-down-right")) {
                coordinates = [120, 280, 90];
            } else {
                coordinates = [120, 280, 0];
            }
        } else if (classString.includes("dirt-left-down")) {
            coordinates = [80, 0, 0];
        } else if (classString.includes("dirt-left-up")) {
            coordinates = [80, 40, 0];
        } else if (classString.includes("dirt-right-up")) {
            coordinates = [40, 40, 0];
        } else if (classString.includes("dirt-right-down")) {
            coordinates = [40, 0, 0];
        } else if (classString.includes("dirt-right") && classString.includes("dirt-down")
            && classString.includes("dirt-up")) {
            coordinates = [80, 200, 0];
        } else if (classString.includes("dirt-left") && classString.includes("dirt-down")
            && classString.includes("dirt-up")) {
            coordinates = [0, 200, 0];
        } else if (classString.includes("dirt-left") && classString.includes("dirt-down")) {
            coordinates = [0, 159, 0];
        } else if (classString.includes("dirt-left") && classString.includes("dirt-up")) {
            coordinates = [0, 80, 0];
        } else if (classString.includes("dirt-right") && classString.includes("dirt-down")) {
            coordinates = [80, 159, 0];
        } else if (classString.includes("dirt-right") && classString.includes("dirt-up")) {
            coordinates = [80, 80, 0];
        } else if (classString.includes("dirt-down")) {
            coordinates = [40, 159, 0];
        } else if (classString.includes("dirt-up")) {
            coordinates = [40, 80, 0];
        } else if (classString.includes("dirt-left")) {
            coordinates = [0, 120, 0];
        } else if (classString.includes("dirt-right")) {
            coordinates = [80, 120, 0];
        } else if (classString.includes("dirt2")) {
            coordinates = [80, 200, 0];
        } else if (classString.includes("dirt1")) {
            coordinates = [40, 200, 0];
        } else {
            coordinates = [0, 200, 0];
        }

        return coordinates;
    }

    /**
     * Returns the background coordinates of the given water class string and the rotation of the image according to the
     * styles specifications above.
     * @param classString The string containing the class information.
     * @returns {number[]} The background coordinates and rotation.
     * @private
     */
    _getWaterCoordinates(classString) {
        let coordinates;

        if (classString.includes("water-only")) {
            coordinates = [360, 0, 0];
        } else if (classString.includes("water-bow")) {
            if (classString.includes("water-bow-up-left")) {
                coordinates = [0, 320, 180];
            } else if (classString.includes("water-bow-up-right")) {
                coordinates = [0, 320, -90];
            } else if (classString.includes("water-bow-down-left")) {
                coordinates = [0, 320, 90];
            } else {
                coordinates = [0, 320, 0];
            }
        } else if (classString.includes("water-vertical-right-")
            || classString.includes("water-vertical-left-")
            || classString.includes("water-horizontal-up-")
            || classString.includes("water-horizontal-down-")) {
            if (classString.includes("water-vertical-left-down")) {
                coordinates = [160, 320, 180];
            } else if (classString.includes("water-horizontal-down-right")
                || classString.includes("water-horizontal-up-right")) {
                coordinates = [160, 320, 90];
            } else if (classString.includes("water-horizontal-down-left")
                || classString.includes("water-horizontal-up-right")) {
                coordinates = [160, 320, -90];
            } else {
                coordinates = [160, 320, 0];
            }
        } else if (classString.includes("water-vertical-right")
            || classString.includes("water-vertical-left")
            || classString.includes("water-horizontal-up")
            || classString.includes("water-horizontal-down")) {
            coordinates = [0, 360, 0];
        } else if (classString.includes("water-horizontal-") || classString.includes("water-vertical-")) {
            if (classString.includes("water-vertical-down")
                || classString.includes("water-horizontal-down")) {
                coordinates = [80, 320, 90];
            } else if (classString.includes("water-vertical-up")
                || classString.includes("water-horizontal-up")) {
                coordinates = [80, 320, -90];
            } else if (classString.includes("water-vertical-left")
                || classString.includes("water-horizontal-left")) {
                coordinates = [80, 320, 180];
            } else if (classString.includes("water-horizontal-left")) {
                coordinates = [80, 320, 180];
            } else {
                coordinates = [80, 320, 0];
            }
        } else if (classString.includes("water-horizontal") || classString.includes("water-vertical")) {
            if (classString.includes("water-vertical")) {
                coordinates = [40, 320, 90];
            } else {
                coordinates = [40, 320, 0];
            }
        } else if (classString.includes("water-cross")) {
            coordinates = [40, 360, 0];
        } else if (classString.includes("water-t")) {
            if (classString.includes("water-t-up")) {
                coordinates = [80, 360, -90];
            } else if (classString.includes("water-t-down")) {
                coordinates = [80, 360, 90];
            } else if (classString.includes("water-t-left")) {
                coordinates = [80, 360, 180];
            } else {
                coordinates = [80, 360, 0];
            }
        } else if (classString.includes("water-full")) {
            if (classString.includes("water-full-down-right")) {
                coordinates = [120, 320, -90];
            } else if (classString.includes("water-full-up-right")) {
                coordinates = [120, 320, 180];
            } else if (classString.includes("water-full-up-left")) {
                coordinates = [120, 320, 90];
            } else {
                coordinates = [120, 320, 0];
            }
        } else if (classString.includes("water-diagonal")) {
            if (classString.includes("water-diagonal-down-right")) {
                coordinates = [120, 360, 90];
            } else {
                coordinates = [120, 360, 0];
            }
        } else if (classString.includes("water-left-down")) {
            coordinates = [440, 0, 0];
        } else if (classString.includes("water-left-up")) {
            coordinates = [440, 39, 0];
        } else if (classString.includes("water-right-up")) {
            coordinates = [400, 39, 0];
        } else if (classString.includes("water-right-down")) {
            coordinates = [400, 0, 0];
        } else if ((classString.includes("water-down") && classString.includes("water-right")
            && classString.includes("water-up")) || classString.includes("water2")) {
            coordinates = [440, 200, 0];
        } else if ((classString.includes("water-down") && classString.includes("water-left")
            && classString.includes("water-up")) || classString.includes("water0")) {
            coordinates = [360, 200, 0];
        } else if (classString.includes("water-down") && classString.includes("water-left")) {
            coordinates = [360, 158, 0];
        } else if (classString.includes("water-left") && classString.includes("water-up")) {
            coordinates = [360, 80, 0];
        } else if (classString.includes("water-down") && classString.includes("water-right")) {
            coordinates = [440, 158, 0];
        } else if (classString.includes("water-up") && classString.includes("water-right")) {
            coordinates = [440, 80, 0];
        } else if (classString.includes("water-down")) {
            coordinates = [400, 158, 0];
        } else if (classString.includes("water-up")) {
            coordinates = [400, 80, 0];
        } else if (classString.includes("water-left")) {
            coordinates = [360, 120, 0];
        } else if (classString.includes("water-right")) {
            coordinates = [440, 120, 0];
        } else if (classString.includes("water1")) {
            coordinates = [400, 200, 0];
        } else {
            coordinates = [400, 120, 0];
        }

        return coordinates;
    }

    /**
     * Returns the background coordinates of the given ice class string and the rotation of the image according to the
     * styles specifications above.
     * @param classString The string containing the class information.
     * @returns {number[]} The background coordinates and rotation.
     * @private
     */
    _getIceCoordinates(classString) {
        let coordinates;

        if (classString.includes("ice-only")) {
            coordinates = [360, 280, 0];
        } else if (classString.includes("ice-bow")) {
            if (classString.includes("ice-bow-up-left")) {
                coordinates = [0, 400, 180];
            } else if (classString.includes("ice-bow-up-right")) {
                coordinates = [0, 400, -90];
            } else if (classString.includes("ice-bow-down-left")) {
                coordinates = [0, 400, 90];
            } else {
                coordinates = [0, 400, 0];
            }
        } else if (classString.includes("ice-vertical-right-")
            || classString.includes("ice-vertical-left-")) {
            if (classString.includes("ice-vertical-left-down")) {
                coordinates = [160, 400, 180];
            } else {
                coordinates = [160, 400, 0];
            }
        } else if (classString.includes("ice-horizontal-up-")
            || classString.includes("ice-horizontal-down-")) {
            if (classString.includes("left")) {
                coordinates = [160, 400, -90];
            } else {
                coordinates = [160, 400, 90];
            }
        } else if (classString.includes("ice-vertical-")) {
            if (classString.includes("right")) {
                coordinates = [0, 440, 0];
            } else if (classString.includes("left")) {
                coordinates = [0, 440, 180];
            } else if (classString.includes("up")) {
                coordinates = [80, 400, -90];
            } else {
                coordinates = [80, 400, 90];
            }
        } else if (classString.includes("ice-horizontal-")) {
            if (classString.includes("right")) {
                coordinates = [80, 400, 0];
            } else if (classString.includes("left")) {
                coordinates = [80, 400, 180];
            } else if (classString.includes("up")) {
                coordinates = [0, 440, -90];
            } else {
                coordinates = [0, 440, 90];
            }
        } else if (classString.includes("ice-vertical")) {
            coordinates = [40, 400, 90];
        } else if (classString.includes("ice-horizontal")) {
            coordinates = [40, 400, 0];
        } else if (classString.includes("ice-cross")) {
            coordinates = [40, 440, 0];
        } else if (classString.includes("ice-t")) {
            if (classString.includes("down")) {
                coordinates = [80, 440, 90];
            } else if (classString.includes("up")) {
                coordinates = [80, 440, -90];
            } else if (classString.includes("left")) {
                coordinates = [80, 440, 180];
            } else {
                coordinates = [80, 440, 0];
            }
        } else if (classString.includes("ice-full")) {
            if (classString.includes("up-left")) {
                coordinates = [120, 400, 90];
            } else if (classString.includes("up-right")) {
                coordinates = [120, 400, 180];
            } else if (classString.includes("down-right")) {
                coordinates = [120, 400, -90];
            } else {
                coordinates = [120, 400, 0];
            }
        } else if (classString.includes("ice-diagonal")) {
            if (classString.includes("down-right")) {
                coordinates = [120, 440, 90];
            } else {
                coordinates = [120, 440, 0];
            }
        } else if (classString.includes("ice-left-down")) {
            coordinates = [440, 240, 0];
        } else if (classString.includes("ice-left-up")) {
            coordinates = [440, 280, 0];
        } else if (classString.includes("ice-right-up")) {
            coordinates = [400, 280, 0];
        } else if (classString.includes("ice-right-down")) {
            coordinates = [440, 439, 0];
        } else if ((classString.includes("ice-right") && classString.includes("ice-up")
            && classString.includes("ice-down")) || classString.includes("ice2")) {
            coordinates = [440, 440, 0];
        } else if ((classString.includes("ice-left") && classString.includes("ice-up")
            && classString.includes("ice-down")) || classString.includes("ice0")) {
            coordinates = [360, 440, 0];
        } else if (classString.includes("ice-left") && classString.includes("ice-down")) {
            coordinates = [360, 400, 0];
        } else if (classString.includes("ice-left") && classString.includes("ice-up")) {
            coordinates = [360, 320, 0];
        } else if (classString.includes("ice-right") && classString.includes("ice-down")) {
            coordinates = [440, 400, 0];
        } else if (classString.includes("ice-right") && classString.includes("ice-up")) {
            coordinates = [440, 320, 0];
        } else if (classString.includes("ice-down")) {
            coordinates = [400, 400, 0];
        } else if (classString.includes("ice-up")) {
            coordinates = [400, 320, 0];
        } else if (classString.includes("ice-left")) {
            coordinates = [360, 360, 0];
        } else if (classString.includes("ice-right")) {
            coordinates = [440, 360, 0];
        } else if (classString.includes("ice1")) {
            coordinates = [400, 440, 0];
        } else {
            coordinates = [400, 360, 0];
        }

        return coordinates;
    }

    /**
     * Returns the background coordinates of the given grass class string according to the styles specification above.
     * @param classString The string containing the class information.
     * @returns {number[]} The background coordinates.
     * @private
     */
    _getGrassCoordinates(classString) {
        let coordinates;

        if (classString === "grass0") {
            coordinates = [120, 200];
        } else if (classString === "grass1") {
            coordinates = [160, 200];
        } else if (classString === "grass2") {
            coordinates = [200, 200];
        } else {
            coordinates = [160, 120];
        }

        return coordinates;
    }

}

window.customElements.define(CritterGameboardField.is, CritterGameboardField);
