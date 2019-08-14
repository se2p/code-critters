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

import '/lib/@polymer/iron-ajax/iron-ajax.js';
import '/static/pathfinding/pathfinding-browser.min.js';

/*
#CritterMixins.Level

Holds general functions for code-critter Levels

*/

    /**
     * # CritterMixins.Level
     *
     * Shortcuts for common gui element interaction.
     *
     * @polymerBehavior CritterMixins.Level
     */

    export const Level = dedupingMixin(function(superClass) {
        return class extends superClass {

            static get properties() {
                return {
                    _globalData:{
                        type: Object
                    },

                    _timeoutManager:{
                        type: Object
                    }

                };
            }

            /** returns weather there is a path from source to the tower or not**/
            existPath(source) {
                return this.findPathLib(source).length ? true : false;
            }


            /** returns a path from source to the tower using the lib **/
            findPathLib(source) {
                if (!this._globalData.tower || !this._globalData.level || !this._globalData.spawn) {
                    return [];
                }

                let tempArray = this._computeGrid();
                if (source.x !== this._globalData.spawn.x || source.y !== this._globalData.spawn.y) {
                    tempArray[this._globalData.spawn.x][this._globalData.spawn.y] = 1;
                }
                let grid = new PF.Grid(tempArray);
                let finder = new PF.AStarFinder();
                let path = finder.findPath(source.x, source.y, this._globalData.tower.x, this._globalData.tower.y, grid);

                return path;
            }

            /** returns a radnom path from source to the tower **/
            findPath(source, steps = 0) {
                if (!this._globalData.tower || !this._globalData.level || !this._globalData.spawn) {
                    return [];
                }

                let tempArray = this._computeGrid();

                tempArray[this._globalData.spawn.y][this._globalData.spawn.x] = 1;

                let path = [source];
                let possibilities = this._findPossibility(tempArray, source, this._globalData.tower);
                while (possibilities.length !== 1 || !(possibilities[0].x === this._globalData.tower.x
                            && possibilities[0].y === this._globalData.tower.y)) {
                    if (possibilities.length > 0) {
                        source = possibilities[this._randomNumber(0, possibilities.length - 1)];
                        path.push(source);
                        tempArray[source.y][source.x] = 1;
                    } else if (possibilities.length === 0) {
                        path.pop();
                        if (path.length === 0) {
                            if (steps < 3) {
                                console.log((steps + 1) + "steps were needed!");
                                return this.findPath(source, ++steps);
                            } else {
                                console.log("No Path was found after 3 times with standard algorithm.\nAstar will be used now");
                                let pathBuffer = this.findPathLib(source);
                                path = [source];
                                for (let i = 1; i < pathBuffer.length - 1; ++i) {
                                    path.push({
                                        x: pathBuffer[i][0],
                                        y: pathBuffer[i][1]
                                    });
                                }
                                path.push(this._globalData.tower);
                                return path;
                            }
                        }
                        source = path[path.length - 1];
                    }
                    possibilities = this._findPossibility(tempArray, source, this._globalData.tower);
                }
                path.push(this._globalData.tower);
                return path;
            }

            /** returns a random number between min and mam**/
            _randomNumber(min, max) {
                return Math.floor((Math.random() * ((max - min) + 1)) + min);
            }

            /** searches for possibilities and return list of possible waypoints or the location of the tower, if the tower
             * is in range **/
            _findPossibility(tempArray, source, tower) {
                let possibilities = [];
                if (tempArray[source.y][source.x + 1] === 0) {
                    possibilities.push({y: source.y, x: (source.x + 1)});
                }
                if (tempArray[source.y][source.x - 1] === 0) {
                    possibilities.push({y: source.y, x: (source.x - 1)});
                }
                if (tempArray[source.y + 1] && tempArray[source.y + 1][source.x] === 0) {
                    possibilities.push({y: (source.y + 1), x: source.x});
                }
                if (tempArray[source.y - 1] && tempArray[source.y - 1][source.x] === 0) {
                    possibilities.push({y: (source.y) - 1, x: source.x});
                }
                for (let i = 0; i < possibilities.length; ++i) {
                    if (possibilities[i].x === tower.x && possibilities[i].y === tower.y) {
                        return [tower];
                    }
                }
                return possibilities;
            }

            /** computes the grid used for finding a path through the map **/
            _computeGrid() {
                let tempArray = new Array(this._globalData.height);
                for (let i = 0; i < this._globalData.height; ++i) {
                    tempArray[i] = new Array(this._globalData.width);
                    for (let j = 0; j < this._globalData.width; ++j) {
                        let fieldClass =  this._globalData.level[i][j];
                        if (fieldClass=== "grass" || fieldClass === "dirt" ||
                            (fieldClass === "water" && this.canWalkOnWater) ||
                            fieldClass === "ice" || (fieldClass === "lava" && this.canWalkOnLava)) {
                                tempArray[i][j] = 0;
                        }
                        else {
                            tempArray[i][j] = 1;
                        }
                    }
                }

                return tempArray;
            }

            /** computes weather an element is already at that position or not**/
            _isElementOnPosition(j, i) {
                if(this._globalData.tower && this._globalData.tower.y=== i && this._globalData.tower.x === j) {
                    return true;
                }
                if(this._globalData.spawn && this._globalData.spawn.y === i && this._globalData.spawn.x === j) {
                    return true;
                }
                this._globalData.mines.forEach((mine) => {
                    if (mine.x === i && mine.y === j) {
                        return true;
                    }
                });
            }

            _shuffleArray(array) {
                let currentIndex = array.length, temporaryValue, randomIndex;
                while (0 !== currentIndex) {
                    randomIndex = Math.floor(Math.random() * currentIndex);
                    currentIndex -= 1;
                    temporaryValue = array[currentIndex];
                    array[currentIndex] = array[randomIndex];
                    array[randomIndex] = temporaryValue;
                }

                return array;
            }

        }
    });
