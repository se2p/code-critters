DELETE
FROM `heal_level`;
INSERT INTO `heal_level` (`id`, `display_name`, `cut`, `xml`, `name`, `test`, `loop_start`, `spawn`, `display_level`, `rounds_num`, `number_of_mutants`, `boardbackground`, `inner_loop_start`, `basket_position`, `inner_basket_position`)
VALUES ('0d4d7178-8e67-4969-9b36-1adc3d0b5a0c',
        'Second Stage - Level 1',
        '(this.redBerryCount) = (this.redBerryCount + 1);',
        '<xml xmlns="https://developers.google.com/blockly/xml">
    <block type="controls_whileUntil" id="recipe_start_while" x="141" y="277">
        <field name="MODE">WHILE</field>
        <value name="BOOL">
            <block type="logic_compare" id="KtkdKiqTzM3s2%4~NYEi">
                <field name="OP">LTE</field>
                <value name="A">
                    <block type="properties_user_healing" id="k}dr(ZTiuCl}ndTT9G^F">
                        <field name="properties">ROUNDS</field>
                    </block>
                </value>
                <value name="B">
                    <block type="math_number" id="ci5l)`:$82|rBew,oNj`">
                        <field name="NUM">3</field>
                    </block>
                </value>
            </block>
        </value>
        <statement name="DO">
            <block type="set_berries" id="OLQ=1JUp%13WuB`CCNRp" x="42" y="139">
                <value name="value1">
                    <block type="bush_properties" id="k}dr(ZTiuCl}ndTT9G^F">
                        <field name="properties">REDBERRIES</field>
                    </block>
                </value>
                <value name="value2">
                    <block type="math_number" id="Eem[Vxht-;;+ILj@@lxp" x="263" y="113">
                        <field name="NUM">1</field>
                    </block>
                </value>
            </block>
        </statement>
    </block>
</xml>',
        'level_1',
        '<xml xmlns="http://www.w3.org/1999/xhtml"><block type="assert" id="^yaA$yq,j8JIJ%`7ZUI8" x="241" y="189"><value name="target"><block type="variable" id="xZ+l3*q=a(sQh^biF0N/"><field name="NAME">count</field></block></value><value name="value"><block type="math_number" id="Eem[Vxht-;;+ILj@@lxp"><field name="NUM">0</field></block></value></block></xml>',
        '{[x][4]}{[y][1]}',
        '{[x][3]}{[y][0]}',
        '{[wood][wood][wood][dirt][wood][wood][wood][wood]}{[wood][dirt][dirt][dirt][dirt][dirt][dirt][wood]}{[wood][dirt][wood][wood][wood][wood][dirt][wood]}{[wood][dirt][wood][wood][wood][wood][dirt][wood]}{[wood][dirt][wood][wood][wood][wood][dirt][wood]}{[wood][dirt][wood][wood][wood][wood][dirt][wood]}{[wood][dirt][dirt][dirt][dirt][dirt][dirt][wood]}{[wood][wood][wood][wood][wood][wood][wood][wood]}',
        3,
        6,
        'GRASS',
        '{[x][-1]}{[y][-1]}',
        '{[x][3]}{[y][1]}',
        '{[x][-1]}{[y][-1]}'
       );


INSERT INTO `heal_level` (`id`, `display_name`, `cut`, `xml`, `name`, `test`, `loop_start`, `spawn`, `display_level`, `rounds_num`, `number_of_mutants`, `boardbackground`, `inner_loop_start`, `basket_position`, `inner_basket_position`)
VALUES ('00efaabe-cf73-423a-aa26-69c0377d7c23',
        'Second Stage - Level 4',
        'if ((this.color) == "red") { \r\n this.redBerryCount = this.redBerryCount + 1;\r\n} else {\r\n this.pinkBerryCount = this.pinkBerryCount + 2;\r\n};',
        '<xml xmlns="https://developers.google.com/blockly/xml">
<block type="controls_whileUntil" id="recipe_start_while" x="141" y="277">
    <field name="MODE">WHILE</field>
    <value name="BOOL">
        <block type="logic_compare" id="KtkdKiqTzM3s2%4~NYEi">
            <field name="OP">LTE</field>
            <value name="A">
                <block type="properties_user_healing" id="k}dr(ZTiuCl}ndTT9G^F">
                    <field name="properties">ROUNDS</field>
                </block>
            </value>
            <value name="B">
                <block type="math_number" id="ci5l)`:$82|rBew,oNj`">
                    <field name="NUM">3</field>
                </block>
            </value>
        </block>
    </value>
    <statement name="DO">
        <block type="controls_if" id=":X*E3lSlnIz/%7C#p8}2">
            <mutation else="1"></mutation>
            <value name="IF0">
                <block type="logic_compare" id="jvkN^pyba}7Eqi%jBW2S">
                        <field name="OP">EQ</field>
                        <value name="A">
                            <block type="properties_user_healing" id="k}dr(ZTiuCl}ndTT9G^F">
                                <field name="properties">BODYCOLOR</field>
                            </block>
                        </value>
                        <value name="B">
                            <block type="shirt_picker" id="bW-w`M[a]R1t?gVLo[me" x="229" y="171">
                                <field name="color">red</field>
                            </block>
                        </value>
                    </block>
            </value>
            <statement name="DO0">
                <block type="set_berries" id="OLQ=1JUp%13WuB`CCNRp" x="42" y="139">
                    <value name="value1">
                        <block type="bush_properties" id="k}dr(ZTiuCl}ndTT9G^F">
                            <field name="properties">REDBERRIES</field>
                        </block>
                    </value>
                    <value name="value2">
                        <block type="math_number" id="Eem[Vxht-;;+ILj@@lxp" x="263" y="113">
                            <field name="NUM">1</field>
                        </block>
                    </value>
                </block>
            </statement>

            <statement name="ELSE">
                <block type="set_berries" id="OLQ=1JUp%13WuB`CCNRp" x="42" y="139">
                    <value name="value1">
                        <block type="bush_properties" id="k}dr(ZTiuCl}ndTT9G^F">
                            <field name="properties">PINKBERRIES</field>
                        </block>
                    </value>
                    <value name="value2">
                        <block type="math_number" id="Eem[Vxht-;;+ILj@@lxp" x="263" y="113">
                            <field name="NUM">2</field>
                        </block>
                    </value>
                </block>
            </statement>
        </block>
    </statement>
</block>
</xml>',
        'level_4',
        '<xml xmlns="http://www.w3.org/1999/xhtml"><block type="assert" id="^yaA$yq,j8JIJ%`7ZUI8" x="241" y="189"><value name="target"><block type="variable" id="xZ+l3*q=a(sQh^biF0N/"><field name="NAME">count</field></block></value><value name="value"><block type="math_number" id="Eem[Vxht-;;+ILj@@lxp"><field name="NUM">0</field></block></value></block></xml>',
        '{[x][4]}{[y][1]}',
        '{[x][3]}{[y][0]}',
        '{[wood][wood][wood][dirt][sea][sea][sea][sea]}{[wood][dirt][dirt][dirt][dirt][dirt][sea][sea]}{[wood][dirt][water][water][water][dirt][sea][sea]}{[dirt][dirt][water][water][water][dirt][sea][sea]}{[dirt][water][dirt][dirt][dirt][dirt][sea][sea]}{[dirt][water][dirt][water][water][dirt][sea][sea]}{[dirt][dirt][dirt][dirt][dirt][dirt][sea][sea]}{[wood][wood][wood][wood][wood][wood][sea][sea]}',
        3,
        7,
        'GRASS',
        '{[x][-1]}{[y][-1]}',
        '{[x][3]}{[y][1]}',
        '{[x][-1]}{[y][-1]}'
       );


