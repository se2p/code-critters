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
goog.addDependency("../" + "/hair_field_colour.js", ['Blockly.HairFieldColour'], ['Blockly.Field', 'Blockly.utils', 'goog.dom', 'goog.events', 'goog.style', 'goog.ui.ColorPicker']);
goog.require('Blockly.HairFieldColour');

Blockly.JavaScript['properties'] = function(block) {
    var dropdown_properties = block.getFieldValue('properties');
    var code;
    switch (dropdown_properties) {
        case 'TERRAIN' :
            code = 'this._globalData.level[this.position.y][this.position.x]';
            break;
        case 'SIZE':
            code = 'this.size';
            break;
        case 'BODYCOLOR':
            code = 'this.color';
            break;
        case 'XCOORD':
            code = 'this.position.x + 1';
            break;
        case 'YCOORD':
            code = 'this._globalData.height - this.position.y';
            break;
        case 'CANWALKONWATER':
            code = 'this.canWalkOnWater';
            break;
        case 'HATCOLOR':
            code = 'this.hair';
            break;
        default:
            code = "console.log('Cannot translate blockly to javaScript!')"
    }
    return [code, Blockly.JavaScript.ORDER_NONE];
};

Blockly.JavaScript['properties_user'] = function(block) {
    var dropdown_properties = block.getFieldValue('properties');
    var code;
    switch (dropdown_properties) {
        case 'SIZE':
            code = 'this.size';
            break;
        case 'BODYCOLOR':
            code = 'this.color';
            break;
        case 'HATCOLOR':
            code = 'this.hair';
            break;
        default:
            code = "console.log('Cannot translate blockly to javaScript!')"
    }
    return [code, Blockly.JavaScript.ORDER_NONE];
};

Blockly.JavaScript['set'] = function(block) {
    var value_name1 = Blockly.JavaScript.valueToCode(block, 'value1', Blockly.JavaScript.ORDER_ATOMIC);
    var value_name2 = Blockly.JavaScript.valueToCode(block, 'value2', Blockly.JavaScript.ORDER_ATOMIC);
    var code = value_name1 + " = " + value_name2 + ";\n";
    return code;
};

Blockly.JavaScript['assert'] = function(block) {
    var value_target = Blockly.JavaScript.valueToCode(block, 'target', Blockly.JavaScript.ORDER_ATOMIC);
    var value_value = Blockly.JavaScript.valueToCode(block, 'value', Blockly.JavaScript.ORDER_ATOMIC);

    var code = 'if (' + value_target + ' !== ' + value_value + ') {\n' +
        '\tthis._killCritter(x, y); \n' +
        '}\n';
    return code;
};

Blockly.JavaScript['variable'] = function(block) {
    var text_name = block.getFieldValue('NAME');
    var code = 'this.variable_' + text_name;
    return [code, Blockly.JavaScript.ORDER_NONE];
};

Blockly.JavaScript['dirt'] = function(block) {
    var code = '"dirt"';
    return [code, Blockly.JavaScript.ORDER_NONE];
};

Blockly.JavaScript['grass'] = function(block) {
    var code = '"grass"';
    return [code, Blockly.JavaScript.ORDER_NONE];
};
Blockly.JavaScript['water'] = function(block) {
    var code = '"water"';
    return [code, Blockly.JavaScript.ORDER_NONE];
};
Blockly.JavaScript['lava'] = function(block) {
    var code = '"lava"';
    return [code, Blockly.JavaScript.ORDER_NONE];
};
Blockly.JavaScript['ice'] = function(block) {
    var code = '"ice"';
    return [code, Blockly.JavaScript.ORDER_NONE];
};

Blockly.defineBlocksWithJsonArray([
    {
        "type": "dirt",
        "message0": "dirt",
        "output": null,
        "colour": 165,
        "tooltip": "",
        "helpUrl": "",
        "extensions": [
            "custom_text_quotes"
        ]
    },
    {
        "type": "grass",
        "message0": "grass",
        "output": null,
        "colour": 165,
        "tooltip": "",
        "helpUrl": "",
        "extensions": [
            "custom_text_quotes"
        ]
    },
    {
        "type": "water",
        "message0": "water",
        "output": null,
        "colour": 165,
        "tooltip": "",
        "helpUrl": "",
        "extensions": [
            "custom_text_quotes"
        ]
    },
    {
        "type": "lava",
        "message0": "lava",
        "output": null,
        "colour": 165,
        "tooltip": "",
        "helpUrl": "",
        "extensions": [
            "custom_text_quotes"
        ]
    },
    {
        "type": "ice",
        "message0": "ice",
        "output": null,
        "colour": 165,
        "tooltip": "",
        "helpUrl": "",
        "extensions": [
            "custom_text_quotes"
        ]
    }
]);

