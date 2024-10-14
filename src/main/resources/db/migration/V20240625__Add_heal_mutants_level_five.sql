insert into `healing_collector` (`id`, xml, `level_id`, `init`, `mutated`, `first_faulty_round`)
values
    ('1a0f1ce5-e69f-4d7b-9a69-f540368f56ad',
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
     'a920c5b9-e9c4-4f77-8e95-08f570d0c013',
     '(this.color) = ("red");\n (this.hair) = ("brown");\n',
     false,
     0),
    ('2cac50d0-8006-4248-a82b-6600464d1930',
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
     'a920c5b9-e9c4-4f77-8e95-08f570d0c013',
     '(this.color) = ("red");\n',
     false,
     0),
    ('d2f070f5-cfae-4815-876a-b52a48e7ca22',
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
     'a920c5b9-e9c4-4f77-8e95-08f570d0c013',
     '(this.color) = ("orange");\n',
     false,
     0),
    ('1586276c-9fca-4aa7-9432-575f4d17b3c7',
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
                    <field name="NUM">4</field>
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
     'a920c5b9-e9c4-4f77-8e95-08f570d0c013',
     '(this.color) = ("blue");\n',
     true,
     4),
    ('b6fdcf39-38e2-49ad-9737-19f04b8caded',
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
                        <field name="NUM">2</field>
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
     'a920c5b9-e9c4-4f77-8e95-08f570d0c013',
     '(this.color) = ("white");\n (this.hair) = ("black");\n',
     true,
     2),
    ('09131765-74b6-4e38-b3b0-d673f9e2987f',
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
                            <field name="NUM">2</field>
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
     'a920c5b9-e9c4-4f77-8e95-08f570d0c013',
     '(this.color) = ("cyan");\n',
     true,
     3),
    ('362311be-a6db-408f-a1d0-6c89aa269063',
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
                        <block type="math_number" id="Eym[Vxht-+;+ILj@@lwp" x="263" y="113">
                            <field name="NUM">1</field>
                        </block>
                    </value>
                </block>
            </statement>
        </block>
    </statement>
</block>
</xml>',
     'a920c5b9-e9c4-4f77-8e95-08f570d0c013',
     '(this.color) = ("green");\n (this.hair) = ("red");\n',
     true,
     2),
    ('7b59bb02-142a-4870-a220-9783f613e90e',
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
                            <field name="properties">BLACKBERRIES</field>
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
     'a920c5b9-e9c4-4f77-8e95-08f570d0c013',
     '(this.color) = ("pink");\n (this.hair) = ("brown");\n',
     true,
     1),
    ('f143e31b-c5d8-4e7d-9e35-228575f12f7d',
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
     'a920c5b9-e9c4-4f77-8e95-08f570d0c013',
     '(this.color) = ("white");\n',
     true,
     3),

    ('dc444adc-f580-466c-940f-0bcbbac47e90',
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
     'a920c5b9-e9c4-4f77-8e95-08f570d0c013',
     '(this.color) = ("orange");\n',
     true,
     2);


insert into `codes_per_bush` (`healing_collector_id`, `code`, `bush_type`)
values ('1a0f1ce5-e69f-4d7b-9a69-f540368f56ad',
        'if ((this.roundsCount) === 3) {\r\n    this.blackBerryCount = this.blackBerryCount + 1;\r\n}',
        'BLACK'),
       ('1a0f1ce5-e69f-4d7b-9a69-f540368f56ad',
        'if ((this.roundsCount) != 3) {\r\n    this.whiteBerryCount = this.whiteBerryCount + this.roundsCount;\r\n}',
        'WHITE');

insert into `codes_per_bush` (`healing_collector_id`, `code`, `bush_type`)
values ('2cac50d0-8006-4248-a82b-6600464d1930',
        'if ((this.roundsCount) === 3) {\r\n    this.blackBerryCount = this.blackBerryCount + 1;\r\n}',
        'BLACK'),
       ('2cac50d0-8006-4248-a82b-6600464d1930',
        'if ((this.roundsCount) != 3) {\r\n    this.whiteBerryCount = this.whiteBerryCount + this.roundsCount;\r\n}',
        'WHITE');

insert into `codes_per_bush` (`healing_collector_id`, `code`, `bush_type`)
values ('d2f070f5-cfae-4815-876a-b52a48e7ca22',
        'if ((this.roundsCount) === 3) {\r\n    this.blackBerryCount = this.blackBerryCount + 1;\r\n}',
        'BLACK'),
       ('d2f070f5-cfae-4815-876a-b52a48e7ca22',
        'if ((this.roundsCount) != 3) {\r\n    this.whiteBerryCount = this.whiteBerryCount + this.roundsCount;\r\n}',
        'WHITE');

insert into `codes_per_bush` (`healing_collector_id`, `code`, `bush_type`)
values ('1586276c-9fca-4aa7-9432-575f4d17b3c7',
        'if ((this.roundsCount) === 3) {\r\n    this.blackBerryCount = this.blackBerryCount + 1;\r\n}',
        'BLACK'),
       ('1586276c-9fca-4aa7-9432-575f4d17b3c7',
        'if ((this.roundsCount) != 3) {\r\n    this.whiteBerryCount = this.whiteBerryCount + this.roundsCount;\r\n}',
        'WHITE');

insert into `codes_per_bush` (`healing_collector_id`, `code`, `bush_type`)
values ('b6fdcf39-38e2-49ad-9737-19f04b8caded',
        'if ((this.roundsCount) === 2) {\r\n    this.blackBerryCount = this.blackBerryCount + 1;\r\n}',
        'BLACK'),
       ('b6fdcf39-38e2-49ad-9737-19f04b8caded',
        'if ((this.roundsCount) != 2) {\r\n    this.whiteBerryCount = this.whiteBerryCount + this.roundsCount;\r\n}',
        'WHITE');

insert into `codes_per_bush` (`healing_collector_id`, `code`, `bush_type`)
values ('09131765-74b6-4e38-b3b0-d673f9e2987f',
        'if ((this.roundsCount) === 3) {\r\n    this.blackBerryCount = this.blackBerryCount + 2;\r\n}',
        'BLACK'),
       ('09131765-74b6-4e38-b3b0-d673f9e2987f',
        'if ((this.roundsCount) != 3) {\r\n    this.whiteBerryCount = this.whiteBerryCount + this.roundsCount;\r\n}',
        'WHITE');

