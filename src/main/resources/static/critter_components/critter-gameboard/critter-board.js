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
import { afterNextRender } from '/lib/@polymer/polymer/lib/utils/render-status.js';
import {Level} from '../critter-level-mixin/critter-level-mixin.js';
import './critter-board-field.js';
import './critter-board-hover-field.js';
import {Toaster} from '../critter-toaster/critter-toaster-mixin.js';
import {
    _isFieldWithBuilding,
    _computeClassNames,
    _isWalkableTerrainOfBaseLevel
} from "../common.js";

/*
# critter-gameboard

Renders the gameboard and its textures.

## Example
```html
<critter-gameboard level="[Array with texture code]"></critter-gameboard>
```

@demo
*/

class CritterGameboard extends Toaster(Level(PolymerElement)) {
    static get template() {
        return html`
        <style>
            @media only screen and (max-width: 600px) {
                :host {
                    display: block;
                    --board-width: 20px;
                    --board-height: 20px;
                    --show-grid: hidden;
                    width: calc(var(--board-width) + 12px);
                }

                #verticalGrid {
                    margin-right: 2px;
                    width: 25px;
                    min-height: 20px;
                    visibility: var(--show-grid);
                }
            
                #verticalGrid div {
                    height: 20px;
                    display: table;
                }

                #horizontalGrid {
                    margin-left: 12px;
                    margin-top: 2px;
                    height: 10px;
                    visibility: var(--show-grid);
                }
            
                #horizontalGrid div {
                    float: left;
                    width: 20px;
                    text-align: center;
                }
            
                #board {
                    display: inline-block;
                    position: relative;
                    top: calc(var(--board-height) * -1 - 12px);
                    left: 21px;
                    width: var(--board-width);
                    height: 0;
                }

                #overlay {
                    display: inline-block;
                    position: relative;
                    float: left;
                    bottom: calc(var(--board-height) + 15px);
                    right: -21px;
                    height: 0;
                    width: var(--board-width);
                }
            }
            
            @media only screen and (min-width: 601px) {
                :host {
                    display: block;
                    --board-width: 40px;
                    --board-height: 40px;
                    --show-grid: hidden;
                    width: calc(var(--board-width) + 25px);
                }

                #verticalGrid {
                    margin-right: 5px;
                    width: 16px;
                    min-height: 40px;
                    visibility: var(--show-grid);
                }
            
                #verticalGrid div {
                    height: 40px;
                    display: table;
                }

                #horizontalGrid {
                    margin-left: 21px;
                    margin-top: 5px;
                    height: 21px;
                    visibility: var(--show-grid);
                }
            
                #horizontalGrid div {
                    float: left;
                    width: 40px;
                    text-align: center;
                }
            
                #board {
                    display: inline-block;
                    position: relative;
                    top: calc(var(--board-height) * -1 - 12px);
                    left: 21px;
                    width: var(--board-width);
                    height: 0;
                }

                #overlay {
                    display: inline-block;
                    position: relative;
                    float: left;
                    bottom: calc(var(--board-height) + 15px);
                    right: -21px;
                    height: 0;
                    width: var(--board-width);
                }
            }

            #horizontalGrid div,
            #verticalGrid div {
                margin: auto;
            }

            #verticalGrid div span {
                vertical-align: middle;
                display: table-cell;
            }
            
            canvas{
                display: none;
            }
        </style>
        <div id="verticalGrid"></div>
        <div id="board"></div>
        <div id="overlay"></div>
        <div id="horizontalGrid" ></div>
        
        <canvas id="cnavasBuffer"></canvas>     
`;
    }

    static get importMeta() { return import.meta; }

    static get is() {
        return 'critter-gameboard';
    }

    static get properties() {

        return {

            showGrid: {
                type: Boolean,
                default: true,
                observer: '_showGrid'
            },

            selectedElement: {
                type: String
            },

            _audioList: {
                type: Array,
                value: []
            },

            containsWater: {
                type: Boolean,
                value: false
            },

            containsSnow: {
                type: Boolean,
                value: false
            },

            dragStartTime: {
                type: Number,
                notify: true,
                value: 0
            }
        };
    }