Blockly.Constants.Terrain = {};

Blockly.Constants.Terrain.CUSTOM_TEXT_QUOTES_EXTENSION = function() {
    this.mixin(Blockly.Constants.Terrain.QUOTE_IMAGE_MIXIN);
    this.quoteTerrain_();
};

Blockly.Constants.Terrain.QUOTE_IMAGE_MIXIN = {
    quoteTerrain_: function () {
        for (var i = 0, input; input = this.inputList[i]; i++) {
            input.insertFieldAt(0, this.newQuote_(true));
            input.insertFieldAt(2, this.newQuote_(false));
            return;
        }
        console.warn('field named "' + fieldName + '" not found in ' + this.toDevString());
    },

    newQuote_: function(open) {
        var isLeft = this.RTL? !open : open;
        var dataUri = isLeft ?
            this.QUOTE_IMAGE_LEFT_DATAURI :
            this.QUOTE_IMAGE_RIGHT_DATAURI;
        return new Blockly.FieldImage(
            dataUri,
            this.QUOTE_IMAGE_WIDTH,
            this.QUOTE_IMAGE_HEIGHT,
            isLeft ? '\u201C' : '\u201D');
    },

    QUOTE_IMAGE_LEFT_DATAURI:
    'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAwAAAAKCAQAAAAqJXdxAAAA' +
    'n0lEQVQI1z3OMa5BURSF4f/cQhAKjUQhuQmFNwGJEUi0RKN5rU7FHKhpjEH3TEMtkdBSCY' +
    '1EIv8r7nFX9e29V7EBAOvu7RPjwmWGH/VuF8CyN9/OAdvqIXYLvtRaNjx9mMTDyo+NjAN1' +
    'HNcl9ZQ5oQMM3dgDUqDo1l8DzvwmtZN7mnD+PkmLa+4mhrxVA9fRowBWmVBhFy5gYEjKMf' +
    'z9AylsaRRgGzvZAAAAAElFTkSuQmCC',

    QUOTE_IMAGE_RIGHT_DATAURI:
    'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAwAAAAKCAQAAAAqJXdxAAAA' +
    'qUlEQVQI1z3KvUpCcRiA8ef9E4JNHhI0aFEacm1o0BsI0Slx8wa8gLauoDnoBhq7DcfWhg' +
    'gONDmJJgqCPA7neJ7p934EOOKOnM8Q7PDElo/4x4lFb2DmuUjcUzS3URnGib9qaPNbuXvB' +
    'O3sGPHJDRG6fGVdMSeWDP2q99FQdFrz26Gu5Tq7dFMzUvbXy8KXeAj57cOklgA+u1B5Aos' +
    'lLtGIHQMaCVnwDnADZIFIrXsoXrgAAAABJRU5ErkJggg==',

    QUOTE_IMAGE_WIDTH: 12,

    QUOTE_IMAGE_HEIGHT: 12,
};

Blockly.Extensions.register('custom_text_quotes',
    Blockly.Constants.Terrain.CUSTOM_TEXT_QUOTES_EXTENSION);


Blockly.JavaScript['cut_head'] = function(block) {
    let statements_content = Blockly.JavaScript.statementToCode(block, 'Content');
    let code = '//CUT_START\n' + statements_content + "\n//CUT_END\n";
    return code;
};


Blockly.JavaScript['shirt_picker'] = function(block) {
    let dropdown_color = block.getFieldValue('color');
    let code = '"' + dropdown_color + '"';
    return [code, Blockly.JavaScript.ORDER_NONE];
};

Blockly.JavaScript['hair_picker'] = function(block) {
    let dropdown_color = block.getFieldValue('color');
    let code = '"' + dropdown_color + '"';
    return [code, Blockly.JavaScript.ORDER_NONE];
};

Blockly.JavaScript['init_head'] = function(block) {
    let statements_content = Blockly.JavaScript.statementToCode(block, 'Content');
    let code = '//INIT_START\n' + statements_content + "\n//INIT_END\n";
    return code;
};