insert into `codes_per_bush` (`healing_collector_id`, `code`, `bush_type`)
values ('362311be-a6db-408f-a1d0-6c89aa269063',
        'if ((this.roundsCount) === 3) {\r\n    this.blackBerryCount = this.blackBerryCount + 1;\r\n}',
        'BLACK'),
       ('362311be-a6db-408f-a1d0-6c89aa269063',
        'if ((this.roundsCount) != 3) {\r\n    this.whiteBerryCount = this.whiteBerryCount + 1;\r\n}',
        'WHITE');

insert into `codes_per_bush` (`healing_collector_id`, `code`, `bush_type`)
values ('7b59bb02-142a-4870-a220-9783f613e90e',
        'if ((this.roundsCount) != 3) {\r\n    this.blackBerryCount = this.blackBerryCount + this.roundsCount;\r\n}',
        'BLACK'),
       ('7b59bb02-142a-4870-a220-9783f613e90e',
        'if ((this.roundsCount) === 3) {\r\n    this.whiteBerryCount = this.whiteBerryCount + 1;\r\n}',
        'WHITE');

insert into `codes_per_bush` (`healing_collector_id`, `code`, `bush_type`)
values ('f143e31b-c5d8-4e7d-9e35-228575f12f7d',
        'if ((this.roundsCount) === 3) {\r\n    this.whiteBerryCount = this.whiteBerryCount + this.roundsCount;\r\n}',
        'BLACK'),
       ('f143e31b-c5d8-4e7d-9e35-228575f12f7d',
        'if ((this.roundsCount) != 3) {\r\n    this.whiteBerryCount = this.whiteBerryCount + this.roundsCount;\r\n}',
        'WHITE');

insert into `codes_per_bush` (`healing_collector_id`, `code`, `bush_type`)
values ('dc444adc-f580-466c-940f-0bcbbac47e90',
        'if ((this.roundsCount) <= 3) {\r\n    this.blackBerryCount = this.blackBerryCount + 1;\r\n}',
        'BLACK'),
       ('dc444adc-f580-466c-940f-0bcbbac47e90',
        'if ((this.roundsCount) > 3) {\r\n    this.whiteBerryCount = this.whiteBerryCount + this.roundsCount;\r\n}',
        'WHITE');


-- first critter
insert into `path_list` (`healing_collector_id`, `x`, `y`)
values ('1a0f1ce5-e69f-4d7b-9a69-f540368f56ad', 3, 0),
       ('1a0f1ce5-e69f-4d7b-9a69-f540368f56ad', 3, 1),
       ('1a0f1ce5-e69f-4d7b-9a69-f540368f56ad', 4, 1),
       ('1a0f1ce5-e69f-4d7b-9a69-f540368f56ad', 5, 1),
       ('1a0f1ce5-e69f-4d7b-9a69-f540368f56ad', 6, 1),
       ('1a0f1ce5-e69f-4d7b-9a69-f540368f56ad', 6, 2),
       ('1a0f1ce5-e69f-4d7b-9a69-f540368f56ad', 6, 3),
       ('1a0f1ce5-e69f-4d7b-9a69-f540368f56ad', 5, 3),
       ('1a0f1ce5-e69f-4d7b-9a69-f540368f56ad', 4, 3),
       ('1a0f1ce5-e69f-4d7b-9a69-f540368f56ad', 3, 3),
       ('1a0f1ce5-e69f-4d7b-9a69-f540368f56ad', 2, 3),
       ('1a0f1ce5-e69f-4d7b-9a69-f540368f56ad', 2, 2),
       ('1a0f1ce5-e69f-4d7b-9a69-f540368f56ad', 2, 1),
       -- round two
       ('1a0f1ce5-e69f-4d7b-9a69-f540368f56ad', 3, 1),
       ('1a0f1ce5-e69f-4d7b-9a69-f540368f56ad', 4, 1),
       ('1a0f1ce5-e69f-4d7b-9a69-f540368f56ad', 5, 1),
       ('1a0f1ce5-e69f-4d7b-9a69-f540368f56ad', 6, 1),
       ('1a0f1ce5-e69f-4d7b-9a69-f540368f56ad', 6, 2),
       ('1a0f1ce5-e69f-4d7b-9a69-f540368f56ad', 6, 3),
       ('1a0f1ce5-e69f-4d7b-9a69-f540368f56ad', 5, 3),
       ('1a0f1ce5-e69f-4d7b-9a69-f540368f56ad', 4, 3),
       ('1a0f1ce5-e69f-4d7b-9a69-f540368f56ad', 3, 3),
       ('1a0f1ce5-e69f-4d7b-9a69-f540368f56ad', 2, 3),
       ('1a0f1ce5-e69f-4d7b-9a69-f540368f56ad', 2, 2),
       ('1a0f1ce5-e69f-4d7b-9a69-f540368f56ad', 2, 1),
       -- round three
       ('1a0f1ce5-e69f-4d7b-9a69-f540368f56ad', 3, 1),
       ('1a0f1ce5-e69f-4d7b-9a69-f540368f56ad', 4, 1),
       ('1a0f1ce5-e69f-4d7b-9a69-f540368f56ad', 5, 1),
       ('1a0f1ce5-e69f-4d7b-9a69-f540368f56ad', 6, 1),
       ('1a0f1ce5-e69f-4d7b-9a69-f540368f56ad', 6, 2),
       ('1a0f1ce5-e69f-4d7b-9a69-f540368f56ad', 6, 3),
       ('1a0f1ce5-e69f-4d7b-9a69-f540368f56ad', 6, 4),
       ('1a0f1ce5-e69f-4d7b-9a69-f540368f56ad', 6, 5),
       ('1a0f1ce5-e69f-4d7b-9a69-f540368f56ad', 6, 6),
       ('1a0f1ce5-e69f-4d7b-9a69-f540368f56ad', 5, 6),
       ('1a0f1ce5-e69f-4d7b-9a69-f540368f56ad', 4, 6),
       ('1a0f1ce5-e69f-4d7b-9a69-f540368f56ad', 3, 6),
       ('1a0f1ce5-e69f-4d7b-9a69-f540368f56ad', 2, 6),
       ('1a0f1ce5-e69f-4d7b-9a69-f540368f56ad', 2, 5),
       ('1a0f1ce5-e69f-4d7b-9a69-f540368f56ad', 2, 4),
       ('1a0f1ce5-e69f-4d7b-9a69-f540368f56ad', 2, 3),
       ('1a0f1ce5-e69f-4d7b-9a69-f540368f56ad', 2, 2),
       ('1a0f1ce5-e69f-4d7b-9a69-f540368f56ad', 2, 1),
       -- leave
       ('1a0f1ce5-e69f-4d7b-9a69-f540368f56ad', 3, 1),
       ('1a0f1ce5-e69f-4d7b-9a69-f540368f56ad', 3, 0);

