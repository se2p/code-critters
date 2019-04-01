import {html, PolymerElement} from '/lib/@polymer/polymer/polymer-element.js';
import { afterNextRender } from '/lib/@polymer/polymer/lib/utils/render-status.js';
import {Level} from '../critter-level-mixin/critter-level-mixin.js';

import '../critter-critter/critter-simple-critter.js';


/*
# critter-background

A Simple Button

## Example
```html
<critter-background></critter-background>
```

@demo
*/


class CritterBackground extends Level(PolymerElement) {
    static get template() {
        return html`
    <style>
    :host {
        position: fixed;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
    }
    
    #background_container_right{
        position: absolute;
        right: 0;
        top: 0;
    }
    
    #background_container_left,
    #background_container_right{
        width: 100%;
        height: 100%;
        overflow: hidden;
    }
    
    .board_field{
        background-image: url(image/texture.png);
        width: 40px;
        height: 40px;
        float: left;
    }
    
    .grass2{
         background-position: -200px -200px;
    }
    .grass3{
        background-position: -160px -120px;
    }
    
    .towerField::after {
        content: " ";
        background-image: url(image/buildings.png);
        background-position: -96px 0;
        width: 40px;
        height: 90px;
        display: block;
        position: relative;
        bottom: 47px;
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
        bottom: 11px;
        right: 5px;
        z-index: 3;
    }
     
    </style>
     <div id="background_container_left">
         <div id="background_inner_container_left">
         </div>
     </div>
     <div id="background_container_right">
     </div>
    `;
    }

    static get properties() {

        return {

            mainContainerWidth: {
                type: Number,
                value: 900,
                observer: 'renderBackground'
            },

            tower: {
                type: Object,
                value: {}
            },

            spawn: {
                type: Object,
                value: {
                    x: 2,
                    y: 3
                }
            },

            _critterList: {
                type: Array,
                value: []
            },

            _hairColors: {
                type: Array,
                value: ["blond", "black", "red", "gray", "brown"]
            },

            _bodyColors: {
                type: Array,
                value: ["red", "blue", "cyan", "green", "orange", "yellow", "white", "black", "pink"]
            },

            _map: {
                type: Array,
                value: []
            },

            _interval : {

            }

        };
    }

    static get is() {
        return 'critter-background';
    }

    static get importMeta() { return import.meta; }

    static get urlTemplate() {
        let string = new URL('.', import.meta.url).toString();
        return string;
    }

    connectedCallback() {
        super.connectedCallback();

        afterNextRender(this, function () {
            window.addEventListener("resize", this.renderBackground.bind(this));
            this.renderBackground();
        });
    }

    detach() {
        window.removeEventListener("resize", this.renderBackground.bind(this));
    }

    renderBackground() {
        this.removeCritters();
        let width = (window.innerWidth - this.mainContainerWidth) / 2;
        let height = window.innerHeight;
        let countWidth = Math.ceil(width / 40);
        let countHeight = Math.ceil(height / 40);
        let container_left = this.$.background_inner_container_left;
        container_left.innerHTML = "";
        container_left.innerHTML = "";
        this.$.background_container_left.style.width = width + "px";
        this.$.background_container_right.style.width = width + "px";
        container_left.style.width = (countWidth * 40) + "px";
        for (let i = 0; i < countHeight; i++) {
            let row = [];
            for (let j = 0; j < countWidth; j++) {
                let field = document.createElement("div");
                field.classList.add("bg_field_" + j + "_" + i);
                field.classList.add("board_field");
                field.classList.add("grass" + this._randomNumber(2, 3));
                container_left.append(field);
                row.push(0);
            }
            this._map.push(row);
        }
        this._map[3][2] = 1;
        this._map[(countWidth-3)][(countHeight-3)] = 1;
        this.tower.x = countWidth-3;
        this.tower.y = countHeight-3;

        let spawn = this.shadowRoot.querySelector(".bg_field_2_3");
        let tower = this.shadowRoot.querySelector(".bg_field_" + (countWidth-3) + "_" +
            (countHeight-3));

        tower.classList.add("towerField");
        spawn.classList.add("spawnField");

        let container_right = container_left.cloneNode(true);
        container_right.id = "background_inner_container_right";
        this.$.background_container_right.prepend(container_right);

        this.startCritters();
    }

    startCritters() {
        let flag = false;
        if(this._interval) {
            clearInterval(this._interval);
        }
        this.createCritter(flag);
        this._interval = setInterval(() => {
            this.createCritter(flag = !flag);
        }, 6000);
    }

    computePath(steps = 0) {
        let tempArray = JSON.parse(JSON.stringify(this._map));
        let path = [this.spawn];
        let source = JSON.parse(JSON.stringify(this.spawn));
        let possibilities = this._findPossibility(tempArray, source, this.tower);
        while (possibilities.length !== 1 || !(possibilities[0].x === this.tower.x
            && possibilities[0].y === this.tower.y)) {
            if (possibilities.length > 0) {
                source = possibilities[this._randomNumber(0, possibilities.length - 1)];
                path.push(source);
                tempArray[source.y][source.x] = 1;
            } else if (possibilities.length === 0) {
                path.pop();
                if (path.length === 0) {
                        console.log((steps + 1) + "steps were needed!");
                        if(steps > 3) {
                            return;
                        }
                        return this.computePath(steps + 1);
                }
                source = path[path.length - 1];
            }
            possibilities = this._findPossibility(tempArray, source, this.tower);
        }
        path.push(this.tower);
        return path;
    }

    removeCritters() {
        this._critterList.forEach((critter) => {
            this._critterList.splice( this._critterList.indexOf(critter), 1 );
            critter.parentNode.removeChild(critter);
            critter.detach();
        })
    }

    createCritter(flag) {
        let critter = document.createElement("critter-simple-critter");
        critter.human = Boolean(this._randomNumber(0, 1));
        critter.hair = this._hairColors[this._randomNumber(0, this._hairColors.length - 1)];
        critter.color = this._bodyColors[this._randomNumber(0, this._bodyColors.length - 1)];
        critter.path = this.computePath();
        this._critterList.push(critter);
        critter.addEventListener("_critterFinished", () => {
            this._critterList.splice( this._critterList.indexOf(critter), 1 );
            critter.parentNode.removeChild(critter);
        });
        if(flag){
            this.$.background_container_right.append(critter);
        } else {
            this.$.background_container_left.append(critter);
        }
        critter.startAnimation();
    }

}

window.customElements.define(CritterBackground.is, CritterBackground);
