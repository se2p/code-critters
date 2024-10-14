insert into `healing_collector` (`id`, xml, `level_id`, `init`, `mutated`, `first_faulty_round`)
values
    ('36a72b68-839d-4e24-b67a-4a8114e77bb9',
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
     '050f7bee-c3f7-4dd4-8c1e-c8598842d787',
     '(this.color) = ("cyan");\n (this.hair) = ("black");\n',
     false,
     0),
    ('f00cc178-b535-470d-ad9e-152e71eab510',
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
     '050f7bee-c3f7-4dd4-8c1e-c8598842d787',
     '(this.color) = ("red");\n (this.hair) = ("brown");\n',
     false,
     0),
    ('35f5bd00-efca-4030-b09d-9d432fab143e',
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
     '050f7bee-c3f7-4dd4-8c1e-c8598842d787',
     '(this.color) = ("yellow");\n',
     false,
     0),
    ('4e1cabd6-d0fa-4a16-8c52-ea79c28f729f',
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
                                <field name="NUM">2</field>
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
     '050f7bee-c3f7-4dd4-8c1e-c8598842d787',
     '(this.color) = ("blue");\n',
     true,
     1),
    ('b32de0ce-7bac-4aef-8906-84eaa3f43a8c',
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
                                <field name="NUM">1</field>
                            </block>
                        </value>
                    </block>
                </statement>
            </block>
        </statement>
    </block>
</xml>',
     '050f7bee-c3f7-4dd4-8c1e-c8598842d787',
     '(this.color) = ("green");\n (this.hair) = ("black");\n',
     true,
     2),
    ('237be9bc-dff8-4588-9ff5-c5e14c55390e',
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
                                <field name="NUM">3</field>
                            </block>
                        </value>
                    </block>
                </statement>
            </block>
        </statement>
    </block>
</xml>',
     '050f7bee-c3f7-4dd4-8c1e-c8598842d787',
     '(this.color) = ("pink");\n (this.hair) = ("brown");\n',
     true,
     2),
    ('d84f36c8-7712-4227-b349-283437f04a52',
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
                                <field name="NUM">0</field>
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
     '050f7bee-c3f7-4dd4-8c1e-c8598842d787',
     '(this.color) = ("black");\n (this.hair) = ("red");\n',
     true,
     1),
    ('5f4ee48f-8ba1-4bd5-a715-ed64f353d7d7',
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
     '050f7bee-c3f7-4dd4-8c1e-c8598842d787',
     '(this.color) = ("cyan");\n',
     true,
     4),
    ('eb220c9a-b089-4861-a00f-0d2eaec0b0d5',
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
                        <field name="NUM">3</field>
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
     '050f7bee-c3f7-4dd4-8c1e-c8598842d787',
     '(this.color) = ("white");\n',
     true,
     1),

    ('9704f98f-be57-4108-b82c-5b1c3c0d194d',
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
                        <field name="OP">GTE</field>
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
     '050f7bee-c3f7-4dd4-8c1e-c8598842d787',
     '(this.color) = ("orange");\n',
     true,
     2);


insert into `codes_per_bush` (`healing_collector_id`, `code`, `bush_type`)
values ('36a72b68-839d-4e24-b67a-4a8114e77bb9',
        'if ((this.roundsCount) === 1) {\r\n    this.orangeBerryCount = this.orangeBerryCount + 1;\r\n} else {\r\n    this.orangeBerryCount = this.orangeBerryCount + 2;\r\n}',
        'ORANGE');

insert into `codes_per_bush` (`healing_collector_id`, `code`, `bush_type`)
values ('f00cc178-b535-470d-ad9e-152e71eab510',
        'if ((this.roundsCount) === 1) {\r\n    this.orangeBerryCount = this.orangeBerryCount + 1;\r\n} else {\r\n    this.orangeBerryCount = this.orangeBerryCount + 2;\r\n}',
        'ORANGE');

insert into `codes_per_bush` (`healing_collector_id`, `code`, `bush_type`)
values ('35f5bd00-efca-4030-b09d-9d432fab143e',
        'if ((this.roundsCount) === 1) {\r\n    this.orangeBerryCount = this.orangeBerryCount + 1;\r\n} else {\r\n    this.orangeBerryCount = this.orangeBerryCount + 2;\r\n}',
        'ORANGE');

insert into `codes_per_bush` (`healing_collector_id`, `code`, `bush_type`)
values ('4e1cabd6-d0fa-4a16-8c52-ea79c28f729f',
        'if ((this.roundsCount) === 1) {\r\n    this.orangeBerryCount = this.orangeBerryCount + 2;\r\n} else {\r\n    this.orangeBerryCount = this.orangeBerryCount + 2;\r\n}',
        'ORANGE');

insert into `codes_per_bush` (`healing_collector_id`, `code`, `bush_type`)
values ('b32de0ce-7bac-4aef-8906-84eaa3f43a8c',
        'if ((this.roundsCount) === 1) {\r\n    this.orangeBerryCount = this.orangeBerryCount + 1;\r\n} else {\r\n    this.orangeBerryCount = this.orangeBerryCount + 1;\r\n}',
        'ORANGE');

insert into `codes_per_bush` (`healing_collector_id`, `code`, `bush_type`)
values ('237be9bc-dff8-4588-9ff5-c5e14c55390e',
        'if ((this.roundsCount) === 1) {\r\n    this.orangeBerryCount = this.orangeBerryCount + 1;\r\n} else {\r\n    this.orangeBerryCount = this.orangeBerryCount + 3;\r\n}',
        'ORANGE');

insert into `codes_per_bush` (`healing_collector_id`, `code`, `bush_type`)
values ('d84f36c8-7712-4227-b349-283437f04a52',
        'if ((this.roundsCount) === 1) {\r\n    this.orangeBerryCount = this.orangeBerryCount + 0;\r\n} else {\r\n    this.orangeBerryCount = this.orangeBerryCount + 2;\r\n}',
        'ORANGE');

insert into `codes_per_bush` (`healing_collector_id`, `code`, `bush_type`)
values ('5f4ee48f-8ba1-4bd5-a715-ed64f353d7d7',
        'if ((this.roundsCount) === 1) {\r\n    this.orangeBerryCount = this.orangeBerryCount + 1;\r\n} else {\r\n    this.orangeBerryCount = this.orangeBerryCount + 2;\r\n}',
        'ORANGE');

insert into `codes_per_bush` (`healing_collector_id`, `code`, `bush_type`)
values ('eb220c9a-b089-4861-a00f-0d2eaec0b0d5',
        'if ((this.roundsCount) === 3) {\r\n    this.orangeBerryCount = this.orangeBerryCount + 1;\r\n} else {\r\n    this.orangeBerryCount = this.orangeBerryCount + 2;\r\n}',
        'ORANGE');

insert into `codes_per_bush` (`healing_collector_id`, `code`, `bush_type`)
values ('9704f98f-be57-4108-b82c-5b1c3c0d194d',
        'if ((this.roundsCount) >= 1) {\r\n    this.orangeBerryCount = this.orangeBerryCount + 1;\r\n} else {\r\n    this.orangeBerryCount = this.orangeBerryCount + 2;\r\n}',
        'ORANGE');


