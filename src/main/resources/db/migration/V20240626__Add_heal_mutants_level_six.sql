insert into `healing_collector` (`id`, `xml`, `level_id`, `init`, `mutated`, `first_faulty_round`)
values
    (
    '9e07fee6-229a-4fb8-941c-ad1ff89c81fb',
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

        <value name="IF1">
            <block type="logic_compare" id="jvkN^pyba}7Eqi%jBW2S">
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
                <block type="math_number" id="Eem[nkxht-;;+Ij@@lxp" x="263" y="113">
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
                <block type="math_number" id="oem[Vxhtx;;+ILj@@lxp" x="263" y="113">
                            <field name="NUM">3</field>
                        </block>
                </value>
            </block>
        </statement>
    </block>
    </statement>
    </block>
    </xml>',
    'ef594c76-0544-465f-ac72-f6293d73910d',
    '(this.color) = ("red");\n',
    false,
     0
    ),
    (
        'dc68ce4f-a0ef-4815-a885-8cfcbfd88b41',
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

            <value name="IF1">
                <block type="logic_compare" id="jvkN^pyba}7Eqi%jBW2S">
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
                    <block type="math_number" id="Eem[nkxht-;;+Ij@@lxp" x="263" y="113">
                                <field name="NUM">2</field>
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
                    <block type="math_number" id="oem[Vxhtx;;+ILj@@lxp" x="263" y="113">
                                <field name="NUM">3</field>
                            </block>
                    </value>
                </block>
            </statement>
        </block>
        </statement>
    </block>
        </xml>',
        'ef594c76-0544-465f-ac72-f6293d73910d',
        '(this.color) = ("red");\n',
        true,
     3
    ),
    (
        '4fd3a0ad-7ece-40ef-b60f-8ac7769e0821',
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

            <value name="IF1">
                <block type="logic_compare" id="jvkN^pyba}7Eqi%jBW2S">
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
                        <field name="properties">BLACKBERRIES</field>
                    </block>
                    </value>
                    <value name="value2">
                    <block type="math_number" id="Eem[nkxht-;;+Ij@@lxp" x="263" y="113">
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
                    <block type="math_number" id="oem[Vxhtx;;+ILj@@lxp" x="263" y="113">
                                <field name="NUM">3</field>
                            </block>
                    </value>
                </block>
            </statement>
        </block>
        </statement>
    </block>
        </xml>',
        'ef594c76-0544-465f-ac72-f6293d73910d',
        '(this.color) = ("pink");\n',
        true,
     2
    ),
    (
        '2d1ea6ef-a097-463b-8d4d-db6b5f087766',
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
                <block type="set_berries" id="OLQ=1JUp%13WuB`CCNRp" x="42" y="139">
                    <value name="value1">
                        <block type="bush_properties" id="k}dr(ZTiuCl}ndTT9G^F">
                            <field name="properties">PINKBERRIES</field>
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
                <block type="logic_compare" id="jvkN^pyba}7Eqi%jBW2S">
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
                    <block type="math_number" id="Eem[nkxht-;;+Ij@@lxp" x="263" y="113">
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
                    <block type="math_number" id="oem[Vxhtx;;+ILj@@lxp" x="263" y="113">
                                <field name="NUM">3</field>
                            </block>
                    </value>
                </block>
            </statement>
        </block>
        </statement>
    </block>
        </xml>',
        'ef594c76-0544-465f-ac72-f6293d73910d',
        '(this.color) = ("black");\n (this.hair) = ("black");\n',
        true,
     1
    ),
    (
        '68f0048c-5e13-4b37-ba35-34d9bace9363',
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

            <value name="IF1">
                <block type="logic_compare" id="jvkN^pyba}7Eqi%jBW2S">
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
                    <block type="math_number" id="Eem[nkxht-;;+Ij@@lxp" x="263" y="113">
                                <field name="NUM">3</field>
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
                    <block type="math_number" id="oem[Vxhtx;;+ILj@@lxp" x="263" y="113">
                                <field name="NUM">3</field>
                            </block>
                    </value>
                </block>
            </statement>
        </block>
        </statement>
    </block>
        </xml>',
        'ef594c76-0544-465f-ac72-f6293d73910d',
        '(this.color) = ("black");\n (this.hair) = ("brown");\n',
        true,
     2
    ),
    (
        '28cec292-a12d-4863-9c37-70c3ae76cb19',
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

            <value name="IF1">
                <block type="logic_compare" id="jvkN^pyba}7Eqi%jBW2S">
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
                    <block type="math_number" id="Eem[nkxht-;;+Ij@@lxp" x="263" y="113">
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
                    <block type="math_number" id="oem[Vxhtx;;+ILj@@lxp" x="263" y="113">
                                <field name="NUM">4</field>
                            </block>
                    </value>
                </block>
            </statement>
        </block>
        </statement>
    </block>
        </xml>',
        'ef594c76-0544-465f-ac72-f6293d73910d',
        '(this.color) = ("blue");\n',
        true,
     3
    ),
    (
        'f60915e3-1bff-4e27-9d8c-60598c734004',
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
                <block type="set_berries" id="OLQ=1JUp%13WuB`CCNRp" x="42" y="139">
                    <value name="value1">
                        <block type="bush_properties" id="k}dr(ZTiuCl}ndTT9G^F">
                            <field name="properties">REDBERRIES</field>
                        </block>
                    </value>
                    <value name="value2">
                    <block type="math_number" id="Eem[Vxht-;;+ILj@@lxp" x="263" y="113">
                                <field name="NUM">2</field>
                        </block>
                    </value>
                </block>
            </statement>

            <value name="IF1">
                <block type="logic_compare" id="jvkN^pyba}7Eqi%jBW2S">
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
                    <block type="math_number" id="Eem[nkxht-;;+Ij@@lxp" x="263" y="113">
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
                    <block type="math_number" id="oem[Vxhtx;;+ILj@@lxp" x="263" y="113">
                                <field name="NUM">3</field>
                            </block>
                    </value>
                </block>
            </statement>
        </block>
        </statement>
    </block>
        </xml>',
        'ef594c76-0544-465f-ac72-f6293d73910d',
        '(this.color) = ("white");\n',
        true,
     1
    ),
    (
        '783a76b1-149a-47d7-a165-e12837e49a88',
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

            <value name="IF1">
                <block type="logic_compare" id="jvkN^pyba}7Eqi%jBW2S">
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
                    <block type="math_number" id="Eem[nkxht-;;+Ij@@lxp" x="263" y="113">
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
                    <block type="math_number" id="oem[Vxhtx;;+ILj@@lxp" x="263" y="113">
                                <field name="NUM">3</field>
                            </block>
                    </value>
                </block>
            </statement>
        </block>
        </statement>
    </block>
        </xml>',
        'ef594c76-0544-465f-ac72-f6293d73910d',
        '(this.color) = ("white");\n',
        false,
     0
    ),
    (
        '5c64152a-9d97-4e17-8ed1-f907e27d19b5',
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

            <value name="IF1">
                <block type="logic_compare" id="jvkN^pyba}7Eqi%jBW2S">
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
                    <block type="math_number" id="Eem[nkxht-;;+Ij@@lxp" x="263" y="113">
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
                    <block type="math_number" id="oem[Vxhtx;;+ILj@@lxp" x="263" y="113">
                                <field name="NUM">3</field>
                            </block>
                    </value>
                </block>
            </statement>
        </block>
        </statement>
    </block>
        </xml>',
        'ef594c76-0544-465f-ac72-f6293d73910d',
        '(this.color) = ("orange");\n (this.hair) = ("brown");\n',
        false,
     0
    ),
    (
        '54413ec6-efa5-4a63-bc0f-7ac389e5d049',
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

            <value name="IF1">
                <block type="logic_compare" id="jvkN^pyba}7Eqi%jBW2S">
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
                    <block type="math_number" id="Eem[nkxht-;;+Ij@@lxp" x="263" y="113">
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
                    <block type="math_number" id="oem[Vxhtx;;+ILj@@lxp" x="263" y="113">
                                <field name="NUM">3</field>
                            </block>
                    </value>
                </block>
            </statement>
        </block>
        </statement>
    </block>
        </xml>',
        'ef594c76-0544-465f-ac72-f6293d73910d',
        '(this.color) = ("pink");\n',
        false,
     0
    );