-- second critter
insert into `path_list` (`healing_collector_id`, `x`, `y`)
values ('2cac50d0-8006-4248-a82b-6600464d1930', 3, 0),
       ('2cac50d0-8006-4248-a82b-6600464d1930', 3, 1),
       ('2cac50d0-8006-4248-a82b-6600464d1930', 4, 1),
       ('2cac50d0-8006-4248-a82b-6600464d1930', 5, 1),
       ('2cac50d0-8006-4248-a82b-6600464d1930', 6, 1),
       ('2cac50d0-8006-4248-a82b-6600464d1930', 6, 2),
       ('2cac50d0-8006-4248-a82b-6600464d1930', 6, 3),
       ('2cac50d0-8006-4248-a82b-6600464d1930', 5, 3),
       ('2cac50d0-8006-4248-a82b-6600464d1930', 4, 3),
       ('2cac50d0-8006-4248-a82b-6600464d1930', 3, 3),
       ('2cac50d0-8006-4248-a82b-6600464d1930', 2, 3),
       ('2cac50d0-8006-4248-a82b-6600464d1930', 2, 2),
       ('2cac50d0-8006-4248-a82b-6600464d1930', 2, 1),
       -- round two
       ('2cac50d0-8006-4248-a82b-6600464d1930', 3, 1),
       ('2cac50d0-8006-4248-a82b-6600464d1930', 4, 1),
       ('2cac50d0-8006-4248-a82b-6600464d1930', 5, 1),
       ('2cac50d0-8006-4248-a82b-6600464d1930', 6, 1),
       ('2cac50d0-8006-4248-a82b-6600464d1930', 6, 2),
       ('2cac50d0-8006-4248-a82b-6600464d1930', 6, 3),
       ('2cac50d0-8006-4248-a82b-6600464d1930', 5, 3),
       ('2cac50d0-8006-4248-a82b-6600464d1930', 4, 3),
       ('2cac50d0-8006-4248-a82b-6600464d1930', 3, 3),
       ('2cac50d0-8006-4248-a82b-6600464d1930', 2, 3),
       ('2cac50d0-8006-4248-a82b-6600464d1930', 2, 2),
       ('2cac50d0-8006-4248-a82b-6600464d1930', 2, 1),
       -- round three
       ('2cac50d0-8006-4248-a82b-6600464d1930', 3, 1),
       ('2cac50d0-8006-4248-a82b-6600464d1930', 4, 1),
       ('2cac50d0-8006-4248-a82b-6600464d1930', 5, 1),
       ('2cac50d0-8006-4248-a82b-6600464d1930', 6, 1),
       ('2cac50d0-8006-4248-a82b-6600464d1930', 6, 2),
       ('2cac50d0-8006-4248-a82b-6600464d1930', 6, 3),
       ('2cac50d0-8006-4248-a82b-6600464d1930', 6, 4),
       ('2cac50d0-8006-4248-a82b-6600464d1930', 6, 5),
       ('2cac50d0-8006-4248-a82b-6600464d1930', 6, 6),
       ('2cac50d0-8006-4248-a82b-6600464d1930', 5, 6),
       ('2cac50d0-8006-4248-a82b-6600464d1930', 4, 6),
       ('2cac50d0-8006-4248-a82b-6600464d1930', 3, 6),
       ('2cac50d0-8006-4248-a82b-6600464d1930', 2, 6),
       ('2cac50d0-8006-4248-a82b-6600464d1930', 2, 5),
       ('2cac50d0-8006-4248-a82b-6600464d1930', 2, 4),
       ('2cac50d0-8006-4248-a82b-6600464d1930', 2, 3),
       ('2cac50d0-8006-4248-a82b-6600464d1930', 2, 2),
       ('2cac50d0-8006-4248-a82b-6600464d1930', 2, 1),
       -- leave
       ('2cac50d0-8006-4248-a82b-6600464d1930', 3, 1),
       ('2cac50d0-8006-4248-a82b-6600464d1930', 3, 0);

-- third critter
insert into `path_list` (`healing_collector_id`, `x`, `y`)
values ('d2f070f5-cfae-4815-876a-b52a48e7ca22', 3, 0),
       ('d2f070f5-cfae-4815-876a-b52a48e7ca22', 3, 1),
       ('d2f070f5-cfae-4815-876a-b52a48e7ca22', 4, 1),
       ('d2f070f5-cfae-4815-876a-b52a48e7ca22', 5, 1),
       ('d2f070f5-cfae-4815-876a-b52a48e7ca22', 6, 1),
       ('d2f070f5-cfae-4815-876a-b52a48e7ca22', 6, 2),
       ('d2f070f5-cfae-4815-876a-b52a48e7ca22', 6, 3),
       ('d2f070f5-cfae-4815-876a-b52a48e7ca22', 5, 3),
       ('d2f070f5-cfae-4815-876a-b52a48e7ca22', 4, 3),
       ('d2f070f5-cfae-4815-876a-b52a48e7ca22', 3, 3),
       ('d2f070f5-cfae-4815-876a-b52a48e7ca22', 2, 3),
       ('d2f070f5-cfae-4815-876a-b52a48e7ca22', 2, 2),
       ('d2f070f5-cfae-4815-876a-b52a48e7ca22', 2, 1),
       -- round two
       ('d2f070f5-cfae-4815-876a-b52a48e7ca22', 3, 1),
       ('d2f070f5-cfae-4815-876a-b52a48e7ca22', 4, 1),
       ('d2f070f5-cfae-4815-876a-b52a48e7ca22', 5, 1),
       ('d2f070f5-cfae-4815-876a-b52a48e7ca22', 6, 1),
       ('d2f070f5-cfae-4815-876a-b52a48e7ca22', 6, 2),
       ('d2f070f5-cfae-4815-876a-b52a48e7ca22', 6, 3),
       ('d2f070f5-cfae-4815-876a-b52a48e7ca22', 5, 3),
       ('d2f070f5-cfae-4815-876a-b52a48e7ca22', 4, 3),
       ('d2f070f5-cfae-4815-876a-b52a48e7ca22', 3, 3),
       ('d2f070f5-cfae-4815-876a-b52a48e7ca22', 2, 3),
       ('d2f070f5-cfae-4815-876a-b52a48e7ca22', 2, 2),
       ('d2f070f5-cfae-4815-876a-b52a48e7ca22', 2, 1),
       -- round three
       ('d2f070f5-cfae-4815-876a-b52a48e7ca22', 3, 1),
       ('d2f070f5-cfae-4815-876a-b52a48e7ca22', 4, 1),
       ('d2f070f5-cfae-4815-876a-b52a48e7ca22', 5, 1),
       ('d2f070f5-cfae-4815-876a-b52a48e7ca22', 6, 1),
       ('d2f070f5-cfae-4815-876a-b52a48e7ca22', 6, 2),
       ('d2f070f5-cfae-4815-876a-b52a48e7ca22', 6, 3),
       ('d2f070f5-cfae-4815-876a-b52a48e7ca22', 6, 4),
       ('d2f070f5-cfae-4815-876a-b52a48e7ca22', 6, 5),
       ('d2f070f5-cfae-4815-876a-b52a48e7ca22', 6, 6),
       ('d2f070f5-cfae-4815-876a-b52a48e7ca22', 5, 6),
       ('d2f070f5-cfae-4815-876a-b52a48e7ca22', 4, 6),
       ('d2f070f5-cfae-4815-876a-b52a48e7ca22', 3, 6),
       ('d2f070f5-cfae-4815-876a-b52a48e7ca22', 2, 6),
       ('d2f070f5-cfae-4815-876a-b52a48e7ca22', 2, 5),
       ('d2f070f5-cfae-4815-876a-b52a48e7ca22', 2, 4),
       ('d2f070f5-cfae-4815-876a-b52a48e7ca22', 2, 3),
       ('d2f070f5-cfae-4815-876a-b52a48e7ca22', 2, 2),
       ('d2f070f5-cfae-4815-876a-b52a48e7ca22', 2, 1),
       -- leave
       ('d2f070f5-cfae-4815-876a-b52a48e7ca22', 3, 1),
       ('d2f070f5-cfae-4815-876a-b52a48e7ca22', 3, 0);