-- first critter
insert into `path_list` (`healing_collector_id`, `x`, `y`)
values ('36a72b68-839d-4e24-b67a-4a8114e77bb9', 0, 1),
       ('36a72b68-839d-4e24-b67a-4a8114e77bb9', 1, 1),
       ('36a72b68-839d-4e24-b67a-4a8114e77bb9', 2, 1),
       ('36a72b68-839d-4e24-b67a-4a8114e77bb9', 3, 1),
       ('36a72b68-839d-4e24-b67a-4a8114e77bb9', 4, 1),
       ('36a72b68-839d-4e24-b67a-4a8114e77bb9', 5, 1),
       ('36a72b68-839d-4e24-b67a-4a8114e77bb9', 5, 2),
       ('36a72b68-839d-4e24-b67a-4a8114e77bb9', 6, 2),
       ('36a72b68-839d-4e24-b67a-4a8114e77bb9', 6, 3),
       ('36a72b68-839d-4e24-b67a-4a8114e77bb9', 6, 4),
       ('36a72b68-839d-4e24-b67a-4a8114e77bb9', 6, 5),
       ('36a72b68-839d-4e24-b67a-4a8114e77bb9', 6, 6),
       ('36a72b68-839d-4e24-b67a-4a8114e77bb9', 5, 6),
       ('36a72b68-839d-4e24-b67a-4a8114e77bb9', 4, 6),
       ('36a72b68-839d-4e24-b67a-4a8114e77bb9', 3, 6),
       ('36a72b68-839d-4e24-b67a-4a8114e77bb9', 3, 5),
       ('36a72b68-839d-4e24-b67a-4a8114e77bb9', 2, 5),
       ('36a72b68-839d-4e24-b67a-4a8114e77bb9', 2, 4),
       ('36a72b68-839d-4e24-b67a-4a8114e77bb9', 2, 3),
       ('36a72b68-839d-4e24-b67a-4a8114e77bb9', 2, 2),
       -- round two
       ('36a72b68-839d-4e24-b67a-4a8114e77bb9', 2, 1),
       ('36a72b68-839d-4e24-b67a-4a8114e77bb9', 3, 1),
       ('36a72b68-839d-4e24-b67a-4a8114e77bb9', 4, 1),
       ('36a72b68-839d-4e24-b67a-4a8114e77bb9', 5, 1),
       ('36a72b68-839d-4e24-b67a-4a8114e77bb9', 5, 2),
       ('36a72b68-839d-4e24-b67a-4a8114e77bb9', 6, 2),
       ('36a72b68-839d-4e24-b67a-4a8114e77bb9', 6, 3),
       ('36a72b68-839d-4e24-b67a-4a8114e77bb9', 6, 4),
       ('36a72b68-839d-4e24-b67a-4a8114e77bb9', 6, 5),
       ('36a72b68-839d-4e24-b67a-4a8114e77bb9', 6, 6),
       ('36a72b68-839d-4e24-b67a-4a8114e77bb9', 5, 6),
       ('36a72b68-839d-4e24-b67a-4a8114e77bb9', 4, 6),
       ('36a72b68-839d-4e24-b67a-4a8114e77bb9', 3, 6),
       ('36a72b68-839d-4e24-b67a-4a8114e77bb9', 3, 5),
       ('36a72b68-839d-4e24-b67a-4a8114e77bb9', 2, 5),
       ('36a72b68-839d-4e24-b67a-4a8114e77bb9', 2, 4),
       ('36a72b68-839d-4e24-b67a-4a8114e77bb9', 2, 3),
       ('36a72b68-839d-4e24-b67a-4a8114e77bb9', 2, 2),
       -- round three
       ('36a72b68-839d-4e24-b67a-4a8114e77bb9', 2, 1),
       ('36a72b68-839d-4e24-b67a-4a8114e77bb9', 3, 1),
       ('36a72b68-839d-4e24-b67a-4a8114e77bb9', 4, 1),
       ('36a72b68-839d-4e24-b67a-4a8114e77bb9', 5, 1),
       ('36a72b68-839d-4e24-b67a-4a8114e77bb9', 5, 2),
       ('36a72b68-839d-4e24-b67a-4a8114e77bb9', 6, 2),
       ('36a72b68-839d-4e24-b67a-4a8114e77bb9', 6, 3),
       ('36a72b68-839d-4e24-b67a-4a8114e77bb9', 6, 4),
       ('36a72b68-839d-4e24-b67a-4a8114e77bb9', 6, 5),
       ('36a72b68-839d-4e24-b67a-4a8114e77bb9', 6, 6),
       ('36a72b68-839d-4e24-b67a-4a8114e77bb9', 5, 6),
       ('36a72b68-839d-4e24-b67a-4a8114e77bb9', 4, 6),
       ('36a72b68-839d-4e24-b67a-4a8114e77bb9', 3, 6),
       ('36a72b68-839d-4e24-b67a-4a8114e77bb9', 3, 5),
       ('36a72b68-839d-4e24-b67a-4a8114e77bb9', 2, 5),
       ('36a72b68-839d-4e24-b67a-4a8114e77bb9', 2, 4),
       ('36a72b68-839d-4e24-b67a-4a8114e77bb9', 2, 3),
       ('36a72b68-839d-4e24-b67a-4a8114e77bb9', 2, 2),
       ('36a72b68-839d-4e24-b67a-4a8114e77bb9', 2, 1),
       -- leave
       ('36a72b68-839d-4e24-b67a-4a8114e77bb9', 1, 1),
       ('36a72b68-839d-4e24-b67a-4a8114e77bb9', 0, 1);

-- second critter
insert into `path_list` (`healing_collector_id`, `x`, `y`)
values ('f00cc178-b535-470d-ad9e-152e71eab510', 0, 1),
       ('f00cc178-b535-470d-ad9e-152e71eab510', 1, 1),
       ('f00cc178-b535-470d-ad9e-152e71eab510', 2, 1),
       ('f00cc178-b535-470d-ad9e-152e71eab510', 3, 1),
       ('f00cc178-b535-470d-ad9e-152e71eab510', 4, 1),
       ('f00cc178-b535-470d-ad9e-152e71eab510', 5, 1),
       ('f00cc178-b535-470d-ad9e-152e71eab510', 5, 2),
       ('f00cc178-b535-470d-ad9e-152e71eab510', 6, 2),
       ('f00cc178-b535-470d-ad9e-152e71eab510', 6, 3),
       ('f00cc178-b535-470d-ad9e-152e71eab510', 6, 4),
       ('f00cc178-b535-470d-ad9e-152e71eab510', 6, 5),
       ('f00cc178-b535-470d-ad9e-152e71eab510', 6, 6),
       ('f00cc178-b535-470d-ad9e-152e71eab510', 5, 6),
       ('f00cc178-b535-470d-ad9e-152e71eab510', 4, 6),
       ('f00cc178-b535-470d-ad9e-152e71eab510', 3, 6),
       ('f00cc178-b535-470d-ad9e-152e71eab510', 3, 5),
       ('f00cc178-b535-470d-ad9e-152e71eab510', 2, 5),
       ('f00cc178-b535-470d-ad9e-152e71eab510', 2, 4),
       ('f00cc178-b535-470d-ad9e-152e71eab510', 2, 3),
       ('f00cc178-b535-470d-ad9e-152e71eab510', 2, 2),
       -- round two
       ('f00cc178-b535-470d-ad9e-152e71eab510', 2, 1),
       ('f00cc178-b535-470d-ad9e-152e71eab510', 3, 1),
       ('f00cc178-b535-470d-ad9e-152e71eab510', 4, 1),
       ('f00cc178-b535-470d-ad9e-152e71eab510', 5, 1),
       ('f00cc178-b535-470d-ad9e-152e71eab510', 5, 2),
       ('f00cc178-b535-470d-ad9e-152e71eab510', 6, 2),
       ('f00cc178-b535-470d-ad9e-152e71eab510', 6, 3),
       ('f00cc178-b535-470d-ad9e-152e71eab510', 6, 4),
       ('f00cc178-b535-470d-ad9e-152e71eab510', 6, 5),
       ('f00cc178-b535-470d-ad9e-152e71eab510', 6, 6),
       ('f00cc178-b535-470d-ad9e-152e71eab510', 5, 6),
       ('f00cc178-b535-470d-ad9e-152e71eab510', 4, 6),
       ('f00cc178-b535-470d-ad9e-152e71eab510', 3, 6),
       ('f00cc178-b535-470d-ad9e-152e71eab510', 3, 5),
       ('f00cc178-b535-470d-ad9e-152e71eab510', 2, 5),
       ('f00cc178-b535-470d-ad9e-152e71eab510', 2, 4),
       ('f00cc178-b535-470d-ad9e-152e71eab510', 2, 3),
       ('f00cc178-b535-470d-ad9e-152e71eab510', 2, 2),
       -- round three
       ('f00cc178-b535-470d-ad9e-152e71eab510', 2, 1),
       ('f00cc178-b535-470d-ad9e-152e71eab510', 3, 1),
       ('f00cc178-b535-470d-ad9e-152e71eab510', 4, 1),
       ('f00cc178-b535-470d-ad9e-152e71eab510', 5, 1),
       ('f00cc178-b535-470d-ad9e-152e71eab510', 5, 2),
       ('f00cc178-b535-470d-ad9e-152e71eab510', 6, 2),
       ('f00cc178-b535-470d-ad9e-152e71eab510', 6, 3),
       ('f00cc178-b535-470d-ad9e-152e71eab510', 6, 4),
       ('f00cc178-b535-470d-ad9e-152e71eab510', 6, 5),
       ('f00cc178-b535-470d-ad9e-152e71eab510', 6, 6),
       ('f00cc178-b535-470d-ad9e-152e71eab510', 5, 6),
       ('f00cc178-b535-470d-ad9e-152e71eab510', 4, 6),
       ('f00cc178-b535-470d-ad9e-152e71eab510', 3, 6),
       ('f00cc178-b535-470d-ad9e-152e71eab510', 3, 5),
       ('f00cc178-b535-470d-ad9e-152e71eab510', 2, 5),
       ('f00cc178-b535-470d-ad9e-152e71eab510', 2, 4),
       ('f00cc178-b535-470d-ad9e-152e71eab510', 2, 3),
       ('f00cc178-b535-470d-ad9e-152e71eab510', 2, 2),
       ('f00cc178-b535-470d-ad9e-152e71eab510', 2, 1),
       -- leave
       ('f00cc178-b535-470d-ad9e-152e71eab510', 1, 1),
       ('f00cc178-b535-470d-ad9e-152e71eab510', 0, 1);