insert into `codes_per_bush` (`healing_collector_id`, `code`, `bush_type`)
values ('9e07fee6-229a-4fb8-941c-ad1ff89c81fb',
        'if ((this.roundsCount) === 1) {\r\n    this.redBerryCount = this.redBerryCount + 1;\r\n}',
        'RED'),
       ('9e07fee6-229a-4fb8-941c-ad1ff89c81fb',
        'if (this.roundsCount === 2) {\r\n    this.pinkBerryCount = this.pinkBerryCount + 2;\r\n}',
        'PINK'),
       ('9e07fee6-229a-4fb8-941c-ad1ff89c81fb',
        'if (this.roundsCount === 3) {\r\n    this.blackBerryCount = this.blackBerryCount + 3;\r\n}',
        'BLACK');


insert into `codes_per_bush` (`healing_collector_id`, `code`, `bush_type`)
values ('dc68ce4f-a0ef-4815-a885-8cfcbfd88b41',
        'if ((this.roundsCount) === 1) {\r\n    this.redBerryCount = this.redBerryCount + 1;\r\n}',
        'RED'),
       ('dc68ce4f-a0ef-4815-a885-8cfcbfd88b41',
        'if (this.roundsCount === 2) {\r\n    this.pinkBerryCount = this.pinkBerryCount + 2;\r\n} else if (this.roundsCount === 3) {\r\n    this.pinkBerryCount = this.pinkBerryCount + 3;\r\n}',
        'PINK');


insert into `codes_per_bush` (`healing_collector_id`, `code`, `bush_type`)
values ('4fd3a0ad-7ece-40ef-b60f-8ac7769e0821',
        'if ((this.roundsCount) === 1) {\r\n    this.redBerryCount = this.redBerryCount + 1;\r\n}',
        'RED'),
       ('4fd3a0ad-7ece-40ef-b60f-8ac7769e0821',
        'if (this.roundsCount === 2) {\r\n    this.blackBerryCount = this.blackBerryCount + 2;\r\n} else if (this.roundsCount === 3) {\r\n    this.blackBerryCount = this.blackBerryCount + 3;\r\n}',
        'BLACK');


insert into `codes_per_bush` (`healing_collector_id`, `code`, `bush_type`)
values ('2d1ea6ef-a097-463b-8d4d-db6b5f087766',
        'if ((this.roundsCount) === 1) {\r\n    this.pinkBerryCount = this.pinkBerryCount + 1;\r\n} else if (this.roundsCount === 2) {\r\n    this.pinkBerryCount = this.pinkBerryCount + 2;\r\n}',
        'PINK'),
       ('2d1ea6ef-a097-463b-8d4d-db6b5f087766',
        'if (this.roundsCount === 3) {\r\n    this.blackBerryCount = this.blackBerryCount + 3;\r\n}',
        'BLACK');


insert into `codes_per_bush` (`healing_collector_id`, `code`, `bush_type`)
values ('68f0048c-5e13-4b37-ba35-34d9bace9363',
        'if ((this.roundsCount) === 1) {\r\n    this.redBerryCount = this.redBerryCount + 1;\r\n}',
        'RED'),
       ('68f0048c-5e13-4b37-ba35-34d9bace9363',
        'if (this.roundsCount === 2) {\r\n    this.pinkBerryCount = this.pinkBerryCount + 3;\r\n}',
        'PINK'),
       ('68f0048c-5e13-4b37-ba35-34d9bace9363',
        'if (this.roundsCount === 3) {\r\n    this.blackBerryCount = this.blackBerryCount + 3;\r\n}',
        'BLACK');


insert into `codes_per_bush` (`healing_collector_id`, `code`, `bush_type`)
values ('28cec292-a12d-4863-9c37-70c3ae76cb19',
        'if ((this.roundsCount) === 1) {\r\n    this.redBerryCount = this.redBerryCount + 1;\r\n}',
        'RED'),
       ('28cec292-a12d-4863-9c37-70c3ae76cb19',
        'if (this.roundsCount === 2) {\r\n    this.pinkBerryCount = this.pinkBerryCount + 2;\r\n}',
        'PINK'),
       ('28cec292-a12d-4863-9c37-70c3ae76cb19',
        'if (this.roundsCount === 3) {\r\n    this.blackBerryCount = this.blackBerryCount + 4;\r\n}',
        'BLACK');


insert into `codes_per_bush` (`healing_collector_id`, `code`, `bush_type`)
values ('f60915e3-1bff-4e27-9d8c-60598c734004',
        'if ((this.roundsCount) === 1) {\r\n    this.redBerryCount = this.redBerryCount + 2;\r\n}',
        'RED'),
       ('f60915e3-1bff-4e27-9d8c-60598c734004',
        'if (this.roundsCount === 2) {\r\n    this.pinkBerryCount = this.pinkBerryCount + 2;\r\n}',
        'PINK'),
       ('f60915e3-1bff-4e27-9d8c-60598c734004',
        'if (this.roundsCount === 3) {\r\n    this.blackBerryCount = this.blackBerryCount + 3;\r\n}',
        'BLACK');


insert into `codes_per_bush` (`healing_collector_id`, `code`, `bush_type`)
values ('783a76b1-149a-47d7-a165-e12837e49a88',
        'if ((this.roundsCount) === 1) {\r\n    this.redBerryCount = this.redBerryCount + 1;\r\n}',
        'RED'),
       ('783a76b1-149a-47d7-a165-e12837e49a88',
        'if (this.roundsCount === 2) {\r\n    this.pinkBerryCount = this.pinkBerryCount + 2;\r\n}',
        'PINK'),
       ('783a76b1-149a-47d7-a165-e12837e49a88',
        'if (this.roundsCount === 3) {\r\n    this.blackBerryCount = this.blackBerryCount + 3;\r\n}',
        'BLACK');


insert into `codes_per_bush` (`healing_collector_id`, `code`, `bush_type`)
values ('5c64152a-9d97-4e17-8ed1-f907e27d19b5',
        'if ((this.roundsCount) === 1) {\r\n    this.redBerryCount = this.redBerryCount + 1;\r\n}',
        'RED'),
       ('5c64152a-9d97-4e17-8ed1-f907e27d19b5',
        'if (this.roundsCount === 2) {\r\n    this.pinkBerryCount = this.pinkBerryCount + 2;\r\n}',
        'PINK'),
       ('5c64152a-9d97-4e17-8ed1-f907e27d19b5',
        'if (this.roundsCount === 3) {\r\n    this.blackBerryCount = this.blackBerryCount + 3;\r\n}',
        'BLACK');


insert into `codes_per_bush` (`healing_collector_id`, `code`, `bush_type`)
values ('54413ec6-efa5-4a63-bc0f-7ac389e5d049',
        'if ((this.roundsCount) === 1) {\r\n    this.redBerryCount = this.redBerryCount + 1;\r\n}',
        'RED'),
       ('54413ec6-efa5-4a63-bc0f-7ac389e5d049',
        'if (this.roundsCount === 2) {\r\n    this.pinkBerryCount = this.pinkBerryCount + 2;\r\n}',
        'PINK'),
       ('54413ec6-efa5-4a63-bc0f-7ac389e5d049',
        'if (this.roundsCount === 3) {\r\n    this.blackBerryCount = this.blackBerryCount + 3;\r\n}',
        'BLACK');


/* pathlist for Level 3*/

