insert into `healing_collector` (`id`, `xml`, `level_id`, `init`, `mutated`, `first_faulty_round`)
values
    (
        'a07ea653-0c6a-45d4-a296-5c1c20b01ea1',
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
        </xml>',
        '50069dd5-bead-49e8-8936-498e9436d72f',
        '(this.color) = ("green");\n (this.hair) = ("brown");\n',
        false,
     0
    ),
    (
        'b0f22245-3f26-499f-8adb-2147f5711f9c',
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
        </xml>',
        '50069dd5-bead-49e8-8936-498e9436d72f',
        '(this.color) = ("blue");\n',
        false,
     0
    ),
    (
        '15926a24-75f3-405d-a138-2f19aa5ca4e1',
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
        </xml>',
        '50069dd5-bead-49e8-8936-498e9436d72f',
        '(this.color) = ("pink");\n',
        false,
     0
    ),
    (
        'ee7d2ecb-cb8c-44d8-aa6c-a41f01376ad7',
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
                                <field name="NUM">3</field>
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
        </xml>',
        '50069dd5-bead-49e8-8936-498e9436d72f',
        '(this.color) = ("green");\n (this.hair) = ("brown");\n',
        true,
     2
    ),
    (
        '5f289b86-811e-4e69-a56e-4a1f6899fd45',
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
        </xml>',
        '50069dd5-bead-49e8-8936-498e9436d72f',
        '(this.color) = ("blue");\n',
        true,
     4
    ),
    (
        '69eeac8c-6cca-421c-bbfc-dbd5a0408463',
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
                                <field name="NUM">3</field>
                            </block>
                        </value>
                    </block>
                </statement>
            </block>
        </statement>
            </block>
        </xml>',
        '50069dd5-bead-49e8-8936-498e9436d72f',
        '(this.color) = ("pink");\n',
        true,
     1
    ),
    (
        'e4779687-1cc0-4a29-9154-47d1bab27670',
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
        '50069dd5-bead-49e8-8936-498e9436d72f',
        '(this.color) = ("yellow");\n (this.hair) = ("black");\n',
        true,
     2
    ),
    (
        'd25030d5-e9a9-4cda-a146-6f7c50c9bd4d',
        '<xml xmlns="https://developers.google.com/blockly/xml">
    <block type="controls_whileUntil" id="c%ws#H+;[H$U,JxOv1`(" x="141" y="277">
        <field name="MODE">WHILE</field>
        <value name="BOOL">
            <block type="logic_compare" id="KtkdKiqTzM3s2%4~NYEi">
                <field name="OP">LTE</field>
                <value name="A">
                    <block type="properties_user_healing" id="k}dr(ZTiuCl}ndTT9G^F1">
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
                            <block type="properties_user_healing" id="k}dr(ZTiuCl}ndTT9G^F2">
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
                    <block type="set_berries" id="OLQ=1JUp%13WuB`CCNRp1" x="42" y="139">
                        <value name="value1">
                            <block type="bush_properties" id="k}dr(ZTiuCl}ndTT9G^F3">
                                <field name="properties">WHITEBERRIES</field>
                            </block>
                        </value>
                        <value name="value2">
                            <block type="math_number" id="Eem[Vxht-;;+ILj@@lxp1" x="263" y="113">
                                <field name="NUM">1</field>
                            </block>
                        </value>
                    </block>
                </statement>
                <statement name="ELSE">
                    <block type="set_berries" id="OLQ=1JUp%13WuB`CCNRp2" x="42" y="139">
                        <value name="value1">
                            <block type="bush_properties" id="k}dr(ZTiuCl}ndTT9G^F4">
                                <field name="properties">WHITEBERRIES</field>
                            </block>
                        </value>
                        <value name="value2">
                            <block type="math_number" id="Eem[Vxht-;;+ILj@@lxp2" x="263" y="113">
                                <field name="NUM">1</field>
                            </block>
                        </value>
                        <next>
                            <block type="set_berries" id=";n6mFyca/9!Hq}AS:N,01" x="42" y="139">
                                <value name="value1">
                                    <block type="bush_properties" id="-0cX98-39lN$x}wmU~q=1">
                                        <field name="properties">ORANGEBERRIES</field>
                                    </block>
                                </value>
                                <value name="value2">
                                    <block type="math_number" id="Eem[Vxht-;;+ILj@@lxp3" x="263" y="113">
                                        <field name="NUM">2</field>
                                    </block>
                                </value>
                            </block>
                        </next>
                    </block>
                </statement>
            </block>
        </statement>
    </block>
</xml>
',
        '50069dd5-bead-49e8-8936-498e9436d72f',
        '(this.color) = ("white");\n',
        true,
     1
    ),
    (
        'f4dbb417-8653-4f5e-b9a3-e66dce36c254',
        '<xml xmlns="https://developers.google.com/blockly/xml">
    <block type="controls_whileUntil" id="c%ws#H+;[H$U,JxOv1`(" x="141" y="277">
        <field name="MODE">WHILE</field>
        <value name="BOOL">
            <block type="logic_compare" id="KtkdKiqTzM3s2%4~NYEi">
                <field name="OP">LTE</field>
                <value name="A">
                    <block type="properties_user_healing" id="k}dr(ZTiuCl}ndTT9G^F1">
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
                            <block type="properties_user_healing" id="k}dr(ZTiuCl}ndTT9G^F2">
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
                    <block type="set_berries" id="OLQ=1JUp%13WuB`CCNRp1" x="42" y="139">
                        <value name="value1">
                            <block type="bush_properties" id="k}dr(ZTiuCl}ndTT9G^F3">
                                <field name="properties">WHITEBERRIES</field>
                            </block>
                        </value>
                        <value name="value2">
                            <block type="math_number" id="Eem[Vxht-;;+ILj@@lxp1" x="263" y="113">
                                <field name="NUM">1</field>
                            </block>
                        </value>
                        <next>
                            <block type="set_berries" id=";n6mFyca/9!Hq}AS:N,01" x="42" y="139">
                                <value name="value1">
                                    <block type="bush_properties" id="-0cX98-39lN$x}wmU~q=1">
                                        <field name="properties">ORANGEBERRIES</field>
                                    </block>
                                </value>
                                <value name="value2">
                                    <block type="math_number" id="Eem[Vxht-;;+ILj@@lxp2" x="263" y="113">
                                        <field name="NUM">2</field>
                                    </block>
                                </value>
                            </block>
                        </next>
                    </block>
                </statement>
                <statement name="ELSE">
                    <block type="set_berries" id="OLQ=1JUp%13WuB`CCNRp2" x="42" y="139">
                        <value name="value1">
                            <block type="bush_properties" id="k}dr(ZTiuCl}ndTT9G^F4">
                                <field name="properties">ORANGEBERRIES</field>
                            </block>
                        </value>
                        <value name="value2">
                            <block type="math_number" id="Eem[Vxht-;;+ILj@@lxp3" x="263" y="113">
                                <field name="NUM">2</field>
                            </block>
                        </value>
                    </block>
                </statement>
            </block>
        </statement>
    </block>
</xml>',
        '50069dd5-bead-49e8-8936-498e9436d72f',
        '(this.color) = ("green");\n',
        true,
     2
    ),
    (
        '0e9143ff-3713-4e93-a0ce-2a8ce0075875',
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
                        <field name="OP">LTE</field>
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
        </xml>',
        '50069dd5-bead-49e8-8936-498e9436d72f',
        '(this.color) = ("white");\n',
        true,
     1
    );



insert into `codes_per_bush` (`healing_collector_id`, `code`, `bush_type`)
values ('a07ea653-0c6a-45d4-a296-5c1c20b01ea1',
        'if ((this.orangeBerryCount) < 2) { \r\n this.orangeBerryCount = this.orangeBerryCount + 2;\r\n}',
        'ORANGE'),
       ('a07ea653-0c6a-45d4-a296-5c1c20b01ea1',
        'if ((this.orangeBerryCount) >= 2) { \r\n this.whiteBerryCount = this.whiteBerryCount + 1;\r\n}',
        'WHITE');


insert into `codes_per_bush` (`healing_collector_id`, `code`, `bush_type`)
values ('b0f22245-3f26-499f-8adb-2147f5711f9c',
        'if ((this.orangeBerryCount) < 2) { \r\n this.orangeBerryCount = this.orangeBerryCount + 2;\r\n}',
        'ORANGE'),
       ('b0f22245-3f26-499f-8adb-2147f5711f9c',
        'if ((this.orangeBerryCount) >= 2) { \r\n this.whiteBerryCount = this.whiteBerryCount + 1;\r\n}',
        'WHITE');


insert into `codes_per_bush` (`healing_collector_id`, `code`, `bush_type`)
values ('15926a24-75f3-405d-a138-2f19aa5ca4e1',
        'if ((this.orangeBerryCount) < 2) { \r\n this.orangeBerryCount = this.orangeBerryCount + 2;\r\n}',
        'ORANGE'),
       ('15926a24-75f3-405d-a138-2f19aa5ca4e1',
        'if ((this.orangeBerryCount) >= 2) { \r\n this.whiteBerryCount = this.whiteBerryCount + 1;\r\n}',
        'WHITE');


insert into `codes_per_bush` (`healing_collector_id`, `code`, `bush_type`)
values ('ee7d2ecb-cb8c-44d8-aa6c-a41f01376ad7',
        'if ((this.orangeBerryCount) < 3) { \r\n this.orangeBerryCount = this.orangeBerryCount + 2;\r\n}',
        'ORANGE'),
       ('ee7d2ecb-cb8c-44d8-aa6c-a41f01376ad7',
        'if ((this.orangeBerryCount) >= 3) { \r\n this.whiteBerryCount = this.whiteBerryCount + 1;\r\n}',
        'WHITE');


insert into `codes_per_bush` (`healing_collector_id`, `code`, `bush_type`)
values ('5f289b86-811e-4e69-a56e-4a1f6899fd45',
        'if ((this.orangeBerryCount) < 2) { \r\n this.orangeBerryCount = this.orangeBerryCount + 2;\r\n}',
        'ORANGE'),
       ('5f289b86-811e-4e69-a56e-4a1f6899fd45',
        'if ((this.orangeBerryCount) >= 2) { \r\n this.whiteBerryCount = this.whiteBerryCount + 1;\r\n}',
        'WHITE');