-- forth critter
insert into `path_list` (`healing_collector_id`, `x`, `y`)
values ('1586276c-9fca-4aa7-9432-575f4d17b3c7', 3, 0),
       ('1586276c-9fca-4aa7-9432-575f4d17b3c7', 3, 1),
       ('1586276c-9fca-4aa7-9432-575f4d17b3c7', 4, 1),
       ('1586276c-9fca-4aa7-9432-575f4d17b3c7', 5, 1),
       ('1586276c-9fca-4aa7-9432-575f4d17b3c7', 6, 1),
       ('1586276c-9fca-4aa7-9432-575f4d17b3c7', 6, 2),
       ('1586276c-9fca-4aa7-9432-575f4d17b3c7', 6, 3),
       ('1586276c-9fca-4aa7-9432-575f4d17b3c7', 5, 3),
       ('1586276c-9fca-4aa7-9432-575f4d17b3c7', 4, 3),
       ('1586276c-9fca-4aa7-9432-575f4d17b3c7', 3, 3),
       ('1586276c-9fca-4aa7-9432-575f4d17b3c7', 2, 3),
       ('1586276c-9fca-4aa7-9432-575f4d17b3c7', 2, 2),
       ('1586276c-9fca-4aa7-9432-575f4d17b3c7', 2, 1),
       -- round two
       ('1586276c-9fca-4aa7-9432-575f4d17b3c7', 3, 1),
       ('1586276c-9fca-4aa7-9432-575f4d17b3c7', 4, 1),
       ('1586276c-9fca-4aa7-9432-575f4d17b3c7', 5, 1),
       ('1586276c-9fca-4aa7-9432-575f4d17b3c7', 6, 1),
       ('1586276c-9fca-4aa7-9432-575f4d17b3c7', 6, 2),
       ('1586276c-9fca-4aa7-9432-575f4d17b3c7', 6, 3),
       ('1586276c-9fca-4aa7-9432-575f4d17b3c7', 5, 3),
       ('1586276c-9fca-4aa7-9432-575f4d17b3c7', 4, 3),
       ('1586276c-9fca-4aa7-9432-575f4d17b3c7', 3, 3),
       ('1586276c-9fca-4aa7-9432-575f4d17b3c7', 2, 3),
       ('1586276c-9fca-4aa7-9432-575f4d17b3c7', 2, 2),
       ('1586276c-9fca-4aa7-9432-575f4d17b3c7', 2, 1),
       -- round three
       ('1586276c-9fca-4aa7-9432-575f4d17b3c7', 3, 1),
       ('1586276c-9fca-4aa7-9432-575f4d17b3c7', 4, 1),
       ('1586276c-9fca-4aa7-9432-575f4d17b3c7', 5, 1),
       ('1586276c-9fca-4aa7-9432-575f4d17b3c7', 6, 1),
       ('1586276c-9fca-4aa7-9432-575f4d17b3c7', 6, 2),
       ('1586276c-9fca-4aa7-9432-575f4d17b3c7', 6, 3),
       ('1586276c-9fca-4aa7-9432-575f4d17b3c7', 6, 4),
       ('1586276c-9fca-4aa7-9432-575f4d17b3c7', 6, 5),
       ('1586276c-9fca-4aa7-9432-575f4d17b3c7', 6, 6),
       ('1586276c-9fca-4aa7-9432-575f4d17b3c7', 5, 6),
       ('1586276c-9fca-4aa7-9432-575f4d17b3c7', 4, 6),
       ('1586276c-9fca-4aa7-9432-575f4d17b3c7', 3, 6),
       ('1586276c-9fca-4aa7-9432-575f4d17b3c7', 2, 6),
       ('1586276c-9fca-4aa7-9432-575f4d17b3c7', 2, 5),
       ('1586276c-9fca-4aa7-9432-575f4d17b3c7', 2, 4),
       ('1586276c-9fca-4aa7-9432-575f4d17b3c7', 2, 3),
       ('1586276c-9fca-4aa7-9432-575f4d17b3c7', 2, 2),
       ('1586276c-9fca-4aa7-9432-575f4d17b3c7', 2, 1),
       -- round four
       ('1586276c-9fca-4aa7-9432-575f4d17b3c7', 3, 1),
       ('1586276c-9fca-4aa7-9432-575f4d17b3c7', 4, 1),
       ('1586276c-9fca-4aa7-9432-575f4d17b3c7', 5, 1),
       ('1586276c-9fca-4aa7-9432-575f4d17b3c7', 6, 1),
       ('1586276c-9fca-4aa7-9432-575f4d17b3c7', 6, 2),
       ('1586276c-9fca-4aa7-9432-575f4d17b3c7', 6, 3),
       ('1586276c-9fca-4aa7-9432-575f4d17b3c7', 5, 3),
       ('1586276c-9fca-4aa7-9432-575f4d17b3c7', 4, 3),
       ('1586276c-9fca-4aa7-9432-575f4d17b3c7', 3, 3),
       ('1586276c-9fca-4aa7-9432-575f4d17b3c7', 2, 3),
       ('1586276c-9fca-4aa7-9432-575f4d17b3c7', 2, 2),
       ('1586276c-9fca-4aa7-9432-575f4d17b3c7', 2, 1),
       -- leave
       ('1586276c-9fca-4aa7-9432-575f4d17b3c7', 3, 1),
       ('1586276c-9fca-4aa7-9432-575f4d17b3c7', 3, 0);

