insert into `healing_collector` (`id`, xml, `level_id`, `init`, `mutated`, `first_faulty_round`)
values
    (
        '7c5e8abb-7092-4d16-91d9-64fdca569e6a',
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
        '00efaabe-cf73-423a-aa26-69c0377d7c23',
        '(this.color) = ("red");\n (this.hair) = ("brown");\n',
        false,
     0
    ),
    (
        '89d8ee0a-b6f7-41d2-a12b-993a6458ed1d',
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
                                <field name="color">pink</field>
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
        '00efaabe-cf73-423a-aa26-69c0377d7c23',
        '(this.color) = ("pink");\n',
        true,
     1
    ),
    (
        '21461edc-0838-451a-ba02-3f78ef8b4122',
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
                                <field name="color">pink</field>
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
        '00efaabe-cf73-423a-aa26-69c0377d7c23',
        '(this.color) = ("red");\n',
        true,
     1
    ),
    (
        '87b84704-892e-4d2a-a7ff-07982f86b254',
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
                                <field name="color">yellow</field>
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
        '00efaabe-cf73-423a-aa26-69c0377d7c23',
        '(this.color) = ("yellow");\n  (this.hair) = ("red");\n',
        true,
     1
    ),
    (
        'f6aea05e-2222-4250-9428-48c4f9e76662',
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
        '00efaabe-cf73-423a-aa26-69c0377d7c23',
        '(this.color) = ("cyan");\n',
        false,
     0),
    (
        '0487242c-3bc0-4770-bbed-f58159fb74ea',
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
        '00efaabe-cf73-423a-aa26-69c0377d7c23',
        '(this.color) = ("red");\n (this.hair) = ("brown");\n',
        true,
     1),
    (
        'bb66cfe3-0614-4527-8f58-51b84e18c718',
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
        '00efaabe-cf73-423a-aa26-69c0377d7c23',
        '(this.color) = ("pink");\n',
        true,
     4),
    (
        '224dbe15-7a11-40f4-b963-d06458893279',
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
        '00efaabe-cf73-423a-aa26-69c0377d7c23',
        '(this.color) = ("orange");\n (this.hair) = ("black");\n',
        true,
     1),
    (
        '42a4b23e-4652-4df9-b561-14f7462078cf',
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
                            <field name="NUM">0</field>
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
        '00efaabe-cf73-423a-aa26-69c0377d7c23',
        '(this.color) = ("red");\n',
        true,
     1),
    (
        '02585967-1a47-453b-8fba-e5437790a056',
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
        '00efaabe-cf73-423a-aa26-69c0377d7c23',
        '(this.color) = ("red");\n',
        false,
     0
    );


insert into `codes_per_bush` (`healing_collector_id`, `code`, `bush_type`)
values ('7c5e8abb-7092-4d16-91d9-64fdca569e6a',
        'if ((this.color) == "red") { \r\n this.redBerryCount = this.redBerryCount + 1;\r\n}',
        'RED'),
       ('7c5e8abb-7092-4d16-91d9-64fdca569e6a',
        'if ((this.color) !== "red") { \r\n this.pinkBerryCount = this.pinkBerryCount + 2;\r\n}',
        'PINK');

insert into `codes_per_bush` (`healing_collector_id`, `code`, `bush_type`)
values ('89d8ee0a-b6f7-41d2-a12b-993a6458ed1d',
        'if ((this.color) == "pink" ) { \r\n this.redBerryCount = this.redBerryCount + 1;\r\n}',
        'RED'),
       ('89d8ee0a-b6f7-41d2-a12b-993a6458ed1d',
        'if ((this.color) !== "pink" ) { \r\n this.pinkBerryCount = this.pinkBerryCount + 2;\r\n}',
        'PINK');

insert into `codes_per_bush` (`healing_collector_id`, `code`, `bush_type`)
values ('21461edc-0838-451a-ba02-3f78ef8b4122',
        'if ((this.color) == "pink") { \r\n this.redBerryCount = this.redBerryCount + 1;\r\n}',
        'RED'),
       ('21461edc-0838-451a-ba02-3f78ef8b4122',
        'if ((this.color) !== "pink") { \r\n this.pinkBerryCount = this.pinkBerryCount + 2;\r\n}',
        'PINK');

insert into `codes_per_bush` (`healing_collector_id`, `code`, `bush_type`)
values ('87b84704-892e-4d2a-a7ff-07982f86b254',
        'if ((this.color) == "yellow") { \r\n this.redBerryCount = this.redBerryCount + 1;\r\n}',
        'RED'),
       ('87b84704-892e-4d2a-a7ff-07982f86b254',
        'if ((this.color) !== "yellow") { \r\n this.pinkBerryCount = this.pinkBerryCount + 2;\r\n}',
        'PINK');

insert into `codes_per_bush` (`healing_collector_id`, `code`, `bush_type`)
values ('f6aea05e-2222-4250-9428-48c4f9e76662',
        'if ((this.color) == "red") { \r\n this.redBerryCount = this.redBerryCount + 1;\r\n}',
        'RED'),
       ('f6aea05e-2222-4250-9428-48c4f9e76662',
        'if ((this.color) !== "red") { \r\n this.pinkBerryCount = this.pinkBerryCount + 2;\r\n} ',
        'PINK');

insert into `codes_per_bush` (`healing_collector_id`, `code`, `bush_type`)
values ('0487242c-3bc0-4770-bbed-f58159fb74ea',
        'if ((this.color) == "red") { \r\n this.redBerryCount = this.redBerryCount + 2;\r\n}',
        'RED'),
       ('0487242c-3bc0-4770-bbed-f58159fb74ea',
        'if ((this.color) !== "red") { \r\n this.pinkBerryCount = this.pinkBerryCount + 2;\r\n}',
        'PINK');

insert into `codes_per_bush` (`healing_collector_id`, `code`, `bush_type`)
values ('bb66cfe3-0614-4527-8f58-51b84e18c718',
        'if ((this.color) == "red") { \r\n this.redBerryCount = this.redBerryCount + 1;\r\n}',
        'RED'),
       ('bb66cfe3-0614-4527-8f58-51b84e18c718',
        'if ((this.color) !== "red") { \r\n this.pinkBerryCount = this.pinkBerryCount + 2;\r\n}',
        'PINK');

insert into `codes_per_bush` (`healing_collector_id`, `code`, `bush_type`)
values ('224dbe15-7a11-40f4-b963-d06458893279',
        'if ((this.color) == "red") { \r\n this.redBerryCount = this.redBerryCount + 1;\r\n}',
        'RED'),
       ('224dbe15-7a11-40f4-b963-d06458893279',
        'if ((this.color) !== "red") { \r\n this.pinkBerryCount = this.pinkBerryCount + 3;\r\n}',
        'PINK');

insert into `codes_per_bush` (`healing_collector_id`, `code`, `bush_type`)
values ('42a4b23e-4652-4df9-b561-14f7462078cf',
        'if ((this.color) == "red") { \r\n this.redBerryCount = this.redBerryCount + 0;\r\n}',
        'RED'),
       ('42a4b23e-4652-4df9-b561-14f7462078cf',
        'if ((this.color) !== "red") { \r\n this.pinkBerryCount = this.pinkBerryCount + 2;\r\n}',
        'PINK');

insert into `codes_per_bush` (`healing_collector_id`, `code`, `bush_type`)
values ('02585967-1a47-453b-8fba-e5437790a056',
        'if ((this.color) == "red") { \r\n this.redBerryCount = this.redBerryCount + 1;\r\n}',
        'RED'),
       ('02585967-1a47-453b-8fba-e5437790a056',
        'if ((this.color) !== "red") { \r\n this.pinkBerryCount = this.pinkBerryCount + 2;\r\n}',
        'PINK');