INSERT INTO `heal_level` (`id`, `display_name`, `cut`, `xml`, `name`, `test`, `loop_start`, `spawn`, `display_level`, `rounds_num`, `number_of_mutants`, `boardbackground`, `inner_loop_start`, `basket_position`, `inner_basket_position`)
VALUES ('ef594c76-0544-465f-ac72-f6293d73910d',
        'Second Stage - Level 6',
        'if ((this.roundsCount) === 1) {\r\n    this.redBerryCount = this.redBerryCount + 1;\r\n} else if (this.roundsCount === 2) {\r\n    this.pinkBerryCount = this.pinkBerryCount + 2;\r\n} else {\r\n    this.blackBerryCount = this.blackBerryCount + 3;\r\n}',
        '<xml xmlns="https://developers.google.com/blockly/xml">
    <block type="controls_whileUntil" id="recipe_start_while" x="141" y="277">
        <field name="MODE">WHILE</field>
        <value name="BOOL">
            <block type="logic_compare" id="KtkdKiqTzM3s2%4~NYEi">
                <field name="OP">LTE</field>
                <value name="A">
                    <block type="properties_user_healing" id="k}dr(ZTiuCl}ndTT9G^F">
                        <field name="properties">ROUNDS</field>
                    </block>
                </value>
                <value name="B">
                    <block type="math_number" id="ci5l)`:$82|rBew,oNj`">
                        <field name="NUM">3</field>
                    </block>
                </value>
            </block>
        </value>
        <statement name="DO">
            <block type="controls_if" id=":X*E3lSlnIz/%7C#p8}2">
                <mutation elseif="1" else="1"></mutation>
                <value name="IF0">
                    <block type="logic_compare" id="jvkN^pyba}7Eqi%jBW2S">
                        <field name="OP">EQ</field>
                    <value name="A">
                        <block type="properties_user_healing" id="k}dr(ZTiuCl}ndTT9G^F">
                            <field name="properties">ROUNDS</field>
                        </block>
                    </value>
                    <value name="B">
                        <shadow type="math_number" id="bm[`K.b?_4VT6HfqaJ1n">
                            <field name="NUM">1</field>
                        </shadow>
                    </value>
                </block>
                </value>
                <statement name="DO0">
                    <block type="set_berries" id="OLQ=1JUp%13uuB`CCNRp" x="42" y="139">
                        <value name="value1">
                            <block type="bush_properties" id="k}dr(ZTiuCl}ndTT9G^F">
                                <field name="properties">REDBERRIES</field>
                            </block>
                        </value>
                        <value name="value2">
                            <block type="math_number" id="Eem[Vxht-;;+ILj@@lxp" x="263" y="113">
                                <field name="NUM">1</field>
                            </block>
                        </value>
                    </block>
                </statement>

                <value name="IF1">
                    <block type="logic_compare" id="|S#{Zv2);kKH47hXzFB5">
                        <field name="OP">EQ</field>
                    <value name="A">
                        <block type="properties_user_healing" id="k}dr(ZTiuCl}ndTT9G^F">
                            <field name="properties">ROUNDS</field>
                        </block>
                    </value>
                    <value name="B">
                        <shadow type="math_number" id="bm[`K.b?_4VT6HfqaJ1n">
                            <field name="NUM">2</field>
                        </shadow>
                    </value>
                </block>
                </value>

                <statement name="DO1">
                    <block type="set_berries" id="OLQ=1JUp%13WuB`CCNRp" x="42" y="139">
                        <value name="value1">
                            <block type="bush_properties" id="k}dr(ZTiuCl}ndTT9G^F">
                                <field name="properties">PINKBERRIES</field>
                            </block>
                        </value>
                        <value name="value2">
                            <block type="math_number" id="Eem[Vxht-;;+ILj@@lxp" x="263" y="113">
                                <field name="NUM">2</field>
                            </block>
                        </value>
                    </block>
                </statement>

                <statement name="ELSE">
                    <block type="set_berries" id="OLQ=1JUp%13WuB`CCNRp" x="42" y="139">
                        <value name="value1">
                            <block type="bush_properties" id="k}dr(ZTiuCl}ndTT9G^F">
                                <field name="properties">BLACKBERRIES</field>
                            </block>
                        </value>
                        <value name="value2">
                            <block type="math_number" id="Eem[Vxht-;;+ILj@@lxp" x="263" y="113">
                                <field name="NUM">3</field>
                            </block>
                        </value>
                    </block>
                </statement>
            </block>
        </statement>
    </block>
</xml>',
        'level_6',
        '<xml xmlns="http://www.w3.org/1999/xhtml"><block type="assert" id="^yaA$yq,j8JIJ%`7ZUI8" x="241" y="189"><value name="target"><block type="variable" id="xZ+l3*q=a(sQh^biF0N/"><field name="NAME">count</field></block></value><value name="value"><block type="math_number" id="Eem[Vxht-;;+ILj@@lxp"><field name="NUM">0</field></block></value></block></xml>',
        '{[x][2]}{[y][1]}',
        '{[x][1]}{[y][0]}',
        '{[sand][dirt][lava][lava][lava][lava][lava][lava]}{[sand][dirt][dirt][dirt][dirt][dirt][dirt][dirt]}{[lava][dirt][sand][dirt][sand][dirt][sand][dirt]}{[lava][dirt][sand][dirt][sand][dirt][sand][dirt]}{[lava][dirt][sand][dirt][sand][dirt][sand][dirt]}{[lava][dirt][sand][dirt][sand][dirt][sand][dirt]}{[lava][dirt][dirt][dirt][dirt][dirt][dirt][dirt]}{[lava][lava][lava][lava][lava][lava][lava][lava]}',
        3,
        6,
        'SAND',
        '{[x][-1]}{[y][-1]}',
        '{[x][1]}{[y][1]}',
        '{[x][-1]}{[y][-1]}'
       );