-- fifth critter
insert into `path_list` (`healing_collector_id`, `x`, `y`)
values ('b6fdcf39-38e2-49ad-9737-19f04b8caded', 3, 0),
       ('b6fdcf39-38e2-49ad-9737-19f04b8caded', 3, 1),
       ('b6fdcf39-38e2-49ad-9737-19f04b8caded', 4, 1),
       ('b6fdcf39-38e2-49ad-9737-19f04b8caded', 5, 1),
       ('b6fdcf39-38e2-49ad-9737-19f04b8caded', 6, 1),
       ('b6fdcf39-38e2-49ad-9737-19f04b8caded', 6, 2),
       ('b6fdcf39-38e2-49ad-9737-19f04b8caded', 6, 3),
       ('b6fdcf39-38e2-49ad-9737-19f04b8caded', 5, 3),
       ('b6fdcf39-38e2-49ad-9737-19f04b8caded', 4, 3),
       ('b6fdcf39-38e2-49ad-9737-19f04b8caded', 3, 3),
       ('b6fdcf39-38e2-49ad-9737-19f04b8caded', 2, 3),
       ('b6fdcf39-38e2-49ad-9737-19f04b8caded', 2, 2),
       ('b6fdcf39-38e2-49ad-9737-19f04b8caded', 2, 1),
       -- round two
       ('b6fdcf39-38e2-49ad-9737-19f04b8caded', 3, 1),
       ('b6fdcf39-38e2-49ad-9737-19f04b8caded', 4, 1),
       ('b6fdcf39-38e2-49ad-9737-19f04b8caded', 5, 1),
       ('b6fdcf39-38e2-49ad-9737-19f04b8caded', 6, 1),
       ('b6fdcf39-38e2-49ad-9737-19f04b8caded', 6, 2),
       ('b6fdcf39-38e2-49ad-9737-19f04b8caded', 6, 3),
       ('b6fdcf39-38e2-49ad-9737-19f04b8caded', 6, 4),
       ('b6fdcf39-38e2-49ad-9737-19f04b8caded', 6, 5),
       ('b6fdcf39-38e2-49ad-9737-19f04b8caded', 6, 6),
       ('b6fdcf39-38e2-49ad-9737-19f04b8caded', 5, 6),
       ('b6fdcf39-38e2-49ad-9737-19f04b8caded', 4, 6),
       ('b6fdcf39-38e2-49ad-9737-19f04b8caded', 3, 6),
       ('b6fdcf39-38e2-49ad-9737-19f04b8caded', 2, 6),
       ('b6fdcf39-38e2-49ad-9737-19f04b8caded', 2, 5),
       ('b6fdcf39-38e2-49ad-9737-19f04b8caded', 2, 4),
       ('b6fdcf39-38e2-49ad-9737-19f04b8caded', 2, 3),
       ('b6fdcf39-38e2-49ad-9737-19f04b8caded', 2, 2),
       ('b6fdcf39-38e2-49ad-9737-19f04b8caded', 2, 1),
       -- round three
       ('b6fdcf39-38e2-49ad-9737-19f04b8caded', 3, 1),
       ('b6fdcf39-38e2-49ad-9737-19f04b8caded', 4, 1),
       ('b6fdcf39-38e2-49ad-9737-19f04b8caded', 5, 1),
       ('b6fdcf39-38e2-49ad-9737-19f04b8caded', 6, 1),
       ('b6fdcf39-38e2-49ad-9737-19f04b8caded', 6, 2),
       ('b6fdcf39-38e2-49ad-9737-19f04b8caded', 6, 3),
       ('b6fdcf39-38e2-49ad-9737-19f04b8caded', 5, 3),
       ('b6fdcf39-38e2-49ad-9737-19f04b8caded', 4, 3),
       ('b6fdcf39-38e2-49ad-9737-19f04b8caded', 3, 3),
       ('b6fdcf39-38e2-49ad-9737-19f04b8caded', 2, 3),
       ('b6fdcf39-38e2-49ad-9737-19f04b8caded', 2, 2),
       ('b6fdcf39-38e2-49ad-9737-19f04b8caded', 2, 1),
       -- leave
       ('b6fdcf39-38e2-49ad-9737-19f04b8caded', 3, 1),
       ('b6fdcf39-38e2-49ad-9737-19f04b8caded', 3, 0);