-- third critter
insert into `path_list` (`healing_collector_id`, `x`, `y`)
values ('35f5bd00-efca-4030-b09d-9d432fab143e', 0, 1),
       ('35f5bd00-efca-4030-b09d-9d432fab143e', 1, 1),
       ('35f5bd00-efca-4030-b09d-9d432fab143e', 2, 1),
       ('35f5bd00-efca-4030-b09d-9d432fab143e', 3, 1),
       ('35f5bd00-efca-4030-b09d-9d432fab143e', 4, 1),
       ('35f5bd00-efca-4030-b09d-9d432fab143e', 5, 1),
       ('35f5bd00-efca-4030-b09d-9d432fab143e', 5, 2),
       ('35f5bd00-efca-4030-b09d-9d432fab143e', 6, 2),
       ('35f5bd00-efca-4030-b09d-9d432fab143e', 6, 3),
       ('35f5bd00-efca-4030-b09d-9d432fab143e', 6, 4),
       ('35f5bd00-efca-4030-b09d-9d432fab143e', 6, 5),
       ('35f5bd00-efca-4030-b09d-9d432fab143e', 6, 6),
       ('35f5bd00-efca-4030-b09d-9d432fab143e', 5, 6),
       ('35f5bd00-efca-4030-b09d-9d432fab143e', 4, 6),
       ('35f5bd00-efca-4030-b09d-9d432fab143e', 3, 6),
       ('35f5bd00-efca-4030-b09d-9d432fab143e', 3, 5),
       ('35f5bd00-efca-4030-b09d-9d432fab143e', 2, 5),
       ('35f5bd00-efca-4030-b09d-9d432fab143e', 2, 4),
       ('35f5bd00-efca-4030-b09d-9d432fab143e', 2, 3),
       ('35f5bd00-efca-4030-b09d-9d432fab143e', 2, 2),
       -- round two
       ('35f5bd00-efca-4030-b09d-9d432fab143e', 2, 1),
       ('35f5bd00-efca-4030-b09d-9d432fab143e', 3, 1),
       ('35f5bd00-efca-4030-b09d-9d432fab143e', 4, 1),
       ('35f5bd00-efca-4030-b09d-9d432fab143e', 5, 1),
       ('35f5bd00-efca-4030-b09d-9d432fab143e', 5, 2),
       ('35f5bd00-efca-4030-b09d-9d432fab143e', 6, 2),
       ('35f5bd00-efca-4030-b09d-9d432fab143e', 6, 3),
       ('35f5bd00-efca-4030-b09d-9d432fab143e', 6, 4),
       ('35f5bd00-efca-4030-b09d-9d432fab143e', 6, 5),
       ('35f5bd00-efca-4030-b09d-9d432fab143e', 6, 6),
       ('35f5bd00-efca-4030-b09d-9d432fab143e', 5, 6),
       ('35f5bd00-efca-4030-b09d-9d432fab143e', 4, 6),
       ('35f5bd00-efca-4030-b09d-9d432fab143e', 3, 6),
       ('35f5bd00-efca-4030-b09d-9d432fab143e', 3, 5),
       ('35f5bd00-efca-4030-b09d-9d432fab143e', 2, 5),
       ('35f5bd00-efca-4030-b09d-9d432fab143e', 2, 4),
       ('35f5bd00-efca-4030-b09d-9d432fab143e', 2, 3),
       ('35f5bd00-efca-4030-b09d-9d432fab143e', 2, 2),
       -- round three
       ('35f5bd00-efca-4030-b09d-9d432fab143e', 2, 1),
       ('35f5bd00-efca-4030-b09d-9d432fab143e', 3, 1),
       ('35f5bd00-efca-4030-b09d-9d432fab143e', 4, 1),
       ('35f5bd00-efca-4030-b09d-9d432fab143e', 5, 1),
       ('35f5bd00-efca-4030-b09d-9d432fab143e', 5, 2),
       ('35f5bd00-efca-4030-b09d-9d432fab143e', 6, 2),
       ('35f5bd00-efca-4030-b09d-9d432fab143e', 6, 3),
       ('35f5bd00-efca-4030-b09d-9d432fab143e', 6, 4),
       ('35f5bd00-efca-4030-b09d-9d432fab143e', 6, 5),
       ('35f5bd00-efca-4030-b09d-9d432fab143e', 6, 6),
       ('35f5bd00-efca-4030-b09d-9d432fab143e', 5, 6),
       ('35f5bd00-efca-4030-b09d-9d432fab143e', 4, 6),
       ('35f5bd00-efca-4030-b09d-9d432fab143e', 3, 6),
       ('35f5bd00-efca-4030-b09d-9d432fab143e', 3, 5),
       ('35f5bd00-efca-4030-b09d-9d432fab143e', 2, 5),
       ('35f5bd00-efca-4030-b09d-9d432fab143e', 2, 4),
       ('35f5bd00-efca-4030-b09d-9d432fab143e', 2, 3),
       ('35f5bd00-efca-4030-b09d-9d432fab143e', 2, 2),
       ('35f5bd00-efca-4030-b09d-9d432fab143e', 2, 1),
       -- leave
       ('35f5bd00-efca-4030-b09d-9d432fab143e', 1, 1),
       ('35f5bd00-efca-4030-b09d-9d432fab143e', 0, 1);