INSERT INTO `heal_level` (`id`, `display_name`, `cut`, `xml`, `name`, `test`, `loop_start`, `spawn`, `display_level`, `rounds_num`, `number_of_mutants`, `boardbackground`, `inner_loop_start`, `basket_position`, `inner_basket_position`)
VALUES ('8fae4dce-20f6-47ea-aea2-dc44a2d148ed',
        'Second Stage - Level 9',
        'if ((this.orangeBerryCount) === 1) { \r\n this.whiteBerryCount = this.whiteBerryCount + 1;\r\n} else {\r\n this.orangeBerryCount = this.orangeBerryCount + 1;\r\n};',
        '<xml xmlns="https://developers.google.com/blockly/xml">
    <block type="controls_whileUntil" id="c%wsH+;H$UJxOv1" x="141" y="277">
        <field name="MODE">WHILE</field>
        <value name="BOOL">
            <block type="logic_compare" id="KtkdKiqTzM3s2NYEi">
                <field name="OP">LTE</field>
                <value name="A">
                    <block type="properties_user_healing" id="kdrZTiuClndTT9GF1">
                        <field name="properties">ROUNDS</field>
                    </block>
                </value>
                <value name="B">
                    <block type="math_number" id="ci5l82rBewoNj1">
                        <field name="NUM">3</field>
                    </block>
                </value>
            </block>
        </value>
        <statement name="DO">
            <block type="controls_if" id="X3lSlnIz7Cp821">
                <mutation else="1"></mutation>
                <value name="IF0">
                    <block type="logic_operation" id="NhuRFJmEnEXEyN1">
                        <field name="OP">OR</field>
                        <value name="A">
                            <block type="logic_compare" id="jvkNpyba7EqiBW2S1">
                                <field name="OP">LT</field>
                                <value name="A">
                                    <block type="properties_user_healing" id="kdrZTiuClndTT9GF2">
                                        <field name="properties">REDBERRIES</field>
                                    </block>
                                </value>
                                <value name="B">
                                    <block type="math_number" id="bmK.b4VT6HfqaJ1n1" x="263" y="113">
                                        <field name="NUM">2</field>
                                    </block>
                                </value>
                            </block>
                        </value>
                        <value name="B">
                            <block type="logic_compare" id="Updh4dmqWOl8dM8y1">
                                <field name="OP">EQ</field>
                                <value name="A">
                                    <block type="properties_user_healing" id="yeoBzli0GZgX2">
                                        <field name="properties">BODYCOLOR</field>
                                    </block>
                                </value>
                                <value name="B">
                                    <block type="shirt_picker" id="SXzwH9Ugapwb0EFVRv2">
                                        <field name="color">cyan</field>
                                    </block>
                                </value>
                            </block>
                        </value>
                    </block>
                </value>
                <statement name="DO0">
                    <block type="set_berries" id="OLQ1JUp13WuBCCNRp1" x="42" y="139">
                        <value name="value1">
                            <block type="bush_properties" id="kdrZTiuClndTT9GF3">
                                <field name="properties">WHITEBERRIES</field>
                            </block>
                        </value>
                        <value name="value2">
                            <block type="math_number" id="EemVxhtLILj1" x="263" y="113">
                                <field name="NUM">2</field>
                            </block>
                        </value>

                    <next>
                    <block type="set_berries" id="OLp1JUp13WyBCCNRp2" x="42" y="139">
                        <value name="value1">
                            <block type="bush_properties" id="pdrZTiuglndTT9GF4">
                                <field name="properties">REDBERRIES</field>
                            </block>
                        </value>
                        <value name="value2">
                            <block type="math_number" id="EsmVxhtLILj2" x="263" y="113">
                                <field name="NUM">2</field>
                            </block>
                        </value>
                    </block>
                    </next>
                </block>
                </statement>

                <statement name="ELSE">
                    <block type="set_berries" id="OLQ1JUp13WuBCCNRp3" x="42" y="139">
                        <value name="value1">
                            <block type="bush_properties" id="kdrZTiuClndTT9GF5">
                                <field name="properties">REDBERRIES</field>
                            </block>
                        </value>
                        <value name="value2">
                            <block type="math_number" id="EemVxhtLILj3" x="263" y="113">
                                <field name="NUM">1</field>
                            </block>
                        </value>
                    </block>
                </statement>
            </block>
        </statement>
    </block>
</xml>
',
        'level_9',
        '<xml xmlns="http://www.w3.org/1999/xhtml"><block type="assert" id="^yaA$yq,j8JIJ%`7ZUI8" x="241" y="189"><value name="target"><block type="variable" id="xZ+l3*q=a(sQh^biF0N/"><field name="NAME">count</field></block></value><value name="value"><block type="math_number" id="Eem[Vxht-;;+ILj@@lxp"><field name="NUM">0</field></block></value></block></xml>',
        '{[x][2]}{[y][1]}',
        '{[x][0]}{[y][1]}',
        '{[lava][lava][lava][lava][lava][lava][lava][lava]}{[dirt][dirt][dirt][dirt][dirt][dirt][lava][lava]}{[lava][dirt][lava][lava][lava][dirt][dirt][lava]}{[lava][dirt][lava][lava][lava][lava][dirt][lava]}{[lava][dirt][dirt][lava][lava][lava][dirt][lava]}{[lava][lava][dirt][lava][lava][lava][dirt][lava]}{[lava][lava][dirt][dirt][dirt][dirt][dirt][lava]}{[lava][lava][lava][lava][lava][lava][lava][lava]}',
        3,
        7,
        'STONE',
        '{[x][-1]}{[y][-1]}',
        '{[x][1]}{[y][1]}',
        '{[x][-1]}{[y][-1]}'
       );