-- sixth critter
insert into `path_list` (`healing_collector_id`, `x`, `y`)
values ('09131765-74b6-4e38-b3b0-d673f9e2987f', 3, 0),
       ('09131765-74b6-4e38-b3b0-d673f9e2987f', 3, 1),
       ('09131765-74b6-4e38-b3b0-d673f9e2987f', 4, 1),
       ('09131765-74b6-4e38-b3b0-d673f9e2987f', 5, 1),
       ('09131765-74b6-4e38-b3b0-d673f9e2987f', 6, 1),
       ('09131765-74b6-4e38-b3b0-d673f9e2987f', 6, 2),
       ('09131765-74b6-4e38-b3b0-d673f9e2987f', 6, 3),
       ('09131765-74b6-4e38-b3b0-d673f9e2987f', 5, 3),
       ('09131765-74b6-4e38-b3b0-d673f9e2987f', 4, 3),
       ('09131765-74b6-4e38-b3b0-d673f9e2987f', 3, 3),
       ('09131765-74b6-4e38-b3b0-d673f9e2987f', 2, 3),
       ('09131765-74b6-4e38-b3b0-d673f9e2987f', 2, 2),
       ('09131765-74b6-4e38-b3b0-d673f9e2987f', 2, 1),
       -- round two
       ('09131765-74b6-4e38-b3b0-d673f9e2987f', 3, 1),
       ('09131765-74b6-4e38-b3b0-d673f9e2987f', 4, 1),
       ('09131765-74b6-4e38-b3b0-d673f9e2987f', 5, 1),
       ('09131765-74b6-4e38-b3b0-d673f9e2987f', 6, 1),
       ('09131765-74b6-4e38-b3b0-d673f9e2987f', 6, 2),
       ('09131765-74b6-4e38-b3b0-d673f9e2987f', 6, 3),
       ('09131765-74b6-4e38-b3b0-d673f9e2987f', 5, 3),
       ('09131765-74b6-4e38-b3b0-d673f9e2987f', 4, 3),
       ('09131765-74b6-4e38-b3b0-d673f9e2987f', 3, 3),
       ('09131765-74b6-4e38-b3b0-d673f9e2987f', 2, 3),
       ('09131765-74b6-4e38-b3b0-d673f9e2987f', 2, 2),
       ('09131765-74b6-4e38-b3b0-d673f9e2987f', 2, 1),
       -- round three
       ('09131765-74b6-4e38-b3b0-d673f9e2987f', 3, 1),
       ('09131765-74b6-4e38-b3b0-d673f9e2987f', 4, 1),
       ('09131765-74b6-4e38-b3b0-d673f9e2987f', 5, 1),
       ('09131765-74b6-4e38-b3b0-d673f9e2987f', 6, 1),
       ('09131765-74b6-4e38-b3b0-d673f9e2987f', 6, 2),
       ('09131765-74b6-4e38-b3b0-d673f9e2987f', 6, 3),
       ('09131765-74b6-4e38-b3b0-d673f9e2987f', 6, 4),
       ('09131765-74b6-4e38-b3b0-d673f9e2987f', 6, 5),
       ('09131765-74b6-4e38-b3b0-d673f9e2987f', 6, 6),
       ('09131765-74b6-4e38-b3b0-d673f9e2987f', 5, 6),
       ('09131765-74b6-4e38-b3b0-d673f9e2987f', 4, 6),
       ('09131765-74b6-4e38-b3b0-d673f9e2987f', 3, 6),
       ('09131765-74b6-4e38-b3b0-d673f9e2987f', 2, 6),
       ('09131765-74b6-4e38-b3b0-d673f9e2987f', 2, 5),
       ('09131765-74b6-4e38-b3b0-d673f9e2987f', 2, 4),
       ('09131765-74b6-4e38-b3b0-d673f9e2987f', 2, 3),
       ('09131765-74b6-4e38-b3b0-d673f9e2987f', 2, 2),
       ('09131765-74b6-4e38-b3b0-d673f9e2987f', 2, 1),
       -- leave
       ('09131765-74b6-4e38-b3b0-d673f9e2987f', 3, 1),
       ('09131765-74b6-4e38-b3b0-d673f9e2987f', 3, 0);

-- seventh critter
insert into `path_list` (`healing_collector_id`, `x`, `y`)
values ('362311be-a6db-408f-a1d0-6c89aa269063', 3, 0),
       ('362311be-a6db-408f-a1d0-6c89aa269063', 3, 1),
       ('362311be-a6db-408f-a1d0-6c89aa269063', 4, 1),
       ('362311be-a6db-408f-a1d0-6c89aa269063', 5, 1),
       ('362311be-a6db-408f-a1d0-6c89aa269063', 6, 1),
       ('362311be-a6db-408f-a1d0-6c89aa269063', 6, 2),
       ('362311be-a6db-408f-a1d0-6c89aa269063', 6, 3),
       ('362311be-a6db-408f-a1d0-6c89aa269063', 5, 3),
       ('362311be-a6db-408f-a1d0-6c89aa269063', 4, 3),
       ('362311be-a6db-408f-a1d0-6c89aa269063', 3, 3),
       ('362311be-a6db-408f-a1d0-6c89aa269063', 2, 3),
       ('362311be-a6db-408f-a1d0-6c89aa269063', 2, 2),
       ('362311be-a6db-408f-a1d0-6c89aa269063', 2, 1),
       -- round two
       ('362311be-a6db-408f-a1d0-6c89aa269063', 3, 1),
       ('362311be-a6db-408f-a1d0-6c89aa269063', 4, 1),
       ('362311be-a6db-408f-a1d0-6c89aa269063', 5, 1),
       ('362311be-a6db-408f-a1d0-6c89aa269063', 6, 1),
       ('362311be-a6db-408f-a1d0-6c89aa269063', 6, 2),
       ('362311be-a6db-408f-a1d0-6c89aa269063', 6, 3),
       ('362311be-a6db-408f-a1d0-6c89aa269063', 5, 3),
       ('362311be-a6db-408f-a1d0-6c89aa269063', 4, 3),
       ('362311be-a6db-408f-a1d0-6c89aa269063', 3, 3),
       ('362311be-a6db-408f-a1d0-6c89aa269063', 2, 3),
       ('362311be-a6db-408f-a1d0-6c89aa269063', 2, 2),
       ('362311be-a6db-408f-a1d0-6c89aa269063', 2, 1),
       -- round three
       ('362311be-a6db-408f-a1d0-6c89aa269063', 3, 1),
       ('362311be-a6db-408f-a1d0-6c89aa269063', 4, 1),
       ('362311be-a6db-408f-a1d0-6c89aa269063', 5, 1),
       ('362311be-a6db-408f-a1d0-6c89aa269063', 6, 1),
       ('362311be-a6db-408f-a1d0-6c89aa269063', 6, 2),
       ('362311be-a6db-408f-a1d0-6c89aa269063', 6, 3),
       ('362311be-a6db-408f-a1d0-6c89aa269063', 6, 4),
       ('362311be-a6db-408f-a1d0-6c89aa269063', 6, 5),
       ('362311be-a6db-408f-a1d0-6c89aa269063', 6, 6),
       ('362311be-a6db-408f-a1d0-6c89aa269063', 5, 6),
       ('362311be-a6db-408f-a1d0-6c89aa269063', 4, 6),
       ('362311be-a6db-408f-a1d0-6c89aa269063', 3, 6),
       ('362311be-a6db-408f-a1d0-6c89aa269063', 2, 6),
       ('362311be-a6db-408f-a1d0-6c89aa269063', 2, 5),
       ('362311be-a6db-408f-a1d0-6c89aa269063', 2, 4),
       ('362311be-a6db-408f-a1d0-6c89aa269063', 2, 3),
       ('362311be-a6db-408f-a1d0-6c89aa269063', 2, 2),
       ('362311be-a6db-408f-a1d0-6c89aa269063', 2, 1),
       -- leave
       ('362311be-a6db-408f-a1d0-6c89aa269063', 3, 1),
       ('362311be-a6db-408f-a1d0-6c89aa269063', 3, 0);