-- forth critter
insert into `path_list` (`healing_collector_id`, `x`, `y`)
values ('4e1cabd6-d0fa-4a16-8c52-ea79c28f729f', 0, 1),
       ('4e1cabd6-d0fa-4a16-8c52-ea79c28f729f', 1, 1),
       ('4e1cabd6-d0fa-4a16-8c52-ea79c28f729f', 2, 1),
       ('4e1cabd6-d0fa-4a16-8c52-ea79c28f729f', 3, 1),
       ('4e1cabd6-d0fa-4a16-8c52-ea79c28f729f', 4, 1),
       ('4e1cabd6-d0fa-4a16-8c52-ea79c28f729f', 5, 1),
       ('4e1cabd6-d0fa-4a16-8c52-ea79c28f729f', 5, 2),
       ('4e1cabd6-d0fa-4a16-8c52-ea79c28f729f', 6, 2),
       ('4e1cabd6-d0fa-4a16-8c52-ea79c28f729f', 6, 3),
       ('4e1cabd6-d0fa-4a16-8c52-ea79c28f729f', 6, 4),
       ('4e1cabd6-d0fa-4a16-8c52-ea79c28f729f', 6, 5),
       ('4e1cabd6-d0fa-4a16-8c52-ea79c28f729f', 6, 6),
       ('4e1cabd6-d0fa-4a16-8c52-ea79c28f729f', 5, 6),
       ('4e1cabd6-d0fa-4a16-8c52-ea79c28f729f', 4, 6),
       ('4e1cabd6-d0fa-4a16-8c52-ea79c28f729f', 3, 6),
       ('4e1cabd6-d0fa-4a16-8c52-ea79c28f729f', 3, 5),
       ('4e1cabd6-d0fa-4a16-8c52-ea79c28f729f', 2, 5),
       ('4e1cabd6-d0fa-4a16-8c52-ea79c28f729f', 2, 4),
       ('4e1cabd6-d0fa-4a16-8c52-ea79c28f729f', 2, 3),
       ('4e1cabd6-d0fa-4a16-8c52-ea79c28f729f', 2, 2),
       -- round two
       ('4e1cabd6-d0fa-4a16-8c52-ea79c28f729f', 2, 1),
       ('4e1cabd6-d0fa-4a16-8c52-ea79c28f729f', 3, 1),
       ('4e1cabd6-d0fa-4a16-8c52-ea79c28f729f', 4, 1),
       ('4e1cabd6-d0fa-4a16-8c52-ea79c28f729f', 5, 1),
       ('4e1cabd6-d0fa-4a16-8c52-ea79c28f729f', 5, 2),
       ('4e1cabd6-d0fa-4a16-8c52-ea79c28f729f', 6, 2),
       ('4e1cabd6-d0fa-4a16-8c52-ea79c28f729f', 6, 3),
       ('4e1cabd6-d0fa-4a16-8c52-ea79c28f729f', 6, 4),
       ('4e1cabd6-d0fa-4a16-8c52-ea79c28f729f', 6, 5),
       ('4e1cabd6-d0fa-4a16-8c52-ea79c28f729f', 6, 6),
       ('4e1cabd6-d0fa-4a16-8c52-ea79c28f729f', 5, 6),
       ('4e1cabd6-d0fa-4a16-8c52-ea79c28f729f', 4, 6),
       ('4e1cabd6-d0fa-4a16-8c52-ea79c28f729f', 3, 6),
       ('4e1cabd6-d0fa-4a16-8c52-ea79c28f729f', 3, 5),
       ('4e1cabd6-d0fa-4a16-8c52-ea79c28f729f', 2, 5),
       ('4e1cabd6-d0fa-4a16-8c52-ea79c28f729f', 2, 4),
       ('4e1cabd6-d0fa-4a16-8c52-ea79c28f729f', 2, 3),
       ('4e1cabd6-d0fa-4a16-8c52-ea79c28f729f', 2, 2),
       -- round three
       ('4e1cabd6-d0fa-4a16-8c52-ea79c28f729f', 2, 1),
       ('4e1cabd6-d0fa-4a16-8c52-ea79c28f729f', 3, 1),
       ('4e1cabd6-d0fa-4a16-8c52-ea79c28f729f', 4, 1),
       ('4e1cabd6-d0fa-4a16-8c52-ea79c28f729f', 5, 1),
       ('4e1cabd6-d0fa-4a16-8c52-ea79c28f729f', 5, 2),
       ('4e1cabd6-d0fa-4a16-8c52-ea79c28f729f', 6, 2),
       ('4e1cabd6-d0fa-4a16-8c52-ea79c28f729f', 6, 3),
       ('4e1cabd6-d0fa-4a16-8c52-ea79c28f729f', 6, 4),
       ('4e1cabd6-d0fa-4a16-8c52-ea79c28f729f', 6, 5),
       ('4e1cabd6-d0fa-4a16-8c52-ea79c28f729f', 6, 6),
       ('4e1cabd6-d0fa-4a16-8c52-ea79c28f729f', 5, 6),
       ('4e1cabd6-d0fa-4a16-8c52-ea79c28f729f', 4, 6),
       ('4e1cabd6-d0fa-4a16-8c52-ea79c28f729f', 3, 6),
       ('4e1cabd6-d0fa-4a16-8c52-ea79c28f729f', 3, 5),
       ('4e1cabd6-d0fa-4a16-8c52-ea79c28f729f', 2, 5),
       ('4e1cabd6-d0fa-4a16-8c52-ea79c28f729f', 2, 4),
       ('4e1cabd6-d0fa-4a16-8c52-ea79c28f729f', 2, 3),
       ('4e1cabd6-d0fa-4a16-8c52-ea79c28f729f', 2, 2),
       ('4e1cabd6-d0fa-4a16-8c52-ea79c28f729f', 2, 1),
       -- leave
       ('4e1cabd6-d0fa-4a16-8c52-ea79c28f729f', 1, 1),
       ('4e1cabd6-d0fa-4a16-8c52-ea79c28f729f', 0, 1);

-- fifth critter
insert into `path_list` (`healing_collector_id`, `x`, `y`)
values ('b32de0ce-7bac-4aef-8906-84eaa3f43a8c', 0, 1),
       ('b32de0ce-7bac-4aef-8906-84eaa3f43a8c', 1, 1),
       ('b32de0ce-7bac-4aef-8906-84eaa3f43a8c', 2, 1),
       ('b32de0ce-7bac-4aef-8906-84eaa3f43a8c', 3, 1),
       ('b32de0ce-7bac-4aef-8906-84eaa3f43a8c', 4, 1),
       ('b32de0ce-7bac-4aef-8906-84eaa3f43a8c', 5, 1),
       ('b32de0ce-7bac-4aef-8906-84eaa3f43a8c', 5, 2),
       ('b32de0ce-7bac-4aef-8906-84eaa3f43a8c', 6, 2),
       ('b32de0ce-7bac-4aef-8906-84eaa3f43a8c', 6, 3),
       ('b32de0ce-7bac-4aef-8906-84eaa3f43a8c', 6, 4),
       ('b32de0ce-7bac-4aef-8906-84eaa3f43a8c', 6, 5),
       ('b32de0ce-7bac-4aef-8906-84eaa3f43a8c', 6, 6),
       ('b32de0ce-7bac-4aef-8906-84eaa3f43a8c', 5, 6),
       ('b32de0ce-7bac-4aef-8906-84eaa3f43a8c', 4, 6),
       ('b32de0ce-7bac-4aef-8906-84eaa3f43a8c', 3, 6),
       ('b32de0ce-7bac-4aef-8906-84eaa3f43a8c', 3, 5),
       ('b32de0ce-7bac-4aef-8906-84eaa3f43a8c', 2, 5),
       ('b32de0ce-7bac-4aef-8906-84eaa3f43a8c', 2, 4),
       ('b32de0ce-7bac-4aef-8906-84eaa3f43a8c', 2, 3),
       ('b32de0ce-7bac-4aef-8906-84eaa3f43a8c', 2, 2),
       -- round two
       ('b32de0ce-7bac-4aef-8906-84eaa3f43a8c', 2, 1),
       ('b32de0ce-7bac-4aef-8906-84eaa3f43a8c', 3, 1),
       ('b32de0ce-7bac-4aef-8906-84eaa3f43a8c', 4, 1),
       ('b32de0ce-7bac-4aef-8906-84eaa3f43a8c', 5, 1),
       ('b32de0ce-7bac-4aef-8906-84eaa3f43a8c', 5, 2),
       ('b32de0ce-7bac-4aef-8906-84eaa3f43a8c', 6, 2),
       ('b32de0ce-7bac-4aef-8906-84eaa3f43a8c', 6, 3),
       ('b32de0ce-7bac-4aef-8906-84eaa3f43a8c', 6, 4),
       ('b32de0ce-7bac-4aef-8906-84eaa3f43a8c', 6, 5),
       ('b32de0ce-7bac-4aef-8906-84eaa3f43a8c', 6, 6),
       ('b32de0ce-7bac-4aef-8906-84eaa3f43a8c', 5, 6),
       ('b32de0ce-7bac-4aef-8906-84eaa3f43a8c', 4, 6),
       ('b32de0ce-7bac-4aef-8906-84eaa3f43a8c', 3, 6),
       ('b32de0ce-7bac-4aef-8906-84eaa3f43a8c', 3, 5),
       ('b32de0ce-7bac-4aef-8906-84eaa3f43a8c', 2, 5),
       ('b32de0ce-7bac-4aef-8906-84eaa3f43a8c', 2, 4),
       ('b32de0ce-7bac-4aef-8906-84eaa3f43a8c', 2, 3),
       ('b32de0ce-7bac-4aef-8906-84eaa3f43a8c', 2, 2),
       -- round three
       ('b32de0ce-7bac-4aef-8906-84eaa3f43a8c', 2, 1),
       ('b32de0ce-7bac-4aef-8906-84eaa3f43a8c', 3, 1),
       ('b32de0ce-7bac-4aef-8906-84eaa3f43a8c', 4, 1),
       ('b32de0ce-7bac-4aef-8906-84eaa3f43a8c', 5, 1),
       ('b32de0ce-7bac-4aef-8906-84eaa3f43a8c', 5, 2),
       ('b32de0ce-7bac-4aef-8906-84eaa3f43a8c', 6, 2),
       ('b32de0ce-7bac-4aef-8906-84eaa3f43a8c', 6, 3),
       ('b32de0ce-7bac-4aef-8906-84eaa3f43a8c', 6, 4),
       ('b32de0ce-7bac-4aef-8906-84eaa3f43a8c', 6, 5),
       ('b32de0ce-7bac-4aef-8906-84eaa3f43a8c', 6, 6),
       ('b32de0ce-7bac-4aef-8906-84eaa3f43a8c', 5, 6),
       ('b32de0ce-7bac-4aef-8906-84eaa3f43a8c', 4, 6),
       ('b32de0ce-7bac-4aef-8906-84eaa3f43a8c', 3, 6),
       ('b32de0ce-7bac-4aef-8906-84eaa3f43a8c', 3, 5),
       ('b32de0ce-7bac-4aef-8906-84eaa3f43a8c', 2, 5),
       ('b32de0ce-7bac-4aef-8906-84eaa3f43a8c', 2, 4),
       ('b32de0ce-7bac-4aef-8906-84eaa3f43a8c', 2, 3),
       ('b32de0ce-7bac-4aef-8906-84eaa3f43a8c', 2, 2),
       ('b32de0ce-7bac-4aef-8906-84eaa3f43a8c', 2, 1),
       -- leave
       ('b32de0ce-7bac-4aef-8906-84eaa3f43a8c', 1, 1),
       ('b32de0ce-7bac-4aef-8906-84eaa3f43a8c', 0, 1);