INSERT INTO `heal_level` (`id`, `display_name`, `cut`, `xml`, `name`, `test`, `loop_start`, `spawn`, `display_level`, `rounds_num`, `number_of_mutants`, `boardbackground`, `inner_loop_start`, `basket_position`, `inner_basket_position`)
VALUES ('ee430d4c-186f-40d3-9f7f-3cfa1f0de937',
        'Second Stage - Level 10',
        'if ((this.pinkBerryCount) >= 2) { \r\n while ((this.purpleBerryCount) < 4) { \r\n this.purpleBerryCount = this.purpleBerryCount + 2; \r\n } \r\n } \r\n this.pinkBerryCount = this.pinkBerryCount + 2;',
        '<xml xmlns="https://developers.google.com/blockly/xml">
    <block type="controls_whileUntil" id="k/Zw4Ld#`_?_qa4yw!B/" x="219" y="111">
        <field name="MODE">WHILE</field>
        <value name="BOOL">
            <block type="logic_compare" id="hy=fDjF,^@F!5aZ.^g$W">
                <field name="OP">LTE</field>
                <value name="A">
                    <block type="properties_user_healing" id="k}dr(ZTiuCl}ndTT9G^F">
                        <field name="properties">ROUNDS</field>
                    </block>
                </value>
                <value name="B">
                    <block type="math_number" id="ci5l)`:$82|rBew,oNj`">
                        <field name="NUM">2</field>
                    </block>
                </value>
            </block>
        </value>
        <statement name="DO">
            <block type="controls_if" id="G(4EXr;fk+?M`}Vn,r/w">
                <value name="IF0">
                    <block type="logic_compare" id="C3gbo/K0YyJM[G4]W?v3">
                        <field name="OP">GTE</field>
                        <value name="A">
                            <block type="properties_user_healing" id="k}dr(ZTiuCl}ndTT9G^F">
                                <field name="properties">PINKBERRIES</field>
                            </block>
                        </value>
                        <value name="B">
                            <block type="math_number" id="4{1+^z@FKTZ^#}v|l|*N">
                                <field name="NUM">2</field>
                            </block>
                        </value>
                    </block>
                </value>
                <statement name="DO0">
                    <block type="controls_whileUntil" id="Ji)!s2m1t#W}4CUyc}wv">
                        <field name="MODE">WHILE</field>
                        <value name="BOOL">
                            <block type="logic_compare" id="hy=fDjF,^@F!5aZ.^g$W">
                                <field name="OP">LT</field>
                                <value name="A">
                                    <block type="properties_user_healing" id="k}dr(ZTiuCl}ndTT9G^F">
                                        <field name="properties">PURPLEBERRIES</field>
                                    </block>
                                </value>
                                <value name="B">
                                    <block type="math_number" id="ci5l)`:$82|rBew,oNj`">
                                        <field name="NUM">4</field>
                                    </block>
                                </value>
                            </block>
                        </value>
                        <statement name="DO">
                            <block type="set_berries" id="OLQ=1JUp%13WuB`CCNRp" x="42" y="139">
                                <value name="value1">
                                    <block type="bush_properties" id="k}dr(ZTiuCl}ndTT9G^F">
                                        <field name="properties">PURPLEBERRIES</field>
                                    </block>
                                </value>
                                <value name="value2">
                                    <block type="math_number" id="Eem[Vxht-;;+ILj@@lxp" x="263" y="113">
                                        <field name="NUM">2</field>
                                    </block>
                                </value>
                            </block>
                        </statement>
                    </block>
                </statement>
                <next>
                    <block type="set_berries" id="OLQ=1JUpi813WuB`CCNRp" x="42" y="139">
                        <value name="value1">
                            <block type="bush_properties" id="k}dr(ZTcm5l}ndTT9G^F">
                                <field name="properties">PINKBERRIES</field>
                            </block>
                        </value>
                        <value name="value2">
                            <block type="math_number" id="Eem[Vxst-;;+12l@@lxp" x="263" y="113">
                                <field name="NUM">2</field>
                            </block>
                        </value>
                    </block>
                </next>
            </block>
        </statement>
    </block>
</xml>
',
        'level_10',
        '<xml xmlns="http://www.w3.org/1999/xhtml"><block type="assert" id="^yaA$yq,j8JIJ%`7ZUI8" x="241" y="189"><value name="target"><block type="variable" id="xZ+l3*q=a(sQh^biF0N/"><field name="NAME">count</field></block></value><value name="value"><block type="math_number" id="Eem[Vxht-;;+ILj@@lxp"><field name="NUM">0</field></block></value></block></xml>',
        '{[x][2]}{[y][1]}',
        '{[x][1]}{[y][0]}',
        '{[wood][dirt][wood][wood][wood][wood][wood][wood]}{[dirt][dirt][dirt][dirt][dirt][dirt][dirt][wood]}{[dirt][wood][wood][dirt][wood][wood][dirt][wood]}{[dirt][wood][dirt][dirt][dirt][wood][dirt][wood]}{[dirt][wood][dirt][water][dirt][wood][dirt][wood]}{[dirt][wood][dirt][dirt][dirt][wood][dirt][wood]}{[dirt][wood][wood][wood][wood][wood][dirt][wood]}{[dirt][dirt][dirt][dirt][dirt][dirt][dirt][wood]}',
        2,
        6,
        'GRASS',
        '{[x][4]}{[y][3]}',
        '{[x][1]}{[y][1]}',
        '{[x][3]}{[y][3]}'
       );

