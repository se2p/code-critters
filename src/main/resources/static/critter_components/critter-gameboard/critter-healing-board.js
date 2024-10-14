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
import {
    _computeClassNames,
    _isFieldWithBasketOrBush,
    _isWalkableTerrainOfSecondStage
} from "../common.js";
import {Toaster} from "../critter-toaster/critter-toaster-mixin.js";



class CritterHealingBoard extends Toaster(Level(PolymerElement)) {
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
        return 'critter-healing-board';
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
            if (rootNode) {
                rootNode.addEventListener("_healingCrittersStarted", this._startAudio.bind(this));
                rootNode.addEventListener("_healLevelSizeChanged", this.renderGrid.bind(this));
                rootNode.addEventListener("_healLevelDataChanged", this.renderBoard.bind(this));
                rootNode.addEventListener("_healingMineRemoved", (event) => this.removeMine(event.detail.position));
                rootNode.addEventListener("_healingMineSet", (event) => this.setMine(event));
                rootNode.addEventListener("_portalDropped", (event) => this.movePortal(event));

            }
            this._globalData = window.Core.CritterLevelData;
            this.renderGrid();
        });
    }


    /** creates and renders the gameboard **/
    renderBoard() {
        if (!this._globalData || !this._globalData.displayLevel || this._globalData.displayLevel.length !== this._globalData.healLevelHeight) {
            return;
        }

        if(window.matchMedia("(max-width: 600px)").matches) {
            this.updateStyles({
                '--board-width': (this._globalData.healLevelWidth * 20) + "px",
                '--board-height': (this._globalData.healLevelWidth * 20) + "px"
            });
        } else {
            this.updateStyles({
                '--board-width': (this._globalData.healLevelWidth * 40) + "px",
                '--board-height': (this._globalData.healLevelWidth * 40) + "px"
            });
        }

        let gameboard = this.$.board;
        let gameboardOverlay = this.$.overlay;

        gameboard.innerHTML = "";
        gameboardOverlay.innerHTML = "";
        for (let i = 0; i < this._globalData.healLevelWidth; ++i) {
            for (let j = 0; j < this._globalData.healLevelHeight; ++j) {
                this._addHoverField(i, j, gameboardOverlay);
                this._addField(i, j, gameboard);
            }
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

    movePortal(e) {
        if (e.detail.oldPosition && e.detail.newPosition) {
            const oldPosition = e.detail.oldPosition;
            const newPosition = e.detail.newPosition;

            let isAllowed = true;
            let errorMessage;

            // check that drop-field is a valid terrain; and that it is not bush or basket
            if (!_isWalkableTerrainOfSecondStage(newPosition, this._globalData.displayLevel) || _isFieldWithBasketOrBush(newPosition, this._globalData.basketPosition, this._globalData.innerBasketPosition, this._globalData.berryBushes)) {
                isAllowed = false;
                errorMessage = "invalid_drop_field_second_stage";
            }

            // check that there is no portal on the new field already
            else if (this._globalData.secondStagePortals && this._globalData.secondStagePortals[newPosition.x][newPosition.y] !== undefined) {
                isAllowed = false;
                errorMessage = "drop_on_portal"
            }

            if (!isAllowed && errorMessage) {
                this.showErrorToast(errorMessage);
            } else {
                let newPortalField = this.shadowRoot.querySelector('#field-' + newPosition.x + "-" + newPosition.y);
                newPortalField.mine = true;
                let movedMine = this._globalData.secondStagePortals[oldPosition.x][oldPosition.y];
                if (movedMine) {
                    movedMine.updated = true;
                    movedMine.xPosition = newPosition.x;
                    movedMine.yPosition = newPosition.y;
                    movedMine.creationStart = this.dragStartTime;
                    movedMine.creationEnd = Date.now();
                    this._globalData.secondStagePortals[oldPosition.x][oldPosition.y] = undefined;
                    this._globalData.secondStagePortals[newPosition.x][newPosition.y] = movedMine;
                    this.dispatchEvent(new CustomEvent('_healingPortalMoved', {
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

    renderHoverBoardOnly() {
        if (!this._globalData || !this._globalData.displayLevel || this._globalData.displayLevel.length !== this._globalData.healLevelHeight) {
            return;
        }
        if(window.matchMedia("(max-width: 600px)").matches) {
            this.updateStyles({
                '--board-width': (this._globalData.healLevelWidth * 20) + "px",
                '--board-height': (this._globalData.healLevelHeight * 20) + "px"
            });
        } else {
            this.updateStyles({
                '--board-width': (this._globalData.healLevelWidth * 40) + "px",
                '--board-height': (this._globalData.healLevelHeight * 40) + "px"
            });
        }

        let gameboardOverlay = this.$.overlay;

        gameboardOverlay.innerHTML = "";
        for (let i = 0; i < this._globalData.healLevelWidth; ++i) {
            for (let j = 0; j < this._globalData.healLevelHeight; ++j) {
                this._addHoverField(i, j, gameboardOverlay);
            }
        }
        this.placeElements();
    }

    placeElements() {
        this.placeMines();
    }

    /** adds the mines to the gameboard **/
    placeMines() {
        const mines = this._globalData.secondStagePortals;

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

    rerenderField(element) {
        for (let i = -1; i <= 1; ++i) {
            if (0 <= element.x + i && this._globalData.healLevelWidth > element.x + i) {
                for (let j = -1; j <= 1; ++j) {
                    if (0 <= element.y + j && this._globalData.healLevelHeight > element.y + j) {
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
                    this._globalData.displayLevel[element.y][element.x] = this.selectedElement;
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

        if (_isFieldWithBasketOrBush(hoverField, this._globalData.basketPosition, this._globalData.innerBasketPosition, this._globalData.berryBushes) || !_isWalkableTerrainOfSecondStage(hoverField, this._globalData.displayLevel)) {
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
        switch (this._globalData.displayLevel[i][j]) {
            case "sand":
                className.push("sand"+ this._randomNumber(0, 3));
                break;
            case "stone":
                className.push("stone"+ this._randomNumber(0, 3));
                break;
            case "grass":
                className.push("grass" + this._randomNumber(0, 3));
                break;
            case "dirt":
                className.push("dirt");

                let background1 = "background-grass";

                if (this._globalData.backgroundSand) {
                    background1 = "background-sand"
                } else if (this._globalData.backgroundSea) {
                    background1 = "background-sea";
                } else if (this._globalData.backgroundStone) {
                    background1 = "background-stone";
                } else if (this._globalData.backgroundIce) {
                    background1 = "background-ice";
                } else if (this._globalData.backgroundLava) {
                    background1 = "background-lava";
                }

                let tempName = _computeClassNames(i, j, "dirt", this._globalData.displayLevel, background1);
                if (tempName.length !== 0) {
                    className = className.concat(tempName);
                } else {
                    className.push("dirt" + this._randomNumber(0, 2));
                }
                break;
            case "water":
                className.push("water");
                this._globalData.containsWater = true;
                let background2 = "background-grass";

                if (this._globalData.backgroundSand) {
                    background2 = "background-sand";
                } else if (this._globalData.backgroundStone) {
                    background2 = "background-stone";
                } else if (this._globalData.backgroundSea) {
                    background2 = "background-sea";
                } else if (this._globalData.backgroundIce) {
                    background2 = "background-ice";
                } else if (this._globalData.backgroundLava) {
                    background2 = "background-lava";
                }

                let tempName2 = _computeClassNames(i, j, "water", this._globalData.displayLevel, background2);
                if (tempName2.length !== 0) {
                    className = className.concat(tempName2);
                } else {
                    className.push("water" + this._randomNumber(0, 3));
                }
                break;
            case "ice":
                className.push("ice");
                this._globalData.containsSnow = true;

                let background3 = "background-grass";

                if (this._globalData.backgroundSand) {
                    background3 = "background-sand";
                } else if (this._globalData.backgroundStone) {
                    background3 = "background-stone";
                } else if (this._globalData.backgroundSea) {
                    background3 = "background-sea";
                } else if (this._globalData.backgroundIce) {
                    background3 = "background-ice";
                } else if (this._globalData.backgroundLava) {
                    background3 = "background-lava";
                }

                let tempName3 = _computeClassNames(i, j, "ice", this._globalData.displayLevel, background3);
                if (tempName3.length !== 0) {
                    className = className.concat(tempName3);
                } else {
                    className.push("ice" + this._randomNumber(0, 3));
                }
                break;
            case "wood":
                className.push("wood");
                if (j > 0 && this._globalData.displayLevel[i][j - 1] !== "wood") {
                    className.push("wood-left");
                }
                if (j < this._globalData.healLevelWidth - 1 && this._globalData.displayLevel[i][j + 1] !== "wood") {
                    className.push("wood-right");
                }
                if (i > 0 && this._globalData.displayLevel[i - 1][j] !== "wood") {
                    className.push("wood-up");
                }
                if (i < this._globalData.healLevelHeight - 1 && this._globalData.displayLevel[i + 1][j] !== "wood") {
                    className.push("wood-down");
                }
                if (j > 0 && i < this._globalData.healLevelHeight - 1 && this._globalData.displayLevel[i + 1][j - 1] !== "wood" && this._globalData.displayLevel[i + 1][j] === "wood" && this._globalData.displayLevel[i][j - 1] === "wood") {
                    className.push("wood-left-down");
                }
                if (j < this._globalData.healLevelWidth - 1 && i < this._globalData.healLevelHeight - 1 && this._globalData.displayLevel[i + 1][j + 1] !== "wood" && this._globalData.displayLevel[i + 1][j] === "wood" && this._globalData.displayLevel[i][j + 1] === "wood") {
                    className.push("wood-right-down");
                }
                if (j > 0 && i > 0 && this._globalData.displayLevel[i - 1][j - 1] !== "wood" && this._globalData.displayLevel[i - 1][j] === "wood" && this._globalData.displayLevel[i][j - 1] === "wood") {
                    className.push("wood-left-up");
                }
                if (j < this._globalData.healLevelWidth - 1 && i > 0 && this._globalData.displayLevel[i - 1][j + 1] !== "wood" && this._globalData.displayLevel[i - 1][j] === "wood" && this._globalData.displayLevel[i][j + 1] === "wood") {
                    className.push("wood-right-up");
                }

                if (this._globalData.backgroundSand) {
                    className.push("background-sand");
                } else if (this._globalData.backgroundStone) {
                    className.push("background-stone");
                } else if (this._globalData.backgroundIce) {
                    className.push("background-ice");
                } else if (this._globalData.backgroundLava) {
                    className.push("background-lava");
                }
                break;
            case "lava":
                className.push("lava");
                if (j > 0 && this._globalData.displayLevel[i][j - 1] !== "lava") {
                    className.push("lava-left");
                }
                if (j < this._globalData.healLevelWidth - 1 && this._globalData.displayLevel[i][j + 1] !== "lava") {
                    className.push("lava-right");
                }
                if (i > 0 && this._globalData.displayLevel[i - 1][j] !== "lava") {
                    className.push("lava-up");
                }
                if (i < this._globalData.healLevelHeight - 1 && this._globalData.displayLevel[i + 1][j] !== "lava") {
                    className.push("lava-down");
                }
                if (j > 0 && i < this._globalData.healLevelHeight - 1 && this._globalData.displayLevel[i + 1][j - 1] !== "lava" && this._globalData.displayLevel[i + 1][j] === "lava" && this._globalData.displayLevel[i][j - 1] === "lava") {
                    className.push("lava-left-down");
                }
                if (j < this._globalData.healLevelWidth - 1 && i < this._globalData.healLevelHeight - 1 && this._globalData.displayLevel[i + 1][j + 1] !== "lava" && this._globalData.displayLevel[i + 1][j] === "lava" && this._globalData.displayLevel[i][j + 1] === "lava") {
                    className.push("lava-right-down");
                }
                if (j > 0 && i > 0 && this._globalData.displayLevel[i - 1][j - 1] !== "lava" && this._globalData.displayLevel[i - 1][j] === "lava" && this._globalData.displayLevel[i][j - 1] === "lava") {
                    className.push("lava-left-up");
                }
                if (j < this._globalData.healLevelWidth - 1 && i > 0 && this._globalData.displayLevel[i - 1][j + 1] !== "lava" && this._globalData.displayLevel[i - 1][j] === "lava" && this._globalData.displayLevel[i][j + 1] === "lava") {
                    className.push("lava-right-up");
                }

                if (this._globalData.backgroundSand) {
                    className.push("background-sand");
                } else if (this._globalData.backgroundStone) {
                    className.push("background-stone");
                } else if (this._globalData.backgroundIce) {
                    className.push("background-ice");
                } else if (this._globalData.backgroundLava) {
                    className.push("background-lava");
                }
                break;
            case "sea":
                className.push("sea");
                if (j > 0 && this._globalData.displayLevel[i][j - 1] !== "sea") {
                    className.push("sea-left");
                }
                if (j < this._globalData.healLevelWidth - 1 && this._globalData.displayLevel[i][j + 1] !== "sea") {
                    className.push("sea-right");
                }
                if (i > 0 && this._globalData.displayLevel[i - 1][j] !== "sea") {
                    className.push("sea-up");
                }
                if (i < this._globalData.healLevelHeight - 1 && this._globalData.displayLevel[i + 1][j] !== "sea") {
                    className.push("sea-down");
                }
                if (j > 0 && i < this._globalData.healLevelHeight - 1 && this._globalData.displayLevel[i + 1][j - 1] !== "sea" && this._globalData.displayLevel[i + 1][j] === "sea" && this._globalData.displayLevel[i][j - 1] === "sea") {
                    className.push("sea-left-down");
                }
                if (j < this._globalData.healLevelWidth - 1 && i < this._globalData.healLevelHeight - 1 && this._globalData.displayLevel[i + 1][j + 1] !== "sea" && this._globalData.displayLevel[i + 1][j] === "sea" && this._globalData.displayLevel[i][j + 1] === "sea") {
                    className.push("sea-right-down");
                }
                if (j > 0 && i > 0 && this._globalData.displayLevel[i - 1][j - 1] !== "sea" && this._globalData.displayLevel[i - 1][j] === "sea" && this._globalData.displayLevel[i][j - 1] === "sea") {
                    className.push("sea-left-up");
                }
                if (j < this._globalData.healLevelWidth - 1 && i > 0 && this._globalData.displayLevel[i - 1][j + 1] !== "sea" && this._globalData.displayLevel[i - 1][j] === "sea" && this._globalData.displayLevel[i][j + 1] === "sea") {
                    className.push("sea-right-up");
                }

                if (this._globalData.backgroundSand) {
                    className.push("background-sand");
                } else if (this._globalData.backgroundStone) {
                    className.push("background-stone");
                } else if (this._globalData.backgroundIce) {
                    className.push("background-ice");
                } else if (this._globalData.backgroundLava) {
                    className.push("background-lava");
                }
                break;
            case "dirtOut":
                className.push("dirt-horizontal-up", "background-grass");
                break;
            default:
                className.push("grass");
        }

        let bush = this._isBushField(j, i);

        if (bush) {
            const color = bush.berryType;
            className.push("berriesField-" + color.toLowerCase());
        }

        if (this._isBasketField(j, i)) {
            className.push("basket");
        }

        return className;
    }

    _isBushField(x, y) {
        let currentBush = undefined;
        if (this._globalData.berryBushes && this._globalData.berryBushes.length >= 1) {
            const bushes = this._globalData.berryBushes;
            bushes.forEach(bush => {
                if (bush.coordinates && bush.coordinates.x === x && bush.coordinates.y === y) {
                    currentBush = bush;
                }
            })
        }
        return currentBush
    }

    _isBasketField(x, y) {
        if (this._globalData.basketPosition && this._globalData.basketPosition.x === x
            && this._globalData.basketPosition.y === y) {
            return true;
        } else if (this._globalData.innerBasketPosition && this._globalData.innerBasketPosition.x === x
            && this._globalData.innerBasketPosition.y === y) { // inner loop basket
            return true;
        }
        return false;
    }

    /** creates an renders the grid **/
    renderGrid() {
        if (this.showGrid && this._globalData) {
            let horizontalGrid = this.$.horizontalGrid;
            horizontalGrid.innerHTML = "";
            for (let i = 0; i < this._globalData.healLevelWidth; ++i) {
                let element = document.createElement("div");
                element.innerHTML = i + 1;
                horizontalGrid.append(element);

            }

            let verticalGrid = this.$.verticalGrid;
            verticalGrid.innerHTML = "";
            for (let j = 0; j < this._globalData.healLevelHeight; ++j) {
                let element = document.createElement("div");
                element.innerHTML = "<span>" + (this._globalData.healLevelHeight - j) + "</span>";
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

    // Fixes the Uncaught (in promise) DOMException: The play() request was
    // interrupted by a call to pause() exception
    _startAudio() {
        const totalAudioElements = this._globalData.numberOfCollectors;
        let loadedCount = 0;

        const handleLoadedAudio = () => {
            loadedCount++;
            if (loadedCount === totalAudioElements) {
                this._playAllAudio();
            }
        };

        for (let i = 0; i < totalAudioElements; ++i) {
            let audio = document.createElement("audio");
            audio.src = this.importPath + "sounds/magic.mp3";
            audio.addEventListener('canplaythrough', handleLoadedAudio);
            this._audioList.push(audio);
        }
    }

    _playAllAudio() {
        for (let i = 0; i < this._audioList.length; ++i) {
            let audio = this._audioList[i];
            audio.removeEventListener('canplaythrough', this.handleLoadedAudio);
            audio.play();
            audio.pause();
        }
    }


    _startAudioOld(){
        for(let i = 0; i < this._globalData.numberOfCollectors; ++i) {
            let audio = document.createElement("audio");
            audio.src = this.importPath + "sounds/magic.mp3";
            audio.play();
            audio.pause();
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
        for(let i = 0; i < this._globalData.healLevelWidth; ++i){
            for(let j = 0; j < this._globalData.healLevelWidth; ++j){
                this.removeMine({
                    x: i,
                    y: j
                });
            }
        }
    }

    async computeImg() {
        let canvas = this.$.cnavasBuffer;
        canvas.width = this._globalData.healLevelWidth * 10;
        canvas.height = this._globalData.healLevelHeight * 10;
        let context = canvas.getContext('2d');

        for (let i = 0; i < this._globalData.healLevelWidth; ++i) {
            for (let j = this._globalData.healLevelHeight - 1; j >= 0; --j) {
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

        let img = new Image( this._globalData.healLevelWidth * 10,  this._globalData.healLevelHeight * 10);
        img.src = canvas.toDataURL("image/jpeg")
        return await new Promise(resolve => {
            canvas.toBlob((blob) => {
                resolve(blob);
            }, "image/jpeg")
        });
    }
}

window.customElements.define(CritterHealingBoard.is, CritterHealingBoard);