insert into `path_list` (`healing_collector_id`, `x`, `y`)
values ('9e07fee6-229a-4fb8-941c-ad1ff89c81fb', 1, 0),
       ('9e07fee6-229a-4fb8-941c-ad1ff89c81fb', 1, 1),
       ('9e07fee6-229a-4fb8-941c-ad1ff89c81fb', 2, 1),
       ('9e07fee6-229a-4fb8-941c-ad1ff89c81fb', 3, 1),
       ('9e07fee6-229a-4fb8-941c-ad1ff89c81fb', 4, 1),
       ('9e07fee6-229a-4fb8-941c-ad1ff89c81fb', 5, 1),
       ('9e07fee6-229a-4fb8-941c-ad1ff89c81fb', 6, 1),
       ('9e07fee6-229a-4fb8-941c-ad1ff89c81fb', 7, 1),
       ('9e07fee6-229a-4fb8-941c-ad1ff89c81fb', 7, 2),
       ('9e07fee6-229a-4fb8-941c-ad1ff89c81fb', 7, 3),
       ('9e07fee6-229a-4fb8-941c-ad1ff89c81fb', 7, 4),
       ('9e07fee6-229a-4fb8-941c-ad1ff89c81fb', 7, 5),
       ('9e07fee6-229a-4fb8-941c-ad1ff89c81fb', 7, 6),
       ('9e07fee6-229a-4fb8-941c-ad1ff89c81fb', 6, 6),
       ('9e07fee6-229a-4fb8-941c-ad1ff89c81fb', 5, 6),
       ('9e07fee6-229a-4fb8-941c-ad1ff89c81fb', 4, 6),
       ('9e07fee6-229a-4fb8-941c-ad1ff89c81fb', 3, 6),
       ('9e07fee6-229a-4fb8-941c-ad1ff89c81fb', 2, 6),
       ('9e07fee6-229a-4fb8-941c-ad1ff89c81fb', 1, 6),
       ('9e07fee6-229a-4fb8-941c-ad1ff89c81fb', 1, 5),
       ('9e07fee6-229a-4fb8-941c-ad1ff89c81fb', 1, 4),
       ('9e07fee6-229a-4fb8-941c-ad1ff89c81fb', 1, 3),
       ('9e07fee6-229a-4fb8-941c-ad1ff89c81fb', 1, 2),
       ('9e07fee6-229a-4fb8-941c-ad1ff89c81fb', 1, 1),
       -- round two
       ('9e07fee6-229a-4fb8-941c-ad1ff89c81fb', 2, 1),
       ('9e07fee6-229a-4fb8-941c-ad1ff89c81fb', 3, 1),
       ('9e07fee6-229a-4fb8-941c-ad1ff89c81fb', 3, 2),
       ('9e07fee6-229a-4fb8-941c-ad1ff89c81fb', 3, 3),
       ('9e07fee6-229a-4fb8-941c-ad1ff89c81fb', 3, 4),
       ('9e07fee6-229a-4fb8-941c-ad1ff89c81fb', 3, 5),
       ('9e07fee6-229a-4fb8-941c-ad1ff89c81fb', 3, 6),
       ('9e07fee6-229a-4fb8-941c-ad1ff89c81fb', 2, 6),
       ('9e07fee6-229a-4fb8-941c-ad1ff89c81fb', 1, 6),
       ('9e07fee6-229a-4fb8-941c-ad1ff89c81fb', 1, 5),
       ('9e07fee6-229a-4fb8-941c-ad1ff89c81fb', 1, 4),
       ('9e07fee6-229a-4fb8-941c-ad1ff89c81fb', 1, 3),
       ('9e07fee6-229a-4fb8-941c-ad1ff89c81fb', 1, 2),
       ('9e07fee6-229a-4fb8-941c-ad1ff89c81fb', 1, 1),
       -- now round three
       ('9e07fee6-229a-4fb8-941c-ad1ff89c81fb', 2, 1),
       ('9e07fee6-229a-4fb8-941c-ad1ff89c81fb', 3, 1),
       ('9e07fee6-229a-4fb8-941c-ad1ff89c81fb', 4, 1),
       ('9e07fee6-229a-4fb8-941c-ad1ff89c81fb', 5, 1),
       ('9e07fee6-229a-4fb8-941c-ad1ff89c81fb', 5, 2),
       ('9e07fee6-229a-4fb8-941c-ad1ff89c81fb', 5, 3),
       ('9e07fee6-229a-4fb8-941c-ad1ff89c81fb', 5, 4),
       ('9e07fee6-229a-4fb8-941c-ad1ff89c81fb', 5, 5),
       ('9e07fee6-229a-4fb8-941c-ad1ff89c81fb', 5, 6),
       ('9e07fee6-229a-4fb8-941c-ad1ff89c81fb', 4, 6),
       ('9e07fee6-229a-4fb8-941c-ad1ff89c81fb', 3, 6),
       ('9e07fee6-229a-4fb8-941c-ad1ff89c81fb', 2, 6),
       ('9e07fee6-229a-4fb8-941c-ad1ff89c81fb', 1, 6),
       ('9e07fee6-229a-4fb8-941c-ad1ff89c81fb', 1, 5),
       ('9e07fee6-229a-4fb8-941c-ad1ff89c81fb', 1, 4),
       ('9e07fee6-229a-4fb8-941c-ad1ff89c81fb', 1, 3),
       ('9e07fee6-229a-4fb8-941c-ad1ff89c81fb', 1, 2),
       ('9e07fee6-229a-4fb8-941c-ad1ff89c81fb', 1, 1),
       -- now leave
       ('9e07fee6-229a-4fb8-941c-ad1ff89c81fb', 1, 0),
       -- end first mutant
       -- start second mutant
       ('dc68ce4f-a0ef-4815-a885-8cfcbfd88b41', 1, 0),
       ('dc68ce4f-a0ef-4815-a885-8cfcbfd88b41', 1, 1),
       ('dc68ce4f-a0ef-4815-a885-8cfcbfd88b41', 2, 1),
       ('dc68ce4f-a0ef-4815-a885-8cfcbfd88b41', 3, 1),
       ('dc68ce4f-a0ef-4815-a885-8cfcbfd88b41', 4, 1),
       ('dc68ce4f-a0ef-4815-a885-8cfcbfd88b41', 5, 1),
       ('dc68ce4f-a0ef-4815-a885-8cfcbfd88b41', 6, 1),
       ('dc68ce4f-a0ef-4815-a885-8cfcbfd88b41', 7, 1),
       ('dc68ce4f-a0ef-4815-a885-8cfcbfd88b41', 7, 2),
       ('dc68ce4f-a0ef-4815-a885-8cfcbfd88b41', 7, 3),
       ('dc68ce4f-a0ef-4815-a885-8cfcbfd88b41', 7, 4),
       ('dc68ce4f-a0ef-4815-a885-8cfcbfd88b41', 7, 5),
       ('dc68ce4f-a0ef-4815-a885-8cfcbfd88b41', 7, 6),
       ('dc68ce4f-a0ef-4815-a885-8cfcbfd88b41', 6, 6),
       ('dc68ce4f-a0ef-4815-a885-8cfcbfd88b41', 5, 6),
       ('dc68ce4f-a0ef-4815-a885-8cfcbfd88b41', 4, 6),
       ('dc68ce4f-a0ef-4815-a885-8cfcbfd88b41', 3, 6),
       ('dc68ce4f-a0ef-4815-a885-8cfcbfd88b41', 2, 6),
       ('dc68ce4f-a0ef-4815-a885-8cfcbfd88b41', 1, 6),
       ('dc68ce4f-a0ef-4815-a885-8cfcbfd88b41', 1, 5),
       ('dc68ce4f-a0ef-4815-a885-8cfcbfd88b41', 1, 4),
       ('dc68ce4f-a0ef-4815-a885-8cfcbfd88b41', 1, 3),
       ('dc68ce4f-a0ef-4815-a885-8cfcbfd88b41', 1, 2),
       ('dc68ce4f-a0ef-4815-a885-8cfcbfd88b41', 1, 1),
       -- round two
       ('dc68ce4f-a0ef-4815-a885-8cfcbfd88b41', 2, 1),
       ('dc68ce4f-a0ef-4815-a885-8cfcbfd88b41', 3, 1),
       ('dc68ce4f-a0ef-4815-a885-8cfcbfd88b41', 3, 2),
       ('dc68ce4f-a0ef-4815-a885-8cfcbfd88b41', 3, 3),
       ('dc68ce4f-a0ef-4815-a885-8cfcbfd88b41', 3, 4),
       ('dc68ce4f-a0ef-4815-a885-8cfcbfd88b41', 3, 5),
       ('dc68ce4f-a0ef-4815-a885-8cfcbfd88b41', 3, 6),
       ('dc68ce4f-a0ef-4815-a885-8cfcbfd88b41', 2, 6),
       ('dc68ce4f-a0ef-4815-a885-8cfcbfd88b41', 1, 6),
       ('dc68ce4f-a0ef-4815-a885-8cfcbfd88b41', 1, 5),
       ('dc68ce4f-a0ef-4815-a885-8cfcbfd88b41', 1, 4),
       ('dc68ce4f-a0ef-4815-a885-8cfcbfd88b41', 1, 3),
       ('dc68ce4f-a0ef-4815-a885-8cfcbfd88b41', 1, 2),
       ('dc68ce4f-a0ef-4815-a885-8cfcbfd88b41', 1, 1),
       -- now round three
       ('dc68ce4f-a0ef-4815-a885-8cfcbfd88b41', 2, 1),
       ('dc68ce4f-a0ef-4815-a885-8cfcbfd88b41', 3, 1),
       ('dc68ce4f-a0ef-4815-a885-8cfcbfd88b41', 3, 2),
       ('dc68ce4f-a0ef-4815-a885-8cfcbfd88b41', 3, 3),
       ('dc68ce4f-a0ef-4815-a885-8cfcbfd88b41', 3, 4),
       ('dc68ce4f-a0ef-4815-a885-8cfcbfd88b41', 3, 5),
       ('dc68ce4f-a0ef-4815-a885-8cfcbfd88b41', 3, 6),
       ('dc68ce4f-a0ef-4815-a885-8cfcbfd88b41', 2, 6),
       ('dc68ce4f-a0ef-4815-a885-8cfcbfd88b41', 1, 6),
       ('dc68ce4f-a0ef-4815-a885-8cfcbfd88b41', 1, 5),
       ('dc68ce4f-a0ef-4815-a885-8cfcbfd88b41', 1, 4),
       ('dc68ce4f-a0ef-4815-a885-8cfcbfd88b41', 1, 3),
       ('dc68ce4f-a0ef-4815-a885-8cfcbfd88b41', 1, 2),
       ('dc68ce4f-a0ef-4815-a885-8cfcbfd88b41', 1, 1),
       -- now leave
       ('dc68ce4f-a0ef-4815-a885-8cfcbfd88b41', 1, 0),
       -- end second mutant
       -- start third mutant
       ('4fd3a0ad-7ece-40ef-b60f-8ac7769e0821', 1, 0),
       ('4fd3a0ad-7ece-40ef-b60f-8ac7769e0821', 1, 1),
       ('4fd3a0ad-7ece-40ef-b60f-8ac7769e0821', 2, 1),
       ('4fd3a0ad-7ece-40ef-b60f-8ac7769e0821', 3, 1),
       ('4fd3a0ad-7ece-40ef-b60f-8ac7769e0821', 4, 1),
       ('4fd3a0ad-7ece-40ef-b60f-8ac7769e0821', 5, 1),
       ('4fd3a0ad-7ece-40ef-b60f-8ac7769e0821', 6, 1),
       ('4fd3a0ad-7ece-40ef-b60f-8ac7769e0821', 7, 1),
       ('4fd3a0ad-7ece-40ef-b60f-8ac7769e0821', 7, 2),
       ('4fd3a0ad-7ece-40ef-b60f-8ac7769e0821', 7, 3),
       ('4fd3a0ad-7ece-40ef-b60f-8ac7769e0821', 7, 4),
       ('4fd3a0ad-7ece-40ef-b60f-8ac7769e0821', 7, 5),
       ('4fd3a0ad-7ece-40ef-b60f-8ac7769e0821', 7, 6),
       ('4fd3a0ad-7ece-40ef-b60f-8ac7769e0821', 6, 6),
       ('4fd3a0ad-7ece-40ef-b60f-8ac7769e0821', 5, 6),
       ('4fd3a0ad-7ece-40ef-b60f-8ac7769e0821', 4, 6),
       ('4fd3a0ad-7ece-40ef-b60f-8ac7769e0821', 3, 6),
       ('4fd3a0ad-7ece-40ef-b60f-8ac7769e0821', 2, 6),
       ('4fd3a0ad-7ece-40ef-b60f-8ac7769e0821', 1, 6),
       ('4fd3a0ad-7ece-40ef-b60f-8ac7769e0821', 1, 5),
       ('4fd3a0ad-7ece-40ef-b60f-8ac7769e0821', 1, 4),
       ('4fd3a0ad-7ece-40ef-b60f-8ac7769e0821', 1, 3),
       ('4fd3a0ad-7ece-40ef-b60f-8ac7769e0821', 1, 2),
       ('4fd3a0ad-7ece-40ef-b60f-8ac7769e0821', 1, 1),
       -- round two
       ('4fd3a0ad-7ece-40ef-b60f-8ac7769e0821', 2, 1),
       ('4fd3a0ad-7ece-40ef-b60f-8ac7769e0821', 3, 1),
       ('4fd3a0ad-7ece-40ef-b60f-8ac7769e0821', 4, 1),
       ('4fd3a0ad-7ece-40ef-b60f-8ac7769e0821', 5, 1),
       ('4fd3a0ad-7ece-40ef-b60f-8ac7769e0821', 5, 2),
       ('4fd3a0ad-7ece-40ef-b60f-8ac7769e0821', 5, 3),
       ('4fd3a0ad-7ece-40ef-b60f-8ac7769e0821', 5, 4),
       ('4fd3a0ad-7ece-40ef-b60f-8ac7769e0821', 5, 5),
       ('4fd3a0ad-7ece-40ef-b60f-8ac7769e0821', 5, 6),
       ('4fd3a0ad-7ece-40ef-b60f-8ac7769e0821', 4, 6),
       ('4fd3a0ad-7ece-40ef-b60f-8ac7769e0821', 3, 6),
       ('4fd3a0ad-7ece-40ef-b60f-8ac7769e0821', 2, 6),
       ('4fd3a0ad-7ece-40ef-b60f-8ac7769e0821', 1, 6),
       ('4fd3a0ad-7ece-40ef-b60f-8ac7769e0821', 1, 5),
       ('4fd3a0ad-7ece-40ef-b60f-8ac7769e0821', 1, 4),
       ('4fd3a0ad-7ece-40ef-b60f-8ac7769e0821', 1, 3),
       ('4fd3a0ad-7ece-40ef-b60f-8ac7769e0821', 1, 2),
       ('4fd3a0ad-7ece-40ef-b60f-8ac7769e0821', 1, 1),
       -- now round three
       ('4fd3a0ad-7ece-40ef-b60f-8ac7769e0821', 2, 1),
       ('4fd3a0ad-7ece-40ef-b60f-8ac7769e0821', 3, 1),
       ('4fd3a0ad-7ece-40ef-b60f-8ac7769e0821', 4, 1),
       ('4fd3a0ad-7ece-40ef-b60f-8ac7769e0821', 5, 1),
       ('4fd3a0ad-7ece-40ef-b60f-8ac7769e0821', 5, 2),
       ('4fd3a0ad-7ece-40ef-b60f-8ac7769e0821', 5, 3),
       ('4fd3a0ad-7ece-40ef-b60f-8ac7769e0821', 5, 4),
       ('4fd3a0ad-7ece-40ef-b60f-8ac7769e0821', 5, 5),
       ('4fd3a0ad-7ece-40ef-b60f-8ac7769e0821', 5, 6),
       ('4fd3a0ad-7ece-40ef-b60f-8ac7769e0821', 4, 6),
       ('4fd3a0ad-7ece-40ef-b60f-8ac7769e0821', 3, 6),
       ('4fd3a0ad-7ece-40ef-b60f-8ac7769e0821', 2, 6),
       ('4fd3a0ad-7ece-40ef-b60f-8ac7769e0821', 1, 6),
       ('4fd3a0ad-7ece-40ef-b60f-8ac7769e0821', 1, 5),
       ('4fd3a0ad-7ece-40ef-b60f-8ac7769e0821', 1, 4),
       ('4fd3a0ad-7ece-40ef-b60f-8ac7769e0821', 1, 3),
       ('4fd3a0ad-7ece-40ef-b60f-8ac7769e0821', 1, 2),
       ('4fd3a0ad-7ece-40ef-b60f-8ac7769e0821', 1, 1),
       -- now leave
       ('4fd3a0ad-7ece-40ef-b60f-8ac7769e0821', 1, 0),
       -- end third mutant

       -- start forth mutant
       ('2d1ea6ef-a097-463b-8d4d-db6b5f087766', 1, 0),
       ('2d1ea6ef-a097-463b-8d4d-db6b5f087766', 1, 1),
       ('2d1ea6ef-a097-463b-8d4d-db6b5f087766', 2, 1),
       ('2d1ea6ef-a097-463b-8d4d-db6b5f087766', 3, 1),
       ('2d1ea6ef-a097-463b-8d4d-db6b5f087766', 3, 2),
       ('2d1ea6ef-a097-463b-8d4d-db6b5f087766', 3, 3),
       ('2d1ea6ef-a097-463b-8d4d-db6b5f087766', 3, 4),
       ('2d1ea6ef-a097-463b-8d4d-db6b5f087766', 3, 5),
       ('2d1ea6ef-a097-463b-8d4d-db6b5f087766', 3, 6),
       ('2d1ea6ef-a097-463b-8d4d-db6b5f087766', 2, 6),
       ('2d1ea6ef-a097-463b-8d4d-db6b5f087766', 1, 6),
       ('2d1ea6ef-a097-463b-8d4d-db6b5f087766', 1, 5),
       ('2d1ea6ef-a097-463b-8d4d-db6b5f087766', 1, 4),
       ('2d1ea6ef-a097-463b-8d4d-db6b5f087766', 1, 3),
       ('2d1ea6ef-a097-463b-8d4d-db6b5f087766', 1, 2),
       ('2d1ea6ef-a097-463b-8d4d-db6b5f087766', 1, 1),
       -- round two
       ('2d1ea6ef-a097-463b-8d4d-db6b5f087766', 2, 1),
       ('2d1ea6ef-a097-463b-8d4d-db6b5f087766', 3, 1),
       ('2d1ea6ef-a097-463b-8d4d-db6b5f087766', 3, 2),
       ('2d1ea6ef-a097-463b-8d4d-db6b5f087766', 3, 3),
       ('2d1ea6ef-a097-463b-8d4d-db6b5f087766', 3, 4),
       ('2d1ea6ef-a097-463b-8d4d-db6b5f087766', 3, 5),
       ('2d1ea6ef-a097-463b-8d4d-db6b5f087766', 3, 6),
       ('2d1ea6ef-a097-463b-8d4d-db6b5f087766', 2, 6),
       ('2d1ea6ef-a097-463b-8d4d-db6b5f087766', 1, 6),
       ('2d1ea6ef-a097-463b-8d4d-db6b5f087766', 1, 5),
       ('2d1ea6ef-a097-463b-8d4d-db6b5f087766', 1, 4),
       ('2d1ea6ef-a097-463b-8d4d-db6b5f087766', 1, 3),
       ('2d1ea6ef-a097-463b-8d4d-db6b5f087766', 1, 2),
       ('2d1ea6ef-a097-463b-8d4d-db6b5f087766', 1, 1),
       -- now round three
       ('2d1ea6ef-a097-463b-8d4d-db6b5f087766', 2, 1),
       ('2d1ea6ef-a097-463b-8d4d-db6b5f087766', 3, 1),
       ('2d1ea6ef-a097-463b-8d4d-db6b5f087766', 4, 1),
       ('2d1ea6ef-a097-463b-8d4d-db6b5f087766', 5, 1),
       ('2d1ea6ef-a097-463b-8d4d-db6b5f087766', 5, 2),
       ('2d1ea6ef-a097-463b-8d4d-db6b5f087766', 5, 3),
       ('2d1ea6ef-a097-463b-8d4d-db6b5f087766', 5, 4),
       ('2d1ea6ef-a097-463b-8d4d-db6b5f087766', 5, 5),
       ('2d1ea6ef-a097-463b-8d4d-db6b5f087766', 5, 6),
       ('2d1ea6ef-a097-463b-8d4d-db6b5f087766', 4, 6),
       ('2d1ea6ef-a097-463b-8d4d-db6b5f087766', 3, 6),
       ('2d1ea6ef-a097-463b-8d4d-db6b5f087766', 2, 6),
       ('2d1ea6ef-a097-463b-8d4d-db6b5f087766', 1, 6),
       ('2d1ea6ef-a097-463b-8d4d-db6b5f087766', 1, 5),
       ('2d1ea6ef-a097-463b-8d4d-db6b5f087766', 1, 4),
       ('2d1ea6ef-a097-463b-8d4d-db6b5f087766', 1, 3),
       ('2d1ea6ef-a097-463b-8d4d-db6b5f087766', 1, 2),
       ('2d1ea6ef-a097-463b-8d4d-db6b5f087766', 1, 1),
       -- now leave
       ('2d1ea6ef-a097-463b-8d4d-db6b5f087766', 1, 0),
       -- end forth mutant

       -- start fifth mutant
       ('68f0048c-5e13-4b37-ba35-34d9bace9363', 1, 0),
       ('68f0048c-5e13-4b37-ba35-34d9bace9363', 1, 1),
       ('68f0048c-5e13-4b37-ba35-34d9bace9363', 2, 1),
       ('68f0048c-5e13-4b37-ba35-34d9bace9363', 3, 1),
       ('68f0048c-5e13-4b37-ba35-34d9bace9363', 4, 1),
       ('68f0048c-5e13-4b37-ba35-34d9bace9363', 5, 1),
       ('68f0048c-5e13-4b37-ba35-34d9bace9363', 6, 1),
       ('68f0048c-5e13-4b37-ba35-34d9bace9363', 7, 1),
       ('68f0048c-5e13-4b37-ba35-34d9bace9363', 7, 2),
       ('68f0048c-5e13-4b37-ba35-34d9bace9363', 7, 3),
       ('68f0048c-5e13-4b37-ba35-34d9bace9363', 7, 4),
       ('68f0048c-5e13-4b37-ba35-34d9bace9363', 7, 5),
       ('68f0048c-5e13-4b37-ba35-34d9bace9363', 7, 6),
       ('68f0048c-5e13-4b37-ba35-34d9bace9363', 6, 6),
       ('68f0048c-5e13-4b37-ba35-34d9bace9363', 5, 6),
       ('68f0048c-5e13-4b37-ba35-34d9bace9363', 4, 6),
       ('68f0048c-5e13-4b37-ba35-34d9bace9363', 3, 6),
       ('68f0048c-5e13-4b37-ba35-34d9bace9363', 2, 6),
       ('68f0048c-5e13-4b37-ba35-34d9bace9363', 1, 6),
       ('68f0048c-5e13-4b37-ba35-34d9bace9363', 1, 5),
       ('68f0048c-5e13-4b37-ba35-34d9bace9363', 1, 4),
       ('68f0048c-5e13-4b37-ba35-34d9bace9363', 1, 3),
       ('68f0048c-5e13-4b37-ba35-34d9bace9363', 1, 2),
       ('68f0048c-5e13-4b37-ba35-34d9bace9363', 1, 1),

       -- round two

       ('68f0048c-5e13-4b37-ba35-34d9bace9363', 2, 1),
       ('68f0048c-5e13-4b37-ba35-34d9bace9363', 3, 1),
       ('68f0048c-5e13-4b37-ba35-34d9bace9363', 3, 2),
       ('68f0048c-5e13-4b37-ba35-34d9bace9363', 3, 3),
       ('68f0048c-5e13-4b37-ba35-34d9bace9363', 3, 4),
       ('68f0048c-5e13-4b37-ba35-34d9bace9363', 3, 5),
       ('68f0048c-5e13-4b37-ba35-34d9bace9363', 3, 6),
       ('68f0048c-5e13-4b37-ba35-34d9bace9363', 2, 6),
       ('68f0048c-5e13-4b37-ba35-34d9bace9363', 1, 6),
       ('68f0048c-5e13-4b37-ba35-34d9bace9363', 1, 5),
       ('68f0048c-5e13-4b37-ba35-34d9bace9363', 1, 4),
       ('68f0048c-5e13-4b37-ba35-34d9bace9363', 1, 3),
       ('68f0048c-5e13-4b37-ba35-34d9bace9363', 1, 2),
       ('68f0048c-5e13-4b37-ba35-34d9bace9363', 1, 1),

       -- now round three
       ('68f0048c-5e13-4b37-ba35-34d9bace9363', 2, 1),
       ('68f0048c-5e13-4b37-ba35-34d9bace9363', 3, 1),
       ('68f0048c-5e13-4b37-ba35-34d9bace9363', 4, 1),
       ('68f0048c-5e13-4b37-ba35-34d9bace9363', 5, 1),
       ('68f0048c-5e13-4b37-ba35-34d9bace9363', 5, 2),
       ('68f0048c-5e13-4b37-ba35-34d9bace9363', 5, 3),
       ('68f0048c-5e13-4b37-ba35-34d9bace9363', 5, 4),
       ('68f0048c-5e13-4b37-ba35-34d9bace9363', 5, 5),
       ('68f0048c-5e13-4b37-ba35-34d9bace9363', 5, 6),
       ('68f0048c-5e13-4b37-ba35-34d9bace9363', 4, 6),
       ('68f0048c-5e13-4b37-ba35-34d9bace9363', 3, 6),
       ('68f0048c-5e13-4b37-ba35-34d9bace9363', 2, 6),
       ('68f0048c-5e13-4b37-ba35-34d9bace9363', 1, 6),
       ('68f0048c-5e13-4b37-ba35-34d9bace9363', 1, 5),
       ('68f0048c-5e13-4b37-ba35-34d9bace9363', 1, 4),
       ('68f0048c-5e13-4b37-ba35-34d9bace9363', 1, 3),
       ('68f0048c-5e13-4b37-ba35-34d9bace9363', 1, 2),
       ('68f0048c-5e13-4b37-ba35-34d9bace9363', 1, 1),
       -- now leave
       ('68f0048c-5e13-4b37-ba35-34d9bace9363', 1, 0),
       -- end fifth mutant
       -- start sixth mutant:
       ('28cec292-a12d-4863-9c37-70c3ae76cb19', 1, 0),
       ('28cec292-a12d-4863-9c37-70c3ae76cb19', 1, 1),
       ('28cec292-a12d-4863-9c37-70c3ae76cb19', 2, 1),
       ('28cec292-a12d-4863-9c37-70c3ae76cb19', 3, 1),
       ('28cec292-a12d-4863-9c37-70c3ae76cb19', 4, 1),
       ('28cec292-a12d-4863-9c37-70c3ae76cb19', 5, 1),
       ('28cec292-a12d-4863-9c37-70c3ae76cb19', 6, 1),
       ('28cec292-a12d-4863-9c37-70c3ae76cb19', 7, 1),
       ('28cec292-a12d-4863-9c37-70c3ae76cb19', 7, 2),
       ('28cec292-a12d-4863-9c37-70c3ae76cb19', 7, 3),
       ('28cec292-a12d-4863-9c37-70c3ae76cb19', 7, 4),
       ('28cec292-a12d-4863-9c37-70c3ae76cb19', 7, 5),
       ('28cec292-a12d-4863-9c37-70c3ae76cb19', 7, 6),
       ('28cec292-a12d-4863-9c37-70c3ae76cb19', 6, 6),
       ('28cec292-a12d-4863-9c37-70c3ae76cb19', 5, 6),
       ('28cec292-a12d-4863-9c37-70c3ae76cb19', 4, 6),
       ('28cec292-a12d-4863-9c37-70c3ae76cb19', 3, 6),
       ('28cec292-a12d-4863-9c37-70c3ae76cb19', 2, 6),
       ('28cec292-a12d-4863-9c37-70c3ae76cb19', 1, 6),
       ('28cec292-a12d-4863-9c37-70c3ae76cb19', 1, 5),
       ('28cec292-a12d-4863-9c37-70c3ae76cb19', 1, 4),
       ('28cec292-a12d-4863-9c37-70c3ae76cb19', 1, 3),
       ('28cec292-a12d-4863-9c37-70c3ae76cb19', 1, 2),
       ('28cec292-a12d-4863-9c37-70c3ae76cb19', 1, 1),
       -- round two
       ('28cec292-a12d-4863-9c37-70c3ae76cb19', 2, 1),
       ('28cec292-a12d-4863-9c37-70c3ae76cb19', 3, 1),
       ('28cec292-a12d-4863-9c37-70c3ae76cb19', 3, 2),
       ('28cec292-a12d-4863-9c37-70c3ae76cb19', 3, 3),
       ('28cec292-a12d-4863-9c37-70c3ae76cb19', 3, 4),
       ('28cec292-a12d-4863-9c37-70c3ae76cb19', 3, 5),
       ('28cec292-a12d-4863-9c37-70c3ae76cb19', 3, 6),
       ('28cec292-a12d-4863-9c37-70c3ae76cb19', 2, 6),
       ('28cec292-a12d-4863-9c37-70c3ae76cb19', 1, 6),
       ('28cec292-a12d-4863-9c37-70c3ae76cb19', 1, 5),
       ('28cec292-a12d-4863-9c37-70c3ae76cb19', 1, 4),
       ('28cec292-a12d-4863-9c37-70c3ae76cb19', 1, 3),
       ('28cec292-a12d-4863-9c37-70c3ae76cb19', 1, 2),
       ('28cec292-a12d-4863-9c37-70c3ae76cb19', 1, 1),
       -- now round three
       ('28cec292-a12d-4863-9c37-70c3ae76cb19', 2, 1),
       ('28cec292-a12d-4863-9c37-70c3ae76cb19', 3, 1),
       ('28cec292-a12d-4863-9c37-70c3ae76cb19', 4, 1),
       ('28cec292-a12d-4863-9c37-70c3ae76cb19', 5, 1),
       ('28cec292-a12d-4863-9c37-70c3ae76cb19', 5, 2),
       ('28cec292-a12d-4863-9c37-70c3ae76cb19', 5, 3),
       ('28cec292-a12d-4863-9c37-70c3ae76cb19', 5, 4),
       ('28cec292-a12d-4863-9c37-70c3ae76cb19', 5, 5),
       ('28cec292-a12d-4863-9c37-70c3ae76cb19', 5, 6),
       ('28cec292-a12d-4863-9c37-70c3ae76cb19', 4, 6),
       ('28cec292-a12d-4863-9c37-70c3ae76cb19', 3, 6),
       ('28cec292-a12d-4863-9c37-70c3ae76cb19', 2, 6),
       ('28cec292-a12d-4863-9c37-70c3ae76cb19', 1, 6),
       ('28cec292-a12d-4863-9c37-70c3ae76cb19', 1, 5),
       ('28cec292-a12d-4863-9c37-70c3ae76cb19', 1, 4),
       ('28cec292-a12d-4863-9c37-70c3ae76cb19', 1, 3),
       ('28cec292-a12d-4863-9c37-70c3ae76cb19', 1, 2),
       ('28cec292-a12d-4863-9c37-70c3ae76cb19', 1, 1),
       -- now leave
       ('28cec292-a12d-4863-9c37-70c3ae76cb19', 1, 0),
       -- end sixth mutant
       -- start seventh mutant:
       ('f60915e3-1bff-4e27-9d8c-60598c734004', 1, 0),
       ('f60915e3-1bff-4e27-9d8c-60598c734004', 1, 1),
       ('f60915e3-1bff-4e27-9d8c-60598c734004', 2, 1),
       ('f60915e3-1bff-4e27-9d8c-60598c734004', 3, 1),
       ('f60915e3-1bff-4e27-9d8c-60598c734004', 4, 1),
       ('f60915e3-1bff-4e27-9d8c-60598c734004', 5, 1),
       ('f60915e3-1bff-4e27-9d8c-60598c734004', 6, 1),
       ('f60915e3-1bff-4e27-9d8c-60598c734004', 7, 1),
       ('f60915e3-1bff-4e27-9d8c-60598c734004', 7, 2),
       ('f60915e3-1bff-4e27-9d8c-60598c734004', 7, 3),
       ('f60915e3-1bff-4e27-9d8c-60598c734004', 7, 4),
       ('f60915e3-1bff-4e27-9d8c-60598c734004', 7, 5),
       ('f60915e3-1bff-4e27-9d8c-60598c734004', 7, 6),
       ('f60915e3-1bff-4e27-9d8c-60598c734004', 6, 6),
       ('f60915e3-1bff-4e27-9d8c-60598c734004', 5, 6),
       ('f60915e3-1bff-4e27-9d8c-60598c734004', 4, 6),
       ('f60915e3-1bff-4e27-9d8c-60598c734004', 3, 6),
       ('f60915e3-1bff-4e27-9d8c-60598c734004', 2, 6),
       ('f60915e3-1bff-4e27-9d8c-60598c734004', 1, 6),
       ('f60915e3-1bff-4e27-9d8c-60598c734004', 1, 5),
       ('f60915e3-1bff-4e27-9d8c-60598c734004', 1, 4),
       ('f60915e3-1bff-4e27-9d8c-60598c734004', 1, 3),
       ('f60915e3-1bff-4e27-9d8c-60598c734004', 1, 2),
       ('f60915e3-1bff-4e27-9d8c-60598c734004', 1, 1),
       -- round two
       ('f60915e3-1bff-4e27-9d8c-60598c734004', 2, 1),
       ('f60915e3-1bff-4e27-9d8c-60598c734004', 3, 1),
       ('f60915e3-1bff-4e27-9d8c-60598c734004', 3, 2),
       ('f60915e3-1bff-4e27-9d8c-60598c734004', 3, 3),
       ('f60915e3-1bff-4e27-9d8c-60598c734004', 3, 4),
       ('f60915e3-1bff-4e27-9d8c-60598c734004', 3, 5),
       ('f60915e3-1bff-4e27-9d8c-60598c734004', 3, 6),
       ('f60915e3-1bff-4e27-9d8c-60598c734004', 2, 6),
       ('f60915e3-1bff-4e27-9d8c-60598c734004', 1, 6),
       ('f60915e3-1bff-4e27-9d8c-60598c734004', 1, 5),
       ('f60915e3-1bff-4e27-9d8c-60598c734004', 1, 4),
       ('f60915e3-1bff-4e27-9d8c-60598c734004', 1, 3),
       ('f60915e3-1bff-4e27-9d8c-60598c734004', 1, 2),
       ('f60915e3-1bff-4e27-9d8c-60598c734004', 1, 1),
       -- now round three
       ('f60915e3-1bff-4e27-9d8c-60598c734004', 2, 1),
       ('f60915e3-1bff-4e27-9d8c-60598c734004', 3, 1),
       ('f60915e3-1bff-4e27-9d8c-60598c734004', 4, 1),
       ('f60915e3-1bff-4e27-9d8c-60598c734004', 5, 1),
       ('f60915e3-1bff-4e27-9d8c-60598c734004', 5, 2),
       ('f60915e3-1bff-4e27-9d8c-60598c734004', 5, 3),
       ('f60915e3-1bff-4e27-9d8c-60598c734004', 5, 4),
       ('f60915e3-1bff-4e27-9d8c-60598c734004', 5, 5),
       ('f60915e3-1bff-4e27-9d8c-60598c734004', 5, 6),
       ('f60915e3-1bff-4e27-9d8c-60598c734004', 4, 6),
       ('f60915e3-1bff-4e27-9d8c-60598c734004', 3, 6),
       ('f60915e3-1bff-4e27-9d8c-60598c734004', 2, 6),
       ('f60915e3-1bff-4e27-9d8c-60598c734004', 1, 6),
       ('f60915e3-1bff-4e27-9d8c-60598c734004', 1, 5),
       ('f60915e3-1bff-4e27-9d8c-60598c734004', 1, 4),
       ('f60915e3-1bff-4e27-9d8c-60598c734004', 1, 3),
       ('f60915e3-1bff-4e27-9d8c-60598c734004', 1, 2),
       ('f60915e3-1bff-4e27-9d8c-60598c734004', 1, 1),
       -- now leave
       ('f60915e3-1bff-4e27-9d8c-60598c734004', 1, 0),
       -- end seventh mutant
       -- start eights mutant:
       ('783a76b1-149a-47d7-a165-e12837e49a88', 1, 0),
       ('783a76b1-149a-47d7-a165-e12837e49a88', 1, 1),
       ('783a76b1-149a-47d7-a165-e12837e49a88', 2, 1),
       ('783a76b1-149a-47d7-a165-e12837e49a88', 3, 1),
       ('783a76b1-149a-47d7-a165-e12837e49a88', 4, 1),
       ('783a76b1-149a-47d7-a165-e12837e49a88', 5, 1),
       ('783a76b1-149a-47d7-a165-e12837e49a88', 6, 1),
       ('783a76b1-149a-47d7-a165-e12837e49a88', 7, 1),
       ('783a76b1-149a-47d7-a165-e12837e49a88', 7, 2),
       ('783a76b1-149a-47d7-a165-e12837e49a88', 7, 3),
       ('783a76b1-149a-47d7-a165-e12837e49a88', 7, 4),
       ('783a76b1-149a-47d7-a165-e12837e49a88', 7, 5),
       ('783a76b1-149a-47d7-a165-e12837e49a88', 7, 6),
       ('783a76b1-149a-47d7-a165-e12837e49a88', 6, 6),
       ('783a76b1-149a-47d7-a165-e12837e49a88', 5, 6),
       ('783a76b1-149a-47d7-a165-e12837e49a88', 4, 6),
       ('783a76b1-149a-47d7-a165-e12837e49a88', 3, 6),
       ('783a76b1-149a-47d7-a165-e12837e49a88', 2, 6),
       ('783a76b1-149a-47d7-a165-e12837e49a88', 1, 6),
       ('783a76b1-149a-47d7-a165-e12837e49a88', 1, 5),
       ('783a76b1-149a-47d7-a165-e12837e49a88', 1, 4),
       ('783a76b1-149a-47d7-a165-e12837e49a88', 1, 3),
       ('783a76b1-149a-47d7-a165-e12837e49a88', 1, 2),
       ('783a76b1-149a-47d7-a165-e12837e49a88', 1, 1),
       -- round two
       ('783a76b1-149a-47d7-a165-e12837e49a88', 2, 1),
       ('783a76b1-149a-47d7-a165-e12837e49a88', 3, 1),
       ('783a76b1-149a-47d7-a165-e12837e49a88', 3, 2),
       ('783a76b1-149a-47d7-a165-e12837e49a88', 3, 3),
       ('783a76b1-149a-47d7-a165-e12837e49a88', 3, 4),
       ('783a76b1-149a-47d7-a165-e12837e49a88', 3, 5),
       ('783a76b1-149a-47d7-a165-e12837e49a88', 3, 6),
       ('783a76b1-149a-47d7-a165-e12837e49a88', 2, 6),
       ('783a76b1-149a-47d7-a165-e12837e49a88', 1, 6),
       ('783a76b1-149a-47d7-a165-e12837e49a88', 1, 5),
       ('783a76b1-149a-47d7-a165-e12837e49a88', 1, 4),
       ('783a76b1-149a-47d7-a165-e12837e49a88', 1, 3),
       ('783a76b1-149a-47d7-a165-e12837e49a88', 1, 2),
       ('783a76b1-149a-47d7-a165-e12837e49a88', 1, 1),
       -- now round three
       ('783a76b1-149a-47d7-a165-e12837e49a88', 2, 1),
       ('783a76b1-149a-47d7-a165-e12837e49a88', 3, 1),
       ('783a76b1-149a-47d7-a165-e12837e49a88', 4, 1),
       ('783a76b1-149a-47d7-a165-e12837e49a88', 5, 1),
       ('783a76b1-149a-47d7-a165-e12837e49a88', 5, 2),
       ('783a76b1-149a-47d7-a165-e12837e49a88', 5, 3),
       ('783a76b1-149a-47d7-a165-e12837e49a88', 5, 4),
       ('783a76b1-149a-47d7-a165-e12837e49a88', 5, 5),
       ('783a76b1-149a-47d7-a165-e12837e49a88', 5, 6),
       ('783a76b1-149a-47d7-a165-e12837e49a88', 4, 6),
       ('783a76b1-149a-47d7-a165-e12837e49a88', 3, 6),
       ('783a76b1-149a-47d7-a165-e12837e49a88', 2, 6),
       ('783a76b1-149a-47d7-a165-e12837e49a88', 1, 6),
       ('783a76b1-149a-47d7-a165-e12837e49a88', 1, 5),
       ('783a76b1-149a-47d7-a165-e12837e49a88', 1, 4),
       ('783a76b1-149a-47d7-a165-e12837e49a88', 1, 3),
       ('783a76b1-149a-47d7-a165-e12837e49a88', 1, 2),
       ('783a76b1-149a-47d7-a165-e12837e49a88', 1, 1),
       -- now leave
       ('783a76b1-149a-47d7-a165-e12837e49a88', 1, 0),
       -- end eights mutant
       -- start ninth mutant:
       ('5c64152a-9d97-4e17-8ed1-f907e27d19b5', 1, 0),
       ('5c64152a-9d97-4e17-8ed1-f907e27d19b5', 1, 1),
       ('5c64152a-9d97-4e17-8ed1-f907e27d19b5', 2, 1),
       ('5c64152a-9d97-4e17-8ed1-f907e27d19b5', 3, 1),
       ('5c64152a-9d97-4e17-8ed1-f907e27d19b5', 4, 1),
       ('5c64152a-9d97-4e17-8ed1-f907e27d19b5', 5, 1),
       ('5c64152a-9d97-4e17-8ed1-f907e27d19b5', 6, 1),
       ('5c64152a-9d97-4e17-8ed1-f907e27d19b5', 7, 1),
       ('5c64152a-9d97-4e17-8ed1-f907e27d19b5', 7, 2),
       ('5c64152a-9d97-4e17-8ed1-f907e27d19b5', 7, 3),
       ('5c64152a-9d97-4e17-8ed1-f907e27d19b5', 7, 4),
       ('5c64152a-9d97-4e17-8ed1-f907e27d19b5', 7, 5),
       ('5c64152a-9d97-4e17-8ed1-f907e27d19b5', 7, 6),
       ('5c64152a-9d97-4e17-8ed1-f907e27d19b5', 6, 6),
       ('5c64152a-9d97-4e17-8ed1-f907e27d19b5', 5, 6),
       ('5c64152a-9d97-4e17-8ed1-f907e27d19b5', 4, 6),
       ('5c64152a-9d97-4e17-8ed1-f907e27d19b5', 3, 6),
       ('5c64152a-9d97-4e17-8ed1-f907e27d19b5', 2, 6),
       ('5c64152a-9d97-4e17-8ed1-f907e27d19b5', 1, 6),
       ('5c64152a-9d97-4e17-8ed1-f907e27d19b5', 1, 5),
       ('5c64152a-9d97-4e17-8ed1-f907e27d19b5', 1, 4),
       ('5c64152a-9d97-4e17-8ed1-f907e27d19b5', 1, 3),
       ('5c64152a-9d97-4e17-8ed1-f907e27d19b5', 1, 2),
       ('5c64152a-9d97-4e17-8ed1-f907e27d19b5', 1, 1),
       -- round two
       ('5c64152a-9d97-4e17-8ed1-f907e27d19b5', 2, 1),
       ('5c64152a-9d97-4e17-8ed1-f907e27d19b5', 3, 1),
       ('5c64152a-9d97-4e17-8ed1-f907e27d19b5', 3, 2),
       ('5c64152a-9d97-4e17-8ed1-f907e27d19b5', 3, 3),
       ('5c64152a-9d97-4e17-8ed1-f907e27d19b5', 3, 4),
       ('5c64152a-9d97-4e17-8ed1-f907e27d19b5', 3, 5),
       ('5c64152a-9d97-4e17-8ed1-f907e27d19b5', 3, 6),
       ('5c64152a-9d97-4e17-8ed1-f907e27d19b5', 2, 6),
       ('5c64152a-9d97-4e17-8ed1-f907e27d19b5', 1, 6),
       ('5c64152a-9d97-4e17-8ed1-f907e27d19b5', 1, 5),
       ('5c64152a-9d97-4e17-8ed1-f907e27d19b5', 1, 4),
       ('5c64152a-9d97-4e17-8ed1-f907e27d19b5', 1, 3),
       ('5c64152a-9d97-4e17-8ed1-f907e27d19b5', 1, 2),
       ('5c64152a-9d97-4e17-8ed1-f907e27d19b5', 1, 1),
       -- now round three
       ('5c64152a-9d97-4e17-8ed1-f907e27d19b5', 2, 1),
       ('5c64152a-9d97-4e17-8ed1-f907e27d19b5', 3, 1),
       ('5c64152a-9d97-4e17-8ed1-f907e27d19b5', 4, 1),
       ('5c64152a-9d97-4e17-8ed1-f907e27d19b5', 5, 1),
       ('5c64152a-9d97-4e17-8ed1-f907e27d19b5', 5, 2),
       ('5c64152a-9d97-4e17-8ed1-f907e27d19b5', 5, 3),
       ('5c64152a-9d97-4e17-8ed1-f907e27d19b5', 5, 4),
       ('5c64152a-9d97-4e17-8ed1-f907e27d19b5', 5, 5),
       ('5c64152a-9d97-4e17-8ed1-f907e27d19b5', 5, 6),
       ('5c64152a-9d97-4e17-8ed1-f907e27d19b5', 4, 6),
       ('5c64152a-9d97-4e17-8ed1-f907e27d19b5', 3, 6),
       ('5c64152a-9d97-4e17-8ed1-f907e27d19b5', 2, 6),
       ('5c64152a-9d97-4e17-8ed1-f907e27d19b5', 1, 6),
       ('5c64152a-9d97-4e17-8ed1-f907e27d19b5', 1, 5),
       ('5c64152a-9d97-4e17-8ed1-f907e27d19b5', 1, 4),
       ('5c64152a-9d97-4e17-8ed1-f907e27d19b5', 1, 3),
       ('5c64152a-9d97-4e17-8ed1-f907e27d19b5', 1, 2),
       ('5c64152a-9d97-4e17-8ed1-f907e27d19b5', 1, 1),
       -- now leave
       ('5c64152a-9d97-4e17-8ed1-f907e27d19b5', 1, 0),
       -- end ninth mutant
       -- start tenth mutant:
       ('54413ec6-efa5-4a63-bc0f-7ac389e5d049', 1, 0),
       ('54413ec6-efa5-4a63-bc0f-7ac389e5d049', 1, 1),
       ('54413ec6-efa5-4a63-bc0f-7ac389e5d049', 2, 1),
       ('54413ec6-efa5-4a63-bc0f-7ac389e5d049', 3, 1),
       ('54413ec6-efa5-4a63-bc0f-7ac389e5d049', 4, 1),
       ('54413ec6-efa5-4a63-bc0f-7ac389e5d049', 5, 1),
       ('54413ec6-efa5-4a63-bc0f-7ac389e5d049', 6, 1),
       ('54413ec6-efa5-4a63-bc0f-7ac389e5d049', 7, 1),
       ('54413ec6-efa5-4a63-bc0f-7ac389e5d049', 7, 2),
       ('54413ec6-efa5-4a63-bc0f-7ac389e5d049', 7, 3),
       ('54413ec6-efa5-4a63-bc0f-7ac389e5d049', 7, 4),
       ('54413ec6-efa5-4a63-bc0f-7ac389e5d049', 7, 5),
       ('54413ec6-efa5-4a63-bc0f-7ac389e5d049', 7, 6),
       ('54413ec6-efa5-4a63-bc0f-7ac389e5d049', 6, 6),
       ('54413ec6-efa5-4a63-bc0f-7ac389e5d049', 5, 6),
       ('54413ec6-efa5-4a63-bc0f-7ac389e5d049', 4, 6),
       ('54413ec6-efa5-4a63-bc0f-7ac389e5d049', 3, 6),
       ('54413ec6-efa5-4a63-bc0f-7ac389e5d049', 2, 6),
       ('54413ec6-efa5-4a63-bc0f-7ac389e5d049', 1, 6),
       ('54413ec6-efa5-4a63-bc0f-7ac389e5d049', 1, 5),
       ('54413ec6-efa5-4a63-bc0f-7ac389e5d049', 1, 4),
       ('54413ec6-efa5-4a63-bc0f-7ac389e5d049', 1, 3),
       ('54413ec6-efa5-4a63-bc0f-7ac389e5d049', 1, 2),
       ('54413ec6-efa5-4a63-bc0f-7ac389e5d049', 1, 1),
       -- round two
       ('54413ec6-efa5-4a63-bc0f-7ac389e5d049', 2, 1),
       ('54413ec6-efa5-4a63-bc0f-7ac389e5d049', 3, 1),
       ('54413ec6-efa5-4a63-bc0f-7ac389e5d049', 3, 2),
       ('54413ec6-efa5-4a63-bc0f-7ac389e5d049', 3, 3),
       ('54413ec6-efa5-4a63-bc0f-7ac389e5d049', 3, 4),
       ('54413ec6-efa5-4a63-bc0f-7ac389e5d049', 3, 5),
       ('54413ec6-efa5-4a63-bc0f-7ac389e5d049', 3, 6),
       ('54413ec6-efa5-4a63-bc0f-7ac389e5d049', 2, 6),
       ('54413ec6-efa5-4a63-bc0f-7ac389e5d049', 1, 6),
       ('54413ec6-efa5-4a63-bc0f-7ac389e5d049', 1, 5),
       ('54413ec6-efa5-4a63-bc0f-7ac389e5d049', 1, 4),
       ('54413ec6-efa5-4a63-bc0f-7ac389e5d049', 1, 3),
       ('54413ec6-efa5-4a63-bc0f-7ac389e5d049', 1, 2),
       ('54413ec6-efa5-4a63-bc0f-7ac389e5d049', 1, 1),
       -- now round three
       ('54413ec6-efa5-4a63-bc0f-7ac389e5d049', 2, 1),
       ('54413ec6-efa5-4a63-bc0f-7ac389e5d049', 3, 1),
       ('54413ec6-efa5-4a63-bc0f-7ac389e5d049', 4, 1),
       ('54413ec6-efa5-4a63-bc0f-7ac389e5d049', 5, 1),
       ('54413ec6-efa5-4a63-bc0f-7ac389e5d049', 5, 2),
       ('54413ec6-efa5-4a63-bc0f-7ac389e5d049', 5, 3),
       ('54413ec6-efa5-4a63-bc0f-7ac389e5d049', 5, 4),
       ('54413ec6-efa5-4a63-bc0f-7ac389e5d049', 5, 5),
       ('54413ec6-efa5-4a63-bc0f-7ac389e5d049', 5, 6),
       ('54413ec6-efa5-4a63-bc0f-7ac389e5d049', 4, 6),
       ('54413ec6-efa5-4a63-bc0f-7ac389e5d049', 3, 6),
       ('54413ec6-efa5-4a63-bc0f-7ac389e5d049', 2, 6),
       ('54413ec6-efa5-4a63-bc0f-7ac389e5d049', 1, 6),
       ('54413ec6-efa5-4a63-bc0f-7ac389e5d049', 1, 5),
       ('54413ec6-efa5-4a63-bc0f-7ac389e5d049', 1, 4),
       ('54413ec6-efa5-4a63-bc0f-7ac389e5d049', 1, 3),
       ('54413ec6-efa5-4a63-bc0f-7ac389e5d049', 1, 2),
       ('54413ec6-efa5-4a63-bc0f-7ac389e5d049', 1, 1),
       -- now leave
       ('54413ec6-efa5-4a63-bc0f-7ac389e5d049', 1, 0);
