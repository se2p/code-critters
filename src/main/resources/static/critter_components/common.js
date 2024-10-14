/*-
 * #%L
 * Code Critters
 * %%
 * Copyright (C) 2019 - 2024 Code Critter contributors
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
import {blocklyVariableTranslations} from "./constants.js";

/**
 * Extracts the x- and y-coordinates of the id of a hover-field
 *
 * @param str id of hover-field in format: hover-field-x-y
 * @returns {yPos: number, xPos: number}
 */
export function _extractCoordinates(str) {
    const regex = /hover-field-(\d+)-(\d+)/;
    const match = str.match(regex);
    if (match) {
        const xPos = parseInt(match[1]);
        const yPos = parseInt(match[2]);
        return {xPos: xPos, yPos: yPos};
    } else {
        console.error("String format doesn't match the expected pattern.");
    }
}

/**
 * Returns true if the given board position is the spawn or tower point.
 *
 * @param position contains x and y
 * @param spawn coordinates (x, y) of spawn point
 * @param tower coordinates (x, y) of tower
 * @returns {boolean}
 */
export function _isFieldWithBuilding(position, spawn, tower) {
    return spawn && tower && ((position.x === spawn.x
        && position.y === spawn.y) || (position.x === tower.x
        && position.y === tower.y))
}

/**
 * Returns true if the given Second Stage board position is the basket field or a bush field.
 * @param position
 * @param basketPosition
 * @param innerBasketPosition
 * @param berryBushes
 * @returns {*|boolean}
 */
export function _isFieldWithBasketOrBush(position, basketPosition, innerBasketPosition, berryBushes) {
    let isOnInvalidField = false;
    if (berryBushes && berryBushes.length > 0) { // check if on bush
        for (let i = 0; i < berryBushes.length; i++) {
            let bush = berryBushes[i];
            let coordinates = bush.coordinates;
            if (position && position.x === coordinates.x && position.y === coordinates.y) {
                return true;
            }
        }
    }

    if (position && basketPosition && basketPosition.x && basketPosition.y
        && (position.x === basketPosition.x && position.y === basketPosition.y)) { // check if on basket
        isOnInvalidField = true;
    }

    if (position && innerBasketPosition && innerBasketPosition.x && innerBasketPosition.y
        && (position.x === innerBasketPosition.x && position.y === innerBasketPosition.y)) { // check if on inner loop basket
        isOnInvalidField = true;
    }

    return isOnInvalidField;
}

/**
 * Returns true if the given Base Level board position is a terrain the critters can walk on.
 *
 * @param position contains x and y
 * @param level contains the 2d array with board fields
 * @returns {boolean}
 */
export function _isWalkableTerrainOfBaseLevel(position, level) {
    if (level && level[position.y]
        && level[position.y][position.x]) {
        let fieldClass = level[position.y][position.x];
        return !(fieldClass === "wood")
    } else {
        return false;
    }
}

/**
 * Returns true if the given Second Stage board position is a terrain the critters can walk on.
 *
 * @param position contains x and y
 * @param level contains the 2d array with board fields
 * @returns {boolean}
 */
export function _isWalkableTerrainOfSecondStage(position, level) {
    if (level && level[position.y]
        && level[position.y][position.x]) {
        let fieldClass = level[position.y][position.x];
        return (fieldClass === "grass" || fieldClass === "dirt" || fieldClass === "ice")
    } else {
        return false;
    }
}


/**
 * Translates the variables in the given string (a js code) into the given language.
 * @param jsString
 * @param language
 * @returns String translated js code string
 */
export function translateVariableNames(jsString, language) {
    for (const originalName in blocklyVariableTranslations) {
        if (blocklyVariableTranslations.hasOwnProperty(originalName)) {
            const translatedName = blocklyVariableTranslations[originalName][language];
            if (translatedName) {

                // replace all occurrences of variable names with translated names in js string
                jsString = jsString.split(`${originalName}`).join(`${translatedName}`);
            }
        }
    }
    return jsString;
}