-- sixth critter
insert into `path_list` (`healing_collector_id`, `x`, `y`)
values ('237be9bc-dff8-4588-9ff5-c5e14c55390e', 0, 1),
       ('237be9bc-dff8-4588-9ff5-c5e14c55390e', 1, 1),
       ('237be9bc-dff8-4588-9ff5-c5e14c55390e', 2, 1),
       ('237be9bc-dff8-4588-9ff5-c5e14c55390e', 3, 1),
       ('237be9bc-dff8-4588-9ff5-c5e14c55390e', 4, 1),
       ('237be9bc-dff8-4588-9ff5-c5e14c55390e', 5, 1),
       ('237be9bc-dff8-4588-9ff5-c5e14c55390e', 5, 2),
       ('237be9bc-dff8-4588-9ff5-c5e14c55390e', 6, 2),
       ('237be9bc-dff8-4588-9ff5-c5e14c55390e', 6, 3),
       ('237be9bc-dff8-4588-9ff5-c5e14c55390e', 6, 4),
       ('237be9bc-dff8-4588-9ff5-c5e14c55390e', 6, 5),
       ('237be9bc-dff8-4588-9ff5-c5e14c55390e', 6, 6),
       ('237be9bc-dff8-4588-9ff5-c5e14c55390e', 5, 6),
       ('237be9bc-dff8-4588-9ff5-c5e14c55390e', 4, 6),
       ('237be9bc-dff8-4588-9ff5-c5e14c55390e', 3, 6),
       ('237be9bc-dff8-4588-9ff5-c5e14c55390e', 3, 5),
       ('237be9bc-dff8-4588-9ff5-c5e14c55390e', 2, 5),
       ('237be9bc-dff8-4588-9ff5-c5e14c55390e', 2, 4),
       ('237be9bc-dff8-4588-9ff5-c5e14c55390e', 2, 3),
       ('237be9bc-dff8-4588-9ff5-c5e14c55390e', 2, 2),
       -- round two
       ('237be9bc-dff8-4588-9ff5-c5e14c55390e', 2, 1),
       ('237be9bc-dff8-4588-9ff5-c5e14c55390e', 3, 1),
       ('237be9bc-dff8-4588-9ff5-c5e14c55390e', 4, 1),
       ('237be9bc-dff8-4588-9ff5-c5e14c55390e', 5, 1),
       ('237be9bc-dff8-4588-9ff5-c5e14c55390e', 5, 2),
       ('237be9bc-dff8-4588-9ff5-c5e14c55390e', 6, 2),
       ('237be9bc-dff8-4588-9ff5-c5e14c55390e', 6, 3),
       ('237be9bc-dff8-4588-9ff5-c5e14c55390e', 6, 4),
       ('237be9bc-dff8-4588-9ff5-c5e14c55390e', 6, 5),
       ('237be9bc-dff8-4588-9ff5-c5e14c55390e', 6, 6),
       ('237be9bc-dff8-4588-9ff5-c5e14c55390e', 5, 6),
       ('237be9bc-dff8-4588-9ff5-c5e14c55390e', 4, 6),
       ('237be9bc-dff8-4588-9ff5-c5e14c55390e', 3, 6),
       ('237be9bc-dff8-4588-9ff5-c5e14c55390e', 3, 5),
       ('237be9bc-dff8-4588-9ff5-c5e14c55390e', 2, 5),
       ('237be9bc-dff8-4588-9ff5-c5e14c55390e', 2, 4),
       ('237be9bc-dff8-4588-9ff5-c5e14c55390e', 2, 3),
       ('237be9bc-dff8-4588-9ff5-c5e14c55390e', 2, 2),
       -- round three
       ('237be9bc-dff8-4588-9ff5-c5e14c55390e', 2, 1),
       ('237be9bc-dff8-4588-9ff5-c5e14c55390e', 3, 1),
       ('237be9bc-dff8-4588-9ff5-c5e14c55390e', 4, 1),
       ('237be9bc-dff8-4588-9ff5-c5e14c55390e', 5, 1),
       ('237be9bc-dff8-4588-9ff5-c5e14c55390e', 5, 2),
       ('237be9bc-dff8-4588-9ff5-c5e14c55390e', 6, 2),
       ('237be9bc-dff8-4588-9ff5-c5e14c55390e', 6, 3),
       ('237be9bc-dff8-4588-9ff5-c5e14c55390e', 6, 4),
       ('237be9bc-dff8-4588-9ff5-c5e14c55390e', 6, 5),
       ('237be9bc-dff8-4588-9ff5-c5e14c55390e', 6, 6),
       ('237be9bc-dff8-4588-9ff5-c5e14c55390e', 5, 6),
       ('237be9bc-dff8-4588-9ff5-c5e14c55390e', 4, 6),
       ('237be9bc-dff8-4588-9ff5-c5e14c55390e', 3, 6),
       ('237be9bc-dff8-4588-9ff5-c5e14c55390e', 3, 5),
       ('237be9bc-dff8-4588-9ff5-c5e14c55390e', 2, 5),
       ('237be9bc-dff8-4588-9ff5-c5e14c55390e', 2, 4),
       ('237be9bc-dff8-4588-9ff5-c5e14c55390e', 2, 3),
       ('237be9bc-dff8-4588-9ff5-c5e14c55390e', 2, 2),
       ('237be9bc-dff8-4588-9ff5-c5e14c55390e', 2, 1),
       -- leave
       ('237be9bc-dff8-4588-9ff5-c5e14c55390e', 1, 1),
       ('237be9bc-dff8-4588-9ff5-c5e14c55390e', 0, 1);