    connectedCallback() {
        super.connectedCallback();

        afterNextRender(this, function () {
            let rootNode = window.Core.GameRoot;
            this.addEventListener("_levelChanged", this.renderBoard);
            if (rootNode) {
                rootNode.addEventListener("_critterKilled", (event) => this._playExplosion(event));
                rootNode.addEventListener("_crittersStarted", this._startAudio.bind(this));
                rootNode.addEventListener("_levelSizeChanged", this.renderGrid.bind(this));
                rootNode.addEventListener("_levelDataChanged", this.renderBoard.bind(this));
                rootNode.addEventListener("_mineSet", (event) => this.setMine(event));
                rootNode.addEventListener("_mineRemoved", (event) => this.removeMine(event.detail.position));
                rootNode.addEventListener("_portalDropped", (event) => this.movePortal(event));
            }
            this._globalData = window.Core.CritterLevelData;
            this.renderGrid();
        });
    }


    /** creates and renders the gameboard **/
    renderBoard() {
        if (!this._globalData || !this._globalData.level || this._globalData.level.length !== this._globalData.height) {
            return;
        }

        if(window.matchMedia("(max-width: 600px)").matches) {
            this.updateStyles({
                '--board-width': (this._globalData.width * 20) + "px",
                '--board-height': (this._globalData.width * 20) + "px"
            });
        } else {
            this.updateStyles({
                '--board-width': (this._globalData.width * 40) + "px",
                '--board-height': (this._globalData.width * 40) + "px"
            });
        }

        let gameboard = this.$.board;
        let gameboardOverlay = this.$.overlay;

        gameboard.innerHTML = "";
        gameboardOverlay.innerHTML = "";
        for (let i = 0; i < this._globalData.width; ++i) {
            for (let j = 0; j < this._globalData.height; ++j) {
                this._addHoverField(i, j, gameboardOverlay);
                this._addField(i, j, gameboard);
            }
        }
        this.placeElements();
    }

    /**
     * renders the hoverfields only (required after moving of a portal)
     */
    renderHoverBoardOnly() {
        if (!this._globalData || !this._globalData.level || this._globalData.level.length !== this._globalData.height) {
            return;
        }
        if(window.matchMedia("(max-width: 600px)").matches) {
            this.updateStyles({
                '--board-width': (this._globalData.width * 20) + "px",
                '--board-height': (this._globalData.height * 20) + "px"
            });
        } else {
            this.updateStyles({
                '--board-width': (this._globalData.width * 40) + "px",
                '--board-height': (this._globalData.height * 40) + "px"
            });
        }

        let gameboardOverlay = this.$.overlay;

        gameboardOverlay.innerHTML = "";
        for (let i = 0; i < this._globalData.width; ++i) {
            for (let j = 0; j < this._globalData.height; ++j) {
                this._addHoverField(i, j, gameboardOverlay);
            }
        }
        this.placeElements();
    }

    /** adds the elements (mines, towers, modders) to the gameboard **/
    placeElements() {
        this.placeMines();
    }

    /** adds the mines to the gameboard **/
    placeMines() {
        const mines = this._globalData.mines;

        for (let i = 0; i < mines.length; i++) {
            for (let j = 0; j < mines[i].length; j++) {
                if (mines[i][j] !== undefined) {
                    let mineField = this.shadowRoot.querySelector('#field-' + i + "-" + j);
                    let mineHoverField = this.shadowRoot.querySelector('#hover-field-' + i + "-" + j);

                    mineField.mine = true;

                    mineHoverField.draggable = true;
                    mineHoverField.ondragstart = this._dragStartHandler.bind(this);
                }
            }
        }
    }