/**
 * Computes the css class name of a field of the game board and by that defines the
 * terrain and kind of field.
 */
export function _computeClassNames(i, j, name, levelBoard, background = "background-grass", otherName) {
    let array = [];
    let className = [];

    /*  Encode as follows 1 === texture of the field is name)
        000 = 0
        001 = 1
        010 = 2
        100 = 3
        011 = 4
        110 = 5
        101 = 6
        111 = 7
        */
    for (let x = i - 1; x <= i + 1; ++x) {
        let row = levelBoard[x];
        if (!row) {
            array.push(0);
        } else if (row[j - 1] === (name || otherName)) {
            if (row[j] === (name || otherName)) {
                if (row[j + 1] === (name || otherName)) {
                    array.push(7);
                } else {
                    array.push(5);
                }
            } else {
                if (row[j + 1] === (name || otherName)) {
                    array.push(6);
                } else {
                    array.push(3);
                }
            }
        } else {
            if (row[j] === (name || otherName)) {
                if (row[j + 1] === (name || otherName)) {
                    array.push(4);
                } else {
                    array.push(2);
                }
            } else {
                if (row[j + 1] === (name || otherName)) {
                    array.push(1);
                } else {
                    array.push(0);
                }
            }
        }
    }

    switch (array[0]) {
        case 0 :
            switch (array[1]) {
                case 2 :
                    switch (array[2]) {
                        case 0 :
                        case 1 :
                        case 3 :
                        case 6:
                            className.push(name + "-only", background);
                            break;
                        case 2 :
                        case 4 :
                        case 5 :
                        case 7 :
                            className.push(name + "-vertical-up", background);
                            break;
                    }
                    break;
                case 4 :
                    switch (array[2]) {
                        case 0 :
                        case 1 :
                        case 3 :
                        case 6 :
                            className.push(name + "-horizontal-left", background);
                            break;
                        case 2 :
                        case 5 :
                            className.push(name + "-bow-down-right", background);
                            break;
                        case 4 :
                        case 7 :
                            className.push(name + "-left",  name + "-up", background);
                            break;
                    }
                    break;
                case 5 :
                    switch (array[2]) {
                        case 0 :
                        case 1 :
                        case 3 :
                        case 6 :
                            className.push(name + "-horizontal-right",  background);
                            break;
                        case 2 :
                        case 4 :
                            className.push(name + "-bow-down-left", background);
                            break;
                        case 5 :
                        case 7 :
                            className.push(name + "-right",  name + "-up", background);
                            break;
                    }
                    break;
                case 7 :
                    switch (array[2]) {
                        case 0 :
                        case 1 :
                        case 3 :
                        case 6:
                            className.push(name + "-horizontal", background);
                            break;
                        case 2 :
                            className.push(name + "-horizontal-down", background);
                            break;
                        case 4 :
                            className.push(name + "-horizontal-down-right", background);
                            break;
                        case 5 :
                            className.push(name + "-horizontal-down-left", background);
                            break;
                        case 7 :
                            className.push(name + "-up", background);
                            break;
                    }
                    break;
            }
            break;
        case 1 :
            switch (array[1]) {
                case 2 :
                    switch (array[2]) {
                        case 0 :
                        case 1 :
                        case 3 :
                        case 6:
                            className.push(name + "-only", background);
                            break;
                        case 2 :
                        case 4 :
                        case 5 :
                        case 7 :
                            className.push(name + "-vertical-up", background);
                            break;
                    }
                    break;
                case 4 :
                    switch (array[2]) {
                        case 0 :
                        case 1 :
                        case 3 :
                        case 6 :
                            className.push(name + "-horizontal-left", background);
                            break;
                        case 2 :
                        case 5 :
                            className.push(name + "-bow-down-right", background);
                            break;
                        case 4 :
                        case 7 :
                            className.push(name + "-up", name + "-left", background);
                            break;
                    }
                    break;
                case 5 :
                    switch (array[2]) {
                        case 0 :
                        case 1 :
                        case 3 :
                        case 6 :
                            className.push(name + "-horizontal-right", background);
                            break;
                        case 2 :
                        case 4 :
                            className.push(name + "-bow-down-right", background);
                            break;
                        case 5 :
                        case 7 :
                            className.push(name + "-up", name + "-right", background);
                            break;
                    }
                    break;
                case 7 :
                    switch (array[2]) {
                        case 0 :
                        case 1 :
                        case 3 :
                        case 6:
                            className.push(name + "-horizontal", background);
                            break;
                        case 2 :
                            className.push(name + "-horizontal-down", background);
                            break;
                        case 4 :
                            className.push(name + "-horizontal-down-right", background);
                            break;
                        case 5 :
                            className.push(name + "-horizontal-down-left", background);
                            break;
                        case 7 :
                            className.push(name + "-up", background);
                            break;
                    }
                    break;
            }
            break;
        case 2 :
            switch (array[1]) {
                case 2 :
                    switch (array[2]) {
                        case 0 :
                        case 1 :
                        case 3 :
                        case 6 :
                            className.push(name + "-vertical-down", background);
                            break;
                        case 2 :
                        case 4 :
                        case 5 :
                        case 7 :
                            className.push(name + "-vertical", background);
                            break;
                    }
                    break;
                case 4 :
                    switch (array[2]) {
                        case 0 :
                        case 1 :
                        case 3 :
                        case 6 :
                            className.push(name + "-bow-up-right", background);
                            break;
                        case 2 :
                        case 5 :
                            className.push(name + "-vertical-right", background);
                            break;
                        case 4 :
                        case 7 :
                            className.push(name + "-vertical-right-down", background);
                            break;
                    }
                    break;
                case 5 :
                    switch (array[2]) {
                        case 0 :
                        case 1 :
                        case 3 :
                        case 6 :
                            className.push(name + "-bow-up-left", background);
                            break;
                        case 2 :
                        case 4 :
                            className.push(name + "-vertical-left", background);
                            break;
                        case 5 :
                        case 7 :
                            className.push(name + "-vertical-left-down", background);
                            break;
                    }
                    break;
                case 7 :
                    switch (array[2]) {
                        case 0 :
                        case 1 :
                        case 3 :
                        case 6 :
                            className.push(name + "-horizontal-up", background);
                            break;
                        case 2 :
                            className.push(name + "-cross", background);
                            break;
                        case 4 :
                            className.push(name + "-full-down-right", background);
                            break;
                        case 5 :
                            className.push(name + "-full-down-left", background);
                            break;
                        case 7 :
                            className.push(name + "-t-up", background);
                            break;
                    }
                    break;
            }
            break;
        case 3 :
            switch (array[1]) {
                case 2 :
                    switch (array[2]) {
                        case 0 :
                        case 1 :
                        case 3 :
                        case 6:
                            className.push(name + "-only", background);
                            break;
                        case 2 :
                        case 4 :
                        case 5 :
                        case 7 :
                            className.push(name + "-vertical-up", background);
                            break;
                    }
                    break;
                case 4 :
                    switch (array[2]) {
                        case 0 :
                        case 1 :
                        case 3 :
                        case 6 :
                            className.push(name + "-horizontal-left", background);
                            break;
                        case 2 :
                        case 5 :
                            className.push(name + "-bow-down-right", background);
                            break;
                        case 4 :
                        case 7 :
                            className.push(name + "-up", name + "-left", background);
                            break;
                    }
                    break;
                case 5 :
                    switch (array[2]) {
                        case 0 :
                        case 1 :
                        case 3 :
                        case 6 :
                            className.push(name + "-horizontal-right", background);
                            break;
                        case 2 :
                        case 4 :
                            className.push(name + "-bow-down-left", background);
                            break;
                        case 5 :
                        case 7 :
                            className.push(name + "-up", name + "-right", background);
                            break;
                    }
                    break;
                case 7 :
                    switch (array[2]) {
                        case 0 :
                        case 1 :
                        case 3 :
                        case 6:
                            className.push(name + "-horizontal", background);
                            break;
                        case 2 :
                            className.push(name + "-horizontal-down", background);
                            break;
                        case 4 :
                            className.push(name + "-horizontal-right", background);
                            break;
                        case 5 :
                            className.push(name + "-horizontal-down-left", background);
                            break;
                        case 7 :
                            className.push(name + "-up", background);
                            break;
                    }
                    break;
            }
            break;
        case 4 :
            switch (array[1]) {
                case 2 :
                    switch (array[2]) {
                        case 0 :
                        case 1 :
                        case 3 :
                        case 6 :
                            className.push(name + "-vertical-down", background);
                            break;
                        case 2 :
                        case 4 :
                        case 5 :
                        case 7 :
                            className.push(name + "-vertical", background);
                            break;
                    }
                    break;
                case 4 :
                    switch (array[2]) {
                        case 0 :
                        case 1 :
                        case 3 :
                        case 6 :
                            className.push(name + "-down", name + "-left", background);
                            break;
                        case 2 :
                        case 5 :
                            className.push(name + "-vertical-right-up", background);
                            break;
                        case 4 :
                        case 7 :
                            className.push(name + "-left", background);
                            break;
                    }
                    break;
                case 5 :
                    switch (array[2]) {
                        case 0 :
                        case 1 :
                        case 3 :
                        case 6 :
                            className.push(name + "-bow-up-left", background);
                            break;
                        case 2 :
                        case 4 :
                            className.push(name + "-vertical-left", background);
                            break;
                        case 5 :
                        case 7 :
                            className.push(name + "-vertical-left-down", background);
                            break;
                    }
                    break;
                case 7 :
                    switch (array[2]) {
                        case 0 :
                        case 1 :
                        case 3 :
                        case 6 :
                            className.push(name + "-horizontal-up-right", background);
                            break;
                        case 2 :
                            className.push(name + "-full-up-right", background);
                            break;
                        case 4 :
                            className.push(name + "-t-left", background);
                            break;
                        case 5 :
                            className.push(name + "-diagonal-up-right", background);
                            break;
                        case 7 :
                            className.push(name + "-left-up", background);
                            break;
                    }
                    break;
            }
            break;
        case 5 :
            switch (array[1]) {
                //done
                case 2 :
                    switch (array[2]) {
                        case 0 :
                        case 1 :
                        case 3 :
                        case 6 :
                            className.push(name + "-vertical-down", background);
                            break;
                        case 2 :
                        case 4 :
                        case 5 :
                        case 7 :
                            className.push(name + "-vertical", background);
                            break;
                    }
                    break;
                case 4 :
                    switch (array[2]) {
                        case 0 :
                        case 1 :
                        case 3 :
                        case 6 :
                            className.push(name + "-bow-up-right", background);
                            break;
                        case 2 :
                        case 5 :
                            className.push(name + "-vertical-right", background);
                            break;
                        case 4 :
                        case 7 :
                            className.push(name + "-vertical-right-down", background);
                            break;
                    }
                    break;
                case 5 :
                    switch (array[2]) {
                        case 0 :
                        case 1 :
                        case 3 :
                            className.push(name + "-down", name + "-right", background);
                            break;
                        case 2 :
                        case 4 :
                        case 6 :
                            className.push(name + "-vertical-left-up", background);
                            break;
                        case 5 :
                        case 7 :
                            className.push(name + "-right", background);
                            break;
                    }
                    break;
                case 7 :
                    switch (array[2]) {
                        case 0 :
                        case 1 :
                        case 3 :
                        case 6 :
                            className.push(name + "-horizontal-up-left", background);
                            break;
                        case 2 :
                            className.push(name + "-full-up-left", background);
                            break;
                        case 4 :
                            className.push(name + "-diagonal-down-right", background);
                            break;
                        case 5 :
                            className.push(name + "-t-right", background);
                            break;
                        case 7 :
                            className.push(name + "-right-up", background);
                            break;
                    }
                    break;
            }
            break;
        case 6 :
            switch (array[1]) {
                case 2 :
                    switch (array[2]) {
                        case 0 :
                        case 1 :
                        case 3 :
                        case 6:
                            className.push(name + "-only", background);
                            break;
                        case 2 :
                        case 4 :
                        case 5 :
                        case 7 :
                            className.push(name + "-vertical-up", background);
                            break;
                    }
                    break;
                case 4 :
                    switch (array[2]) {
                        case 0 :
                        case 1 :
                        case 3 :
                        case 6 :
                            className.push(name + "-horizontal-left", background);
                            break;
                        case 2 :
                        case 5 :
                            className.push(name + "-bow-down-right", background);
                            break;
                        case 4 :
                        case 7 :
                            className.push(name + "-up", name + "-left", background);
                            break;
                    }
                    break;
                case 5 :
                    switch (array[2]) {
                        case 0 :
                        case 1 :
                        case 3 :
                        case 6 :
                            className.push(name + "-horizontal-right", background);
                            break;
                        case 2 :
                        case 4 :
                            className.push(name + "-bow-down-left", background);
                            break;
                        case 5 :
                        case 7 :
                            className.push(name + "-right", name + "-up", background);
                            break;
                    }
                    break;
                case 7 :
                    switch (array[2]) {
                        case 0 :
                        case 1 :
                        case 3 :
                        case 6:
                            className.push(name + "-horizontal", background);
                            break;
                        case 2 :
                            className.push(name + "-horizontal-down", background);
                            break;
                        case 4 :
                            className.push(name + "-horizontal-down-right", background);
                            break;
                        case 5 :
                            className.push(name + "-horizontal-down-left", background);
                            break;
                        case 7 :
                            className.push(name + "-up", background);
                            break;
                    }
                    break;
            }
            break;
        case 7 :
            switch (array[1]) {

                case 2 :
                    switch (array[2]) {
                        case 0 :
                        case 1 :
                        case 3 :
                        case 6 :
                            className.push(name + "-vertical-down", background);
                            break;
                        case 2 :
                        case 4 :
                        case 5 :
                        case 7 :
                            className.push(name + "-vertical", background);
                            break;
                    }
                    break;
                case 4 :
                    switch (array[2]) {
                        case 0 :
                        case 1 :
                        case 3 :
                        case 6 :
                            className.push(name + "-down", name + "-left", background);
                            break;
                        case 2 :
                        case 5 :
                            className.push(name + "-vertical-right-up", background);
                            break;
                        case 4 :
                        case 7 :
                            className.push(name + "-left", background);
                            break;
                    }
                    break;
                case 5 :
                    switch (array[2]) {
                        case 0 :
                        case 1 :
                        case 3 :
                        case 6 :
                            className.push(name + "-down", name + "-right", background);
                            break;
                        case 2 :
                        case 4 :
                            className.push(name + "-vertical-left-up", background);
                            break;
                        case 5 :
                        case 7 :
                            className.push(name + "-right", background);
                            break;
                    }
                    break;
                case 7 :
                    switch (array[2]) {
                        case 0 :
                        case 6 :
                        case 1 :
                        case 3 :
                            className.push(name + "-down", background);
                            break;
                        case 2 :
                            className.push(name + "-t-down", background);
                            break;

                        case 4 :
                            className.push(name + "-left-down", background);
                            break;
                        case 5 :
                            className.push(name + "-right-down", background);
                            break;
                    }
                    break;
            }
            break;
    }
    return className;
}