/*pathlist for level 4 */;
insert into `path_list` (`healing_collector_id`, `x`, `y`)
values ('7c5e8abb-7092-4d16-91d9-64fdca569e6a', 3, 0),
       ('7c5e8abb-7092-4d16-91d9-64fdca569e6a', 3, 1),
       ('7c5e8abb-7092-4d16-91d9-64fdca569e6a', 4, 1),
       ('7c5e8abb-7092-4d16-91d9-64fdca569e6a', 5, 1),
       ('7c5e8abb-7092-4d16-91d9-64fdca569e6a', 5, 2),
       ('7c5e8abb-7092-4d16-91d9-64fdca569e6a', 5, 3),
       ('7c5e8abb-7092-4d16-91d9-64fdca569e6a', 5, 4),
       ('7c5e8abb-7092-4d16-91d9-64fdca569e6a', 5, 5),
       ('7c5e8abb-7092-4d16-91d9-64fdca569e6a', 5, 6),
       ('7c5e8abb-7092-4d16-91d9-64fdca569e6a', 4, 6),
       ('7c5e8abb-7092-4d16-91d9-64fdca569e6a', 3, 6),
       ('7c5e8abb-7092-4d16-91d9-64fdca569e6a', 2, 6),
       ('7c5e8abb-7092-4d16-91d9-64fdca569e6a', 1, 6),
       ('7c5e8abb-7092-4d16-91d9-64fdca569e6a', 0, 6),
       ('7c5e8abb-7092-4d16-91d9-64fdca569e6a', 0, 5),
       ('7c5e8abb-7092-4d16-91d9-64fdca569e6a', 0, 4),
       ('7c5e8abb-7092-4d16-91d9-64fdca569e6a', 0, 3),
       ('7c5e8abb-7092-4d16-91d9-64fdca569e6a', 1, 3),
       ('7c5e8abb-7092-4d16-91d9-64fdca569e6a', 1, 2),
       ('7c5e8abb-7092-4d16-91d9-64fdca569e6a', 1, 1),
       ('7c5e8abb-7092-4d16-91d9-64fdca569e6a', 2, 1),
       ('7c5e8abb-7092-4d16-91d9-64fdca569e6a', 3, 1),
       -- round two
       ('7c5e8abb-7092-4d16-91d9-64fdca569e6a', 4, 1),
       ('7c5e8abb-7092-4d16-91d9-64fdca569e6a', 5, 1),
       ('7c5e8abb-7092-4d16-91d9-64fdca569e6a', 5, 2),
       ('7c5e8abb-7092-4d16-91d9-64fdca569e6a', 5, 3),
       ('7c5e8abb-7092-4d16-91d9-64fdca569e6a', 5, 4),
       ('7c5e8abb-7092-4d16-91d9-64fdca569e6a', 5, 5),
       ('7c5e8abb-7092-4d16-91d9-64fdca569e6a', 5, 6),
       ('7c5e8abb-7092-4d16-91d9-64fdca569e6a', 4, 6),
       ('7c5e8abb-7092-4d16-91d9-64fdca569e6a', 3, 6),
       ('7c5e8abb-7092-4d16-91d9-64fdca569e6a', 2, 6),
       ('7c5e8abb-7092-4d16-91d9-64fdca569e6a', 1, 6),
       ('7c5e8abb-7092-4d16-91d9-64fdca569e6a', 0, 6),
       ('7c5e8abb-7092-4d16-91d9-64fdca569e6a', 0, 5),
       ('7c5e8abb-7092-4d16-91d9-64fdca569e6a', 0, 4),
       ('7c5e8abb-7092-4d16-91d9-64fdca569e6a', 0, 3),
       ('7c5e8abb-7092-4d16-91d9-64fdca569e6a', 1, 3),
       ('7c5e8abb-7092-4d16-91d9-64fdca569e6a', 1, 2),
       ('7c5e8abb-7092-4d16-91d9-64fdca569e6a', 1, 1),
       ('7c5e8abb-7092-4d16-91d9-64fdca569e6a', 2, 1),
       ('7c5e8abb-7092-4d16-91d9-64fdca569e6a', 3, 1),
       -- now round three:
       ('7c5e8abb-7092-4d16-91d9-64fdca569e6a', 4, 1),
       ('7c5e8abb-7092-4d16-91d9-64fdca569e6a', 5, 1),
       ('7c5e8abb-7092-4d16-91d9-64fdca569e6a', 5, 2),
       ('7c5e8abb-7092-4d16-91d9-64fdca569e6a', 5, 3),
       ('7c5e8abb-7092-4d16-91d9-64fdca569e6a', 5, 4),
       ('7c5e8abb-7092-4d16-91d9-64fdca569e6a', 5, 5),
       ('7c5e8abb-7092-4d16-91d9-64fdca569e6a', 5, 6),
       ('7c5e8abb-7092-4d16-91d9-64fdca569e6a', 4, 6),
       ('7c5e8abb-7092-4d16-91d9-64fdca569e6a', 3, 6),
       ('7c5e8abb-7092-4d16-91d9-64fdca569e6a', 2, 6),
       ('7c5e8abb-7092-4d16-91d9-64fdca569e6a', 1, 6),
       ('7c5e8abb-7092-4d16-91d9-64fdca569e6a', 0, 6),
       ('7c5e8abb-7092-4d16-91d9-64fdca569e6a', 0, 5),
       ('7c5e8abb-7092-4d16-91d9-64fdca569e6a', 0, 4),
       ('7c5e8abb-7092-4d16-91d9-64fdca569e6a', 0, 3),
       ('7c5e8abb-7092-4d16-91d9-64fdca569e6a', 1, 3),
       ('7c5e8abb-7092-4d16-91d9-64fdca569e6a', 1, 2),
       ('7c5e8abb-7092-4d16-91d9-64fdca569e6a', 1, 1),
       ('7c5e8abb-7092-4d16-91d9-64fdca569e6a', 2, 1),
       ('7c5e8abb-7092-4d16-91d9-64fdca569e6a', 3, 1),
       -- now leave
       ('7c5e8abb-7092-4d16-91d9-64fdca569e6a', 3, 0),
       -- end first mutant
       -- start second mutant
       ('f6aea05e-2222-4250-9428-48c4f9e76662', 3, 0),
       ('f6aea05e-2222-4250-9428-48c4f9e76662', 3, 1),
       ('f6aea05e-2222-4250-9428-48c4f9e76662', 4, 1),
       ('f6aea05e-2222-4250-9428-48c4f9e76662', 5, 1),
       ('f6aea05e-2222-4250-9428-48c4f9e76662', 5, 2),
       ('f6aea05e-2222-4250-9428-48c4f9e76662', 5, 3),
       ('f6aea05e-2222-4250-9428-48c4f9e76662', 5, 4),
       ('f6aea05e-2222-4250-9428-48c4f9e76662', 4, 4),
       ('f6aea05e-2222-4250-9428-48c4f9e76662', 3, 4),
       ('f6aea05e-2222-4250-9428-48c4f9e76662', 2, 4),
       ('f6aea05e-2222-4250-9428-48c4f9e76662', 2, 5),
       ('f6aea05e-2222-4250-9428-48c4f9e76662', 2, 6),
       ('f6aea05e-2222-4250-9428-48c4f9e76662', 1, 6),
       ('f6aea05e-2222-4250-9428-48c4f9e76662', 0, 6),
       ('f6aea05e-2222-4250-9428-48c4f9e76662', 0, 5),
       ('f6aea05e-2222-4250-9428-48c4f9e76662', 0, 4),
       ('f6aea05e-2222-4250-9428-48c4f9e76662', 0, 3),
       ('f6aea05e-2222-4250-9428-48c4f9e76662', 1, 3),
       ('f6aea05e-2222-4250-9428-48c4f9e76662', 1, 2),
       ('f6aea05e-2222-4250-9428-48c4f9e76662', 1, 1),
       ('f6aea05e-2222-4250-9428-48c4f9e76662', 2, 1),
       ('f6aea05e-2222-4250-9428-48c4f9e76662', 3, 1),
       -- round two
       ('f6aea05e-2222-4250-9428-48c4f9e76662', 4, 1),
       ('f6aea05e-2222-4250-9428-48c4f9e76662', 5, 1),
       ('f6aea05e-2222-4250-9428-48c4f9e76662', 5, 2),
       ('f6aea05e-2222-4250-9428-48c4f9e76662', 5, 3),
       ('f6aea05e-2222-4250-9428-48c4f9e76662', 5, 4),
       ('f6aea05e-2222-4250-9428-48c4f9e76662', 4, 4),
       ('f6aea05e-2222-4250-9428-48c4f9e76662', 3, 4),
       ('f6aea05e-2222-4250-9428-48c4f9e76662', 2, 4),
       ('f6aea05e-2222-4250-9428-48c4f9e76662', 2, 5),
       ('f6aea05e-2222-4250-9428-48c4f9e76662', 2, 6),
       ('f6aea05e-2222-4250-9428-48c4f9e76662', 1, 6),
       ('f6aea05e-2222-4250-9428-48c4f9e76662', 0, 6),
       ('f6aea05e-2222-4250-9428-48c4f9e76662', 0, 5),
       ('f6aea05e-2222-4250-9428-48c4f9e76662', 0, 4),
       ('f6aea05e-2222-4250-9428-48c4f9e76662', 0, 3),
       ('f6aea05e-2222-4250-9428-48c4f9e76662', 1, 3),
       ('f6aea05e-2222-4250-9428-48c4f9e76662', 1, 2),
       ('f6aea05e-2222-4250-9428-48c4f9e76662', 1, 1),
       ('f6aea05e-2222-4250-9428-48c4f9e76662', 2, 1),
       ('f6aea05e-2222-4250-9428-48c4f9e76662', 3, 1),
       -- now round three:
       ('f6aea05e-2222-4250-9428-48c4f9e76662', 4, 1),
       ('f6aea05e-2222-4250-9428-48c4f9e76662', 5, 1),
       ('f6aea05e-2222-4250-9428-48c4f9e76662', 5, 2),
       ('f6aea05e-2222-4250-9428-48c4f9e76662', 5, 3),
       ('f6aea05e-2222-4250-9428-48c4f9e76662', 5, 4),
       ('f6aea05e-2222-4250-9428-48c4f9e76662', 4, 4),
       ('f6aea05e-2222-4250-9428-48c4f9e76662', 3, 4),
       ('f6aea05e-2222-4250-9428-48c4f9e76662', 2, 4),
       ('f6aea05e-2222-4250-9428-48c4f9e76662', 2, 5),
       ('f6aea05e-2222-4250-9428-48c4f9e76662', 2, 6),
       ('f6aea05e-2222-4250-9428-48c4f9e76662', 1, 6),
       ('f6aea05e-2222-4250-9428-48c4f9e76662', 0, 6),
       ('f6aea05e-2222-4250-9428-48c4f9e76662', 0, 5),
       ('f6aea05e-2222-4250-9428-48c4f9e76662', 0, 4),
       ('f6aea05e-2222-4250-9428-48c4f9e76662', 0, 3),
       ('f6aea05e-2222-4250-9428-48c4f9e76662', 1, 3),
       ('f6aea05e-2222-4250-9428-48c4f9e76662', 1, 2),
       ('f6aea05e-2222-4250-9428-48c4f9e76662', 1, 1),
       ('f6aea05e-2222-4250-9428-48c4f9e76662', 2, 1),
       ('f6aea05e-2222-4250-9428-48c4f9e76662', 3, 1),
       -- now leave
       ('f6aea05e-2222-4250-9428-48c4f9e76662', 3, 0),
       -- end second mutant
       -- start third mutant
       ('89d8ee0a-b6f7-41d2-a12b-993a6458ed1d', 3, 0),
       ('89d8ee0a-b6f7-41d2-a12b-993a6458ed1d', 3, 1),
       ('89d8ee0a-b6f7-41d2-a12b-993a6458ed1d', 4, 1),
       ('89d8ee0a-b6f7-41d2-a12b-993a6458ed1d', 5, 1),
       ('89d8ee0a-b6f7-41d2-a12b-993a6458ed1d', 5, 2),
       ('89d8ee0a-b6f7-41d2-a12b-993a6458ed1d', 5, 3),
       ('89d8ee0a-b6f7-41d2-a12b-993a6458ed1d', 5, 4),
       ('89d8ee0a-b6f7-41d2-a12b-993a6458ed1d', 5, 5),
       ('89d8ee0a-b6f7-41d2-a12b-993a6458ed1d', 5, 6),
       ('89d8ee0a-b6f7-41d2-a12b-993a6458ed1d', 4, 6),
       ('89d8ee0a-b6f7-41d2-a12b-993a6458ed1d', 3, 6),
       ('89d8ee0a-b6f7-41d2-a12b-993a6458ed1d', 2, 6),
       ('89d8ee0a-b6f7-41d2-a12b-993a6458ed1d', 1, 6),
       ('89d8ee0a-b6f7-41d2-a12b-993a6458ed1d', 0, 6),
       ('89d8ee0a-b6f7-41d2-a12b-993a6458ed1d', 0, 5),
       ('89d8ee0a-b6f7-41d2-a12b-993a6458ed1d', 0, 4),
       ('89d8ee0a-b6f7-41d2-a12b-993a6458ed1d', 0, 3),
       ('89d8ee0a-b6f7-41d2-a12b-993a6458ed1d', 1, 3),
       ('89d8ee0a-b6f7-41d2-a12b-993a6458ed1d', 1, 2),
       ('89d8ee0a-b6f7-41d2-a12b-993a6458ed1d', 1, 1),
       ('89d8ee0a-b6f7-41d2-a12b-993a6458ed1d', 2, 1),
       ('89d8ee0a-b6f7-41d2-a12b-993a6458ed1d', 3, 1),
       -- round two
       ('89d8ee0a-b6f7-41d2-a12b-993a6458ed1d', 4, 1),
       ('89d8ee0a-b6f7-41d2-a12b-993a6458ed1d', 5, 1),
       ('89d8ee0a-b6f7-41d2-a12b-993a6458ed1d', 5, 2),
       ('89d8ee0a-b6f7-41d2-a12b-993a6458ed1d', 5, 3),
       ('89d8ee0a-b6f7-41d2-a12b-993a6458ed1d', 5, 4),
       ('89d8ee0a-b6f7-41d2-a12b-993a6458ed1d', 5, 5),
       ('89d8ee0a-b6f7-41d2-a12b-993a6458ed1d', 5, 6),
       ('89d8ee0a-b6f7-41d2-a12b-993a6458ed1d', 4, 6),
       ('89d8ee0a-b6f7-41d2-a12b-993a6458ed1d', 3, 6),
       ('89d8ee0a-b6f7-41d2-a12b-993a6458ed1d', 2, 6),
       ('89d8ee0a-b6f7-41d2-a12b-993a6458ed1d', 1, 6),
       ('89d8ee0a-b6f7-41d2-a12b-993a6458ed1d', 0, 6),
       ('89d8ee0a-b6f7-41d2-a12b-993a6458ed1d', 0, 5),
       ('89d8ee0a-b6f7-41d2-a12b-993a6458ed1d', 0, 4),
       ('89d8ee0a-b6f7-41d2-a12b-993a6458ed1d', 0, 3),
       ('89d8ee0a-b6f7-41d2-a12b-993a6458ed1d', 1, 3),
       ('89d8ee0a-b6f7-41d2-a12b-993a6458ed1d', 1, 2),
       ('89d8ee0a-b6f7-41d2-a12b-993a6458ed1d', 1, 1),
       ('89d8ee0a-b6f7-41d2-a12b-993a6458ed1d', 2, 1),
       ('89d8ee0a-b6f7-41d2-a12b-993a6458ed1d', 3, 1),
       -- round three
       ('89d8ee0a-b6f7-41d2-a12b-993a6458ed1d', 4, 1),
       ('89d8ee0a-b6f7-41d2-a12b-993a6458ed1d', 5, 1),
       ('89d8ee0a-b6f7-41d2-a12b-993a6458ed1d', 5, 2),
       ('89d8ee0a-b6f7-41d2-a12b-993a6458ed1d', 5, 3),
       ('89d8ee0a-b6f7-41d2-a12b-993a6458ed1d', 5, 4),
       ('89d8ee0a-b6f7-41d2-a12b-993a6458ed1d', 5, 5),
       ('89d8ee0a-b6f7-41d2-a12b-993a6458ed1d', 5, 6),
       ('89d8ee0a-b6f7-41d2-a12b-993a6458ed1d', 4, 6),
       ('89d8ee0a-b6f7-41d2-a12b-993a6458ed1d', 3, 6),
       ('89d8ee0a-b6f7-41d2-a12b-993a6458ed1d', 2, 6),
       ('89d8ee0a-b6f7-41d2-a12b-993a6458ed1d', 1, 6),
       ('89d8ee0a-b6f7-41d2-a12b-993a6458ed1d', 0, 6),
       ('89d8ee0a-b6f7-41d2-a12b-993a6458ed1d', 0, 5),
       ('89d8ee0a-b6f7-41d2-a12b-993a6458ed1d', 0, 4),
       ('89d8ee0a-b6f7-41d2-a12b-993a6458ed1d', 0, 3),
       ('89d8ee0a-b6f7-41d2-a12b-993a6458ed1d', 1, 3),
       ('89d8ee0a-b6f7-41d2-a12b-993a6458ed1d', 1, 2),
       ('89d8ee0a-b6f7-41d2-a12b-993a6458ed1d', 1, 1),
       ('89d8ee0a-b6f7-41d2-a12b-993a6458ed1d', 2, 1),
       ('89d8ee0a-b6f7-41d2-a12b-993a6458ed1d', 3, 1),
       -- leave now
       ('89d8ee0a-b6f7-41d2-a12b-993a6458ed1d', 3, 0),
       -- end third mutant
       -- start forth mutant
       ('21461edc-0838-451a-ba02-3f78ef8b4122', 3, 0),
       ('21461edc-0838-451a-ba02-3f78ef8b4122', 3, 1),
       ('21461edc-0838-451a-ba02-3f78ef8b4122', 4, 1),
       ('21461edc-0838-451a-ba02-3f78ef8b4122', 5, 1),
       ('21461edc-0838-451a-ba02-3f78ef8b4122', 5, 2),
       ('21461edc-0838-451a-ba02-3f78ef8b4122', 5, 3),
       ('21461edc-0838-451a-ba02-3f78ef8b4122', 5, 4),
       ('21461edc-0838-451a-ba02-3f78ef8b4122', 4, 4),
       ('21461edc-0838-451a-ba02-3f78ef8b4122', 3, 4),
       ('21461edc-0838-451a-ba02-3f78ef8b4122', 2, 4),
       ('21461edc-0838-451a-ba02-3f78ef8b4122', 2, 5),
       ('21461edc-0838-451a-ba02-3f78ef8b4122', 2, 6),
       ('21461edc-0838-451a-ba02-3f78ef8b4122', 1, 6),
       ('21461edc-0838-451a-ba02-3f78ef8b4122', 0, 6),
       ('21461edc-0838-451a-ba02-3f78ef8b4122', 0, 5),
       ('21461edc-0838-451a-ba02-3f78ef8b4122', 0, 4),
       ('21461edc-0838-451a-ba02-3f78ef8b4122', 0, 3),
       ('21461edc-0838-451a-ba02-3f78ef8b4122', 1, 3),
       ('21461edc-0838-451a-ba02-3f78ef8b4122', 1, 2),
       ('21461edc-0838-451a-ba02-3f78ef8b4122', 1, 1),
       ('21461edc-0838-451a-ba02-3f78ef8b4122', 2, 1),
       ('21461edc-0838-451a-ba02-3f78ef8b4122', 3, 1),
       -- round two
       ('21461edc-0838-451a-ba02-3f78ef8b4122', 4, 1),
       ('21461edc-0838-451a-ba02-3f78ef8b4122', 5, 1),
       ('21461edc-0838-451a-ba02-3f78ef8b4122', 5, 2),
       ('21461edc-0838-451a-ba02-3f78ef8b4122', 5, 3),
       ('21461edc-0838-451a-ba02-3f78ef8b4122', 5, 4),
       ('21461edc-0838-451a-ba02-3f78ef8b4122', 4, 4),
       ('21461edc-0838-451a-ba02-3f78ef8b4122', 3, 4),
       ('21461edc-0838-451a-ba02-3f78ef8b4122', 2, 4),
       ('21461edc-0838-451a-ba02-3f78ef8b4122', 2, 5),
       ('21461edc-0838-451a-ba02-3f78ef8b4122', 2, 6),
       ('21461edc-0838-451a-ba02-3f78ef8b4122', 1, 6),
       ('21461edc-0838-451a-ba02-3f78ef8b4122', 0, 6),
       ('21461edc-0838-451a-ba02-3f78ef8b4122', 0, 5),
       ('21461edc-0838-451a-ba02-3f78ef8b4122', 0, 4),
       ('21461edc-0838-451a-ba02-3f78ef8b4122', 0, 3),
       ('21461edc-0838-451a-ba02-3f78ef8b4122', 1, 3),
       ('21461edc-0838-451a-ba02-3f78ef8b4122', 1, 2),
       ('21461edc-0838-451a-ba02-3f78ef8b4122', 1, 1),
       ('21461edc-0838-451a-ba02-3f78ef8b4122', 2, 1),
       ('21461edc-0838-451a-ba02-3f78ef8b4122', 3, 1),
       -- round three
       ('21461edc-0838-451a-ba02-3f78ef8b4122', 4, 1),
       ('21461edc-0838-451a-ba02-3f78ef8b4122', 5, 1),
       ('21461edc-0838-451a-ba02-3f78ef8b4122', 5, 2),
       ('21461edc-0838-451a-ba02-3f78ef8b4122', 5, 3),
       ('21461edc-0838-451a-ba02-3f78ef8b4122', 5, 4),
       ('21461edc-0838-451a-ba02-3f78ef8b4122', 4, 4),
       ('21461edc-0838-451a-ba02-3f78ef8b4122', 3, 4),
       ('21461edc-0838-451a-ba02-3f78ef8b4122', 2, 4),
       ('21461edc-0838-451a-ba02-3f78ef8b4122', 2, 5),
       ('21461edc-0838-451a-ba02-3f78ef8b4122', 2, 6),
       ('21461edc-0838-451a-ba02-3f78ef8b4122', 1, 6),
       ('21461edc-0838-451a-ba02-3f78ef8b4122', 0, 6),
       ('21461edc-0838-451a-ba02-3f78ef8b4122', 0, 5),
       ('21461edc-0838-451a-ba02-3f78ef8b4122', 0, 4),
       ('21461edc-0838-451a-ba02-3f78ef8b4122', 0, 3),
       ('21461edc-0838-451a-ba02-3f78ef8b4122', 1, 3),
       ('21461edc-0838-451a-ba02-3f78ef8b4122', 1, 2),
       ('21461edc-0838-451a-ba02-3f78ef8b4122', 1, 1),
       ('21461edc-0838-451a-ba02-3f78ef8b4122', 2, 1),
       ('21461edc-0838-451a-ba02-3f78ef8b4122', 3, 1),
       -- leave now
       ('21461edc-0838-451a-ba02-3f78ef8b4122', 3, 0),
       -- end forth mutant
       -- start fifth mutant
       ('87b84704-892e-4d2a-a7ff-07982f86b254', 3, 0),
       ('87b84704-892e-4d2a-a7ff-07982f86b254', 3, 1),
       ('87b84704-892e-4d2a-a7ff-07982f86b254', 4, 1),
       ('87b84704-892e-4d2a-a7ff-07982f86b254', 5, 1),
       ('87b84704-892e-4d2a-a7ff-07982f86b254', 5, 2),
       ('87b84704-892e-4d2a-a7ff-07982f86b254', 5, 3),
       ('87b84704-892e-4d2a-a7ff-07982f86b254', 5, 4),
       ('87b84704-892e-4d2a-a7ff-07982f86b254', 5, 5),
       ('87b84704-892e-4d2a-a7ff-07982f86b254', 5, 6),
       ('87b84704-892e-4d2a-a7ff-07982f86b254', 4, 6),
       ('87b84704-892e-4d2a-a7ff-07982f86b254', 3, 6),
       ('87b84704-892e-4d2a-a7ff-07982f86b254', 2, 6),
       ('87b84704-892e-4d2a-a7ff-07982f86b254', 1, 6),
       ('87b84704-892e-4d2a-a7ff-07982f86b254', 0, 6),
       ('87b84704-892e-4d2a-a7ff-07982f86b254', 0, 5),
       ('87b84704-892e-4d2a-a7ff-07982f86b254', 0, 4),
       ('87b84704-892e-4d2a-a7ff-07982f86b254', 0, 3),
       ('87b84704-892e-4d2a-a7ff-07982f86b254', 1, 3),
       ('87b84704-892e-4d2a-a7ff-07982f86b254', 1, 2),
       ('87b84704-892e-4d2a-a7ff-07982f86b254', 1, 1),
       ('87b84704-892e-4d2a-a7ff-07982f86b254', 2, 1),
       ('87b84704-892e-4d2a-a7ff-07982f86b254', 3, 1),
       -- round two
       ('87b84704-892e-4d2a-a7ff-07982f86b254', 4, 1),
       ('87b84704-892e-4d2a-a7ff-07982f86b254', 5, 1),
       ('87b84704-892e-4d2a-a7ff-07982f86b254', 5, 2),
       ('87b84704-892e-4d2a-a7ff-07982f86b254', 5, 3),
       ('87b84704-892e-4d2a-a7ff-07982f86b254', 5, 4),
       ('87b84704-892e-4d2a-a7ff-07982f86b254', 5, 5),
       ('87b84704-892e-4d2a-a7ff-07982f86b254', 5, 6),
       ('87b84704-892e-4d2a-a7ff-07982f86b254', 4, 6),
       ('87b84704-892e-4d2a-a7ff-07982f86b254', 3, 6),
       ('87b84704-892e-4d2a-a7ff-07982f86b254', 2, 6),
       ('87b84704-892e-4d2a-a7ff-07982f86b254', 1, 6),
       ('87b84704-892e-4d2a-a7ff-07982f86b254', 0, 6),
       ('87b84704-892e-4d2a-a7ff-07982f86b254', 0, 5),
       ('87b84704-892e-4d2a-a7ff-07982f86b254', 0, 4),
       ('87b84704-892e-4d2a-a7ff-07982f86b254', 0, 3),
       ('87b84704-892e-4d2a-a7ff-07982f86b254', 1, 3),
       ('87b84704-892e-4d2a-a7ff-07982f86b254', 1, 2),
       ('87b84704-892e-4d2a-a7ff-07982f86b254', 1, 1),
       ('87b84704-892e-4d2a-a7ff-07982f86b254', 2, 1),
       ('87b84704-892e-4d2a-a7ff-07982f86b254', 3, 1),
       -- round three
       ('87b84704-892e-4d2a-a7ff-07982f86b254', 4, 1),
       ('87b84704-892e-4d2a-a7ff-07982f86b254', 5, 1),
       ('87b84704-892e-4d2a-a7ff-07982f86b254', 5, 2),
       ('87b84704-892e-4d2a-a7ff-07982f86b254', 5, 3),
       ('87b84704-892e-4d2a-a7ff-07982f86b254', 5, 4),
       ('87b84704-892e-4d2a-a7ff-07982f86b254', 5, 5),
       ('87b84704-892e-4d2a-a7ff-07982f86b254', 5, 6),
       ('87b84704-892e-4d2a-a7ff-07982f86b254', 4, 6),
       ('87b84704-892e-4d2a-a7ff-07982f86b254', 3, 6),
       ('87b84704-892e-4d2a-a7ff-07982f86b254', 2, 6),
       ('87b84704-892e-4d2a-a7ff-07982f86b254', 1, 6),
       ('87b84704-892e-4d2a-a7ff-07982f86b254', 0, 6),
       ('87b84704-892e-4d2a-a7ff-07982f86b254', 0, 5),
       ('87b84704-892e-4d2a-a7ff-07982f86b254', 0, 4),
       ('87b84704-892e-4d2a-a7ff-07982f86b254', 0, 3),
       ('87b84704-892e-4d2a-a7ff-07982f86b254', 1, 3),
       ('87b84704-892e-4d2a-a7ff-07982f86b254', 1, 2),
       ('87b84704-892e-4d2a-a7ff-07982f86b254', 1, 1),
       ('87b84704-892e-4d2a-a7ff-07982f86b254', 2, 1),
       ('87b84704-892e-4d2a-a7ff-07982f86b254', 3, 1),
       -- leave now
       ('87b84704-892e-4d2a-a7ff-07982f86b254', 3, 0),
       -- end fifth mutant
       -- start sixth mutant:
       ('0487242c-3bc0-4770-bbed-f58159fb74ea', 3, 0),
       ('0487242c-3bc0-4770-bbed-f58159fb74ea', 3, 1),
       ('0487242c-3bc0-4770-bbed-f58159fb74ea', 4, 1),
       ('0487242c-3bc0-4770-bbed-f58159fb74ea', 5, 1),
       ('0487242c-3bc0-4770-bbed-f58159fb74ea', 5, 2),
       ('0487242c-3bc0-4770-bbed-f58159fb74ea', 5, 3),
       ('0487242c-3bc0-4770-bbed-f58159fb74ea', 5, 4),
       ('0487242c-3bc0-4770-bbed-f58159fb74ea', 5, 5),
       ('0487242c-3bc0-4770-bbed-f58159fb74ea', 5, 6),
       ('0487242c-3bc0-4770-bbed-f58159fb74ea', 4, 6),
       ('0487242c-3bc0-4770-bbed-f58159fb74ea', 3, 6),
       ('0487242c-3bc0-4770-bbed-f58159fb74ea', 2, 6),
       ('0487242c-3bc0-4770-bbed-f58159fb74ea', 1, 6),
       ('0487242c-3bc0-4770-bbed-f58159fb74ea', 0, 6),
       ('0487242c-3bc0-4770-bbed-f58159fb74ea', 0, 5),
       ('0487242c-3bc0-4770-bbed-f58159fb74ea', 0, 4),
       ('0487242c-3bc0-4770-bbed-f58159fb74ea', 0, 3),
       ('0487242c-3bc0-4770-bbed-f58159fb74ea', 1, 3),
       ('0487242c-3bc0-4770-bbed-f58159fb74ea', 1, 2),
       ('0487242c-3bc0-4770-bbed-f58159fb74ea', 1, 1),
       ('0487242c-3bc0-4770-bbed-f58159fb74ea', 2, 1),
       ('0487242c-3bc0-4770-bbed-f58159fb74ea', 3, 1),
       -- round two
       ('0487242c-3bc0-4770-bbed-f58159fb74ea', 4, 1),
       ('0487242c-3bc0-4770-bbed-f58159fb74ea', 5, 1),
       ('0487242c-3bc0-4770-bbed-f58159fb74ea', 5, 2),
       ('0487242c-3bc0-4770-bbed-f58159fb74ea', 5, 3),
       ('0487242c-3bc0-4770-bbed-f58159fb74ea', 5, 4),
       ('0487242c-3bc0-4770-bbed-f58159fb74ea', 5, 5),
       ('0487242c-3bc0-4770-bbed-f58159fb74ea', 5, 6),
       ('0487242c-3bc0-4770-bbed-f58159fb74ea', 4, 6),
       ('0487242c-3bc0-4770-bbed-f58159fb74ea', 3, 6),
       ('0487242c-3bc0-4770-bbed-f58159fb74ea', 2, 6),
       ('0487242c-3bc0-4770-bbed-f58159fb74ea', 1, 6),
       ('0487242c-3bc0-4770-bbed-f58159fb74ea', 0, 6),
       ('0487242c-3bc0-4770-bbed-f58159fb74ea', 0, 5),
       ('0487242c-3bc0-4770-bbed-f58159fb74ea', 0, 4),
       ('0487242c-3bc0-4770-bbed-f58159fb74ea', 0, 3),
       ('0487242c-3bc0-4770-bbed-f58159fb74ea', 1, 3),
       ('0487242c-3bc0-4770-bbed-f58159fb74ea', 1, 2),
       ('0487242c-3bc0-4770-bbed-f58159fb74ea', 1, 1),
       ('0487242c-3bc0-4770-bbed-f58159fb74ea', 2, 1),
       ('0487242c-3bc0-4770-bbed-f58159fb74ea', 3, 1),
       -- now round three:
       ('0487242c-3bc0-4770-bbed-f58159fb74ea', 4, 1),
       ('0487242c-3bc0-4770-bbed-f58159fb74ea', 5, 1),
       ('0487242c-3bc0-4770-bbed-f58159fb74ea', 5, 2),
       ('0487242c-3bc0-4770-bbed-f58159fb74ea', 5, 3),
       ('0487242c-3bc0-4770-bbed-f58159fb74ea', 5, 4),
       ('0487242c-3bc0-4770-bbed-f58159fb74ea', 5, 5),
       ('0487242c-3bc0-4770-bbed-f58159fb74ea', 5, 6),
       ('0487242c-3bc0-4770-bbed-f58159fb74ea', 4, 6),
       ('0487242c-3bc0-4770-bbed-f58159fb74ea', 3, 6),
       ('0487242c-3bc0-4770-bbed-f58159fb74ea', 2, 6),
       ('0487242c-3bc0-4770-bbed-f58159fb74ea', 1, 6),
       ('0487242c-3bc0-4770-bbed-f58159fb74ea', 0, 6),
       ('0487242c-3bc0-4770-bbed-f58159fb74ea', 0, 5),
       ('0487242c-3bc0-4770-bbed-f58159fb74ea', 0, 4),
       ('0487242c-3bc0-4770-bbed-f58159fb74ea', 0, 3),
       ('0487242c-3bc0-4770-bbed-f58159fb74ea', 1, 3),
       ('0487242c-3bc0-4770-bbed-f58159fb74ea', 1, 2),
       ('0487242c-3bc0-4770-bbed-f58159fb74ea', 1, 1),
       ('0487242c-3bc0-4770-bbed-f58159fb74ea', 2, 1),
       ('0487242c-3bc0-4770-bbed-f58159fb74ea', 3, 1),
       -- now leave
       ('0487242c-3bc0-4770-bbed-f58159fb74ea', 3, 0),
       -- end sixth mutant
       -- start seventh mutant:
       ('bb66cfe3-0614-4527-8f58-51b84e18c718', 3, 0),
       ('bb66cfe3-0614-4527-8f58-51b84e18c718', 3, 1),
       ('bb66cfe3-0614-4527-8f58-51b84e18c718', 4, 1),
       ('bb66cfe3-0614-4527-8f58-51b84e18c718', 5, 1),
       ('bb66cfe3-0614-4527-8f58-51b84e18c718', 5, 2),
       ('bb66cfe3-0614-4527-8f58-51b84e18c718', 5, 3),
       ('bb66cfe3-0614-4527-8f58-51b84e18c718', 5, 4),
       ('bb66cfe3-0614-4527-8f58-51b84e18c718', 4, 4),
       ('bb66cfe3-0614-4527-8f58-51b84e18c718', 3, 4),
       ('bb66cfe3-0614-4527-8f58-51b84e18c718', 2, 4),
       ('bb66cfe3-0614-4527-8f58-51b84e18c718', 2, 5),
       ('bb66cfe3-0614-4527-8f58-51b84e18c718', 2, 6),
       ('bb66cfe3-0614-4527-8f58-51b84e18c718', 1, 6),
       ('bb66cfe3-0614-4527-8f58-51b84e18c718', 0, 6),
       ('bb66cfe3-0614-4527-8f58-51b84e18c718', 0, 5),
       ('bb66cfe3-0614-4527-8f58-51b84e18c718', 0, 4),
       ('bb66cfe3-0614-4527-8f58-51b84e18c718', 0, 3),
       ('bb66cfe3-0614-4527-8f58-51b84e18c718', 1, 3),
       ('bb66cfe3-0614-4527-8f58-51b84e18c718', 1, 2),
       ('bb66cfe3-0614-4527-8f58-51b84e18c718', 1, 1),
       ('bb66cfe3-0614-4527-8f58-51b84e18c718', 2, 1),
       ('bb66cfe3-0614-4527-8f58-51b84e18c718', 3, 1),
       -- round two
       ('bb66cfe3-0614-4527-8f58-51b84e18c718', 4, 1),
       ('bb66cfe3-0614-4527-8f58-51b84e18c718', 5, 1),
       ('bb66cfe3-0614-4527-8f58-51b84e18c718', 5, 2),
       ('bb66cfe3-0614-4527-8f58-51b84e18c718', 5, 3),
       ('bb66cfe3-0614-4527-8f58-51b84e18c718', 5, 4),
       ('bb66cfe3-0614-4527-8f58-51b84e18c718', 4, 4),
       ('bb66cfe3-0614-4527-8f58-51b84e18c718', 3, 4),
       ('bb66cfe3-0614-4527-8f58-51b84e18c718', 2, 4),
       ('bb66cfe3-0614-4527-8f58-51b84e18c718', 2, 5),
       ('bb66cfe3-0614-4527-8f58-51b84e18c718', 2, 6),
       ('bb66cfe3-0614-4527-8f58-51b84e18c718', 1, 6),
       ('bb66cfe3-0614-4527-8f58-51b84e18c718', 0, 6),
       ('bb66cfe3-0614-4527-8f58-51b84e18c718', 0, 5),
       ('bb66cfe3-0614-4527-8f58-51b84e18c718', 0, 4),
       ('bb66cfe3-0614-4527-8f58-51b84e18c718', 0, 3),
       ('bb66cfe3-0614-4527-8f58-51b84e18c718', 1, 3),
       ('bb66cfe3-0614-4527-8f58-51b84e18c718', 1, 2),
       ('bb66cfe3-0614-4527-8f58-51b84e18c718', 1, 1),
       ('bb66cfe3-0614-4527-8f58-51b84e18c718', 2, 1),
       ('bb66cfe3-0614-4527-8f58-51b84e18c718', 3, 1),
       -- round three
       ('bb66cfe3-0614-4527-8f58-51b84e18c718', 4, 1),
       ('bb66cfe3-0614-4527-8f58-51b84e18c718', 5, 1),
       ('bb66cfe3-0614-4527-8f58-51b84e18c718', 5, 2),
       ('bb66cfe3-0614-4527-8f58-51b84e18c718', 5, 3),
       ('bb66cfe3-0614-4527-8f58-51b84e18c718', 5, 4),
       ('bb66cfe3-0614-4527-8f58-51b84e18c718', 4, 4),
       ('bb66cfe3-0614-4527-8f58-51b84e18c718', 3, 4),
       ('bb66cfe3-0614-4527-8f58-51b84e18c718', 2, 4),
       ('bb66cfe3-0614-4527-8f58-51b84e18c718', 2, 5),
       ('bb66cfe3-0614-4527-8f58-51b84e18c718', 2, 6),
       ('bb66cfe3-0614-4527-8f58-51b84e18c718', 1, 6),
       ('bb66cfe3-0614-4527-8f58-51b84e18c718', 0, 6),
       ('bb66cfe3-0614-4527-8f58-51b84e18c718', 0, 5),
       ('bb66cfe3-0614-4527-8f58-51b84e18c718', 0, 4),
       ('bb66cfe3-0614-4527-8f58-51b84e18c718', 0, 3),
       ('bb66cfe3-0614-4527-8f58-51b84e18c718', 1, 3),
       ('bb66cfe3-0614-4527-8f58-51b84e18c718', 1, 2),
       ('bb66cfe3-0614-4527-8f58-51b84e18c718', 1, 1),
       ('bb66cfe3-0614-4527-8f58-51b84e18c718', 2, 1),
       ('bb66cfe3-0614-4527-8f58-51b84e18c718', 3, 1),
       -- round four
       ('bb66cfe3-0614-4527-8f58-51b84e18c718', 4, 1),
       ('bb66cfe3-0614-4527-8f58-51b84e18c718', 5, 1),
       ('bb66cfe3-0614-4527-8f58-51b84e18c718', 5, 2),
       ('bb66cfe3-0614-4527-8f58-51b84e18c718', 5, 3),
       ('bb66cfe3-0614-4527-8f58-51b84e18c718', 5, 4),
       ('bb66cfe3-0614-4527-8f58-51b84e18c718', 4, 4),
       ('bb66cfe3-0614-4527-8f58-51b84e18c718', 3, 4),
       ('bb66cfe3-0614-4527-8f58-51b84e18c718', 2, 4),
       ('bb66cfe3-0614-4527-8f58-51b84e18c718', 2, 5),
       ('bb66cfe3-0614-4527-8f58-51b84e18c718', 2, 6),
       ('bb66cfe3-0614-4527-8f58-51b84e18c718', 1, 6),
       ('bb66cfe3-0614-4527-8f58-51b84e18c718', 0, 6),
       ('bb66cfe3-0614-4527-8f58-51b84e18c718', 0, 5),
       ('bb66cfe3-0614-4527-8f58-51b84e18c718', 0, 4),
       ('bb66cfe3-0614-4527-8f58-51b84e18c718', 0, 3),
       ('bb66cfe3-0614-4527-8f58-51b84e18c718', 1, 3),
       ('bb66cfe3-0614-4527-8f58-51b84e18c718', 1, 2),
       ('bb66cfe3-0614-4527-8f58-51b84e18c718', 1, 1),
       ('bb66cfe3-0614-4527-8f58-51b84e18c718', 2, 1),
       ('bb66cfe3-0614-4527-8f58-51b84e18c718', 3, 1),
       -- now leave
       ('bb66cfe3-0614-4527-8f58-51b84e18c718', 3, 0),
       -- end seventh mutant
       -- start eights mutant:
       ('224dbe15-7a11-40f4-b963-d06458893279', 3, 0),
       ('224dbe15-7a11-40f4-b963-d06458893279', 3, 1),
       ('224dbe15-7a11-40f4-b963-d06458893279', 4, 1),
       ('224dbe15-7a11-40f4-b963-d06458893279', 5, 1),
       ('224dbe15-7a11-40f4-b963-d06458893279', 5, 2),
       ('224dbe15-7a11-40f4-b963-d06458893279', 5, 3),
       ('224dbe15-7a11-40f4-b963-d06458893279', 5, 4),
       ('224dbe15-7a11-40f4-b963-d06458893279', 4, 4),
       ('224dbe15-7a11-40f4-b963-d06458893279', 3, 4),
       ('224dbe15-7a11-40f4-b963-d06458893279', 2, 4),
       ('224dbe15-7a11-40f4-b963-d06458893279', 2, 5),
       ('224dbe15-7a11-40f4-b963-d06458893279', 2, 6),
       ('224dbe15-7a11-40f4-b963-d06458893279', 1, 6),
       ('224dbe15-7a11-40f4-b963-d06458893279', 0, 6),
       ('224dbe15-7a11-40f4-b963-d06458893279', 0, 5),
       ('224dbe15-7a11-40f4-b963-d06458893279', 0, 4),
       ('224dbe15-7a11-40f4-b963-d06458893279', 0, 3),
       ('224dbe15-7a11-40f4-b963-d06458893279', 1, 3),
       ('224dbe15-7a11-40f4-b963-d06458893279', 1, 2),
       ('224dbe15-7a11-40f4-b963-d06458893279', 1, 1),
       ('224dbe15-7a11-40f4-b963-d06458893279', 2, 1),
       ('224dbe15-7a11-40f4-b963-d06458893279', 3, 1),
       -- round two
       ('224dbe15-7a11-40f4-b963-d06458893279', 4, 1),
       ('224dbe15-7a11-40f4-b963-d06458893279', 5, 1),
       ('224dbe15-7a11-40f4-b963-d06458893279', 5, 2),
       ('224dbe15-7a11-40f4-b963-d06458893279', 5, 3),
       ('224dbe15-7a11-40f4-b963-d06458893279', 5, 4),
       ('224dbe15-7a11-40f4-b963-d06458893279', 4, 4),
       ('224dbe15-7a11-40f4-b963-d06458893279', 3, 4),
       ('224dbe15-7a11-40f4-b963-d06458893279', 2, 4),
       ('224dbe15-7a11-40f4-b963-d06458893279', 2, 5),
       ('224dbe15-7a11-40f4-b963-d06458893279', 2, 6),
       ('224dbe15-7a11-40f4-b963-d06458893279', 1, 6),
       ('224dbe15-7a11-40f4-b963-d06458893279', 0, 6),
       ('224dbe15-7a11-40f4-b963-d06458893279', 0, 5),
       ('224dbe15-7a11-40f4-b963-d06458893279', 0, 4),
       ('224dbe15-7a11-40f4-b963-d06458893279', 0, 3),
       ('224dbe15-7a11-40f4-b963-d06458893279', 1, 3),
       ('224dbe15-7a11-40f4-b963-d06458893279', 1, 2),
       ('224dbe15-7a11-40f4-b963-d06458893279', 1, 1),
       ('224dbe15-7a11-40f4-b963-d06458893279', 2, 1),
       ('224dbe15-7a11-40f4-b963-d06458893279', 3, 1),
       -- now round three:
       ('224dbe15-7a11-40f4-b963-d06458893279', 4, 1),
       ('224dbe15-7a11-40f4-b963-d06458893279', 5, 1),
       ('224dbe15-7a11-40f4-b963-d06458893279', 5, 2),
       ('224dbe15-7a11-40f4-b963-d06458893279', 5, 3),
       ('224dbe15-7a11-40f4-b963-d06458893279', 5, 4),
       ('224dbe15-7a11-40f4-b963-d06458893279', 4, 4),
       ('224dbe15-7a11-40f4-b963-d06458893279', 3, 4),
       ('224dbe15-7a11-40f4-b963-d06458893279', 2, 4),
       ('224dbe15-7a11-40f4-b963-d06458893279', 2, 5),
       ('224dbe15-7a11-40f4-b963-d06458893279', 2, 6),
       ('224dbe15-7a11-40f4-b963-d06458893279', 1, 6),
       ('224dbe15-7a11-40f4-b963-d06458893279', 0, 6),
       ('224dbe15-7a11-40f4-b963-d06458893279', 0, 5),
       ('224dbe15-7a11-40f4-b963-d06458893279', 0, 4),
       ('224dbe15-7a11-40f4-b963-d06458893279', 0, 3),
       ('224dbe15-7a11-40f4-b963-d06458893279', 1, 3),
       ('224dbe15-7a11-40f4-b963-d06458893279', 1, 2),
       ('224dbe15-7a11-40f4-b963-d06458893279', 1, 1),
       ('224dbe15-7a11-40f4-b963-d06458893279', 2, 1),
       ('224dbe15-7a11-40f4-b963-d06458893279', 3, 1),
       -- now leave
       ('224dbe15-7a11-40f4-b963-d06458893279', 3, 0),
       -- end eights mutant
       -- start ninth mutant:
       ('42a4b23e-4652-4df9-b561-14f7462078cf', 3, 0),
       ('42a4b23e-4652-4df9-b561-14f7462078cf', 3, 1),
       ('42a4b23e-4652-4df9-b561-14f7462078cf', 4, 1),
       ('42a4b23e-4652-4df9-b561-14f7462078cf', 5, 1),
       ('42a4b23e-4652-4df9-b561-14f7462078cf', 5, 2),
       ('42a4b23e-4652-4df9-b561-14f7462078cf', 5, 3),
       ('42a4b23e-4652-4df9-b561-14f7462078cf', 5, 4),
       ('42a4b23e-4652-4df9-b561-14f7462078cf', 5, 5),
       ('42a4b23e-4652-4df9-b561-14f7462078cf', 5, 6),
       ('42a4b23e-4652-4df9-b561-14f7462078cf', 4, 6),
       ('42a4b23e-4652-4df9-b561-14f7462078cf', 3, 6),
       ('42a4b23e-4652-4df9-b561-14f7462078cf', 2, 6),
       ('42a4b23e-4652-4df9-b561-14f7462078cf', 1, 6),
       ('42a4b23e-4652-4df9-b561-14f7462078cf', 0, 6),
       ('42a4b23e-4652-4df9-b561-14f7462078cf', 0, 5),
       ('42a4b23e-4652-4df9-b561-14f7462078cf', 0, 4),
       ('42a4b23e-4652-4df9-b561-14f7462078cf', 0, 3),
       ('42a4b23e-4652-4df9-b561-14f7462078cf', 1, 3),
       ('42a4b23e-4652-4df9-b561-14f7462078cf', 1, 2),
       ('42a4b23e-4652-4df9-b561-14f7462078cf', 1, 1),
       ('42a4b23e-4652-4df9-b561-14f7462078cf', 2, 1),
       ('42a4b23e-4652-4df9-b561-14f7462078cf', 3, 1),
       -- round two
       ('42a4b23e-4652-4df9-b561-14f7462078cf', 4, 1),
       ('42a4b23e-4652-4df9-b561-14f7462078cf', 5, 1),
       ('42a4b23e-4652-4df9-b561-14f7462078cf', 5, 2),
       ('42a4b23e-4652-4df9-b561-14f7462078cf', 5, 3),
       ('42a4b23e-4652-4df9-b561-14f7462078cf', 5, 4),
       ('42a4b23e-4652-4df9-b561-14f7462078cf', 5, 5),
       ('42a4b23e-4652-4df9-b561-14f7462078cf', 5, 6),
       ('42a4b23e-4652-4df9-b561-14f7462078cf', 4, 6),
       ('42a4b23e-4652-4df9-b561-14f7462078cf', 3, 6),
       ('42a4b23e-4652-4df9-b561-14f7462078cf', 2, 6),
       ('42a4b23e-4652-4df9-b561-14f7462078cf', 1, 6),
       ('42a4b23e-4652-4df9-b561-14f7462078cf', 0, 6),
       ('42a4b23e-4652-4df9-b561-14f7462078cf', 0, 5),
       ('42a4b23e-4652-4df9-b561-14f7462078cf', 0, 4),
       ('42a4b23e-4652-4df9-b561-14f7462078cf', 0, 3),
       ('42a4b23e-4652-4df9-b561-14f7462078cf', 1, 3),
       ('42a4b23e-4652-4df9-b561-14f7462078cf', 1, 2),
       ('42a4b23e-4652-4df9-b561-14f7462078cf', 1, 1),
       ('42a4b23e-4652-4df9-b561-14f7462078cf', 2, 1),
       ('42a4b23e-4652-4df9-b561-14f7462078cf', 3, 1),
       -- now round three:
       ('42a4b23e-4652-4df9-b561-14f7462078cf', 4, 1),
       ('42a4b23e-4652-4df9-b561-14f7462078cf', 5, 1),
       ('42a4b23e-4652-4df9-b561-14f7462078cf', 5, 2),
       ('42a4b23e-4652-4df9-b561-14f7462078cf', 5, 3),
       ('42a4b23e-4652-4df9-b561-14f7462078cf', 5, 4),
       ('42a4b23e-4652-4df9-b561-14f7462078cf', 5, 5),
       ('42a4b23e-4652-4df9-b561-14f7462078cf', 5, 6),
       ('42a4b23e-4652-4df9-b561-14f7462078cf', 4, 6),
       ('42a4b23e-4652-4df9-b561-14f7462078cf', 3, 6),
       ('42a4b23e-4652-4df9-b561-14f7462078cf', 2, 6),
       ('42a4b23e-4652-4df9-b561-14f7462078cf', 1, 6),
       ('42a4b23e-4652-4df9-b561-14f7462078cf', 0, 6),
       ('42a4b23e-4652-4df9-b561-14f7462078cf', 0, 5),
       ('42a4b23e-4652-4df9-b561-14f7462078cf', 0, 4),
       ('42a4b23e-4652-4df9-b561-14f7462078cf', 0, 3),
       ('42a4b23e-4652-4df9-b561-14f7462078cf', 1, 3),
       ('42a4b23e-4652-4df9-b561-14f7462078cf', 1, 2),
       ('42a4b23e-4652-4df9-b561-14f7462078cf', 1, 1),
       ('42a4b23e-4652-4df9-b561-14f7462078cf', 2, 1),
       ('42a4b23e-4652-4df9-b561-14f7462078cf', 3, 1),
       -- now leave
       ('42a4b23e-4652-4df9-b561-14f7462078cf', 3, 0),
       -- end ninth mutant
       -- start tenth mutant:
       ('02585967-1a47-453b-8fba-e5437790a056', 3, 0),
       ('02585967-1a47-453b-8fba-e5437790a056', 3, 1),
       ('02585967-1a47-453b-8fba-e5437790a056', 4, 1),
       ('02585967-1a47-453b-8fba-e5437790a056', 5, 1),
       ('02585967-1a47-453b-8fba-e5437790a056', 5, 2),
       ('02585967-1a47-453b-8fba-e5437790a056', 5, 3),
       ('02585967-1a47-453b-8fba-e5437790a056', 5, 4),
       ('02585967-1a47-453b-8fba-e5437790a056', 5, 5),
       ('02585967-1a47-453b-8fba-e5437790a056', 5, 6),
       ('02585967-1a47-453b-8fba-e5437790a056', 4, 6),
       ('02585967-1a47-453b-8fba-e5437790a056', 3, 6),
       ('02585967-1a47-453b-8fba-e5437790a056', 2, 6),
       ('02585967-1a47-453b-8fba-e5437790a056', 1, 6),
       ('02585967-1a47-453b-8fba-e5437790a056', 0, 6),
       ('02585967-1a47-453b-8fba-e5437790a056', 0, 5),
       ('02585967-1a47-453b-8fba-e5437790a056', 0, 4),
       ('02585967-1a47-453b-8fba-e5437790a056', 0, 3),
       ('02585967-1a47-453b-8fba-e5437790a056', 1, 3),
       ('02585967-1a47-453b-8fba-e5437790a056', 1, 2),
       ('02585967-1a47-453b-8fba-e5437790a056', 1, 1),
       ('02585967-1a47-453b-8fba-e5437790a056', 2, 1),
       ('02585967-1a47-453b-8fba-e5437790a056', 3, 1),
       -- round two
       ('02585967-1a47-453b-8fba-e5437790a056', 4, 1),
       ('02585967-1a47-453b-8fba-e5437790a056', 5, 1),
       ('02585967-1a47-453b-8fba-e5437790a056', 5, 2),
       ('02585967-1a47-453b-8fba-e5437790a056', 5, 3),
       ('02585967-1a47-453b-8fba-e5437790a056', 5, 4),
       ('02585967-1a47-453b-8fba-e5437790a056', 5, 5),
       ('02585967-1a47-453b-8fba-e5437790a056', 5, 6),
       ('02585967-1a47-453b-8fba-e5437790a056', 4, 6),
       ('02585967-1a47-453b-8fba-e5437790a056', 3, 6),
       ('02585967-1a47-453b-8fba-e5437790a056', 2, 6),
       ('02585967-1a47-453b-8fba-e5437790a056', 1, 6),
       ('02585967-1a47-453b-8fba-e5437790a056', 0, 6),
       ('02585967-1a47-453b-8fba-e5437790a056', 0, 5),
       ('02585967-1a47-453b-8fba-e5437790a056', 0, 4),
       ('02585967-1a47-453b-8fba-e5437790a056', 0, 3),
       ('02585967-1a47-453b-8fba-e5437790a056', 1, 3),
       ('02585967-1a47-453b-8fba-e5437790a056', 1, 2),
       ('02585967-1a47-453b-8fba-e5437790a056', 1, 1),
       ('02585967-1a47-453b-8fba-e5437790a056', 2, 1),
       ('02585967-1a47-453b-8fba-e5437790a056', 3, 1),
       -- now round three:
       ('02585967-1a47-453b-8fba-e5437790a056', 4, 1),
       ('02585967-1a47-453b-8fba-e5437790a056', 5, 1),
       ('02585967-1a47-453b-8fba-e5437790a056', 5, 2),
       ('02585967-1a47-453b-8fba-e5437790a056', 5, 3),
       ('02585967-1a47-453b-8fba-e5437790a056', 5, 4),
       ('02585967-1a47-453b-8fba-e5437790a056', 5, 5),
       ('02585967-1a47-453b-8fba-e5437790a056', 5, 6),
       ('02585967-1a47-453b-8fba-e5437790a056', 4, 6),
       ('02585967-1a47-453b-8fba-e5437790a056', 3, 6),
       ('02585967-1a47-453b-8fba-e5437790a056', 2, 6),
       ('02585967-1a47-453b-8fba-e5437790a056', 1, 6),
       ('02585967-1a47-453b-8fba-e5437790a056', 0, 6),
       ('02585967-1a47-453b-8fba-e5437790a056', 0, 5),
       ('02585967-1a47-453b-8fba-e5437790a056', 0, 4),
       ('02585967-1a47-453b-8fba-e5437790a056', 0, 3),
       ('02585967-1a47-453b-8fba-e5437790a056', 1, 3),
       ('02585967-1a47-453b-8fba-e5437790a056', 1, 2),
       ('02585967-1a47-453b-8fba-e5437790a056', 1, 1),
       ('02585967-1a47-453b-8fba-e5437790a056', 2, 1),
       ('02585967-1a47-453b-8fba-e5437790a056', 3, 1),
       -- now leave
       ('02585967-1a47-453b-8fba-e5437790a056', 3, 0);
       -- end tenth mutant