-- seventh critter
insert into `path_list` (`healing_collector_id`, `x`, `y`)
values ('d84f36c8-7712-4227-b349-283437f04a52', 0, 1),
       ('d84f36c8-7712-4227-b349-283437f04a52', 1, 1),
       ('d84f36c8-7712-4227-b349-283437f04a52', 2, 1),
       ('d84f36c8-7712-4227-b349-283437f04a52', 3, 1),
       ('d84f36c8-7712-4227-b349-283437f04a52', 4, 1),
       ('d84f36c8-7712-4227-b349-283437f04a52', 5, 1),
       ('d84f36c8-7712-4227-b349-283437f04a52', 5, 2),
       ('d84f36c8-7712-4227-b349-283437f04a52', 6, 2),
       ('d84f36c8-7712-4227-b349-283437f04a52', 6, 3),
       ('d84f36c8-7712-4227-b349-283437f04a52', 6, 4),
       ('d84f36c8-7712-4227-b349-283437f04a52', 6, 5),
       ('d84f36c8-7712-4227-b349-283437f04a52', 6, 6),
       ('d84f36c8-7712-4227-b349-283437f04a52', 5, 6),
       ('d84f36c8-7712-4227-b349-283437f04a52', 4, 6),
       ('d84f36c8-7712-4227-b349-283437f04a52', 3, 6),
       ('d84f36c8-7712-4227-b349-283437f04a52', 3, 5),
       ('d84f36c8-7712-4227-b349-283437f04a52', 2, 5),
       ('d84f36c8-7712-4227-b349-283437f04a52', 2, 4),
       ('d84f36c8-7712-4227-b349-283437f04a52', 2, 3),
       ('d84f36c8-7712-4227-b349-283437f04a52', 2, 2),
       -- round two
       ('d84f36c8-7712-4227-b349-283437f04a52', 2, 1),
       ('d84f36c8-7712-4227-b349-283437f04a52', 3, 1),
       ('d84f36c8-7712-4227-b349-283437f04a52', 4, 1),
       ('d84f36c8-7712-4227-b349-283437f04a52', 5, 1),
       ('d84f36c8-7712-4227-b349-283437f04a52', 5, 2),
       ('d84f36c8-7712-4227-b349-283437f04a52', 6, 2),
       ('d84f36c8-7712-4227-b349-283437f04a52', 6, 3),
       ('d84f36c8-7712-4227-b349-283437f04a52', 6, 4),
       ('d84f36c8-7712-4227-b349-283437f04a52', 6, 5),
       ('d84f36c8-7712-4227-b349-283437f04a52', 6, 6),
       ('d84f36c8-7712-4227-b349-283437f04a52', 5, 6),
       ('d84f36c8-7712-4227-b349-283437f04a52', 4, 6),
       ('d84f36c8-7712-4227-b349-283437f04a52', 3, 6),
       ('d84f36c8-7712-4227-b349-283437f04a52', 3, 5),
       ('d84f36c8-7712-4227-b349-283437f04a52', 2, 5),
       ('d84f36c8-7712-4227-b349-283437f04a52', 2, 4),
       ('d84f36c8-7712-4227-b349-283437f04a52', 2, 3),
       ('d84f36c8-7712-4227-b349-283437f04a52', 2, 2),
       -- round three
       ('d84f36c8-7712-4227-b349-283437f04a52', 2, 1),
       ('d84f36c8-7712-4227-b349-283437f04a52', 3, 1),
       ('d84f36c8-7712-4227-b349-283437f04a52', 4, 1),
       ('d84f36c8-7712-4227-b349-283437f04a52', 5, 1),
       ('d84f36c8-7712-4227-b349-283437f04a52', 5, 2),
       ('d84f36c8-7712-4227-b349-283437f04a52', 6, 2),
       ('d84f36c8-7712-4227-b349-283437f04a52', 6, 3),
       ('d84f36c8-7712-4227-b349-283437f04a52', 6, 4),
       ('d84f36c8-7712-4227-b349-283437f04a52', 6, 5),
       ('d84f36c8-7712-4227-b349-283437f04a52', 6, 6),
       ('d84f36c8-7712-4227-b349-283437f04a52', 5, 6),
       ('d84f36c8-7712-4227-b349-283437f04a52', 4, 6),
       ('d84f36c8-7712-4227-b349-283437f04a52', 3, 6),
       ('d84f36c8-7712-4227-b349-283437f04a52', 3, 5),
       ('d84f36c8-7712-4227-b349-283437f04a52', 2, 5),
       ('d84f36c8-7712-4227-b349-283437f04a52', 2, 4),
       ('d84f36c8-7712-4227-b349-283437f04a52', 2, 3),
       ('d84f36c8-7712-4227-b349-283437f04a52', 2, 2),
       ('d84f36c8-7712-4227-b349-283437f04a52', 2, 1),
       -- leave
       ('d84f36c8-7712-4227-b349-283437f04a52', 1, 1),
       ('d84f36c8-7712-4227-b349-283437f04a52', 0, 1);