    /**
     * Moves a portal from one field to another.
     * Shows an error if the drop-field is not valid (and if parameter event is not as expected)
     *
     * @param e event with detail containing coordinates of the old and new field
     */
    movePortal(e) {
        if (e.detail.oldPosition && e.detail.newPosition) {
            const oldPosition = e.detail.oldPosition;
            const newPosition = e.detail.newPosition;

            let isAllowed = true;
            let errorMessage;

            // check that drop-field is a valid terrain; and that it is not spawn or tower point
            if (!_isWalkableTerrainOfBaseLevel(newPosition, this._globalData.level) || _isFieldWithBuilding(newPosition, this._globalData.spawn, this._globalData.tower)) {
                isAllowed = false;
                errorMessage = "invalid_drop_field";
            }

            // check that there is no portal on the new field already
            else if (this._globalData.mines && this._globalData.mines[newPosition.x][newPosition.y] !== undefined) {
                isAllowed = false;
                errorMessage = "drop_on_portal"
            }

            if (!isAllowed && errorMessage) {
                this.showErrorToast(errorMessage);
            } else {
                let newPortalField = this.shadowRoot.querySelector('#field-' + newPosition.x + "-" + newPosition.y);
                newPortalField.mine = true;
                let movedMine = this._globalData.mines[oldPosition.x][oldPosition.y];
                if (movedMine) {
                    movedMine.updated = true;
                    movedMine.xPosition = newPosition.x;
                    movedMine.yPosition = newPosition.y;
                    movedMine.creationStart = this.dragStartTime;
                    movedMine.creationEnd = Date.now();
                    this._globalData.mines[oldPosition.x][oldPosition.y] = undefined;
                    this._globalData.mines[newPosition.x][newPosition.y] = movedMine;
                    this.dispatchEvent(new CustomEvent('_portalMoved', {
                        detail: { mine: movedMine },
                        bubbles: true,
                        composed: true
                    }));
                }

                const oldPortalField = this.shadowRoot.querySelector('#field-' + oldPosition.x + "-" + oldPosition.y);
                oldPortalField.mine = false;

                this.renderHoverBoardOnly();
            }
        } else { // Does usually not happen, but just in case
            this.showErrorToast("portal_move_error");
        }
    }

    setMine(e) {
        let position = e.detail.position;

        let mineField = this.shadowRoot.querySelector('#field-' + position.x + "-" + position.y);
        let mineHoverField = this.shadowRoot.querySelector('#hover-field-' + position.x + "-" + position.y);

        mineField.mine = true;
        mineHoverField.draggable = true;
        mineHoverField.ondragstart = this._dragStartHandler.bind(this);
    }

    /**
     * Called on start of dragging a portal/mine
     */
    _dragStartHandler(event) {
        this.dragStartTime = Date.now();
        const target = event.target;
        event.dataTransfer.setData('text/plain', target.id);
        event.dataTransfer.dropEffect = "move";
    }

    removeMine(position) {
        let mineField = this.shadowRoot.querySelector('#field-' + position.x + "-" + position.y);
        mineField.mine = false;

    }

    rerenderField(element) {
        for (let i = -1; i <= 1; ++i) {
            if (0 <= element.x + i && this._globalData.width > element.x + i) {
                for (let j = -1; j <= 1; ++j) {
                    if (0 <= element.y + j && this._globalData.height > element.y + j) {
                        let field = this.shadowRoot.querySelector('#field-' + (element.x + i) + "-" + (element.y + j));
                        while (field.classList.length > 0) {
                            field.classList.remove(field.classList.item(0));
                        }
                        this._computeClass((element.y + j), (element.x + i)).forEach(elem => {
                            field.classList.add(elem);
                        });
                    }
                }
            }
        }
    }