insert into `codes_per_bush` (`healing_collector_id`, `code`, `bush_type`)
values ('69eeac8c-6cca-421c-bbfc-dbd5a0408463',
        'if ((this.orangeBerryCount) < 2) { \r\n this.orangeBerryCount = this.orangeBerryCount + 3;\r\n}',
        'ORANGE'),
       ('69eeac8c-6cca-421c-bbfc-dbd5a0408463',
        'if ((this.orangeBerryCount) >= 2) { \r\n this.whiteBerryCount = this.whiteBerryCount + 1;\r\n}',
        'WHITE');


insert into `codes_per_bush` (`healing_collector_id`, `code`, `bush_type`)
values ('e4779687-1cc0-4a29-9154-47d1bab27670',
        'if ((this.orangeBerryCount) < 2) { \r\n this.orangeBerryCount = this.orangeBerryCount + 2;\r\n}',
        'ORANGE'),
       ('e4779687-1cc0-4a29-9154-47d1bab27670',
        'if ((this.orangeBerryCount) >= 2) { \r\n this.whiteBerryCount = this.whiteBerryCount + 2;\r\n}',
        'WHITE');

insert into `codes_per_bush` (`healing_collector_id`, `code`, `bush_type`)
values ('d25030d5-e9a9-4cda-a146-6f7c50c9bd4d',
        'if ((this.orangeBerryCount) < 2) { \r\n this.orangeBerryCount = this.orangeBerryCount + 2;\r\n}',
        'ORANGE'),
       ('d25030d5-e9a9-4cda-a146-6f7c50c9bd4d',
        'this.whiteBerryCount = this.whiteBerryCount + 1;',
        'WHITE');

insert into `codes_per_bush` (`healing_collector_id`, `code`, `bush_type`)
values ('f4dbb417-8653-4f5e-b9a3-e66dce36c254',
        'this.orangeBerryCount = this.orangeBerryCount + 2;',
        'ORANGE'),
       ('f4dbb417-8653-4f5e-b9a3-e66dce36c254',
        'if ((this.orangeBerryCount) >= 2) { \r\n this.whiteBerryCount = this.whiteBerryCount + 1;\r\n}',
        'WHITE');

insert into `codes_per_bush` (`healing_collector_id`, `code`, `bush_type`)
values ('0e9143ff-3713-4e93-a0ce-2a8ce0075875',
        'if ((this.orangeBerryCount) > 2) { \r\n this.orangeBerryCount = this.orangeBerryCount + 2;\r\n}',
        'ORANGE'),
       ('0e9143ff-3713-4e93-a0ce-2a8ce0075875',
        'if ((this.orangeBerryCount) <= 2) { \r\n this.whiteBerryCount = this.whiteBerryCount + 1;\r\n}',
        'WHITE');


/* pathlist for Level 8*/