-- eighths critter
insert into `path_list` (`healing_collector_id`, `x`, `y`)
values ('5f4ee48f-8ba1-4bd5-a715-ed64f353d7d7', 0, 1),
       ('5f4ee48f-8ba1-4bd5-a715-ed64f353d7d7', 1, 1),
       ('5f4ee48f-8ba1-4bd5-a715-ed64f353d7d7', 2, 1),
       ('5f4ee48f-8ba1-4bd5-a715-ed64f353d7d7', 3, 1),
       ('5f4ee48f-8ba1-4bd5-a715-ed64f353d7d7', 4, 1),
       ('5f4ee48f-8ba1-4bd5-a715-ed64f353d7d7', 5, 1),
       ('5f4ee48f-8ba1-4bd5-a715-ed64f353d7d7', 5, 2),
       ('5f4ee48f-8ba1-4bd5-a715-ed64f353d7d7', 6, 2),
       ('5f4ee48f-8ba1-4bd5-a715-ed64f353d7d7', 6, 3),
       ('5f4ee48f-8ba1-4bd5-a715-ed64f353d7d7', 6, 4),
       ('5f4ee48f-8ba1-4bd5-a715-ed64f353d7d7', 6, 5),
       ('5f4ee48f-8ba1-4bd5-a715-ed64f353d7d7', 6, 6),
       ('5f4ee48f-8ba1-4bd5-a715-ed64f353d7d7', 5, 6),
       ('5f4ee48f-8ba1-4bd5-a715-ed64f353d7d7', 4, 6),
       ('5f4ee48f-8ba1-4bd5-a715-ed64f353d7d7', 3, 6),
       ('5f4ee48f-8ba1-4bd5-a715-ed64f353d7d7', 3, 5),
       ('5f4ee48f-8ba1-4bd5-a715-ed64f353d7d7', 2, 5),
       ('5f4ee48f-8ba1-4bd5-a715-ed64f353d7d7', 2, 4),
       ('5f4ee48f-8ba1-4bd5-a715-ed64f353d7d7', 2, 3),
       ('5f4ee48f-8ba1-4bd5-a715-ed64f353d7d7', 2, 2),
       -- round two
       ('5f4ee48f-8ba1-4bd5-a715-ed64f353d7d7', 2, 1),
       ('5f4ee48f-8ba1-4bd5-a715-ed64f353d7d7', 3, 1),
       ('5f4ee48f-8ba1-4bd5-a715-ed64f353d7d7', 4, 1),
       ('5f4ee48f-8ba1-4bd5-a715-ed64f353d7d7', 5, 1),
       ('5f4ee48f-8ba1-4bd5-a715-ed64f353d7d7', 5, 2),
       ('5f4ee48f-8ba1-4bd5-a715-ed64f353d7d7', 6, 2),
       ('5f4ee48f-8ba1-4bd5-a715-ed64f353d7d7', 6, 3),
       ('5f4ee48f-8ba1-4bd5-a715-ed64f353d7d7', 6, 4),
       ('5f4ee48f-8ba1-4bd5-a715-ed64f353d7d7', 6, 5),
       ('5f4ee48f-8ba1-4bd5-a715-ed64f353d7d7', 6, 6),
       ('5f4ee48f-8ba1-4bd5-a715-ed64f353d7d7', 5, 6),
       ('5f4ee48f-8ba1-4bd5-a715-ed64f353d7d7', 4, 6),
       ('5f4ee48f-8ba1-4bd5-a715-ed64f353d7d7', 3, 6),
       ('5f4ee48f-8ba1-4bd5-a715-ed64f353d7d7', 3, 5),
       ('5f4ee48f-8ba1-4bd5-a715-ed64f353d7d7', 2, 5),
       ('5f4ee48f-8ba1-4bd5-a715-ed64f353d7d7', 2, 4),
       ('5f4ee48f-8ba1-4bd5-a715-ed64f353d7d7', 2, 3),
       ('5f4ee48f-8ba1-4bd5-a715-ed64f353d7d7', 2, 2),
       -- round three
       ('5f4ee48f-8ba1-4bd5-a715-ed64f353d7d7', 2, 1),
       ('5f4ee48f-8ba1-4bd5-a715-ed64f353d7d7', 3, 1),
       ('5f4ee48f-8ba1-4bd5-a715-ed64f353d7d7', 4, 1),
       ('5f4ee48f-8ba1-4bd5-a715-ed64f353d7d7', 5, 1),
       ('5f4ee48f-8ba1-4bd5-a715-ed64f353d7d7', 5, 2),
       ('5f4ee48f-8ba1-4bd5-a715-ed64f353d7d7', 6, 2),
       ('5f4ee48f-8ba1-4bd5-a715-ed64f353d7d7', 6, 3),
       ('5f4ee48f-8ba1-4bd5-a715-ed64f353d7d7', 6, 4),
       ('5f4ee48f-8ba1-4bd5-a715-ed64f353d7d7', 6, 5),
       ('5f4ee48f-8ba1-4bd5-a715-ed64f353d7d7', 6, 6),
       ('5f4ee48f-8ba1-4bd5-a715-ed64f353d7d7', 5, 6),
       ('5f4ee48f-8ba1-4bd5-a715-ed64f353d7d7', 4, 6),
       ('5f4ee48f-8ba1-4bd5-a715-ed64f353d7d7', 3, 6),
       ('5f4ee48f-8ba1-4bd5-a715-ed64f353d7d7', 3, 5),
       ('5f4ee48f-8ba1-4bd5-a715-ed64f353d7d7', 2, 5),
       ('5f4ee48f-8ba1-4bd5-a715-ed64f353d7d7', 2, 4),
       ('5f4ee48f-8ba1-4bd5-a715-ed64f353d7d7', 2, 3),
       ('5f4ee48f-8ba1-4bd5-a715-ed64f353d7d7', 2, 2),
       -- round four
       ('5f4ee48f-8ba1-4bd5-a715-ed64f353d7d7', 2, 1),
       ('5f4ee48f-8ba1-4bd5-a715-ed64f353d7d7', 3, 1),
       ('5f4ee48f-8ba1-4bd5-a715-ed64f353d7d7', 4, 1),
       ('5f4ee48f-8ba1-4bd5-a715-ed64f353d7d7', 5, 1),
       ('5f4ee48f-8ba1-4bd5-a715-ed64f353d7d7', 5, 2),
       ('5f4ee48f-8ba1-4bd5-a715-ed64f353d7d7', 6, 2),
       ('5f4ee48f-8ba1-4bd5-a715-ed64f353d7d7', 6, 3),
       ('5f4ee48f-8ba1-4bd5-a715-ed64f353d7d7', 6, 4),
       ('5f4ee48f-8ba1-4bd5-a715-ed64f353d7d7', 6, 5),
       ('5f4ee48f-8ba1-4bd5-a715-ed64f353d7d7', 6, 6),
       ('5f4ee48f-8ba1-4bd5-a715-ed64f353d7d7', 5, 6),
       ('5f4ee48f-8ba1-4bd5-a715-ed64f353d7d7', 4, 6),
       ('5f4ee48f-8ba1-4bd5-a715-ed64f353d7d7', 3, 6),
       ('5f4ee48f-8ba1-4bd5-a715-ed64f353d7d7', 3, 5),
       ('5f4ee48f-8ba1-4bd5-a715-ed64f353d7d7', 2, 5),
       ('5f4ee48f-8ba1-4bd5-a715-ed64f353d7d7', 2, 4),
       ('5f4ee48f-8ba1-4bd5-a715-ed64f353d7d7', 2, 3),
       ('5f4ee48f-8ba1-4bd5-a715-ed64f353d7d7', 2, 2),
       ('5f4ee48f-8ba1-4bd5-a715-ed64f353d7d7', 2, 1),
       -- leave
       ('5f4ee48f-8ba1-4bd5-a715-ed64f353d7d7', 1, 1),
       ('5f4ee48f-8ba1-4bd5-a715-ed64f353d7d7', 0, 1);

-- ninth critter
insert into `path_list` (`healing_collector_id`, `x`, `y`)
values ('eb220c9a-b089-4861-a00f-0d2eaec0b0d5', 0, 1),
       ('eb220c9a-b089-4861-a00f-0d2eaec0b0d5', 1, 1),
       ('eb220c9a-b089-4861-a00f-0d2eaec0b0d5', 2, 1),
       ('eb220c9a-b089-4861-a00f-0d2eaec0b0d5', 3, 1),
       ('eb220c9a-b089-4861-a00f-0d2eaec0b0d5', 4, 1),
       ('eb220c9a-b089-4861-a00f-0d2eaec0b0d5', 5, 1),
       ('eb220c9a-b089-4861-a00f-0d2eaec0b0d5', 5, 2),
       ('eb220c9a-b089-4861-a00f-0d2eaec0b0d5', 6, 2),
       ('eb220c9a-b089-4861-a00f-0d2eaec0b0d5', 6, 3),
       ('eb220c9a-b089-4861-a00f-0d2eaec0b0d5', 6, 4),
       ('eb220c9a-b089-4861-a00f-0d2eaec0b0d5', 6, 5),
       ('eb220c9a-b089-4861-a00f-0d2eaec0b0d5', 6, 6),
       ('eb220c9a-b089-4861-a00f-0d2eaec0b0d5', 5, 6),
       ('eb220c9a-b089-4861-a00f-0d2eaec0b0d5', 4, 6),
       ('eb220c9a-b089-4861-a00f-0d2eaec0b0d5', 3, 6),
       ('eb220c9a-b089-4861-a00f-0d2eaec0b0d5', 3, 5),
       ('eb220c9a-b089-4861-a00f-0d2eaec0b0d5', 2, 5),
       ('eb220c9a-b089-4861-a00f-0d2eaec0b0d5', 2, 4),
       ('eb220c9a-b089-4861-a00f-0d2eaec0b0d5', 2, 3),
       ('eb220c9a-b089-4861-a00f-0d2eaec0b0d5', 2, 2),
       -- round two
       ('eb220c9a-b089-4861-a00f-0d2eaec0b0d5', 2, 1),
       ('eb220c9a-b089-4861-a00f-0d2eaec0b0d5', 3, 1),
       ('eb220c9a-b089-4861-a00f-0d2eaec0b0d5', 4, 1),
       ('eb220c9a-b089-4861-a00f-0d2eaec0b0d5', 5, 1),
       ('eb220c9a-b089-4861-a00f-0d2eaec0b0d5', 5, 2),
       ('eb220c9a-b089-4861-a00f-0d2eaec0b0d5', 6, 2),
       ('eb220c9a-b089-4861-a00f-0d2eaec0b0d5', 6, 3),
       ('eb220c9a-b089-4861-a00f-0d2eaec0b0d5', 6, 4),
       ('eb220c9a-b089-4861-a00f-0d2eaec0b0d5', 6, 5),
       ('eb220c9a-b089-4861-a00f-0d2eaec0b0d5', 6, 6),
       ('eb220c9a-b089-4861-a00f-0d2eaec0b0d5', 5, 6),
       ('eb220c9a-b089-4861-a00f-0d2eaec0b0d5', 4, 6),
       ('eb220c9a-b089-4861-a00f-0d2eaec0b0d5', 3, 6),
       ('eb220c9a-b089-4861-a00f-0d2eaec0b0d5', 3, 5),
       ('eb220c9a-b089-4861-a00f-0d2eaec0b0d5', 2, 5),
       ('eb220c9a-b089-4861-a00f-0d2eaec0b0d5', 2, 4),
       ('eb220c9a-b089-4861-a00f-0d2eaec0b0d5', 2, 3),
       ('eb220c9a-b089-4861-a00f-0d2eaec0b0d5', 2, 2),
       -- round three
       ('eb220c9a-b089-4861-a00f-0d2eaec0b0d5', 2, 1),
       ('eb220c9a-b089-4861-a00f-0d2eaec0b0d5', 3, 1),
       ('eb220c9a-b089-4861-a00f-0d2eaec0b0d5', 4, 1),
       ('eb220c9a-b089-4861-a00f-0d2eaec0b0d5', 5, 1),
       ('eb220c9a-b089-4861-a00f-0d2eaec0b0d5', 5, 2),
       ('eb220c9a-b089-4861-a00f-0d2eaec0b0d5', 6, 2),
       ('eb220c9a-b089-4861-a00f-0d2eaec0b0d5', 6, 3),
       ('eb220c9a-b089-4861-a00f-0d2eaec0b0d5', 6, 4),
       ('eb220c9a-b089-4861-a00f-0d2eaec0b0d5', 6, 5),
       ('eb220c9a-b089-4861-a00f-0d2eaec0b0d5', 6, 6),
       ('eb220c9a-b089-4861-a00f-0d2eaec0b0d5', 5, 6),
       ('eb220c9a-b089-4861-a00f-0d2eaec0b0d5', 4, 6),
       ('eb220c9a-b089-4861-a00f-0d2eaec0b0d5', 3, 6),
       ('eb220c9a-b089-4861-a00f-0d2eaec0b0d5', 3, 5),
       ('eb220c9a-b089-4861-a00f-0d2eaec0b0d5', 2, 5),
       ('eb220c9a-b089-4861-a00f-0d2eaec0b0d5', 2, 4),
       ('eb220c9a-b089-4861-a00f-0d2eaec0b0d5', 2, 3),
       ('eb220c9a-b089-4861-a00f-0d2eaec0b0d5', 2, 2),
       ('eb220c9a-b089-4861-a00f-0d2eaec0b0d5', 2, 1),
       -- leave
       ('eb220c9a-b089-4861-a00f-0d2eaec0b0d5', 1, 1),
       ('eb220c9a-b089-4861-a00f-0d2eaec0b0d5', 0, 1);