-- eighths critter
insert into `path_list` (`healing_collector_id`, `x`, `y`)
values ('7b59bb02-142a-4870-a220-9783f613e90e', 3, 0),
       ('7b59bb02-142a-4870-a220-9783f613e90e', 3, 1),
       ('7b59bb02-142a-4870-a220-9783f613e90e', 4, 1),
       ('7b59bb02-142a-4870-a220-9783f613e90e', 5, 1),
       ('7b59bb02-142a-4870-a220-9783f613e90e', 6, 1),
       ('7b59bb02-142a-4870-a220-9783f613e90e', 6, 2),
       ('7b59bb02-142a-4870-a220-9783f613e90e', 6, 3),
       ('7b59bb02-142a-4870-a220-9783f613e90e', 6, 4),
       ('7b59bb02-142a-4870-a220-9783f613e90e', 6, 5),
       ('7b59bb02-142a-4870-a220-9783f613e90e', 6, 6),
       ('7b59bb02-142a-4870-a220-9783f613e90e', 5, 6),
       ('7b59bb02-142a-4870-a220-9783f613e90e', 4, 6),
       ('7b59bb02-142a-4870-a220-9783f613e90e', 3, 6),
       ('7b59bb02-142a-4870-a220-9783f613e90e', 2, 6),
       ('7b59bb02-142a-4870-a220-9783f613e90e', 2, 5),
       ('7b59bb02-142a-4870-a220-9783f613e90e', 2, 4),
       ('7b59bb02-142a-4870-a220-9783f613e90e', 2, 3),
       ('7b59bb02-142a-4870-a220-9783f613e90e', 2, 2),
       ('7b59bb02-142a-4870-a220-9783f613e90e', 2, 1),
       -- round two
       ('7b59bb02-142a-4870-a220-9783f613e90e', 3, 1),
       ('7b59bb02-142a-4870-a220-9783f613e90e', 4, 1),
       ('7b59bb02-142a-4870-a220-9783f613e90e', 5, 1),
       ('7b59bb02-142a-4870-a220-9783f613e90e', 6, 1),
       ('7b59bb02-142a-4870-a220-9783f613e90e', 6, 2),
       ('7b59bb02-142a-4870-a220-9783f613e90e', 6, 3),
       ('7b59bb02-142a-4870-a220-9783f613e90e', 6, 4),
       ('7b59bb02-142a-4870-a220-9783f613e90e', 6, 5),
       ('7b59bb02-142a-4870-a220-9783f613e90e', 6, 6),
       ('7b59bb02-142a-4870-a220-9783f613e90e', 5, 6),
       ('7b59bb02-142a-4870-a220-9783f613e90e', 4, 6),
       ('7b59bb02-142a-4870-a220-9783f613e90e', 3, 6),
       ('7b59bb02-142a-4870-a220-9783f613e90e', 2, 6),
       ('7b59bb02-142a-4870-a220-9783f613e90e', 2, 5),
       ('7b59bb02-142a-4870-a220-9783f613e90e', 2, 4),
       ('7b59bb02-142a-4870-a220-9783f613e90e', 2, 3),
       ('7b59bb02-142a-4870-a220-9783f613e90e', 2, 2),
       ('7b59bb02-142a-4870-a220-9783f613e90e', 2, 1),
       -- round three
       ('7b59bb02-142a-4870-a220-9783f613e90e', 3, 1),
       ('7b59bb02-142a-4870-a220-9783f613e90e', 4, 1),
       ('7b59bb02-142a-4870-a220-9783f613e90e', 5, 1),
       ('7b59bb02-142a-4870-a220-9783f613e90e', 6, 1),
       ('7b59bb02-142a-4870-a220-9783f613e90e', 6, 2),
       ('7b59bb02-142a-4870-a220-9783f613e90e', 6, 3),
       ('7b59bb02-142a-4870-a220-9783f613e90e', 5, 3),
       ('7b59bb02-142a-4870-a220-9783f613e90e', 4, 3),
       ('7b59bb02-142a-4870-a220-9783f613e90e', 3, 3),
       ('7b59bb02-142a-4870-a220-9783f613e90e', 2, 3),
       ('7b59bb02-142a-4870-a220-9783f613e90e', 2, 2),
       ('7b59bb02-142a-4870-a220-9783f613e90e', 2, 1),
       -- leave
       ('7b59bb02-142a-4870-a220-9783f613e90e', 3, 1),
       ('7b59bb02-142a-4870-a220-9783f613e90e', 3, 0);


-- ninth critter
insert into `path_list` (`healing_collector_id`, `x`, `y`)
values ('f143e31b-c5d8-4e7d-9e35-228575f12f7d', 3, 0),
       ('f143e31b-c5d8-4e7d-9e35-228575f12f7d', 3, 1),
       ('f143e31b-c5d8-4e7d-9e35-228575f12f7d', 4, 1),
       ('f143e31b-c5d8-4e7d-9e35-228575f12f7d', 5, 1),
       ('f143e31b-c5d8-4e7d-9e35-228575f12f7d', 6, 1),
       ('f143e31b-c5d8-4e7d-9e35-228575f12f7d', 6, 2),
       ('f143e31b-c5d8-4e7d-9e35-228575f12f7d', 6, 3),
       ('f143e31b-c5d8-4e7d-9e35-228575f12f7d', 5, 3),
       ('f143e31b-c5d8-4e7d-9e35-228575f12f7d', 4, 3),
       ('f143e31b-c5d8-4e7d-9e35-228575f12f7d', 3, 3),
       ('f143e31b-c5d8-4e7d-9e35-228575f12f7d', 2, 3),
       ('f143e31b-c5d8-4e7d-9e35-228575f12f7d', 2, 2),
       ('f143e31b-c5d8-4e7d-9e35-228575f12f7d', 2, 1),
       -- round two
       ('f143e31b-c5d8-4e7d-9e35-228575f12f7d', 3, 1),
       ('f143e31b-c5d8-4e7d-9e35-228575f12f7d', 4, 1),
       ('f143e31b-c5d8-4e7d-9e35-228575f12f7d', 5, 1),
       ('f143e31b-c5d8-4e7d-9e35-228575f12f7d', 6, 1),
       ('f143e31b-c5d8-4e7d-9e35-228575f12f7d', 6, 2),
       ('f143e31b-c5d8-4e7d-9e35-228575f12f7d', 6, 3),
       ('f143e31b-c5d8-4e7d-9e35-228575f12f7d', 5, 3),
       ('f143e31b-c5d8-4e7d-9e35-228575f12f7d', 4, 3),
       ('f143e31b-c5d8-4e7d-9e35-228575f12f7d', 3, 3),
       ('f143e31b-c5d8-4e7d-9e35-228575f12f7d', 2, 3),
       ('f143e31b-c5d8-4e7d-9e35-228575f12f7d', 2, 2),
       ('f143e31b-c5d8-4e7d-9e35-228575f12f7d', 2, 1),
       -- round three
       ('f143e31b-c5d8-4e7d-9e35-228575f12f7d', 3, 1),
       ('f143e31b-c5d8-4e7d-9e35-228575f12f7d', 4, 1),
       ('f143e31b-c5d8-4e7d-9e35-228575f12f7d', 5, 1),
       ('f143e31b-c5d8-4e7d-9e35-228575f12f7d', 6, 1),
       ('f143e31b-c5d8-4e7d-9e35-228575f12f7d', 6, 2),
       ('f143e31b-c5d8-4e7d-9e35-228575f12f7d', 6, 3),
       ('f143e31b-c5d8-4e7d-9e35-228575f12f7d', 5, 3),
       ('f143e31b-c5d8-4e7d-9e35-228575f12f7d', 4, 3),
       ('f143e31b-c5d8-4e7d-9e35-228575f12f7d', 3, 3),
       ('f143e31b-c5d8-4e7d-9e35-228575f12f7d', 2, 3),
       ('f143e31b-c5d8-4e7d-9e35-228575f12f7d', 2, 2),
       ('f143e31b-c5d8-4e7d-9e35-228575f12f7d', 2, 1),
       -- leave
       ('f143e31b-c5d8-4e7d-9e35-228575f12f7d', 3, 1),
       ('f143e31b-c5d8-4e7d-9e35-228575f12f7d', 3, 0);