INSERT INTO `heal_level` (`id`, `display_name`, `cut`, `xml`, `name`, `test`, `loop_start`, `spawn`, `display_level`, `rounds_num`, `number_of_mutants`, `boardbackground`, `inner_loop_start`, `basket_position`, `inner_basket_position`)
VALUES ('50069dd5-bead-49e8-8936-498e9436d72f',
        'Second Stage - Level 8',
        'if ((this.orangeBerryCount) >= 2) { \r\n this.whiteBerryCount = this.whiteBerryCount + 1;\r\n} else {\r\n this.orangeBerryCount = this.orangeBerryCount + 2;\r\n};',
        '<xml xmlns="https://developers.google.com/blockly/xml">
    <block type="controls_whileUntil" id="c%ws#H+;[H$U,JxOv1`(" x="141" y="277">
        <field name="MODE">WHILE</field>
        <value name="BOOL">
            <block type="logic_compare" id="KtkdKiqTzM3s2%4~NYEi">
                <field name="OP">LTE</field>
                <value name="A">
                    <block type="properties_user_healing" id="k}dr(ZTiuCl}ndTT9G^F">
                        <field name="properties">ROUNDS</field>
                    </block>
                </value>
                <value name="B">
                    <block type="math_number" id="ci5l)`:$82|rBew,oNj`">
                        <field name="NUM">3</field>
                    </block>
                </value>
            </block>
        </value>
        <statement name="DO">
            <block type="controls_if" id=":X*E3lSlnIz/%7C#p8}2">
                <mutation else="1"></mutation>
                <value name="IF0">
                    <block type="logic_compare" id="jvkN^pyba}7Eqi%jBW2S">
                        <field name="OP">GTE</field>
                        <value name="A">
                            <block type="properties_user_healing" id="k}dr(ZTiuCl}ndTT9G^F">
                                <field name="properties">ORANGEBERRIES</field>
                            </block>
                        </value>
                        <value name="B">
                            <shadow type="math_number" id="bm[`K.b?_4VT6HfqaJ1n">
                                <field name="NUM">2</field>
                            </shadow>
                        </value>
                    </block>
                </value>
                <statement name="DO0">
                    <block type="set_berries" id="OLQ=1JUp%13WuB`CCNRp" x="42" y="139">
                        <value name="value1">
                            <block type="bush_properties" id="k}dr(ZTiuCl}ndTT9G^F">
                                <field name="properties">WHITEBERRIES</field>
                            </block>
                        </value>
                        <value name="value2">
                            <block type="math_number" id="Eem[Vxht-;;+ILj@@lxp" x="263" y="113">
                                <field name="NUM">1</field>
                            </block>
                        </value>
                    </block>
                </statement>

                <statement name="ELSE">
                    <block type="set_berries" id="OLQ=1JUp%13WuB`CCNRp" x="42" y="139">
                        <value name="value1">
                            <block type="bush_properties" id="k}dr(ZTiuCl}ndTT9G^F">
                                <field name="properties">ORANGEBERRIES</field>
                            </block>
                        </value>
                        <value name="value2">
                            <block type="math_number" id="Eem[Vxht-;;+ILj@@lxp" x="263" y="113">
                                <field name="NUM">2</field>
                            </block>
                        </value>
                    </block>
                </statement>
            </block>
        </statement>
    </block>
</xml>
',
        'level_8',
        '<xml xmlns="http://www.w3.org/1999/xhtml"><block type="assert" id="^yaA$yq,j8JIJ%`7ZUI8" x="241" y="189"><value name="target"><block type="variable" id="xZ+l3*q=a(sQh^biF0N/"><field name="NAME">count</field></block></value><value name="value"><block type="math_number" id="Eem[Vxht-;;+ILj@@lxp"><field name="NUM">0</field></block></value></block></xml>',
        '{[x][3]}{[y][1]}',
        '{[x][2]}{[y][0]}',
        '{[wood][wood][dirt][wood][wood][wood][wood][wood]}{[wood][dirt][dirt][dirt][dirt][wood][wood][wood]}{[wood][dirt][wood][wood][dirt][wood][wood][wood]}{[wood][dirt][wood][wood][dirt][dirt][wood][wood]}{[wood][dirt][wood][wood][dirt][dirt][dirt][wood]}{[wood][dirt][wood][wood][wood][wood][dirt][wood]}{[wood][dirt][wood][wood][wood][wood][dirt][wood]}{[wood][dirt][dirt][dirt][dirt][dirt][dirt][wood]}',
        3,
        7,
        'ICE',
        '{[x][-1]}{[y][-1]}',
        '{[x][2]}{[y][1]}',
        '{[x][-1]}{[y][-1]}'
       );