    /** adds the given element to the gameboard and the List **/
    addElement(element) {
        if (!window.Core.Generator) {
            return
        } else {
            switch (this.selectedElement) {
                case "water" :
                case "ice" :
                case "dirt" :
                case "grass" :
                case "wood" :
                    this._globalData.level[element.y][element.x] = this.selectedElement;
                    this.rerenderField(element);
                    break;
                case "tower" :
                    this._globalData.tower = element;
                    break;
                case "spawn" :
                    this._globalData.spawn = element;
                    break;
                default:
                    break;
            }
        }
    }

    /** adds a hoverField to the gameboardOverlay **/
    _addHoverField(i, j, gameboardOverlay) {
        let hoverField = document.createElement("critter-gameboard-hover-field");
        hoverField.x = j;
        hoverField.y = i;
        hoverField.id = "hover-field-" + j + "-" + i;
        //add EventListeners
        hoverField.addEventListener("hoverOver", (event) => {
            let detail = event.detail;
            this.dispatchEvent(new CustomEvent('hoverOver', {
                detail: {x: detail.x, y: detail.y},
                bubbles: true,
                composed: true
            }));
        });

        if (_isFieldWithBuilding(hoverField, this._globalData.spawn, this._globalData.tower) || !_isWalkableTerrainOfBaseLevel(hoverField, this._globalData.level)) {
            hoverField.isClickable = false;
        }

        hoverField.addEventListener("fieldClicked", (event) => this.addElement(event.detail));

        gameboardOverlay.append(hoverField);
    }

    /** adds a Field to the gameboard **/
    _addField(i, j, gameboard) {
        let field = document.createElement("critter-gameboard-field");
        field.x = j;
        field.y = i;
        field.id = "field-" + j + "-" + i;
        this._computeClass(i, j).forEach(elem => {
            field.classList.add(elem);
        });

        gameboard.append(field);
    }

    _computeClass(i, j) {
        let className = [];
        switch (this._globalData.level[i][j]) {
            case "grass":
                className.push("grass" + this._randomNumber(0, 3));
                break;
            case "dirt":
                className.push("dirt");

                let tempName = _computeClassNames(i, j, "dirt", this._globalData.level);
                if (tempName.length !== 0) {
                    className = className.concat(tempName);
                } else {
                    className.push("dirt" + this._randomNumber(0, 2));
                }
                break;
            case "water":
                className.push("water");
                this._globalData.containsWater = true;

                let tempName2 = _computeClassNames(i, j, "water", this._globalData.level);
                if (tempName2.length !== 0) {
                    className = className.concat(tempName2);
                } else {
                    className.push("water" + this._randomNumber(0, 3));
                }
                break;
            case "ice":
                className.push("ice");
                this._globalData.containsSnow = true;

                let tempName3 = _computeClassNames(i, j, "ice", this._globalData.level);
                if (tempName3.length !== 0) {
                    className = className.concat(tempName3);
                } else {
                    className.push("ice" + this._randomNumber(0, 3));
                }
                break;
            case "wood":
                className.push("wood");
                if (j > 0 && this._globalData.level[i][j - 1] !== "wood") {
                    className.push("wood-left");
                }
                if (j < this._globalData.width - 1 && this._globalData.level[i][j + 1] !== "wood") {
                    className.push("wood-right");
                }
                if (i > 0 && this._globalData.level[i - 1][j] !== "wood") {
                    className.push("wood-up");
                }
                if (i < this._globalData.height - 1 && this._globalData.level[i + 1][j] !== "wood") {
                    className.push("wood-down");
                }
                if (j > 0 && i < this._globalData.height - 1 && this._globalData.level[i + 1][j - 1] !== "wood" && this._globalData.level[i + 1][j] === "wood" && this._globalData.level[i][j - 1] === "wood") {
                    className.push("wood-left-down");
                }
                if (j < this._globalData.width - 1 && i < this._globalData.height - 1 && this._globalData.level[i + 1][j + 1] !== "wood" && this._globalData.level[i + 1][j] === "wood" && this._globalData.level[i][j + 1] === "wood") {
                    className.push("wood-right-down");
                }
                if (j > 0 && i > 0 && this._globalData.level[i - 1][j - 1] !== "wood" && this._globalData.level[i - 1][j] === "wood" && this._globalData.level[i][j - 1] === "wood") {
                    className.push("wood-left-up");
                }
                if (j < this._globalData.width - 1 && i > 0 && this._globalData.level[i - 1][j + 1] !== "wood" && this._globalData.level[i - 1][j] === "wood" && this._globalData.level[i][j + 1] === "wood") {
                    className.push("wood-right-up");
                }
                break;
            default:
                className.push("grass");
        }

        if (this._globalData.tower && this._globalData.tower.x === j && i === this._globalData.tower.y) {
            className.push("towerField");
        } else if (this._globalData.spawn && j === this._globalData.spawn.x && i === this._globalData.spawn.y) {
            className.push("spawnField");
        }
        return className;
    }