-- tenth critter
insert into `path_list` (`healing_collector_id`, `x`, `y`)
values ('9704f98f-be57-4108-b82c-5b1c3c0d194d', 0, 1),
       ('9704f98f-be57-4108-b82c-5b1c3c0d194d', 1, 1),
       ('9704f98f-be57-4108-b82c-5b1c3c0d194d', 2, 1),
       ('9704f98f-be57-4108-b82c-5b1c3c0d194d', 3, 1),
       ('9704f98f-be57-4108-b82c-5b1c3c0d194d', 4, 1),
       ('9704f98f-be57-4108-b82c-5b1c3c0d194d', 5, 1),
       ('9704f98f-be57-4108-b82c-5b1c3c0d194d', 5, 2),
       ('9704f98f-be57-4108-b82c-5b1c3c0d194d', 6, 2),
       ('9704f98f-be57-4108-b82c-5b1c3c0d194d', 6, 3),
       ('9704f98f-be57-4108-b82c-5b1c3c0d194d', 6, 4),
       ('9704f98f-be57-4108-b82c-5b1c3c0d194d', 6, 5),
       ('9704f98f-be57-4108-b82c-5b1c3c0d194d', 6, 6),
       ('9704f98f-be57-4108-b82c-5b1c3c0d194d', 5, 6),
       ('9704f98f-be57-4108-b82c-5b1c3c0d194d', 4, 6),
       ('9704f98f-be57-4108-b82c-5b1c3c0d194d', 3, 6),
       ('9704f98f-be57-4108-b82c-5b1c3c0d194d', 3, 5),
       ('9704f98f-be57-4108-b82c-5b1c3c0d194d', 2, 5),
       ('9704f98f-be57-4108-b82c-5b1c3c0d194d', 2, 4),
       ('9704f98f-be57-4108-b82c-5b1c3c0d194d', 2, 3),
       ('9704f98f-be57-4108-b82c-5b1c3c0d194d', 2, 2),
       -- round two
       ('9704f98f-be57-4108-b82c-5b1c3c0d194d', 2, 1),
       ('9704f98f-be57-4108-b82c-5b1c3c0d194d', 3, 1),
       ('9704f98f-be57-4108-b82c-5b1c3c0d194d', 4, 1),
       ('9704f98f-be57-4108-b82c-5b1c3c0d194d', 5, 1),
       ('9704f98f-be57-4108-b82c-5b1c3c0d194d', 5, 2),
       ('9704f98f-be57-4108-b82c-5b1c3c0d194d', 6, 2),
       ('9704f98f-be57-4108-b82c-5b1c3c0d194d', 6, 3),
       ('9704f98f-be57-4108-b82c-5b1c3c0d194d', 6, 4),
       ('9704f98f-be57-4108-b82c-5b1c3c0d194d', 6, 5),
       ('9704f98f-be57-4108-b82c-5b1c3c0d194d', 6, 6),
       ('9704f98f-be57-4108-b82c-5b1c3c0d194d', 5, 6),
       ('9704f98f-be57-4108-b82c-5b1c3c0d194d', 4, 6),
       ('9704f98f-be57-4108-b82c-5b1c3c0d194d', 3, 6),
       ('9704f98f-be57-4108-b82c-5b1c3c0d194d', 3, 5),
       ('9704f98f-be57-4108-b82c-5b1c3c0d194d', 2, 5),
       ('9704f98f-be57-4108-b82c-5b1c3c0d194d', 2, 4),
       ('9704f98f-be57-4108-b82c-5b1c3c0d194d', 2, 3),
       ('9704f98f-be57-4108-b82c-5b1c3c0d194d', 2, 2),
       -- round three
       ('9704f98f-be57-4108-b82c-5b1c3c0d194d', 2, 1),
       ('9704f98f-be57-4108-b82c-5b1c3c0d194d', 3, 1),
       ('9704f98f-be57-4108-b82c-5b1c3c0d194d', 4, 1),
       ('9704f98f-be57-4108-b82c-5b1c3c0d194d', 5, 1),
       ('9704f98f-be57-4108-b82c-5b1c3c0d194d', 5, 2),
       ('9704f98f-be57-4108-b82c-5b1c3c0d194d', 6, 2),
       ('9704f98f-be57-4108-b82c-5b1c3c0d194d', 6, 3),
       ('9704f98f-be57-4108-b82c-5b1c3c0d194d', 6, 4),
       ('9704f98f-be57-4108-b82c-5b1c3c0d194d', 6, 5),
       ('9704f98f-be57-4108-b82c-5b1c3c0d194d', 6, 6),
       ('9704f98f-be57-4108-b82c-5b1c3c0d194d', 5, 6),
       ('9704f98f-be57-4108-b82c-5b1c3c0d194d', 4, 6),
       ('9704f98f-be57-4108-b82c-5b1c3c0d194d', 3, 6),
       ('9704f98f-be57-4108-b82c-5b1c3c0d194d', 3, 5),
       ('9704f98f-be57-4108-b82c-5b1c3c0d194d', 2, 5),
       ('9704f98f-be57-4108-b82c-5b1c3c0d194d', 2, 4),
       ('9704f98f-be57-4108-b82c-5b1c3c0d194d', 2, 3),
       ('9704f98f-be57-4108-b82c-5b1c3c0d194d', 2, 2),
       ('9704f98f-be57-4108-b82c-5b1c3c0d194d', 2, 1),
       -- leave
       ('9704f98f-be57-4108-b82c-5b1c3c0d194d', 1, 1),
       ('9704f98f-be57-4108-b82c-5b1c3c0d194d', 0, 1);