INSERT INTO `heal_level` (`id`, `display_name`, `cut`, `xml`, `name`, `test`, `loop_start`, `spawn`, `display_level`, `rounds_num`, `number_of_mutants`, `boardbackground`, `inner_loop_start`, `basket_position`, `inner_basket_position`)
VALUES ('f76c60ed-1ec0-4ffd-9455-e33d0c660182',
        'Second Stage - Level 7',
        '(this.redBerryCount) = (this.redBerryCount + 1);',
        '<xml xmlns="https://developers.google.com/blockly/xml">
    <block type="controls_whileUntil" id="recipe_start_while" x="141" y="277">
        <field name="MODE">WHILE</field>
        <value name="BOOL">
            <block type="logic_compare" id="KtkdKiqTzM3s2%4~NYEi">
                <field name="OP">LTE</field>
                <value name="A">
                    <block type="properties_user_healing" id="kdrZTiuClndTT9GF1">
                        <field name="properties">ROUNDS</field>
                    </block>
                </value>
                <value name="B">
                    <block type="math_number" id="ci5l82rBewoNj2">
                        <field name="NUM">3</field>
                    </block>
                </value>
            </block>
        </value>
        <statement name="DO">
            <block type="controls_if" id="X3lSlnIz7Cp82">
                <mutation else="1"></mutation>
                <value name="IF0">
                    <block type="logic_operation" id="NhuRFJmEnEXEyN">
                        <field name="OP">AND</field>
                        <value name="A">
                            <block type="math_number_property" id="a6oh5PQhOHZu2">
                                <mutation divisor_input="false"></mutation>
                                <field name="PROPERTY">ODD</field>
                                <value name="NUMBER_TO_CHECK">
                                    <block type="properties_user_healing" id="kdrZTiuClndTT9GF2">
                                        <field name="properties">ROUNDS</field>
                                    </block>
                                </value>
                            </block>
                        </value>
                        <value name="B">
                            <block type="logic_compare" id="Updh4dmqWOl8dM8y">
                                <field name="OP">EQ</field>
                                <value name="A">
                                    <block type="properties_user_healing" id="yeoBzli0GZgX1">
                                        <field name="properties">HATCOLOR</field>
                                    </block>
                                </value>
                                <value name="B">
                                    <block type="hair_picker" id="SXzwH9Ugapwb0EFVRv1">
                                        <field name="color">blond</field>
                                    </block>
                                </value>
                            </block>
                        </value>
                    </block>
                </value>
                <statement name="DO0">
                    <block type="set_berries" id="OLQ1JUp13WuBCCNRp1">
                        <value name="value1">
                            <block type="bush_properties" id="kdrZTiuClndTT9GF3">
                                <field name="properties">PURPLEBERRIES</field>
                            </block>
                        </value>
                        <value name="value2">
                            <block type="math_number" id="EemVxhtLILj2">
                                <field name="NUM">2</field>
                            </block>
                        </value>
                    </block>
                </statement>
                <statement name="ELSE">
                    <block type="set_berries" id="OLQ1JUp13WuBCCNRp2">
                        <value name="value1">
                            <block type="bush_properties" id="kdrZTiuClndTT9GF4">
                                <field name="properties">BLACKBERRIES</field>
                            </block>
                        </value>
                        <value name="value2">
                            <block type="math_number" id="EemVxhtLILj3">
                                <field name="NUM">2</field>
                            </block>
                        </value>
                    </block>
                </statement>
            </block>
        </statement>
    </block>
</xml>
',
        'level_7',
        '<xml xmlns="http://www.w3.org/1999/xhtml"><block type="assert" id="^yaA$yq,j8JIJ%`7ZUI8" x="241" y="189"><value name="target"><block type="variable" id="xZ+l3*q=a(sQh^biF0N/"><field name="NAME">count</field></block></value><value name="value"><block type="math_number" id="Eem[Vxht-;;+ILj@@lxp"><field name="NUM">0</field></block></value></block></xml>',
        '{[x][4]}{[y][1]}',
        '{[x][3]}{[y][0]}',
        '{[sea][sea][sea][ice][sea][sea][sea][sea]}{[sea][sea][ice][ice][ice][ice][ice][sea]}{[sea][sea][ice][sea][sea][sea][ice][sea]}{[sea][sea][ice][sea][sea][sea][ice][sea]}{[sea][sea][ice][ice][ice][ice][ice][sea]}{[sea][sea][sea][ice][water][water][ice][sea]}{[sea][sea][sea][ice][ice][ice][ice][sea]}{[sea][sea][sea][sea][sea][sea][sea][sea]}',
        3,
        6,
        'ICE',
        '{[x][-1]}{[y][-1]}',
        '{[x][3]}{[y][1]}',
        '{[x][-1]}{[y][-1]}'
       );


INSERT INTO `heal_level` (`id`, `display_name`, `cut`, `xml`, `name`, `test`, `loop_start`, `spawn`, `display_level`, `rounds_num`, `number_of_mutants`, `boardbackground`, `inner_loop_start`, `basket_position`, `inner_basket_position`)
VALUES ('827429bf-72ad-48df-ba1f-e9dba34d342b',
        'Second Stage - Level 2',
        '(this.purpleBerryCount) = (this.purpleBerryCount + 1);',
        '<xml xmlns="https://developers.google.com/blockly/xml">
    <block type="controls_whileUntil" id="recipe_start_while" x="141" y="277">
        <field name="MODE">WHILE</field>
        <value name="BOOL">
            <block type="logic_compare" id="KtkdKiqTzM3s2%4~NYEi">
                <field name="OP">LTE</field>
                <value name="A">
                    <block type="properties_user_healing" id="k}dr(ZTiuCl}ndTT9G^F">
                        <field name="properties">ROUNDS</field>
                    </block>
                </value>
                <value name="B">
                    <block type="math_number" id="ci5l)`:$82|rBew,oNj`">
                        <field name="NUM">3</field>
                    </block>
                </value>
            </block>
        </value>
        <statement name="DO">
            <block type="set_berries" id="OLQ=1JUp%13WuB`CCNRp" x="42" y="139">
                <value name="value1">
                    <block type="bush_properties" id="k}dr(ZTiuCl}ndTT9G^F">
                        <field name="properties">PURPLEBERRIES</field>
                    </block>
                </value>
                <value name="value2">
                    <block type="math_number" id="Eem[Vxht-;;+ILj@@lxp" x="263" y="113">
                        <field name="NUM">3</field>
                    </block>
                </value>
            </block>
        </statement>
    </block>
</xml>',
        'level_2',
        '<xml xmlns="http://www.w3.org/1999/xhtml"><block type="assert" id="^yaA$yq,j8JIJ%`7ZUI8" x="241" y="189"><value name="target"><block type="variable" id="xZ+l3*q=a(sQh^biF0N/"><field name="NAME">count</field></block></value><value name="value"><block type="math_number" id="Eem[Vxht-;;+ILj@@lxp"><field name="NUM">0</field></block></value></block></xml>',
        '{[x][4]}{[y][1]}',
        '{[x][3]}{[y][0]}',
        '{[sea][sea][sea][dirt][sea][sea][sea][sea]}{[sea][dirt][dirt][dirt][dirt][dirt][sea][sea]}{[sea][dirt][water][water][water][dirt][sea][sea]}{[sea][dirt][water][water][water][dirt][dirt][sea]}{[sea][dirt][dirt][water][water][water][dirt][sea]}{[sea][sea][dirt][water][water][water][dirt][sea]}{[sea][sea][dirt][dirt][dirt][dirt][dirt][sea]}{[sea][sea][sea][sea][sea][sea][sea][sea]}',
        3,
        6,
        'SAND',
        '{[x][-1]}{[y][-1]}',
        '{[x][3]}{[y][1]}',
        '{[x][-1]}{[y][-1]}'
       );