-- tenth critter
insert into `path_list` (`healing_collector_id`, `x`, `y`)
values ('dc444adc-f580-466c-940f-0bcbbac47e90', 3, 0),
       ('dc444adc-f580-466c-940f-0bcbbac47e90', 3, 1),
       ('dc444adc-f580-466c-940f-0bcbbac47e90', 4, 1),
       ('dc444adc-f580-466c-940f-0bcbbac47e90', 5, 1),
       ('dc444adc-f580-466c-940f-0bcbbac47e90', 6, 1),
       ('dc444adc-f580-466c-940f-0bcbbac47e90', 6, 2),
       ('dc444adc-f580-466c-940f-0bcbbac47e90', 6, 3),
       ('dc444adc-f580-466c-940f-0bcbbac47e90', 6, 4),
       ('dc444adc-f580-466c-940f-0bcbbac47e90', 6, 5),
       ('dc444adc-f580-466c-940f-0bcbbac47e90', 6, 6),
       ('dc444adc-f580-466c-940f-0bcbbac47e90', 5, 6),
       ('dc444adc-f580-466c-940f-0bcbbac47e90', 4, 6),
       ('dc444adc-f580-466c-940f-0bcbbac47e90', 3, 6),
       ('dc444adc-f580-466c-940f-0bcbbac47e90', 2, 6),
       ('dc444adc-f580-466c-940f-0bcbbac47e90', 2, 5),
       ('dc444adc-f580-466c-940f-0bcbbac47e90', 2, 4),
       ('dc444adc-f580-466c-940f-0bcbbac47e90', 2, 3),
       ('dc444adc-f580-466c-940f-0bcbbac47e90', 2, 2),
       ('dc444adc-f580-466c-940f-0bcbbac47e90', 2, 1),
       -- round two
       ('dc444adc-f580-466c-940f-0bcbbac47e90', 3, 1),
       ('dc444adc-f580-466c-940f-0bcbbac47e90', 4, 1),
       ('dc444adc-f580-466c-940f-0bcbbac47e90', 5, 1),
       ('dc444adc-f580-466c-940f-0bcbbac47e90', 6, 1),
       ('dc444adc-f580-466c-940f-0bcbbac47e90', 6, 2),
       ('dc444adc-f580-466c-940f-0bcbbac47e90', 6, 3),
       ('dc444adc-f580-466c-940f-0bcbbac47e90', 6, 4),
       ('dc444adc-f580-466c-940f-0bcbbac47e90', 6, 5),
       ('dc444adc-f580-466c-940f-0bcbbac47e90', 6, 6),
       ('dc444adc-f580-466c-940f-0bcbbac47e90', 5, 6),
       ('dc444adc-f580-466c-940f-0bcbbac47e90', 4, 6),
       ('dc444adc-f580-466c-940f-0bcbbac47e90', 3, 6),
       ('dc444adc-f580-466c-940f-0bcbbac47e90', 2, 6),
       ('dc444adc-f580-466c-940f-0bcbbac47e90', 2, 5),
       ('dc444adc-f580-466c-940f-0bcbbac47e90', 2, 4),
       ('dc444adc-f580-466c-940f-0bcbbac47e90', 2, 3),
       ('dc444adc-f580-466c-940f-0bcbbac47e90', 2, 2),
       ('dc444adc-f580-466c-940f-0bcbbac47e90', 2, 1),
       -- round three
       ('dc444adc-f580-466c-940f-0bcbbac47e90', 3, 1),
       ('dc444adc-f580-466c-940f-0bcbbac47e90', 4, 1),
       ('dc444adc-f580-466c-940f-0bcbbac47e90', 5, 1),
       ('dc444adc-f580-466c-940f-0bcbbac47e90', 6, 1),
       ('dc444adc-f580-466c-940f-0bcbbac47e90', 6, 2),
       ('dc444adc-f580-466c-940f-0bcbbac47e90', 6, 3),
       ('dc444adc-f580-466c-940f-0bcbbac47e90', 6, 4),
       ('dc444adc-f580-466c-940f-0bcbbac47e90', 6, 5),
       ('dc444adc-f580-466c-940f-0bcbbac47e90', 6, 6),
       ('dc444adc-f580-466c-940f-0bcbbac47e90', 5, 6),
       ('dc444adc-f580-466c-940f-0bcbbac47e90', 4, 6),
       ('dc444adc-f580-466c-940f-0bcbbac47e90', 3, 6),
       ('dc444adc-f580-466c-940f-0bcbbac47e90', 2, 6),
       ('dc444adc-f580-466c-940f-0bcbbac47e90', 2, 5),
       ('dc444adc-f580-466c-940f-0bcbbac47e90', 2, 4),
       ('dc444adc-f580-466c-940f-0bcbbac47e90', 2, 3),
       ('dc444adc-f580-466c-940f-0bcbbac47e90', 2, 2),
       ('dc444adc-f580-466c-940f-0bcbbac47e90', 2, 1),
       -- leave
       ('dc444adc-f580-466c-940f-0bcbbac47e90', 3, 1),
       ('dc444adc-f580-466c-940f-0bcbbac47e90', 3, 0);



