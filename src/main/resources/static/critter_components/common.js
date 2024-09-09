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
 * Returns true if the given board position is a terrain the critters can walk on.
 *
 * @param position contains x and y
 * @param level contains the 2d array with board fields
 * @returns {boolean}
 */
export function _isWalkableTerrain(position, level) {
    if (level && level[position.y]
        && level[position.y][position.x]) {
        let fieldClass = level[position.y][position.x];
        return (fieldClass === "grass" || fieldClass === "dirt" || fieldClass === "water"
            || fieldClass === "ice" || fieldClass === "lava")
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