INSERT INTO `heal_level` (`id`, `display_name`, `cut`, `xml`, `name`, `test`, `loop_start`, `spawn`, `display_level`, `rounds_num`, `number_of_mutants`, `boardbackground`, `inner_loop_start`, `basket_position`, `inner_basket_position`)
VALUES ('050f7bee-c3f7-4dd4-8c1e-c8598842d787',
        'Second Stage - Level 3',
        'if ((this.roundsCount) === 1) {\r\n    this.orangeBerryCount = this.orangeBerryCount + 1;\r\n} else {\r\n    this.orangeBerryCount = this.orangeBerryCount + 2;\r\n}',
        '<xml xmlns="https://developers.google.com/blockly/xml">
    <block type="controls_whileUntil" id="recipe_start_while" x="141" y="277">
        <field name="MODE">WHILE</field>
        <value name="BOOL">
            <block type="logic_compare" id="KtkdKiqTzM3s2%4~NYEi">
                <field name="OP">LTE</field>
                <value name="A">
                    <block type="properties_user_healing" id="k}dr(ZTiuCl}ndTT9G^F">
                        <field name="properties">ROUNDS</field>
                    </block>
                </value>
                <value name="B">
                    <block type="math_number" id="ci5l)`:$82|rBew,oNj`">
                        <field name="NUM">3</field>
                    </block>
                </value>
            </block>
        </value>
        <statement name="DO">
            <block type="controls_if" id=":X*E3lSlnIz/%7C#p8}2">
                <mutation else="1"></mutation>
                <value name="IF0">
                    <block type="logic_compare" id="jvkN^pyba}7Eqi%jBW2S">
                        <field name="OP">EQ</field>
                    <value name="A">
                        <block type="properties_user_healing" id="k}dr(ZTiuCl}ndTT9G^F">
                            <field name="properties">ROUNDS</field>
                        </block>
                    </value>
                    <value name="B">
                        <block type="math_number" id="Eem[Vxht-;;+ILj@@lxp" x="263" y="113">
                        <field name="NUM">1</field>
                    </block>
                    </value>
                </block>
                </value>
                <statement name="DO0">
                    <block type="set_berries" id="OLQ=1JUp%13uuB`CCNRp" x="42" y="139">
                        <value name="value1">
                            <block type="bush_properties" id="k}dr(ZTiuCl}ndTT9G^F">
                                <field name="properties">ORANGEBERRIES</field>
                            </block>
                        </value>
                        <value name="value2">
                            <block type="math_number" id="Eem[Vxht-;;+ILj@@lxp" x="263" y="113">
                                <field name="NUM">1</field>
                            </block>
                        </value>
                    </block>
                </statement>
                <statement name="ELSE">
                    <block type="set_berries" id="OLQ=1JUp%13WuB`CCNRp" x="42" y="139">
                        <value name="value1">
                            <block type="bush_properties" id="k}dr(ZTiuCl}ndTT9G^F">
                                <field name="properties">ORANGEBERRIES</field>
                            </block>
                        </value>
                        <value name="value2">
                            <block type="math_number" id="Eem[Vxht-;;+ILj@@lxp" x="263" y="113">
                                <field name="NUM">2</field>
                            </block>
                        </value>
                    </block>
                </statement>
            </block>
        </statement>
    </block>
</xml>',
        'level_3',
        '<xml xmlns="http://www.w3.org/1999/xhtml"><block type="assert" id="^yaA$yq,j8JIJ%`7ZUI8" x="241" y="189"><value name="target"><block type="variable" id="xZ+l3*q=a(sQh^biF0N/"><field name="NAME">count</field></block></value><value name="value"><block type="math_number" id="Eem[Vxht-;;+ILj@@lxp"><field name="NUM">0</field></block></value></block></xml>',
        '{[x][3]}{[y][1]}',
        '{[x][0]}{[y][1]}',
        '{[wood][wood][wood][wood][wood][wood][wood][wood]}{[ice][ice][ice][ice][ice][ice][wood][wood]}{[wood][wood][ice][wood][wood][ice][ice][wood]}{[wood][wood][ice][wood][wood][wood][ice][wood]}{[wood][wood][ice][wood][wood][wood][ice][wood]}{[wood][wood][ice][ice][wood][wood][ice][wood]}{[wood][wood][wood][ice][ice][ice][ice][sea]}{[wood][wood][wood][sea][sea][sea][sea][sea]}',
        3,
        7,
        'ICE',
        '{[x][-1]}{[y][-1]}',
        '{[x][2]}{[y][1]}',
        '{[x][-1]}{[y][-1]}'
       );

