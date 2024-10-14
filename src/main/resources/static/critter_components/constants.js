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
export const leftEmptyAssertBlockly = "if ( !==";

export const rightEmptyAssertBlockly = "!== )";

export const speedyCritterInterval = 1000;

export const normalCritterInterval = 3000;

export const critterTransitionDuration = "3s";

// Object to organise warnings about invalid data type comparisons when building portals
export const warningMessages = {
    shirtcolor_prop: {
        size_prop: "invalid_compare_size_shirt",
        rounds_count_prop: "invalid_compare_rounds_shirt",
        berry_count_prop: "invalid_compare_berries_shirt",
        number: "invalid_compare_num_shirt",
        math_arithmetic: "invalid_compare_num_shirt",
        math_number_property: "invalid_compare_bool_shirt",
        logic_compare: "invalid_compare_bool_shirt",
        hair_picker: "invalid_compare_hair_shirt",
        haircolor_prop: "invalid_compare_hair_shirt"
    },
    haircolor_prop: {
        size_prop: "invalid_compare_size_hair",
        rounds_count_prop: "invalid_compare_rounds_hair",
        berry_count_prop: "invalid_compare_berries_hair",
        number: "invalid_compare_num_hair",
        math_arithmetic: "invalid_compare_num_hair",
        math_number_property: "invalid_compare_bool_hair",
        logic_compare: "invalid_compare_bool_hair",
        shirt_picker: "invalid_compare_hair_shirt",
        shirtcolor_prop: "invalid_compare_hair_shirt"
    },
    size_prop: {
        hair_picker: "invalid_compare_size_hair",
        shirt_picker: "invalid_compare_size_shirt",
        math_number_property: "invalid_compare_size_bool",
        logic_compare: "invalid_compare_size_bool",
        shirtcolor_prop: "invalid_compare_size_shirt",
        haircolor_prop: "invalid_compare_size_hair"
    },
    rounds_count_prop: {
        hair_picker: "invalid_compare_rounds_hair",
        shirt_picker: "invalid_compare_rounds_shirt",
        math_number_property: "invalid_compare_rounds_bool",
        logic_compare: "invalid_compare_rounds_bool",
        shirtcolor_prop: "invalid_compare_rounds_shirt",
        haircolor_prop: "invalid_compare_rounds_hair"
    },
    berry_count_prop: {
        hair_picker: "invalid_compare_berries_hair",
        shirt_picker: "invalid_compare_berries_shirt",
        math_number_property: "invalid_compare_berries_bool",
        logic_compare: "invalid_compare_berries_bool",
        shirtcolor_prop: "invalid_compare_berries_shirt",
        haircolor_prop: "invalid_compare_berries_hair"
    },
    shirt_picker: {
        number: "invalid_compare_num_shirt",
        size_prop: "invalid_compare_size_shirt",
        rounds_count_prop: "invalid_compare_rounds_shirt",
        berry_count_prop: "invalid_compare_berries_shirt",
        math_number_property: "invalid_compare_bool_shirt",
        logic_compare: "invalid_compare_bool_shirt",
        hair_picker: "invalid_compare_hair_shirt",
        haircolor_prop: "invalid_compare_hair_shirt"
    },
    hair_picker: {
        number: "invalid_compare_num_hair",
        math_number_property: "invalid_compare_bool_hair",
        logic_compare: "invalid_compare_bool_hair",
        size_prop: "invalid_compare_size_hair",
        rounds_count_prop: "invalid_compare_rounds_hair",
        berry_count_prop: "invalid_compare_berries_hair",
        shirt_picker: "invalid_compare_hair_shirt",
        shirtcolor_prop: "invalid_compare_hair_shirt"
    },
    math_number: {
        shirt_picker: "invalid_compare_num_shirt",
        hair_picker: "invalid_compare_num_hair",
        math_number_property: "invalid_compare_num_bool",
        logic_compare: "invalid_compare_num_bool",
        shirtcolor_prop: "invalid_compare_num_shirt",
        haircolor_prop: "invalid_compare_num_hair"
    },
    math_arithmetic: {
        shirt_picker: "invalid_compare_num_shirt",
        hair_picker: "invalid_compare_num_hair",
        math_number_property: "invalid_compare_num_bool",
        logic_compare: "invalid_compare_num_bool",
        shirtcolor_prop: "invalid_compare_num_shirt",
        haircolor_prop: "invalid_compare_num_hair"
    },
    math_number_property: {
        shirt_picker: "invalid_compare_bool_shirt",
        hair_picker: "invalid_compare_bool_hair",
        shirtcolor_prop: "invalid_compare_bool_shirt",
        haircolor_prop: "invalid_compare_bool_hair",
        size_prop: "invalid_compare_size_bool",
        rounds_count_prop: "invalid_compare_rounds_bool",
        berry_count_prop: "invalid_compare_berries_bool",
        number: "invalid_compare_num_bool",
        notANumberAsChild: "invalid_object_in_num_prop"
    },
    logic_compare: { // stands for all bool values, including e.g. logic operation blocks
        shirt_picker: "invalid_compare_bool_shirt",
        hair_picker: "invalid_compare_bool_hair",
        shirtcolor_prop: "invalid_compare_bool_shirt",
        haircolor_prop: "invalid_compare_bool_hair",
        size_prop: "invalid_compare_size_bool",
        rounds_count_prop: "invalid_compare_rounds_bool",
        berry_count_prop: "invalid_compare_berries_bool",
        number: "invalid_compare_num_bool"
    }

};

// Names of fix variable blocks in CUTs (blocks are defined in the level XMLs)
export const blocklyVariableTranslations = {
    'count' : {
        'de': 'Zähler',
    },
    'Zähler' : {
        'en': 'count',
    },
};