insert into `path_list` (`healing_collector_id`, `x`, `y`)
values
    ('a07ea653-0c6a-45d4-a296-5c1c20b01ea1', 2, 0),
    ('a07ea653-0c6a-45d4-a296-5c1c20b01ea1', 2, 1),
    ('a07ea653-0c6a-45d4-a296-5c1c20b01ea1', 3, 1),
       ('a07ea653-0c6a-45d4-a296-5c1c20b01ea1', 4, 1),
       ('a07ea653-0c6a-45d4-a296-5c1c20b01ea1', 4, 2),
       ('a07ea653-0c6a-45d4-a296-5c1c20b01ea1', 4, 3),
    ('a07ea653-0c6a-45d4-a296-5c1c20b01ea1', 5, 3),
    ('a07ea653-0c6a-45d4-a296-5c1c20b01ea1', 5, 4),
       ('a07ea653-0c6a-45d4-a296-5c1c20b01ea1', 6, 4),
       ('a07ea653-0c6a-45d4-a296-5c1c20b01ea1', 6, 5),
       ('a07ea653-0c6a-45d4-a296-5c1c20b01ea1', 6, 6),
       ('a07ea653-0c6a-45d4-a296-5c1c20b01ea1', 6, 7),
       ('a07ea653-0c6a-45d4-a296-5c1c20b01ea1', 5, 7),
       ('a07ea653-0c6a-45d4-a296-5c1c20b01ea1', 4, 7),
       ('a07ea653-0c6a-45d4-a296-5c1c20b01ea1', 3, 7),
       ('a07ea653-0c6a-45d4-a296-5c1c20b01ea1', 2, 7),
       ('a07ea653-0c6a-45d4-a296-5c1c20b01ea1', 1, 7),
       ('a07ea653-0c6a-45d4-a296-5c1c20b01ea1', 1, 6),
       ('a07ea653-0c6a-45d4-a296-5c1c20b01ea1', 1, 5),
       ('a07ea653-0c6a-45d4-a296-5c1c20b01ea1', 1, 4),
       ('a07ea653-0c6a-45d4-a296-5c1c20b01ea1', 1, 3),
       ('a07ea653-0c6a-45d4-a296-5c1c20b01ea1', 1, 2),
       ('a07ea653-0c6a-45d4-a296-5c1c20b01ea1', 1, 1),
       -- round two
    ('a07ea653-0c6a-45d4-a296-5c1c20b01ea1', 2, 1),
    ('a07ea653-0c6a-45d4-a296-5c1c20b01ea1', 3, 1),
    ('a07ea653-0c6a-45d4-a296-5c1c20b01ea1', 4, 1),
    ('a07ea653-0c6a-45d4-a296-5c1c20b01ea1', 4, 2),
    ('a07ea653-0c6a-45d4-a296-5c1c20b01ea1', 4, 3),
    ('a07ea653-0c6a-45d4-a296-5c1c20b01ea1', 4, 4),
    ('a07ea653-0c6a-45d4-a296-5c1c20b01ea1', 5, 4),
    ('a07ea653-0c6a-45d4-a296-5c1c20b01ea1', 6, 4),
    ('a07ea653-0c6a-45d4-a296-5c1c20b01ea1', 6, 5),
    ('a07ea653-0c6a-45d4-a296-5c1c20b01ea1', 6, 6),
    ('a07ea653-0c6a-45d4-a296-5c1c20b01ea1', 6, 7),
    ('a07ea653-0c6a-45d4-a296-5c1c20b01ea1', 5, 7),
    ('a07ea653-0c6a-45d4-a296-5c1c20b01ea1', 4, 7),
    ('a07ea653-0c6a-45d4-a296-5c1c20b01ea1', 3, 7),
    ('a07ea653-0c6a-45d4-a296-5c1c20b01ea1', 2, 7),
    ('a07ea653-0c6a-45d4-a296-5c1c20b01ea1', 1, 7),
    ('a07ea653-0c6a-45d4-a296-5c1c20b01ea1', 1, 6),
    ('a07ea653-0c6a-45d4-a296-5c1c20b01ea1', 1, 5),
    ('a07ea653-0c6a-45d4-a296-5c1c20b01ea1', 1, 4),
    ('a07ea653-0c6a-45d4-a296-5c1c20b01ea1', 1, 3),
    ('a07ea653-0c6a-45d4-a296-5c1c20b01ea1', 1, 2),
    ('a07ea653-0c6a-45d4-a296-5c1c20b01ea1', 1, 1),
       -- now round three
    ('a07ea653-0c6a-45d4-a296-5c1c20b01ea1', 2, 1),
    ('a07ea653-0c6a-45d4-a296-5c1c20b01ea1', 3, 1),
    ('a07ea653-0c6a-45d4-a296-5c1c20b01ea1', 4, 1),
    ('a07ea653-0c6a-45d4-a296-5c1c20b01ea1', 4, 2),
    ('a07ea653-0c6a-45d4-a296-5c1c20b01ea1', 4, 3),
    ('a07ea653-0c6a-45d4-a296-5c1c20b01ea1', 4, 4),
    ('a07ea653-0c6a-45d4-a296-5c1c20b01ea1', 5, 4),
    ('a07ea653-0c6a-45d4-a296-5c1c20b01ea1', 6, 4),
    ('a07ea653-0c6a-45d4-a296-5c1c20b01ea1', 6, 5),
    ('a07ea653-0c6a-45d4-a296-5c1c20b01ea1', 6, 6),
    ('a07ea653-0c6a-45d4-a296-5c1c20b01ea1', 6, 7),
    ('a07ea653-0c6a-45d4-a296-5c1c20b01ea1', 5, 7),
    ('a07ea653-0c6a-45d4-a296-5c1c20b01ea1', 4, 7),
    ('a07ea653-0c6a-45d4-a296-5c1c20b01ea1', 3, 7),
    ('a07ea653-0c6a-45d4-a296-5c1c20b01ea1', 2, 7),
    ('a07ea653-0c6a-45d4-a296-5c1c20b01ea1', 1, 7),
    ('a07ea653-0c6a-45d4-a296-5c1c20b01ea1', 1, 6),
    ('a07ea653-0c6a-45d4-a296-5c1c20b01ea1', 1, 5),
    ('a07ea653-0c6a-45d4-a296-5c1c20b01ea1', 1, 4),
    ('a07ea653-0c6a-45d4-a296-5c1c20b01ea1', 1, 3),
    ('a07ea653-0c6a-45d4-a296-5c1c20b01ea1', 1, 2),
    ('a07ea653-0c6a-45d4-a296-5c1c20b01ea1', 1, 1),
    ('a07ea653-0c6a-45d4-a296-5c1c20b01ea1', 2, 1),
    -- now leave
    ('a07ea653-0c6a-45d4-a296-5c1c20b01ea1', 2, 0),
    -- end first mutant
    -- start second mutant:
    ('b0f22245-3f26-499f-8adb-2147f5711f9c', 2, 0),
    ('b0f22245-3f26-499f-8adb-2147f5711f9c', 2, 1),
    ('b0f22245-3f26-499f-8adb-2147f5711f9c', 3, 1),
    ('b0f22245-3f26-499f-8adb-2147f5711f9c', 4, 1),
    ('b0f22245-3f26-499f-8adb-2147f5711f9c', 4, 2),
    ('b0f22245-3f26-499f-8adb-2147f5711f9c', 4, 3),
    ('b0f22245-3f26-499f-8adb-2147f5711f9c', 5, 3),
    ('b0f22245-3f26-499f-8adb-2147f5711f9c', 5, 4),
    ('b0f22245-3f26-499f-8adb-2147f5711f9c', 6, 4),
    ('b0f22245-3f26-499f-8adb-2147f5711f9c', 6, 5),
    ('b0f22245-3f26-499f-8adb-2147f5711f9c', 6, 6),
    ('b0f22245-3f26-499f-8adb-2147f5711f9c', 6, 7),
    ('b0f22245-3f26-499f-8adb-2147f5711f9c', 5, 7),
    ('b0f22245-3f26-499f-8adb-2147f5711f9c', 4, 7),
    ('b0f22245-3f26-499f-8adb-2147f5711f9c', 3, 7),
    ('b0f22245-3f26-499f-8adb-2147f5711f9c', 2, 7),
    ('b0f22245-3f26-499f-8adb-2147f5711f9c', 1, 7),
    ('b0f22245-3f26-499f-8adb-2147f5711f9c', 1, 6),
    ('b0f22245-3f26-499f-8adb-2147f5711f9c', 1, 5),
    ('b0f22245-3f26-499f-8adb-2147f5711f9c', 1, 4),
    ('b0f22245-3f26-499f-8adb-2147f5711f9c', 1, 3),
    ('b0f22245-3f26-499f-8adb-2147f5711f9c', 1, 2),
    ('b0f22245-3f26-499f-8adb-2147f5711f9c', 1, 1),
       -- round two
    ('b0f22245-3f26-499f-8adb-2147f5711f9c', 2, 1),
    ('b0f22245-3f26-499f-8adb-2147f5711f9c', 3, 1),
    ('b0f22245-3f26-499f-8adb-2147f5711f9c', 4, 1),
    ('b0f22245-3f26-499f-8adb-2147f5711f9c', 4, 2),
    ('b0f22245-3f26-499f-8adb-2147f5711f9c', 4, 3),
    ('b0f22245-3f26-499f-8adb-2147f5711f9c', 4, 4),
    ('b0f22245-3f26-499f-8adb-2147f5711f9c', 5, 4),
    ('b0f22245-3f26-499f-8adb-2147f5711f9c', 6, 4),
    ('b0f22245-3f26-499f-8adb-2147f5711f9c', 6, 5),
    ('b0f22245-3f26-499f-8adb-2147f5711f9c', 6, 6),
    ('b0f22245-3f26-499f-8adb-2147f5711f9c', 6, 7),
    ('b0f22245-3f26-499f-8adb-2147f5711f9c', 5, 7),
    ('b0f22245-3f26-499f-8adb-2147f5711f9c', 4, 7),
    ('b0f22245-3f26-499f-8adb-2147f5711f9c', 3, 7),
    ('b0f22245-3f26-499f-8adb-2147f5711f9c', 2, 7),
    ('b0f22245-3f26-499f-8adb-2147f5711f9c', 1, 7),
    ('b0f22245-3f26-499f-8adb-2147f5711f9c', 1, 6),
    ('b0f22245-3f26-499f-8adb-2147f5711f9c', 1, 5),
    ('b0f22245-3f26-499f-8adb-2147f5711f9c', 1, 4),
    ('b0f22245-3f26-499f-8adb-2147f5711f9c', 1, 3),
    ('b0f22245-3f26-499f-8adb-2147f5711f9c', 1, 2),
    ('b0f22245-3f26-499f-8adb-2147f5711f9c', 1, 1),
       -- now round three
    ('b0f22245-3f26-499f-8adb-2147f5711f9c', 2, 1),
    ('b0f22245-3f26-499f-8adb-2147f5711f9c', 3, 1),
    ('b0f22245-3f26-499f-8adb-2147f5711f9c', 4, 1),
    ('b0f22245-3f26-499f-8adb-2147f5711f9c', 4, 2),
    ('b0f22245-3f26-499f-8adb-2147f5711f9c', 4, 3),
    ('b0f22245-3f26-499f-8adb-2147f5711f9c', 4, 4),
    ('b0f22245-3f26-499f-8adb-2147f5711f9c', 5, 4),
    ('b0f22245-3f26-499f-8adb-2147f5711f9c', 6, 4),
    ('b0f22245-3f26-499f-8adb-2147f5711f9c', 6, 5),
    ('b0f22245-3f26-499f-8adb-2147f5711f9c', 6, 6),
    ('b0f22245-3f26-499f-8adb-2147f5711f9c', 6, 7),
    ('b0f22245-3f26-499f-8adb-2147f5711f9c', 5, 7),
    ('b0f22245-3f26-499f-8adb-2147f5711f9c', 4, 7),
    ('b0f22245-3f26-499f-8adb-2147f5711f9c', 3, 7),
    ('b0f22245-3f26-499f-8adb-2147f5711f9c', 2, 7),
    ('b0f22245-3f26-499f-8adb-2147f5711f9c', 1, 7),
    ('b0f22245-3f26-499f-8adb-2147f5711f9c', 1, 6),
    ('b0f22245-3f26-499f-8adb-2147f5711f9c', 1, 5),
    ('b0f22245-3f26-499f-8adb-2147f5711f9c', 1, 4),
    ('b0f22245-3f26-499f-8adb-2147f5711f9c', 1, 3),
    ('b0f22245-3f26-499f-8adb-2147f5711f9c', 1, 2),
    ('b0f22245-3f26-499f-8adb-2147f5711f9c', 1, 1),
    ('b0f22245-3f26-499f-8adb-2147f5711f9c', 2, 1),
       -- now leave
    ('b0f22245-3f26-499f-8adb-2147f5711f9c', 2, 0),
    -- end second mutant
    -- start third mutant:
    ('15926a24-75f3-405d-a138-2f19aa5ca4e1', 2, 0),
    ('15926a24-75f3-405d-a138-2f19aa5ca4e1', 2, 1),
    ('15926a24-75f3-405d-a138-2f19aa5ca4e1', 3, 1),
    ('15926a24-75f3-405d-a138-2f19aa5ca4e1', 4, 1),
    ('15926a24-75f3-405d-a138-2f19aa5ca4e1', 4, 2),
    ('15926a24-75f3-405d-a138-2f19aa5ca4e1', 4, 3),
    ('15926a24-75f3-405d-a138-2f19aa5ca4e1', 5, 3),
    ('15926a24-75f3-405d-a138-2f19aa5ca4e1', 5, 4),
    ('15926a24-75f3-405d-a138-2f19aa5ca4e1', 6, 4),
    ('15926a24-75f3-405d-a138-2f19aa5ca4e1', 6, 5),
    ('15926a24-75f3-405d-a138-2f19aa5ca4e1', 6, 6),
    ('15926a24-75f3-405d-a138-2f19aa5ca4e1', 6, 7),
    ('15926a24-75f3-405d-a138-2f19aa5ca4e1', 5, 7),
    ('15926a24-75f3-405d-a138-2f19aa5ca4e1', 4, 7),
    ('15926a24-75f3-405d-a138-2f19aa5ca4e1', 3, 7),
    ('15926a24-75f3-405d-a138-2f19aa5ca4e1', 2, 7),
    ('15926a24-75f3-405d-a138-2f19aa5ca4e1', 1, 7),
    ('15926a24-75f3-405d-a138-2f19aa5ca4e1', 1, 6),
    ('15926a24-75f3-405d-a138-2f19aa5ca4e1', 1, 5),
    ('15926a24-75f3-405d-a138-2f19aa5ca4e1', 1, 4),
    ('15926a24-75f3-405d-a138-2f19aa5ca4e1', 1, 3),
    ('15926a24-75f3-405d-a138-2f19aa5ca4e1', 1, 2),
    ('15926a24-75f3-405d-a138-2f19aa5ca4e1', 1, 1),
    -- round two
    ('15926a24-75f3-405d-a138-2f19aa5ca4e1', 2, 1),
    ('15926a24-75f3-405d-a138-2f19aa5ca4e1', 3, 1),
    ('15926a24-75f3-405d-a138-2f19aa5ca4e1', 4, 1),
    ('15926a24-75f3-405d-a138-2f19aa5ca4e1', 4, 2),
    ('15926a24-75f3-405d-a138-2f19aa5ca4e1', 4, 3),
    ('15926a24-75f3-405d-a138-2f19aa5ca4e1', 4, 4),
    ('15926a24-75f3-405d-a138-2f19aa5ca4e1', 5, 4),
    ('15926a24-75f3-405d-a138-2f19aa5ca4e1', 6, 4),
    ('15926a24-75f3-405d-a138-2f19aa5ca4e1', 6, 5),
    ('15926a24-75f3-405d-a138-2f19aa5ca4e1', 6, 6),
    ('15926a24-75f3-405d-a138-2f19aa5ca4e1', 6, 7),
    ('15926a24-75f3-405d-a138-2f19aa5ca4e1', 5, 7),
    ('15926a24-75f3-405d-a138-2f19aa5ca4e1', 4, 7),
    ('15926a24-75f3-405d-a138-2f19aa5ca4e1', 3, 7),
    ('15926a24-75f3-405d-a138-2f19aa5ca4e1', 2, 7),
    ('15926a24-75f3-405d-a138-2f19aa5ca4e1', 1, 7),
    ('15926a24-75f3-405d-a138-2f19aa5ca4e1', 1, 6),
    ('15926a24-75f3-405d-a138-2f19aa5ca4e1', 1, 5),
    ('15926a24-75f3-405d-a138-2f19aa5ca4e1', 1, 4),
    ('15926a24-75f3-405d-a138-2f19aa5ca4e1', 1, 3),
    ('15926a24-75f3-405d-a138-2f19aa5ca4e1', 1, 2),
    ('15926a24-75f3-405d-a138-2f19aa5ca4e1', 1, 1),
    -- now round three
    ('15926a24-75f3-405d-a138-2f19aa5ca4e1', 2, 1),
    ('15926a24-75f3-405d-a138-2f19aa5ca4e1', 3, 1),
    ('15926a24-75f3-405d-a138-2f19aa5ca4e1', 4, 1),
    ('15926a24-75f3-405d-a138-2f19aa5ca4e1', 4, 2),
    ('15926a24-75f3-405d-a138-2f19aa5ca4e1', 4, 3),
    ('15926a24-75f3-405d-a138-2f19aa5ca4e1', 4, 4),
    ('15926a24-75f3-405d-a138-2f19aa5ca4e1', 5, 4),
    ('15926a24-75f3-405d-a138-2f19aa5ca4e1', 6, 4),
    ('15926a24-75f3-405d-a138-2f19aa5ca4e1', 6, 5),
    ('15926a24-75f3-405d-a138-2f19aa5ca4e1', 6, 6),
    ('15926a24-75f3-405d-a138-2f19aa5ca4e1', 6, 7),
    ('15926a24-75f3-405d-a138-2f19aa5ca4e1', 5, 7),
    ('15926a24-75f3-405d-a138-2f19aa5ca4e1', 4, 7),
    ('15926a24-75f3-405d-a138-2f19aa5ca4e1', 3, 7),
    ('15926a24-75f3-405d-a138-2f19aa5ca4e1', 2, 7),
    ('15926a24-75f3-405d-a138-2f19aa5ca4e1', 1, 7),
    ('15926a24-75f3-405d-a138-2f19aa5ca4e1', 1, 6),
    ('15926a24-75f3-405d-a138-2f19aa5ca4e1', 1, 5),
    ('15926a24-75f3-405d-a138-2f19aa5ca4e1', 1, 4),
    ('15926a24-75f3-405d-a138-2f19aa5ca4e1', 1, 3),
    ('15926a24-75f3-405d-a138-2f19aa5ca4e1', 1, 2),
    ('15926a24-75f3-405d-a138-2f19aa5ca4e1', 1, 1),
    ('15926a24-75f3-405d-a138-2f19aa5ca4e1', 2, 1),
    -- now leave
    ('15926a24-75f3-405d-a138-2f19aa5ca4e1', 2, 0),
       -- end third mutant
       -- start forth mutant:
    ('ee7d2ecb-cb8c-44d8-aa6c-a41f01376ad7', 2, 0),
    ('ee7d2ecb-cb8c-44d8-aa6c-a41f01376ad7', 2, 1),
    ('ee7d2ecb-cb8c-44d8-aa6c-a41f01376ad7', 3, 1),
    ('ee7d2ecb-cb8c-44d8-aa6c-a41f01376ad7', 4, 1),
    ('ee7d2ecb-cb8c-44d8-aa6c-a41f01376ad7', 4, 2),
    ('ee7d2ecb-cb8c-44d8-aa6c-a41f01376ad7', 4, 3),
    ('ee7d2ecb-cb8c-44d8-aa6c-a41f01376ad7', 5, 3),
    ('ee7d2ecb-cb8c-44d8-aa6c-a41f01376ad7', 5, 4),
    ('ee7d2ecb-cb8c-44d8-aa6c-a41f01376ad7', 6, 4),
    ('ee7d2ecb-cb8c-44d8-aa6c-a41f01376ad7', 6, 5),
    ('ee7d2ecb-cb8c-44d8-aa6c-a41f01376ad7', 6, 6),
    ('ee7d2ecb-cb8c-44d8-aa6c-a41f01376ad7', 6, 7),
    ('ee7d2ecb-cb8c-44d8-aa6c-a41f01376ad7', 5, 7),
    ('ee7d2ecb-cb8c-44d8-aa6c-a41f01376ad7', 4, 7),
    ('ee7d2ecb-cb8c-44d8-aa6c-a41f01376ad7', 3, 7),
    ('ee7d2ecb-cb8c-44d8-aa6c-a41f01376ad7', 2, 7),
    ('ee7d2ecb-cb8c-44d8-aa6c-a41f01376ad7', 1, 7),
    ('ee7d2ecb-cb8c-44d8-aa6c-a41f01376ad7', 1, 6),
    ('ee7d2ecb-cb8c-44d8-aa6c-a41f01376ad7', 1, 5),
    ('ee7d2ecb-cb8c-44d8-aa6c-a41f01376ad7', 1, 4),
    ('ee7d2ecb-cb8c-44d8-aa6c-a41f01376ad7', 1, 3),
    ('ee7d2ecb-cb8c-44d8-aa6c-a41f01376ad7', 1, 2),
    ('ee7d2ecb-cb8c-44d8-aa6c-a41f01376ad7', 1, 1),
    -- round two
    ('ee7d2ecb-cb8c-44d8-aa6c-a41f01376ad7', 2, 1),
    ('ee7d2ecb-cb8c-44d8-aa6c-a41f01376ad7', 3, 1),
    ('ee7d2ecb-cb8c-44d8-aa6c-a41f01376ad7', 4, 1),
    ('ee7d2ecb-cb8c-44d8-aa6c-a41f01376ad7', 4, 2),
    ('ee7d2ecb-cb8c-44d8-aa6c-a41f01376ad7', 4, 3),
    ('ee7d2ecb-cb8c-44d8-aa6c-a41f01376ad7', 5, 3),
    ('ee7d2ecb-cb8c-44d8-aa6c-a41f01376ad7', 5, 4),
    ('ee7d2ecb-cb8c-44d8-aa6c-a41f01376ad7', 6, 4),
    ('ee7d2ecb-cb8c-44d8-aa6c-a41f01376ad7', 6, 5),
    ('ee7d2ecb-cb8c-44d8-aa6c-a41f01376ad7', 6, 6),
    ('ee7d2ecb-cb8c-44d8-aa6c-a41f01376ad7', 6, 7),
    ('ee7d2ecb-cb8c-44d8-aa6c-a41f01376ad7', 5, 7),
    ('ee7d2ecb-cb8c-44d8-aa6c-a41f01376ad7', 4, 7),
    ('ee7d2ecb-cb8c-44d8-aa6c-a41f01376ad7', 3, 7),
    ('ee7d2ecb-cb8c-44d8-aa6c-a41f01376ad7', 2, 7),
    ('ee7d2ecb-cb8c-44d8-aa6c-a41f01376ad7', 1, 7),
    ('ee7d2ecb-cb8c-44d8-aa6c-a41f01376ad7', 1, 6),
    ('ee7d2ecb-cb8c-44d8-aa6c-a41f01376ad7', 1, 5),
    ('ee7d2ecb-cb8c-44d8-aa6c-a41f01376ad7', 1, 4),
    ('ee7d2ecb-cb8c-44d8-aa6c-a41f01376ad7', 1, 3),
    ('ee7d2ecb-cb8c-44d8-aa6c-a41f01376ad7', 1, 2),
    ('ee7d2ecb-cb8c-44d8-aa6c-a41f01376ad7', 1, 1),
    -- now round three
    ('ee7d2ecb-cb8c-44d8-aa6c-a41f01376ad7', 2, 1),
    ('ee7d2ecb-cb8c-44d8-aa6c-a41f01376ad7', 3, 1),
    ('ee7d2ecb-cb8c-44d8-aa6c-a41f01376ad7', 4, 1),
    ('ee7d2ecb-cb8c-44d8-aa6c-a41f01376ad7', 4, 2),
    ('ee7d2ecb-cb8c-44d8-aa6c-a41f01376ad7', 4, 3),
    ('ee7d2ecb-cb8c-44d8-aa6c-a41f01376ad7', 4, 4),
    ('ee7d2ecb-cb8c-44d8-aa6c-a41f01376ad7', 5, 4),
    ('ee7d2ecb-cb8c-44d8-aa6c-a41f01376ad7', 6, 4),
    ('ee7d2ecb-cb8c-44d8-aa6c-a41f01376ad7', 6, 5),
    ('ee7d2ecb-cb8c-44d8-aa6c-a41f01376ad7', 6, 6),
    ('ee7d2ecb-cb8c-44d8-aa6c-a41f01376ad7', 6, 7),
    ('ee7d2ecb-cb8c-44d8-aa6c-a41f01376ad7', 5, 7),
    ('ee7d2ecb-cb8c-44d8-aa6c-a41f01376ad7', 4, 7),
    ('ee7d2ecb-cb8c-44d8-aa6c-a41f01376ad7', 3, 7),
    ('ee7d2ecb-cb8c-44d8-aa6c-a41f01376ad7', 2, 7),
    ('ee7d2ecb-cb8c-44d8-aa6c-a41f01376ad7', 1, 7),
    ('ee7d2ecb-cb8c-44d8-aa6c-a41f01376ad7', 1, 6),
    ('ee7d2ecb-cb8c-44d8-aa6c-a41f01376ad7', 1, 5),
    ('ee7d2ecb-cb8c-44d8-aa6c-a41f01376ad7', 1, 4),
    ('ee7d2ecb-cb8c-44d8-aa6c-a41f01376ad7', 1, 3),
    ('ee7d2ecb-cb8c-44d8-aa6c-a41f01376ad7', 1, 2),
    ('ee7d2ecb-cb8c-44d8-aa6c-a41f01376ad7', 1, 1),
    ('ee7d2ecb-cb8c-44d8-aa6c-a41f01376ad7', 2, 1),
    -- now leave
    ('ee7d2ecb-cb8c-44d8-aa6c-a41f01376ad7', 2, 0),
       -- end forth mutant
       -- start fifth mutant:
    ('5f289b86-811e-4e69-a56e-4a1f6899fd45', 2, 0),
    ('5f289b86-811e-4e69-a56e-4a1f6899fd45', 2, 1),
    ('5f289b86-811e-4e69-a56e-4a1f6899fd45', 3, 1),
    ('5f289b86-811e-4e69-a56e-4a1f6899fd45', 4, 1),
    ('5f289b86-811e-4e69-a56e-4a1f6899fd45', 4, 2),
    ('5f289b86-811e-4e69-a56e-4a1f6899fd45', 4, 3),
    ('5f289b86-811e-4e69-a56e-4a1f6899fd45', 5, 3),
    ('5f289b86-811e-4e69-a56e-4a1f6899fd45', 5, 4),
    ('5f289b86-811e-4e69-a56e-4a1f6899fd45', 6, 4),
    ('5f289b86-811e-4e69-a56e-4a1f6899fd45', 6, 5),
    ('5f289b86-811e-4e69-a56e-4a1f6899fd45', 6, 6),
    ('5f289b86-811e-4e69-a56e-4a1f6899fd45', 6, 7),
    ('5f289b86-811e-4e69-a56e-4a1f6899fd45', 5, 7),
    ('5f289b86-811e-4e69-a56e-4a1f6899fd45', 4, 7),
    ('5f289b86-811e-4e69-a56e-4a1f6899fd45', 3, 7),
    ('5f289b86-811e-4e69-a56e-4a1f6899fd45', 2, 7),
    ('5f289b86-811e-4e69-a56e-4a1f6899fd45', 1, 7),
    ('5f289b86-811e-4e69-a56e-4a1f6899fd45', 1, 6),
    ('5f289b86-811e-4e69-a56e-4a1f6899fd45', 1, 5),
    ('5f289b86-811e-4e69-a56e-4a1f6899fd45', 1, 4),
    ('5f289b86-811e-4e69-a56e-4a1f6899fd45', 1, 3),
    ('5f289b86-811e-4e69-a56e-4a1f6899fd45', 1, 2),
    ('5f289b86-811e-4e69-a56e-4a1f6899fd45', 1, 1),
    -- round two
    ('5f289b86-811e-4e69-a56e-4a1f6899fd45', 2, 1),
    ('5f289b86-811e-4e69-a56e-4a1f6899fd45', 3, 1),
    ('5f289b86-811e-4e69-a56e-4a1f6899fd45', 4, 1),
    ('5f289b86-811e-4e69-a56e-4a1f6899fd45', 4, 2),
    ('5f289b86-811e-4e69-a56e-4a1f6899fd45', 4, 3),
    ('5f289b86-811e-4e69-a56e-4a1f6899fd45', 4, 4),
    ('5f289b86-811e-4e69-a56e-4a1f6899fd45', 5, 4),
    ('5f289b86-811e-4e69-a56e-4a1f6899fd45', 6, 4),
    ('5f289b86-811e-4e69-a56e-4a1f6899fd45', 6, 5),
    ('5f289b86-811e-4e69-a56e-4a1f6899fd45', 6, 6),
    ('5f289b86-811e-4e69-a56e-4a1f6899fd45', 6, 7),
    ('5f289b86-811e-4e69-a56e-4a1f6899fd45', 5, 7),
    ('5f289b86-811e-4e69-a56e-4a1f6899fd45', 4, 7),
    ('5f289b86-811e-4e69-a56e-4a1f6899fd45', 3, 7),
    ('5f289b86-811e-4e69-a56e-4a1f6899fd45', 2, 7),
    ('5f289b86-811e-4e69-a56e-4a1f6899fd45', 1, 7),
    ('5f289b86-811e-4e69-a56e-4a1f6899fd45', 1, 6),
    ('5f289b86-811e-4e69-a56e-4a1f6899fd45', 1, 5),
    ('5f289b86-811e-4e69-a56e-4a1f6899fd45', 1, 4),
    ('5f289b86-811e-4e69-a56e-4a1f6899fd45', 1, 3),
    ('5f289b86-811e-4e69-a56e-4a1f6899fd45', 1, 2),
    ('5f289b86-811e-4e69-a56e-4a1f6899fd45', 1, 1),
    ('5f289b86-811e-4e69-a56e-4a1f6899fd45', 2, 1),
    -- round three
    ('5f289b86-811e-4e69-a56e-4a1f6899fd45', 2, 1),
    ('5f289b86-811e-4e69-a56e-4a1f6899fd45', 3, 1),
    ('5f289b86-811e-4e69-a56e-4a1f6899fd45', 4, 1),
    ('5f289b86-811e-4e69-a56e-4a1f6899fd45', 4, 2),
    ('5f289b86-811e-4e69-a56e-4a1f6899fd45', 4, 3),
    ('5f289b86-811e-4e69-a56e-4a1f6899fd45', 4, 4),
    ('5f289b86-811e-4e69-a56e-4a1f6899fd45', 5, 4),
    ('5f289b86-811e-4e69-a56e-4a1f6899fd45', 6, 4),
    ('5f289b86-811e-4e69-a56e-4a1f6899fd45', 6, 5),
    ('5f289b86-811e-4e69-a56e-4a1f6899fd45', 6, 6),
    ('5f289b86-811e-4e69-a56e-4a1f6899fd45', 6, 7),
    ('5f289b86-811e-4e69-a56e-4a1f6899fd45', 5, 7),
    ('5f289b86-811e-4e69-a56e-4a1f6899fd45', 4, 7),
    ('5f289b86-811e-4e69-a56e-4a1f6899fd45', 3, 7),
    ('5f289b86-811e-4e69-a56e-4a1f6899fd45', 2, 7),
    ('5f289b86-811e-4e69-a56e-4a1f6899fd45', 1, 7),
    ('5f289b86-811e-4e69-a56e-4a1f6899fd45', 1, 6),
    ('5f289b86-811e-4e69-a56e-4a1f6899fd45', 1, 5),
    ('5f289b86-811e-4e69-a56e-4a1f6899fd45', 1, 4),
    ('5f289b86-811e-4e69-a56e-4a1f6899fd45', 1, 3),
    ('5f289b86-811e-4e69-a56e-4a1f6899fd45', 1, 2),
    ('5f289b86-811e-4e69-a56e-4a1f6899fd45', 1, 1),
    ('5f289b86-811e-4e69-a56e-4a1f6899fd45', 2, 1),
    -- round four
    ('5f289b86-811e-4e69-a56e-4a1f6899fd45', 2, 1),
    ('5f289b86-811e-4e69-a56e-4a1f6899fd45', 3, 1),
    ('5f289b86-811e-4e69-a56e-4a1f6899fd45', 4, 1),
    ('5f289b86-811e-4e69-a56e-4a1f6899fd45', 4, 2),
    ('5f289b86-811e-4e69-a56e-4a1f6899fd45', 4, 3),
    ('5f289b86-811e-4e69-a56e-4a1f6899fd45', 4, 4),
    ('5f289b86-811e-4e69-a56e-4a1f6899fd45', 5, 4),
    ('5f289b86-811e-4e69-a56e-4a1f6899fd45', 6, 4),
    ('5f289b86-811e-4e69-a56e-4a1f6899fd45', 6, 5),
    ('5f289b86-811e-4e69-a56e-4a1f6899fd45', 6, 6),
    ('5f289b86-811e-4e69-a56e-4a1f6899fd45', 6, 7),
    ('5f289b86-811e-4e69-a56e-4a1f6899fd45', 5, 7),
    ('5f289b86-811e-4e69-a56e-4a1f6899fd45', 4, 7),
    ('5f289b86-811e-4e69-a56e-4a1f6899fd45', 3, 7),
    ('5f289b86-811e-4e69-a56e-4a1f6899fd45', 2, 7),
    ('5f289b86-811e-4e69-a56e-4a1f6899fd45', 1, 7),
    ('5f289b86-811e-4e69-a56e-4a1f6899fd45', 1, 6),
    ('5f289b86-811e-4e69-a56e-4a1f6899fd45', 1, 5),
    ('5f289b86-811e-4e69-a56e-4a1f6899fd45', 1, 4),
    ('5f289b86-811e-4e69-a56e-4a1f6899fd45', 1, 3),
    ('5f289b86-811e-4e69-a56e-4a1f6899fd45', 1, 2),
    ('5f289b86-811e-4e69-a56e-4a1f6899fd45', 1, 1),
    ('5f289b86-811e-4e69-a56e-4a1f6899fd45', 2, 1),
    -- now leave
    ('5f289b86-811e-4e69-a56e-4a1f6899fd45', 2, 0),
       -- end fifth mutant
       -- start sixth mutant:
    ('69eeac8c-6cca-421c-bbfc-dbd5a0408463', 2, 0),
    ('69eeac8c-6cca-421c-bbfc-dbd5a0408463', 2, 1),
    ('69eeac8c-6cca-421c-bbfc-dbd5a0408463', 3, 1),
    ('69eeac8c-6cca-421c-bbfc-dbd5a0408463', 4, 1),
    ('69eeac8c-6cca-421c-bbfc-dbd5a0408463', 4, 2),
    ('69eeac8c-6cca-421c-bbfc-dbd5a0408463', 4, 3),
    ('69eeac8c-6cca-421c-bbfc-dbd5a0408463', 5, 3),
    ('69eeac8c-6cca-421c-bbfc-dbd5a0408463', 5, 4),
    ('69eeac8c-6cca-421c-bbfc-dbd5a0408463', 6, 4),
    ('69eeac8c-6cca-421c-bbfc-dbd5a0408463', 6, 5),
    ('69eeac8c-6cca-421c-bbfc-dbd5a0408463', 6, 6),
    ('69eeac8c-6cca-421c-bbfc-dbd5a0408463', 6, 7),
    ('69eeac8c-6cca-421c-bbfc-dbd5a0408463', 5, 7),
    ('69eeac8c-6cca-421c-bbfc-dbd5a0408463', 4, 7),
    ('69eeac8c-6cca-421c-bbfc-dbd5a0408463', 3, 7),
    ('69eeac8c-6cca-421c-bbfc-dbd5a0408463', 2, 7),
    ('69eeac8c-6cca-421c-bbfc-dbd5a0408463', 1, 7),
    ('69eeac8c-6cca-421c-bbfc-dbd5a0408463', 1, 6),
    ('69eeac8c-6cca-421c-bbfc-dbd5a0408463', 1, 5),
    ('69eeac8c-6cca-421c-bbfc-dbd5a0408463', 1, 4),
    ('69eeac8c-6cca-421c-bbfc-dbd5a0408463', 1, 3),
    ('69eeac8c-6cca-421c-bbfc-dbd5a0408463', 1, 2),
    ('69eeac8c-6cca-421c-bbfc-dbd5a0408463', 1, 1),
    -- round two
    ('69eeac8c-6cca-421c-bbfc-dbd5a0408463', 2, 1),
    ('69eeac8c-6cca-421c-bbfc-dbd5a0408463', 3, 1),
    ('69eeac8c-6cca-421c-bbfc-dbd5a0408463', 4, 1),
    ('69eeac8c-6cca-421c-bbfc-dbd5a0408463', 4, 2),
    ('69eeac8c-6cca-421c-bbfc-dbd5a0408463', 4, 3),
    ('69eeac8c-6cca-421c-bbfc-dbd5a0408463', 4, 4),
    ('69eeac8c-6cca-421c-bbfc-dbd5a0408463', 5, 4),
    ('69eeac8c-6cca-421c-bbfc-dbd5a0408463', 6, 4),
    ('69eeac8c-6cca-421c-bbfc-dbd5a0408463', 6, 5),
    ('69eeac8c-6cca-421c-bbfc-dbd5a0408463', 6, 6),
    ('69eeac8c-6cca-421c-bbfc-dbd5a0408463', 6, 7),
    ('69eeac8c-6cca-421c-bbfc-dbd5a0408463', 5, 7),
    ('69eeac8c-6cca-421c-bbfc-dbd5a0408463', 4, 7),
    ('69eeac8c-6cca-421c-bbfc-dbd5a0408463', 3, 7),
    ('69eeac8c-6cca-421c-bbfc-dbd5a0408463', 2, 7),
    ('69eeac8c-6cca-421c-bbfc-dbd5a0408463', 1, 7),
    ('69eeac8c-6cca-421c-bbfc-dbd5a0408463', 1, 6),
    ('69eeac8c-6cca-421c-bbfc-dbd5a0408463', 1, 5),
    ('69eeac8c-6cca-421c-bbfc-dbd5a0408463', 1, 4),
    ('69eeac8c-6cca-421c-bbfc-dbd5a0408463', 1, 3),
    ('69eeac8c-6cca-421c-bbfc-dbd5a0408463', 1, 2),
    ('69eeac8c-6cca-421c-bbfc-dbd5a0408463', 1, 1),
    -- now round three
    ('69eeac8c-6cca-421c-bbfc-dbd5a0408463', 2, 1),
    ('69eeac8c-6cca-421c-bbfc-dbd5a0408463', 3, 1),
    ('69eeac8c-6cca-421c-bbfc-dbd5a0408463', 4, 1),
    ('69eeac8c-6cca-421c-bbfc-dbd5a0408463', 4, 2),
    ('69eeac8c-6cca-421c-bbfc-dbd5a0408463', 4, 3),
    ('69eeac8c-6cca-421c-bbfc-dbd5a0408463', 4, 4),
    ('69eeac8c-6cca-421c-bbfc-dbd5a0408463', 5, 4),
    ('69eeac8c-6cca-421c-bbfc-dbd5a0408463', 6, 4),
    ('69eeac8c-6cca-421c-bbfc-dbd5a0408463', 6, 5),
    ('69eeac8c-6cca-421c-bbfc-dbd5a0408463', 6, 6),
    ('69eeac8c-6cca-421c-bbfc-dbd5a0408463', 6, 7),
    ('69eeac8c-6cca-421c-bbfc-dbd5a0408463', 5, 7),
    ('69eeac8c-6cca-421c-bbfc-dbd5a0408463', 4, 7),
    ('69eeac8c-6cca-421c-bbfc-dbd5a0408463', 3, 7),
    ('69eeac8c-6cca-421c-bbfc-dbd5a0408463', 2, 7),
    ('69eeac8c-6cca-421c-bbfc-dbd5a0408463', 1, 7),
    ('69eeac8c-6cca-421c-bbfc-dbd5a0408463', 1, 6),
    ('69eeac8c-6cca-421c-bbfc-dbd5a0408463', 1, 5),
    ('69eeac8c-6cca-421c-bbfc-dbd5a0408463', 1, 4),
    ('69eeac8c-6cca-421c-bbfc-dbd5a0408463', 1, 3),
    ('69eeac8c-6cca-421c-bbfc-dbd5a0408463', 1, 2),
    ('69eeac8c-6cca-421c-bbfc-dbd5a0408463', 1, 1),
    ('69eeac8c-6cca-421c-bbfc-dbd5a0408463', 2, 1),
    -- now leave
    ('69eeac8c-6cca-421c-bbfc-dbd5a0408463', 2, 0),
       -- end sixth mutant
       -- start seventh mutant:
    ('e4779687-1cc0-4a29-9154-47d1bab27670', 2, 0),
    ('e4779687-1cc0-4a29-9154-47d1bab27670', 2, 1),
    ('e4779687-1cc0-4a29-9154-47d1bab27670', 3, 1),
    ('e4779687-1cc0-4a29-9154-47d1bab27670', 4, 1),
    ('e4779687-1cc0-4a29-9154-47d1bab27670', 4, 2),
    ('e4779687-1cc0-4a29-9154-47d1bab27670', 4, 3),
    ('e4779687-1cc0-4a29-9154-47d1bab27670', 5, 3),
    ('e4779687-1cc0-4a29-9154-47d1bab27670', 5, 4),
    ('e4779687-1cc0-4a29-9154-47d1bab27670', 6, 4),
    ('e4779687-1cc0-4a29-9154-47d1bab27670', 6, 5),
    ('e4779687-1cc0-4a29-9154-47d1bab27670', 6, 6),
    ('e4779687-1cc0-4a29-9154-47d1bab27670', 6, 7),
    ('e4779687-1cc0-4a29-9154-47d1bab27670', 5, 7),
    ('e4779687-1cc0-4a29-9154-47d1bab27670', 4, 7),
    ('e4779687-1cc0-4a29-9154-47d1bab27670', 3, 7),
    ('e4779687-1cc0-4a29-9154-47d1bab27670', 2, 7),
    ('e4779687-1cc0-4a29-9154-47d1bab27670', 1, 7),
    ('e4779687-1cc0-4a29-9154-47d1bab27670', 1, 6),
    ('e4779687-1cc0-4a29-9154-47d1bab27670', 1, 5),
    ('e4779687-1cc0-4a29-9154-47d1bab27670', 1, 4),
    ('e4779687-1cc0-4a29-9154-47d1bab27670', 1, 3),
    ('e4779687-1cc0-4a29-9154-47d1bab27670', 1, 2),
    ('e4779687-1cc0-4a29-9154-47d1bab27670', 1, 1),
    -- round two
    ('e4779687-1cc0-4a29-9154-47d1bab27670', 2, 1),
    ('e4779687-1cc0-4a29-9154-47d1bab27670', 3, 1),
    ('e4779687-1cc0-4a29-9154-47d1bab27670', 4, 1),
    ('e4779687-1cc0-4a29-9154-47d1bab27670', 4, 2),
    ('e4779687-1cc0-4a29-9154-47d1bab27670', 4, 3),
    ('e4779687-1cc0-4a29-9154-47d1bab27670', 4, 4),
    ('e4779687-1cc0-4a29-9154-47d1bab27670', 5, 4),
    ('e4779687-1cc0-4a29-9154-47d1bab27670', 6, 4),
    ('e4779687-1cc0-4a29-9154-47d1bab27670', 6, 5),
    ('e4779687-1cc0-4a29-9154-47d1bab27670', 6, 6),
    ('e4779687-1cc0-4a29-9154-47d1bab27670', 6, 7),
    ('e4779687-1cc0-4a29-9154-47d1bab27670', 5, 7),
    ('e4779687-1cc0-4a29-9154-47d1bab27670', 4, 7),
    ('e4779687-1cc0-4a29-9154-47d1bab27670', 3, 7),
    ('e4779687-1cc0-4a29-9154-47d1bab27670', 2, 7),
    ('e4779687-1cc0-4a29-9154-47d1bab27670', 1, 7),
    ('e4779687-1cc0-4a29-9154-47d1bab27670', 1, 6),
    ('e4779687-1cc0-4a29-9154-47d1bab27670', 1, 5),
    ('e4779687-1cc0-4a29-9154-47d1bab27670', 1, 4),
    ('e4779687-1cc0-4a29-9154-47d1bab27670', 1, 3),
    ('e4779687-1cc0-4a29-9154-47d1bab27670', 1, 2),
    ('e4779687-1cc0-4a29-9154-47d1bab27670', 1, 1),
    -- now round three
    ('e4779687-1cc0-4a29-9154-47d1bab27670', 2, 1),
    ('e4779687-1cc0-4a29-9154-47d1bab27670', 3, 1),
    ('e4779687-1cc0-4a29-9154-47d1bab27670', 4, 1),
    ('e4779687-1cc0-4a29-9154-47d1bab27670', 4, 2),
    ('e4779687-1cc0-4a29-9154-47d1bab27670', 4, 3),
    ('e4779687-1cc0-4a29-9154-47d1bab27670', 4, 4),
    ('e4779687-1cc0-4a29-9154-47d1bab27670', 5, 4),
    ('e4779687-1cc0-4a29-9154-47d1bab27670', 6, 4),
    ('e4779687-1cc0-4a29-9154-47d1bab27670', 6, 5),
    ('e4779687-1cc0-4a29-9154-47d1bab27670', 6, 6),
    ('e4779687-1cc0-4a29-9154-47d1bab27670', 6, 7),
    ('e4779687-1cc0-4a29-9154-47d1bab27670', 5, 7),
    ('e4779687-1cc0-4a29-9154-47d1bab27670', 4, 7),
    ('e4779687-1cc0-4a29-9154-47d1bab27670', 3, 7),
    ('e4779687-1cc0-4a29-9154-47d1bab27670', 2, 7),
    ('e4779687-1cc0-4a29-9154-47d1bab27670', 1, 7),
    ('e4779687-1cc0-4a29-9154-47d1bab27670', 1, 6),
    ('e4779687-1cc0-4a29-9154-47d1bab27670', 1, 5),
    ('e4779687-1cc0-4a29-9154-47d1bab27670', 1, 4),
    ('e4779687-1cc0-4a29-9154-47d1bab27670', 1, 3),
    ('e4779687-1cc0-4a29-9154-47d1bab27670', 1, 2),
    ('e4779687-1cc0-4a29-9154-47d1bab27670', 1, 1),
    ('e4779687-1cc0-4a29-9154-47d1bab27670', 2, 1),
    -- now leave
    ('e4779687-1cc0-4a29-9154-47d1bab27670', 2, 0),
       -- end seventh mutant
       -- start eights mutant:
    ('d25030d5-e9a9-4cda-a146-6f7c50c9bd4d', 2, 0),
    ('d25030d5-e9a9-4cda-a146-6f7c50c9bd4d', 2, 1),
    ('d25030d5-e9a9-4cda-a146-6f7c50c9bd4d', 3, 1),
    ('d25030d5-e9a9-4cda-a146-6f7c50c9bd4d', 4, 1),
    ('d25030d5-e9a9-4cda-a146-6f7c50c9bd4d', 4, 2),
    ('d25030d5-e9a9-4cda-a146-6f7c50c9bd4d', 4, 3),
    ('d25030d5-e9a9-4cda-a146-6f7c50c9bd4d', 4, 4),
    ('d25030d5-e9a9-4cda-a146-6f7c50c9bd4d', 5, 4),
    ('d25030d5-e9a9-4cda-a146-6f7c50c9bd4d', 6, 4),
    ('d25030d5-e9a9-4cda-a146-6f7c50c9bd4d', 6, 5),
    ('d25030d5-e9a9-4cda-a146-6f7c50c9bd4d', 6, 6),
    ('d25030d5-e9a9-4cda-a146-6f7c50c9bd4d', 6, 7),
    ('d25030d5-e9a9-4cda-a146-6f7c50c9bd4d', 5, 7),
    ('d25030d5-e9a9-4cda-a146-6f7c50c9bd4d', 4, 7),
    ('d25030d5-e9a9-4cda-a146-6f7c50c9bd4d', 3, 7),
    ('d25030d5-e9a9-4cda-a146-6f7c50c9bd4d', 2, 7),
    ('d25030d5-e9a9-4cda-a146-6f7c50c9bd4d', 1, 7),
    ('d25030d5-e9a9-4cda-a146-6f7c50c9bd4d', 1, 6),
    ('d25030d5-e9a9-4cda-a146-6f7c50c9bd4d', 1, 5),
    ('d25030d5-e9a9-4cda-a146-6f7c50c9bd4d', 1, 4),
    ('d25030d5-e9a9-4cda-a146-6f7c50c9bd4d', 1, 3),
    ('d25030d5-e9a9-4cda-a146-6f7c50c9bd4d', 1, 2),
    ('d25030d5-e9a9-4cda-a146-6f7c50c9bd4d', 1, 1),
    -- round two
    ('d25030d5-e9a9-4cda-a146-6f7c50c9bd4d', 2, 1),
    ('d25030d5-e9a9-4cda-a146-6f7c50c9bd4d', 3, 1),
    ('d25030d5-e9a9-4cda-a146-6f7c50c9bd4d', 4, 1),
    ('d25030d5-e9a9-4cda-a146-6f7c50c9bd4d', 4, 2),
    ('d25030d5-e9a9-4cda-a146-6f7c50c9bd4d', 4, 3),
    ('d25030d5-e9a9-4cda-a146-6f7c50c9bd4d', 4, 4),
    ('d25030d5-e9a9-4cda-a146-6f7c50c9bd4d', 5, 4),
    ('d25030d5-e9a9-4cda-a146-6f7c50c9bd4d', 6, 4),
    ('d25030d5-e9a9-4cda-a146-6f7c50c9bd4d', 6, 5),
    ('d25030d5-e9a9-4cda-a146-6f7c50c9bd4d', 6, 6),
    ('d25030d5-e9a9-4cda-a146-6f7c50c9bd4d', 6, 7),
    ('d25030d5-e9a9-4cda-a146-6f7c50c9bd4d', 5, 7),
    ('d25030d5-e9a9-4cda-a146-6f7c50c9bd4d', 4, 7),
    ('d25030d5-e9a9-4cda-a146-6f7c50c9bd4d', 3, 7),
    ('d25030d5-e9a9-4cda-a146-6f7c50c9bd4d', 2, 7),
    ('d25030d5-e9a9-4cda-a146-6f7c50c9bd4d', 1, 7),
    ('d25030d5-e9a9-4cda-a146-6f7c50c9bd4d', 1, 6),
    ('d25030d5-e9a9-4cda-a146-6f7c50c9bd4d', 1, 5),
    ('d25030d5-e9a9-4cda-a146-6f7c50c9bd4d', 1, 4),
    ('d25030d5-e9a9-4cda-a146-6f7c50c9bd4d', 1, 3),
    ('d25030d5-e9a9-4cda-a146-6f7c50c9bd4d', 1, 2),
    ('d25030d5-e9a9-4cda-a146-6f7c50c9bd4d', 1, 1),
    -- now round three
    ('d25030d5-e9a9-4cda-a146-6f7c50c9bd4d', 2, 1),
    ('d25030d5-e9a9-4cda-a146-6f7c50c9bd4d', 3, 1),
    ('d25030d5-e9a9-4cda-a146-6f7c50c9bd4d', 4, 1),
    ('d25030d5-e9a9-4cda-a146-6f7c50c9bd4d', 4, 2),
    ('d25030d5-e9a9-4cda-a146-6f7c50c9bd4d', 4, 3),
    ('d25030d5-e9a9-4cda-a146-6f7c50c9bd4d', 4, 4),
    ('d25030d5-e9a9-4cda-a146-6f7c50c9bd4d', 5, 4),
    ('d25030d5-e9a9-4cda-a146-6f7c50c9bd4d', 6, 4),
    ('d25030d5-e9a9-4cda-a146-6f7c50c9bd4d', 6, 5),
    ('d25030d5-e9a9-4cda-a146-6f7c50c9bd4d', 6, 6),
    ('d25030d5-e9a9-4cda-a146-6f7c50c9bd4d', 6, 7),
    ('d25030d5-e9a9-4cda-a146-6f7c50c9bd4d', 5, 7),
    ('d25030d5-e9a9-4cda-a146-6f7c50c9bd4d', 4, 7),
    ('d25030d5-e9a9-4cda-a146-6f7c50c9bd4d', 3, 7),
    ('d25030d5-e9a9-4cda-a146-6f7c50c9bd4d', 2, 7),
    ('d25030d5-e9a9-4cda-a146-6f7c50c9bd4d', 1, 7),
    ('d25030d5-e9a9-4cda-a146-6f7c50c9bd4d', 1, 6),
    ('d25030d5-e9a9-4cda-a146-6f7c50c9bd4d', 1, 5),
    ('d25030d5-e9a9-4cda-a146-6f7c50c9bd4d', 1, 4),
    ('d25030d5-e9a9-4cda-a146-6f7c50c9bd4d', 1, 3),
    ('d25030d5-e9a9-4cda-a146-6f7c50c9bd4d', 1, 2),
    ('d25030d5-e9a9-4cda-a146-6f7c50c9bd4d', 1, 1),
    ('d25030d5-e9a9-4cda-a146-6f7c50c9bd4d', 2, 1),
    -- now leave
    ('d25030d5-e9a9-4cda-a146-6f7c50c9bd4d', 2, 0),
       -- end eights mutant
       -- start ninth mutant:
    ('f4dbb417-8653-4f5e-b9a3-e66dce36c254', 2, 0),
    ('f4dbb417-8653-4f5e-b9a3-e66dce36c254', 2, 1),
    ('f4dbb417-8653-4f5e-b9a3-e66dce36c254', 3, 1),
    ('f4dbb417-8653-4f5e-b9a3-e66dce36c254', 4, 1),
    ('f4dbb417-8653-4f5e-b9a3-e66dce36c254', 4, 2),
    ('f4dbb417-8653-4f5e-b9a3-e66dce36c254', 4, 3),
    ('f4dbb417-8653-4f5e-b9a3-e66dce36c254', 5, 3),
    ('f4dbb417-8653-4f5e-b9a3-e66dce36c254', 5, 4),
    ('f4dbb417-8653-4f5e-b9a3-e66dce36c254', 6, 4),
    ('f4dbb417-8653-4f5e-b9a3-e66dce36c254', 6, 5),
    ('f4dbb417-8653-4f5e-b9a3-e66dce36c254', 6, 6),
    ('f4dbb417-8653-4f5e-b9a3-e66dce36c254', 6, 7),
    ('f4dbb417-8653-4f5e-b9a3-e66dce36c254', 5, 7),
    ('f4dbb417-8653-4f5e-b9a3-e66dce36c254', 4, 7),
    ('f4dbb417-8653-4f5e-b9a3-e66dce36c254', 3, 7),
    ('f4dbb417-8653-4f5e-b9a3-e66dce36c254', 2, 7),
    ('f4dbb417-8653-4f5e-b9a3-e66dce36c254', 1, 7),
    ('f4dbb417-8653-4f5e-b9a3-e66dce36c254', 1, 6),
    ('f4dbb417-8653-4f5e-b9a3-e66dce36c254', 1, 5),
    ('f4dbb417-8653-4f5e-b9a3-e66dce36c254', 1, 4),
    ('f4dbb417-8653-4f5e-b9a3-e66dce36c254', 1, 3),
    ('f4dbb417-8653-4f5e-b9a3-e66dce36c254', 1, 2),
    ('f4dbb417-8653-4f5e-b9a3-e66dce36c254', 1, 1),
    -- round two
    ('f4dbb417-8653-4f5e-b9a3-e66dce36c254', 2, 1),
    ('f4dbb417-8653-4f5e-b9a3-e66dce36c254', 3, 1),
    ('f4dbb417-8653-4f5e-b9a3-e66dce36c254', 4, 1),
    ('f4dbb417-8653-4f5e-b9a3-e66dce36c254', 4, 2),
    ('f4dbb417-8653-4f5e-b9a3-e66dce36c254', 4, 3),
    ('f4dbb417-8653-4f5e-b9a3-e66dce36c254', 4, 4),
    ('f4dbb417-8653-4f5e-b9a3-e66dce36c254', 5, 4),
    ('f4dbb417-8653-4f5e-b9a3-e66dce36c254', 6, 4),
    ('f4dbb417-8653-4f5e-b9a3-e66dce36c254', 6, 5),
    ('f4dbb417-8653-4f5e-b9a3-e66dce36c254', 6, 6),
    ('f4dbb417-8653-4f5e-b9a3-e66dce36c254', 6, 7),
    ('f4dbb417-8653-4f5e-b9a3-e66dce36c254', 5, 7),
    ('f4dbb417-8653-4f5e-b9a3-e66dce36c254', 4, 7),
    ('f4dbb417-8653-4f5e-b9a3-e66dce36c254', 3, 7),
    ('f4dbb417-8653-4f5e-b9a3-e66dce36c254', 2, 7),
    ('f4dbb417-8653-4f5e-b9a3-e66dce36c254', 1, 7),
    ('f4dbb417-8653-4f5e-b9a3-e66dce36c254', 1, 6),
    ('f4dbb417-8653-4f5e-b9a3-e66dce36c254', 1, 5),
    ('f4dbb417-8653-4f5e-b9a3-e66dce36c254', 1, 4),
    ('f4dbb417-8653-4f5e-b9a3-e66dce36c254', 1, 3),
    ('f4dbb417-8653-4f5e-b9a3-e66dce36c254', 1, 2),
    ('f4dbb417-8653-4f5e-b9a3-e66dce36c254', 1, 1),
    -- now round three
    ('f4dbb417-8653-4f5e-b9a3-e66dce36c254', 2, 1),
    ('f4dbb417-8653-4f5e-b9a3-e66dce36c254', 3, 1),
    ('f4dbb417-8653-4f5e-b9a3-e66dce36c254', 4, 1),
    ('f4dbb417-8653-4f5e-b9a3-e66dce36c254', 4, 2),
    ('f4dbb417-8653-4f5e-b9a3-e66dce36c254', 4, 3),
    ('f4dbb417-8653-4f5e-b9a3-e66dce36c254', 4, 4),
    ('f4dbb417-8653-4f5e-b9a3-e66dce36c254', 5, 4),
    ('f4dbb417-8653-4f5e-b9a3-e66dce36c254', 6, 4),
    ('f4dbb417-8653-4f5e-b9a3-e66dce36c254', 6, 5),
    ('f4dbb417-8653-4f5e-b9a3-e66dce36c254', 6, 6),
    ('f4dbb417-8653-4f5e-b9a3-e66dce36c254', 6, 7),
    ('f4dbb417-8653-4f5e-b9a3-e66dce36c254', 5, 7),
    ('f4dbb417-8653-4f5e-b9a3-e66dce36c254', 4, 7),
    ('f4dbb417-8653-4f5e-b9a3-e66dce36c254', 3, 7),
    ('f4dbb417-8653-4f5e-b9a3-e66dce36c254', 2, 7),
    ('f4dbb417-8653-4f5e-b9a3-e66dce36c254', 1, 7),
    ('f4dbb417-8653-4f5e-b9a3-e66dce36c254', 1, 6),
    ('f4dbb417-8653-4f5e-b9a3-e66dce36c254', 1, 5),
    ('f4dbb417-8653-4f5e-b9a3-e66dce36c254', 1, 4),
    ('f4dbb417-8653-4f5e-b9a3-e66dce36c254', 1, 3),
    ('f4dbb417-8653-4f5e-b9a3-e66dce36c254', 1, 2),
    ('f4dbb417-8653-4f5e-b9a3-e66dce36c254', 1, 1),
    ('f4dbb417-8653-4f5e-b9a3-e66dce36c254', 2, 1),
    -- now leave
    ('f4dbb417-8653-4f5e-b9a3-e66dce36c254', 2, 0),
       -- end ninth mutant
       -- start tenth mutant
    ('0e9143ff-3713-4e93-a0ce-2a8ce0075875', 2, 0),
    ('0e9143ff-3713-4e93-a0ce-2a8ce0075875', 2, 1),
    ('0e9143ff-3713-4e93-a0ce-2a8ce0075875', 3, 1),
    ('0e9143ff-3713-4e93-a0ce-2a8ce0075875', 4, 1),
    ('0e9143ff-3713-4e93-a0ce-2a8ce0075875', 4, 2),
    ('0e9143ff-3713-4e93-a0ce-2a8ce0075875', 4, 3),
    ('0e9143ff-3713-4e93-a0ce-2a8ce0075875', 4, 4),
    ('0e9143ff-3713-4e93-a0ce-2a8ce0075875', 5, 4),
    ('0e9143ff-3713-4e93-a0ce-2a8ce0075875', 6, 4),
    ('0e9143ff-3713-4e93-a0ce-2a8ce0075875', 6, 5),
    ('0e9143ff-3713-4e93-a0ce-2a8ce0075875', 6, 6),
    ('0e9143ff-3713-4e93-a0ce-2a8ce0075875', 6, 7),
    ('0e9143ff-3713-4e93-a0ce-2a8ce0075875', 5, 7),
    ('0e9143ff-3713-4e93-a0ce-2a8ce0075875', 4, 7),
    ('0e9143ff-3713-4e93-a0ce-2a8ce0075875', 3, 7),
    ('0e9143ff-3713-4e93-a0ce-2a8ce0075875', 2, 7),
    ('0e9143ff-3713-4e93-a0ce-2a8ce0075875', 1, 7),
    ('0e9143ff-3713-4e93-a0ce-2a8ce0075875', 1, 6),
    ('0e9143ff-3713-4e93-a0ce-2a8ce0075875', 1, 5),
    ('0e9143ff-3713-4e93-a0ce-2a8ce0075875', 1, 4),
    ('0e9143ff-3713-4e93-a0ce-2a8ce0075875', 1, 3),
    ('0e9143ff-3713-4e93-a0ce-2a8ce0075875', 1, 2),
    ('0e9143ff-3713-4e93-a0ce-2a8ce0075875', 1, 1),
    -- round two
    ('0e9143ff-3713-4e93-a0ce-2a8ce0075875', 2, 1),
    ('0e9143ff-3713-4e93-a0ce-2a8ce0075875', 3, 1),
    ('0e9143ff-3713-4e93-a0ce-2a8ce0075875', 4, 1),
    ('0e9143ff-3713-4e93-a0ce-2a8ce0075875', 4, 2),
    ('0e9143ff-3713-4e93-a0ce-2a8ce0075875', 4, 3),
    ('0e9143ff-3713-4e93-a0ce-2a8ce0075875', 4, 4),
    ('0e9143ff-3713-4e93-a0ce-2a8ce0075875', 5, 4),
    ('0e9143ff-3713-4e93-a0ce-2a8ce0075875', 6, 4),
    ('0e9143ff-3713-4e93-a0ce-2a8ce0075875', 6, 5),
    ('0e9143ff-3713-4e93-a0ce-2a8ce0075875', 6, 6),
    ('0e9143ff-3713-4e93-a0ce-2a8ce0075875', 6, 7),
    ('0e9143ff-3713-4e93-a0ce-2a8ce0075875', 5, 7),
    ('0e9143ff-3713-4e93-a0ce-2a8ce0075875', 4, 7),
    ('0e9143ff-3713-4e93-a0ce-2a8ce0075875', 3, 7),
    ('0e9143ff-3713-4e93-a0ce-2a8ce0075875', 2, 7),
    ('0e9143ff-3713-4e93-a0ce-2a8ce0075875', 1, 7),
    ('0e9143ff-3713-4e93-a0ce-2a8ce0075875', 1, 6),
    ('0e9143ff-3713-4e93-a0ce-2a8ce0075875', 1, 5),
    ('0e9143ff-3713-4e93-a0ce-2a8ce0075875', 1, 4),
    ('0e9143ff-3713-4e93-a0ce-2a8ce0075875', 1, 3),
    ('0e9143ff-3713-4e93-a0ce-2a8ce0075875', 1, 2),
    ('0e9143ff-3713-4e93-a0ce-2a8ce0075875', 1, 1),
    -- now round three
    ('0e9143ff-3713-4e93-a0ce-2a8ce0075875', 2, 1),
    ('0e9143ff-3713-4e93-a0ce-2a8ce0075875', 3, 1),
    ('0e9143ff-3713-4e93-a0ce-2a8ce0075875', 4, 1),
    ('0e9143ff-3713-4e93-a0ce-2a8ce0075875', 4, 2),
    ('0e9143ff-3713-4e93-a0ce-2a8ce0075875', 4, 3),
    ('0e9143ff-3713-4e93-a0ce-2a8ce0075875', 4, 4),
    ('0e9143ff-3713-4e93-a0ce-2a8ce0075875', 5, 4),
    ('0e9143ff-3713-4e93-a0ce-2a8ce0075875', 6, 4),
    ('0e9143ff-3713-4e93-a0ce-2a8ce0075875', 6, 5),
    ('0e9143ff-3713-4e93-a0ce-2a8ce0075875', 6, 6),
    ('0e9143ff-3713-4e93-a0ce-2a8ce0075875', 6, 7),
    ('0e9143ff-3713-4e93-a0ce-2a8ce0075875', 5, 7),
    ('0e9143ff-3713-4e93-a0ce-2a8ce0075875', 4, 7),
    ('0e9143ff-3713-4e93-a0ce-2a8ce0075875', 3, 7),
    ('0e9143ff-3713-4e93-a0ce-2a8ce0075875', 2, 7),
    ('0e9143ff-3713-4e93-a0ce-2a8ce0075875', 1, 7),
    ('0e9143ff-3713-4e93-a0ce-2a8ce0075875', 1, 6),
    ('0e9143ff-3713-4e93-a0ce-2a8ce0075875', 1, 5),
    ('0e9143ff-3713-4e93-a0ce-2a8ce0075875', 1, 4),
    ('0e9143ff-3713-4e93-a0ce-2a8ce0075875', 1, 3),
    ('0e9143ff-3713-4e93-a0ce-2a8ce0075875', 1, 2),
    ('0e9143ff-3713-4e93-a0ce-2a8ce0075875', 1, 1),
    ('0e9143ff-3713-4e93-a0ce-2a8ce0075875', 2, 1),
    -- now leave
    ('0e9143ff-3713-4e93-a0ce-2a8ce0075875', 2, 0);
-- now leave
-- end tenth mutant