INSERT INTO `heal_level` (`id`, `display_name`, `cut`, `xml`, `name`, `test`, `loop_start`, `spawn`, `display_level`, `rounds_num`, `number_of_mutants`, `boardbackground`, `inner_loop_start`, `basket_position`, `inner_basket_position`)
VALUES ('a920c5b9-e9c4-4f77-8e95-08f570d0c013',
        'Second Stage - Level 5',
        'if ((this.roundsCount) === 3) { \r\n this.blackBerryCount = this.blackBerryCount + 1;\r\n} else {\r\n this.whiteBerryCount = this.whiteBerryCount + this.roundsCount;\r\n};',
        '<xml xmlns="https://developers.google.com/blockly/xml">
<block type="controls_whileUntil" id="recipe_start_while" x="141" y="277">
    <field name="MODE">WHILE</field>
    <value name="BOOL">
        <block type="logic_compare" id="KtkdKiqTzM3s2%4~NYEi">
            <field name="OP">LTE</field>
            <value name="A">
                <block type="properties_user_healing" id="k}dr(ZTiuCl}ndTT9G^F">
                    <field name="properties">ROUNDS</field>
                </block>
            </value>
            <value name="B">
                <block type="math_number" id="ci5l)`:$82|rBew,oNj`">
                    <field name="NUM">3</field>
                </block>
            </value>
        </block>
    </value>
    <statement name="DO">
        <block type="controls_if" id=":X*E3lSlnIz/%7C#p8}2">
            <mutation else="1"></mutation>
            <value name="IF0">
                <block type="logic_compare" id="jvkN^pyba}7Eqi%jBW2S">
                        <field name="OP">EQ</field>
                        <value name="A">
                            <block type="properties_user_healing" id="k}dr(ZTiuCl}ndTT9G^F">
                                <field name="properties">ROUNDS</field>
                            </block>
                        </value>
                        <value name="B">
                            <block type="math_number" id="ci5l)`:$82|rBew,oNj`">
                        <field name="NUM">3</field>
                    </block>
                        </value>
                    </block>
            </value>
            <statement name="DO0">
                <block type="set_berries" id="OLQ=1JUp%13WuB`CCNRp" x="42" y="139">
                    <value name="value1">
                        <block type="bush_properties" id="k}dr(ZTiuCl}ndTT9G^F">
                            <field name="properties">BLACKBERRIES</field>
                        </block>
                    </value>
                    <value name="value2">
                        <block type="math_number" id="Eem[Vxht-;;+ILj@@lxp" x="263" y="113">
                            <field name="NUM">1</field>
                        </block>
                    </value>
                </block>
            </statement>

            <statement name="ELSE">
                <block type="set_berries" id="OLQ=1JUp%13WuB`CCNRp" x="42" y="139">
                    <value name="value1">
                        <block type="bush_properties" id="k}dr(ZTiuCl}ndTT9G^F">
                            <field name="properties">WHITEBERRIES</field>
                        </block>
                    </value>
                    <value name="value2">
                        <block type="properties_user_healing" id="k}dr(ZTiuCl}ndTT9G^F">
                                <field name="properties">ROUNDS</field>
                            </block>
                    </value>
                </block>
            </statement>
        </block>
    </statement>
</block>
</xml>',
        'level_5',
        '<xml xmlns="http://www.w3.org/1999/xhtml"><block type="assert" id="^yaA$yq,j8JIJ%`7ZUI8" x="241" y="189"><value name="target"><block type="variable" id="xZ+l3*q=a(sQh^biF0N/"><field name="NAME">count</field></block></value><value name="value"><block type="math_number" id="Eem[Vxht-;;+ILj@@lxp"><field name="NUM">0</field></block></value></block></xml>',
        '{[x][4]}{[y][1]}',
        '{[x][3]}{[y][0]}',
        '{[lava][lava][lava][dirt][wood][wood][wood][wood]}{[lava][lava][dirt][dirt][dirt][dirt][dirt][wood]}{[lava][lava][dirt][wood][wood][wood][dirt][wood]}{[lava][grass][dirt][dirt][dirt][dirt][dirt][wood]}{[lava][grass][dirt][lava][lava][lava][dirt][wood]}{[lava][grass][dirt][lava][lava][lava][dirt][wood]}{[lava][lava][dirt][dirt][dirt][dirt][dirt][wood]}{[lava][lava][lava][wood][wood][wood][wood][wood]}',
        3,
        7,
        'GRASS',
        '{[x][-1]}{[y][-1]}',
        '{[x][3]}{[y][1]}',
        '{[x][-1]}{[y][-1]}'
       );

insert into heal_level_bushes (heal_level_id, bushes_id)
values ('0d4d7178-8e67-4969-9b36-1adc3d0b5a0c', '4359f319-cb1e-4ddc-ab24-8a402ab87208');

insert into heal_level_bushes (heal_level_id, bushes_id)
values ('00efaabe-cf73-423a-aa26-69c0377d7c23', 'fb745648-f80d-4ca4-be7b-7d85073332be'),
       ('00efaabe-cf73-423a-aa26-69c0377d7c23', '137d40d7-bb3c-48c9-9a02-d3e7ebcac7e6');

insert into heal_level_bushes (heal_level_id, bushes_id)
values ('ef594c76-0544-465f-ac72-f6293d73910d', '30ebc2e2-3633-43b3-b608-e1b5b42e0566'),
       ('ef594c76-0544-465f-ac72-f6293d73910d', '0bd11a60-3836-4502-bb09-d9e8a2dd9b1c'),
       ('ef594c76-0544-465f-ac72-f6293d73910d', 'd7f9a632-a182-4ee7-93c6-c1dbc280cb83');

insert into heal_level_bushes (heal_level_id, bushes_id)
values ('8fae4dce-20f6-47ea-aea2-dc44a2d148ed', 'ffc636c3-6c91-4d13-898d-8c5ba9cbce5a'),
       ('8fae4dce-20f6-47ea-aea2-dc44a2d148ed', 'a27977ec-422c-4231-a85e-2170f8b27f89');

insert into heal_level_bushes (heal_level_id, bushes_id)
values ('ee430d4c-186f-40d3-9f7f-3cfa1f0de937', 'eea48635-864a-4215-943b-7c61d40cb5d9'),
       ('ee430d4c-186f-40d3-9f7f-3cfa1f0de937', 'da0c3523-c318-4dc8-8a02-485955d78aee');


insert into heal_level_bushes (heal_level_id, bushes_id)
values ('50069dd5-bead-49e8-8936-498e9436d72f', '3e3b6584-5839-4523-971d-5c556b824b15'),
       ('50069dd5-bead-49e8-8936-498e9436d72f', '19081d2b-1ab5-4e9e-a6ab-db8a72b6b87e');

insert into heal_level_bushes (heal_level_id, bushes_id)
values ('f76c60ed-1ec0-4ffd-9455-e33d0c660182', '1bb7d6da-7d57-412a-8ec8-608fa0143459'),
       ('f76c60ed-1ec0-4ffd-9455-e33d0c660182', 'f69a94bd-afc1-4b38-959d-b0915038f480');

insert into heal_level_bushes (heal_level_id, bushes_id)
values ('827429bf-72ad-48df-ba1f-e9dba34d342b', '5becef9a-3fda-48e7-a953-58b7011a0f55');

insert into heal_level_bushes (heal_level_id, bushes_id)
values ('050f7bee-c3f7-4dd4-8c1e-c8598842d787', '7d9164f8-0a14-4736-b303-a53213b8e7fc');

insert into heal_level_bushes (heal_level_id, bushes_id)
values ('a920c5b9-e9c4-4f77-8e95-08f570d0c013', '4116837a-8d81-4330-8268-47d78c3d8c84'),
       ('a920c5b9-e9c4-4f77-8e95-08f570d0c013', 'f7421726-1f28-44a1-9388-a4c2fab77b63');