    /** creates an renders the grid **/
    renderGrid() {
        if (this.showGrid && this._globalData) {
            let horizontalGrid = this.$.horizontalGrid;
            horizontalGrid.innerHTML = "";
            for (let i = 0; i < this._globalData.width; ++i) {
                let element = document.createElement("div");
                element.innerHTML = i + 1;
                horizontalGrid.append(element);

            }

            let verticalGrid = this.$.verticalGrid;
            verticalGrid.innerHTML = "";
            for (let j = 0; j < this._globalData.height; ++j) {
                let element = document.createElement("div");
                element.innerHTML = "<span>" + (this._globalData.height - j) + "</span>";
                verticalGrid.append(element);
            }
        }
    }

    /** change the styling of the grid (visible or not) **/
    _showGrid() {
        this.updateStyles({
            '--show-grid': (this.showGrid ? 'visible' : 'hidden')
        });
        if (this.showGrid) {
            this.renderGrid()
        }
    }

    _startAudio(){
        for(let i = 0; i < this._globalData.numberOfHumans +
                            this._globalData.numberOfCritters; ++i) {
            let audio = new Audio();
            audio.src = this.importPath + "sounds/magic.mp3";
            this._audioList.push(audio);
        }
    }

    _playExplosion(event) {
        let audio = this._audioList.pop();
        audio.play();
        let detail = event.detail;
        let field = this.shadowRoot.querySelector('#field-' + detail.x + "-" + detail.y);
        field.playExplosion();
    }

    removeAllMines(){
        for(let i = 0; i < this._globalData.width; ++i){
            for(let j = 0; j < this._globalData.width; ++j){
                this.removeMine({
                    x: i,
                    y: j
                });
            }
        }
    }

    async computeImg() {
        let canvas = this.$.cnavasBuffer;
        canvas.width = this._globalData.width * 10;
        canvas.height = this._globalData.height * 10;
        let context = canvas.getContext('2d');

        for (let i = 0; i < this._globalData.width; ++i) {
            for (let j = this._globalData.height - 1; j >= 0; --j) {
                let field = this.shadowRoot.querySelector('#field-' + j + "-" + i);
                let value = await field.computeImg(j, i);
                if(field.class.includes("tower")){
                    context.drawImage(value.img, 0 , 0, 40, 90, value.x * 10, (value.y * 10) - 12.5, 10, 22.5);
                } else if (field.class.includes("spawn")){
                    context.drawImage(value.img, 0 , 0, 50, 50, value.x * 10, (value.y * 10) - 2.5, 12.5, 12.5);
                } else {
                    context.drawImage(value.img, 0 , 0, 40, 40, value.x * 10, value.y * 10, 10, 10);
                }
            }
        }

        let img = new Image( this._globalData.width * 10,  this._globalData.height * 10);
        img.src = canvas.toDataURL("image/jpeg")
        return await new Promise(resolve => {
            canvas.toBlob((blob) => {
                resolve(blob);
            }, "image/jpeg")
        });
    }
}

window.customElements.define(CritterGameboard.is, CritterGameboard);
