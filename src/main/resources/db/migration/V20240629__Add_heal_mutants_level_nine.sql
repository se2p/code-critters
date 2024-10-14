insert into `healing_collector` (`id`, xml, `level_id`, `init`, `mutated`, `first_faulty_round`)
values
    (
        '8f08a53f-e92c-47ec-9b59-cb8e34140871',
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
</xml>',
        '8fae4dce-20f6-47ea-aea2-dc44a2d148ed',
        '(this.color) = ("cyan");\n (this.hair) = ("brown");\n',
        false,
        0
    ),
    (
        '867900cf-1663-47f0-933f-66a52bf4951b',
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
</xml>',
        '8fae4dce-20f6-47ea-aea2-dc44a2d148ed',
        '(this.color) = ("pink");\n',
        false,
        0
    ),
    (
        '3ccd5f32-4865-408e-a717-e5ef0018892b',
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
</xml>',
        '8fae4dce-20f6-47ea-aea2-dc44a2d148ed',
        '(this.color) = ("black");\n',
        false,
        0
    ),
    (
        '3b4236b7-8550-488d-bad0-b42a6333e791',
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
                                <field name="OP">LTE</field>
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
</xml>',
        '8fae4dce-20f6-47ea-aea2-dc44a2d148ed',
        '(this.color) = ("blue");\n  (this.hair) = ("red");\n',
        true,
        2
    ),
    (
        '9351e977-3f32-4da0-8294-8390822e8519',
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
                        <field name="NUM">4</field>
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
</xml>',
        '8fae4dce-20f6-47ea-aea2-dc44a2d148ed',
        '(this.color) = ("red");\n',
        true,
        4),
    (
        '46628439-8b87-4eda-9c93-496b2bdc1b44',
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
                                <field name="properties">WHITEBERRIES</field>
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
</xml>',
        '8fae4dce-20f6-47ea-aea2-dc44a2d148ed',
        '(this.color) = ("pink");\n (this.hair) = ("brown");\n',
        true,
        2),
    (
        '961608dc-6084-41f1-a2e2-993fea1c3742',
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
                        <field name="OP">AND</field>
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
</xml>',
        '8fae4dce-20f6-47ea-aea2-dc44a2d148ed',
        '(this.color) = ("cyan");\n',
        true,
        2),
    (
        '971b7be5-348f-4fe2-8abd-41bb5b4ba74c',
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
                        <field name="OP">AND</field>
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
</xml>',
        '8fae4dce-20f6-47ea-aea2-dc44a2d148ed',
        '(this.color) = ("green");\n (this.hair) = ("black");\n',
        true,
        1),
    (
        '5d52d205-bbec-4c3d-adfb-9eedeeccc3b0',
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
                                <field name="OP">NEQ</field>
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
</xml>',
        '8fae4dce-20f6-47ea-aea2-dc44a2d148ed',
        '(this.color) = ("red");\n',
        true,
        2),
    (
        'acce7b5f-8c8e-4572-8d9c-953dbb815759',
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
                                <field name="NUM">3</field>
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
</xml>',
        '8fae4dce-20f6-47ea-aea2-dc44a2d148ed',
        '(this.color) = ("cyan");\n',
        true,
        1
    );


-- is cyan
insert into `codes_per_bush` (`healing_collector_id`, `code`, `bush_type`)
values ('8f08a53f-e92c-47ec-9b59-cb8e34140871',
        'if (((this.redBerryCount) < 2) || (this.color === "cyan")) {\r\n this.redBerryCount = this.redBerryCount + 2;\r\n} else {\r\n this.redBerryCount = this.redBerryCount + 1;\r\n}',
        'RED'),
       ('8f08a53f-e92c-47ec-9b59-cb8e34140871',
        'if (((this.redBerryCount) < 2) || (this.color === "cyan")) {\r\n this.whiteBerryCount = this.whiteBerryCount + 2;\r\n}',
        'WHITE');

insert into `codes_per_bush` (`healing_collector_id`, `code`, `bush_type`)
values ('867900cf-1663-47f0-933f-66a52bf4951b',
        'if (((this.redBerryCount) < 2) || (this.color === "cyan")) {\r\n this.redBerryCount = this.redBerryCount + 2;\r\n} else {\r\n this.redBerryCount = this.redBerryCount + 1;\r\n}',
        'RED'),
       ('867900cf-1663-47f0-933f-66a52bf4951b',
        'if (((this.redBerryCount) < 2) || (this.color === "cyan")) {\r\n this.whiteBerryCount = this.whiteBerryCount + 2;\r\n}',
        'WHITE');

insert into `codes_per_bush` (`healing_collector_id`, `code`, `bush_type`)
values ('3ccd5f32-4865-408e-a717-e5ef0018892b',
        'if (((this.redBerryCount) < 2) || (this.color === "cyan")) {\r\n this.redBerryCount = this.redBerryCount + 2;\r\n} else {\r\n this.redBerryCount = this.redBerryCount + 1;\r\n}',
        'RED'),
       ('3ccd5f32-4865-408e-a717-e5ef0018892b',
        'if (((this.redBerryCount) < 2) || (this.color === "cyan")) {\r\n this.whiteBerryCount = this.whiteBerryCount + 2;\r\n}',
        'WHITE');

insert into `codes_per_bush` (`healing_collector_id`, `code`, `bush_type`)
values ('3b4236b7-8550-488d-bad0-b42a6333e791',
        'if (((this.redBerryCount) <= 2) || (this.color === "cyan")) {\r\n this.redBerryCount = this.redBerryCount + 2;\r\n} else {\r\n this.redBerryCount = this.redBerryCount + 1;\r\n}',
        'RED'),
       ('3b4236b7-8550-488d-bad0-b42a6333e791',
        'if (((this.redBerryCount) <= 2) || (this.color === "cyan")) {\r\n this.whiteBerryCount = this.whiteBerryCount + 2;\r\n}',
        'WHITE');

insert into `codes_per_bush` (`healing_collector_id`, `code`, `bush_type`)
values ('9351e977-3f32-4da0-8294-8390822e8519',
        'if (((this.redBerryCount) < 2) || (this.color === "cyan")) {\r\n this.redBerryCount = this.redBerryCount + 2;\r\n} else {\r\n this.redBerryCount = this.redBerryCount + 1;\r\n}',
        'RED'),
       ('9351e977-3f32-4da0-8294-8390822e8519',
        'if (((this.redBerryCount) < 2) || (this.color === "cyan")) {\r\n this.whiteBerryCount = this.whiteBerryCount + 2;\r\n}',
        'WHITE');

insert into `codes_per_bush` (`healing_collector_id`, `code`, `bush_type`)
values ('46628439-8b87-4eda-9c93-496b2bdc1b44',
        'if (((this.redBerryCount) < 2) || (this.color === "cyan")) {\r\n this.redBerryCount = this.redBerryCount + 2;\r\n} else {\r\n this.redBerryCount = this.redBerryCount + 1;\r\n}',
        'RED'),
       ('46628439-8b87-4eda-9c93-496b2bdc1b44',
        'if (((this.redBerryCount) < 2) || (this.color === "cyan")) {\r\n this.whiteBerryCount = this.whiteBerryCount + 2;\r\n} else {\r\n this.whiteBerryCount = this.whiteBerryCount + 1;\r\n}',
        'WHITE');

-- is cyan
insert into `codes_per_bush` (`healing_collector_id`, `code`, `bush_type`)
values ('961608dc-6084-41f1-a2e2-993fea1c3742',
        'if (((this.redBerryCount) < 2) && (this.color === "cyan")) {\r\n this.redBerryCount = this.redBerryCount + 2;\r\n} else {\r\n this.redBerryCount = this.redBerryCount + 1;\r\n}',
        'RED'),
       ('961608dc-6084-41f1-a2e2-993fea1c3742',
        'if (((this.redBerryCount) < 2) && (this.color === "cyan")) {\r\n this.whiteBerryCount = this.whiteBerryCount + 2;\r\n}',
        'WHITE');


insert into `codes_per_bush` (`healing_collector_id`, `code`, `bush_type`)
values ('971b7be5-348f-4fe2-8abd-41bb5b4ba74c',
        'if (((this.redBerryCount) < 2) && (this.color === "cyan")) {\r\n this.redBerryCount = this.redBerryCount + 2;\r\n} else {\r\n this.redBerryCount = this.redBerryCount + 1;\r\n}',
        'RED'),
       ('971b7be5-348f-4fe2-8abd-41bb5b4ba74c',
        'if (((this.redBerryCount) < 2) && (this.color === "cyan")) {\r\n this.whiteBerryCount = this.whiteBerryCount + 2;\r\n}',
        'WHITE');


insert into `codes_per_bush` (`healing_collector_id`, `code`, `bush_type`)
values ('5d52d205-bbec-4c3d-adfb-9eedeeccc3b0',
        'if (((this.redBerryCount) < 2) || (this.color !== "cyan")) {\r\n this.redBerryCount = this.redBerryCount + 2;\r\n} else {\r\n this.redBerryCount = this.redBerryCount + 1;\r\n}',
        'RED'),
       ('5d52d205-bbec-4c3d-adfb-9eedeeccc3b0',
        'if (((this.redBerryCount) < 2) || (this.color !== "cyan")) {\r\n this.whiteBerryCount = this.whiteBerryCount + 2;\r\n}',
        'WHITE');

-- cont here
insert into `codes_per_bush` (`healing_collector_id`, `code`, `bush_type`)
values ('acce7b5f-8c8e-4572-8d9c-953dbb815759',
        'if (((this.redBerryCount) < 2) || (this.color === "cyan")) {\r\n this.redBerryCount = this.redBerryCount + 2;\r\n} else {\r\n this.redBerryCount = this.redBerryCount + 1;\r\n}',
        'RED'),
       ('acce7b5f-8c8e-4572-8d9c-953dbb815759',
        'if (((this.redBerryCount) < 2) || (this.color === "cyan")) {\r\n this.whiteBerryCount = this.whiteBerryCount + 3;\r\n}',
        'WHITE');


-- first critter
insert into `path_list` (`healing_collector_id`, `x`, `y`)
values ('8f08a53f-e92c-47ec-9b59-cb8e34140871', 0, 1),
       ('8f08a53f-e92c-47ec-9b59-cb8e34140871', 1, 1),
       ('8f08a53f-e92c-47ec-9b59-cb8e34140871', 2, 1),
       ('8f08a53f-e92c-47ec-9b59-cb8e34140871', 3, 1),
       ('8f08a53f-e92c-47ec-9b59-cb8e34140871', 4, 1),
       ('8f08a53f-e92c-47ec-9b59-cb8e34140871', 5, 1),
       ('8f08a53f-e92c-47ec-9b59-cb8e34140871', 5, 2),
       ('8f08a53f-e92c-47ec-9b59-cb8e34140871', 6, 2),
       ('8f08a53f-e92c-47ec-9b59-cb8e34140871', 6, 3),
       ('8f08a53f-e92c-47ec-9b59-cb8e34140871', 6, 4),
       ('8f08a53f-e92c-47ec-9b59-cb8e34140871', 6, 5),
       ('8f08a53f-e92c-47ec-9b59-cb8e34140871', 6, 6),
       ('8f08a53f-e92c-47ec-9b59-cb8e34140871', 5, 6),
       ('8f08a53f-e92c-47ec-9b59-cb8e34140871', 4, 6),
       ('8f08a53f-e92c-47ec-9b59-cb8e34140871', 3, 6),
       ('8f08a53f-e92c-47ec-9b59-cb8e34140871', 2, 6),
       ('8f08a53f-e92c-47ec-9b59-cb8e34140871', 2, 5),
       ('8f08a53f-e92c-47ec-9b59-cb8e34140871', 2, 4),
       ('8f08a53f-e92c-47ec-9b59-cb8e34140871', 1, 4),
       ('8f08a53f-e92c-47ec-9b59-cb8e34140871', 1, 3),
       ('8f08a53f-e92c-47ec-9b59-cb8e34140871', 1, 2),
       -- round two
       ('8f08a53f-e92c-47ec-9b59-cb8e34140871', 1, 1),
       ('8f08a53f-e92c-47ec-9b59-cb8e34140871', 2, 1),
       ('8f08a53f-e92c-47ec-9b59-cb8e34140871', 3, 1),
       ('8f08a53f-e92c-47ec-9b59-cb8e34140871', 4, 1),
       ('8f08a53f-e92c-47ec-9b59-cb8e34140871', 5, 1),
       ('8f08a53f-e92c-47ec-9b59-cb8e34140871', 5, 2),
       ('8f08a53f-e92c-47ec-9b59-cb8e34140871', 6, 2),
       ('8f08a53f-e92c-47ec-9b59-cb8e34140871', 6, 3),
       ('8f08a53f-e92c-47ec-9b59-cb8e34140871', 6, 4),
       ('8f08a53f-e92c-47ec-9b59-cb8e34140871', 6, 5),
       ('8f08a53f-e92c-47ec-9b59-cb8e34140871', 6, 6),
       ('8f08a53f-e92c-47ec-9b59-cb8e34140871', 5, 6),
       ('8f08a53f-e92c-47ec-9b59-cb8e34140871', 4, 6),
       ('8f08a53f-e92c-47ec-9b59-cb8e34140871', 3, 6),
       ('8f08a53f-e92c-47ec-9b59-cb8e34140871', 2, 6),
       ('8f08a53f-e92c-47ec-9b59-cb8e34140871', 2, 5),
       ('8f08a53f-e92c-47ec-9b59-cb8e34140871', 2, 4),
       ('8f08a53f-e92c-47ec-9b59-cb8e34140871', 1, 4),
       ('8f08a53f-e92c-47ec-9b59-cb8e34140871', 1, 3),
       ('8f08a53f-e92c-47ec-9b59-cb8e34140871', 1, 2),
       -- round three
       ('8f08a53f-e92c-47ec-9b59-cb8e34140871', 1, 1),
       ('8f08a53f-e92c-47ec-9b59-cb8e34140871', 2, 1),
       ('8f08a53f-e92c-47ec-9b59-cb8e34140871', 3, 1),
       ('8f08a53f-e92c-47ec-9b59-cb8e34140871', 4, 1),
       ('8f08a53f-e92c-47ec-9b59-cb8e34140871', 5, 1),
       ('8f08a53f-e92c-47ec-9b59-cb8e34140871', 5, 2),
       ('8f08a53f-e92c-47ec-9b59-cb8e34140871', 6, 2),
       ('8f08a53f-e92c-47ec-9b59-cb8e34140871', 6, 3),
       ('8f08a53f-e92c-47ec-9b59-cb8e34140871', 6, 4),
       ('8f08a53f-e92c-47ec-9b59-cb8e34140871', 6, 5),
       ('8f08a53f-e92c-47ec-9b59-cb8e34140871', 6, 6),
       ('8f08a53f-e92c-47ec-9b59-cb8e34140871', 5, 6),
       ('8f08a53f-e92c-47ec-9b59-cb8e34140871', 4, 6),
       ('8f08a53f-e92c-47ec-9b59-cb8e34140871', 3, 6),
       ('8f08a53f-e92c-47ec-9b59-cb8e34140871', 2, 6),
       ('8f08a53f-e92c-47ec-9b59-cb8e34140871', 2, 5),
       ('8f08a53f-e92c-47ec-9b59-cb8e34140871', 2, 4),
       ('8f08a53f-e92c-47ec-9b59-cb8e34140871', 1, 4),
       ('8f08a53f-e92c-47ec-9b59-cb8e34140871', 1, 3),
       ('8f08a53f-e92c-47ec-9b59-cb8e34140871', 1, 2),
       -- leave
       ('8f08a53f-e92c-47ec-9b59-cb8e34140871', 1, 1),
       ('8f08a53f-e92c-47ec-9b59-cb8e34140871', 0, 1);


-- second critter
insert into `path_list` (`healing_collector_id`, `x`, `y`)
values ('867900cf-1663-47f0-933f-66a52bf4951b', 0, 1),
       ('867900cf-1663-47f0-933f-66a52bf4951b', 1, 1),
       ('867900cf-1663-47f0-933f-66a52bf4951b', 2, 1),
       ('867900cf-1663-47f0-933f-66a52bf4951b', 3, 1),
       ('867900cf-1663-47f0-933f-66a52bf4951b', 4, 1),
       ('867900cf-1663-47f0-933f-66a52bf4951b', 5, 1),
       ('867900cf-1663-47f0-933f-66a52bf4951b', 5, 2),
       ('867900cf-1663-47f0-933f-66a52bf4951b', 6, 2),
       ('867900cf-1663-47f0-933f-66a52bf4951b', 6, 3),
       ('867900cf-1663-47f0-933f-66a52bf4951b', 6, 4),
       ('867900cf-1663-47f0-933f-66a52bf4951b', 6, 5),
       ('867900cf-1663-47f0-933f-66a52bf4951b', 6, 6),
       ('867900cf-1663-47f0-933f-66a52bf4951b', 5, 6),
       ('867900cf-1663-47f0-933f-66a52bf4951b', 4, 6),
       ('867900cf-1663-47f0-933f-66a52bf4951b', 3, 6),
       ('867900cf-1663-47f0-933f-66a52bf4951b', 2, 6),
       ('867900cf-1663-47f0-933f-66a52bf4951b', 2, 5),
       ('867900cf-1663-47f0-933f-66a52bf4951b', 2, 4),
       ('867900cf-1663-47f0-933f-66a52bf4951b', 1, 4),
       ('867900cf-1663-47f0-933f-66a52bf4951b', 1, 3),
       ('867900cf-1663-47f0-933f-66a52bf4951b', 1, 2),
       -- round two
       ('867900cf-1663-47f0-933f-66a52bf4951b', 1, 1),
       ('867900cf-1663-47f0-933f-66a52bf4951b', 2, 1),
       ('867900cf-1663-47f0-933f-66a52bf4951b', 3, 1),
       ('867900cf-1663-47f0-933f-66a52bf4951b', 4, 1),
       ('867900cf-1663-47f0-933f-66a52bf4951b', 5, 1),
       ('867900cf-1663-47f0-933f-66a52bf4951b', 5, 2),
       ('867900cf-1663-47f0-933f-66a52bf4951b', 6, 2),
       ('867900cf-1663-47f0-933f-66a52bf4951b', 6, 3),
       ('867900cf-1663-47f0-933f-66a52bf4951b', 6, 4),
       ('867900cf-1663-47f0-933f-66a52bf4951b', 6, 5),
       ('867900cf-1663-47f0-933f-66a52bf4951b', 6, 6),
       ('867900cf-1663-47f0-933f-66a52bf4951b', 5, 6),
       ('867900cf-1663-47f0-933f-66a52bf4951b', 4, 6),
       ('867900cf-1663-47f0-933f-66a52bf4951b', 3, 6),
       ('867900cf-1663-47f0-933f-66a52bf4951b', 2, 6),
       ('867900cf-1663-47f0-933f-66a52bf4951b', 2, 5),
       ('867900cf-1663-47f0-933f-66a52bf4951b', 2, 4),
       ('867900cf-1663-47f0-933f-66a52bf4951b', 1, 4),
       ('867900cf-1663-47f0-933f-66a52bf4951b', 1, 3),
       ('867900cf-1663-47f0-933f-66a52bf4951b', 1, 2),
       -- round three
       ('867900cf-1663-47f0-933f-66a52bf4951b', 1, 1),
       ('867900cf-1663-47f0-933f-66a52bf4951b', 2, 1),
       ('867900cf-1663-47f0-933f-66a52bf4951b', 3, 1),
       ('867900cf-1663-47f0-933f-66a52bf4951b', 4, 1),
       ('867900cf-1663-47f0-933f-66a52bf4951b', 5, 1),
       ('867900cf-1663-47f0-933f-66a52bf4951b', 5, 2),
       ('867900cf-1663-47f0-933f-66a52bf4951b', 6, 2),
       ('867900cf-1663-47f0-933f-66a52bf4951b', 6, 3),
       ('867900cf-1663-47f0-933f-66a52bf4951b', 6, 4),
       ('867900cf-1663-47f0-933f-66a52bf4951b', 6, 5),
       ('867900cf-1663-47f0-933f-66a52bf4951b', 6, 6),
       ('867900cf-1663-47f0-933f-66a52bf4951b', 5, 6),
       ('867900cf-1663-47f0-933f-66a52bf4951b', 4, 6),
       ('867900cf-1663-47f0-933f-66a52bf4951b', 3, 6),
       ('867900cf-1663-47f0-933f-66a52bf4951b', 2, 6),
       ('867900cf-1663-47f0-933f-66a52bf4951b', 2, 5),
       ('867900cf-1663-47f0-933f-66a52bf4951b', 2, 4),
       ('867900cf-1663-47f0-933f-66a52bf4951b', 1, 4),
       ('867900cf-1663-47f0-933f-66a52bf4951b', 1, 3),
       ('867900cf-1663-47f0-933f-66a52bf4951b', 1, 2),
       -- leave
       ('867900cf-1663-47f0-933f-66a52bf4951b', 1, 1),
       ('867900cf-1663-47f0-933f-66a52bf4951b', 0, 1);


-- third critter
insert into `path_list` (`healing_collector_id`, `x`, `y`)
values ('3ccd5f32-4865-408e-a717-e5ef0018892b', 0, 1),
       ('3ccd5f32-4865-408e-a717-e5ef0018892b', 1, 1),
       ('3ccd5f32-4865-408e-a717-e5ef0018892b', 2, 1),
       ('3ccd5f32-4865-408e-a717-e5ef0018892b', 3, 1),
       ('3ccd5f32-4865-408e-a717-e5ef0018892b', 4, 1),
       ('3ccd5f32-4865-408e-a717-e5ef0018892b', 5, 1),
       ('3ccd5f32-4865-408e-a717-e5ef0018892b', 5, 2),
       ('3ccd5f32-4865-408e-a717-e5ef0018892b', 6, 2),
       ('3ccd5f32-4865-408e-a717-e5ef0018892b', 6, 3),
       ('3ccd5f32-4865-408e-a717-e5ef0018892b', 6, 4),
       ('3ccd5f32-4865-408e-a717-e5ef0018892b', 6, 5),
       ('3ccd5f32-4865-408e-a717-e5ef0018892b', 6, 6),
       ('3ccd5f32-4865-408e-a717-e5ef0018892b', 5, 6),
       ('3ccd5f32-4865-408e-a717-e5ef0018892b', 4, 6),
       ('3ccd5f32-4865-408e-a717-e5ef0018892b', 3, 6),
       ('3ccd5f32-4865-408e-a717-e5ef0018892b', 2, 6),
       ('3ccd5f32-4865-408e-a717-e5ef0018892b', 2, 5),
       ('3ccd5f32-4865-408e-a717-e5ef0018892b', 2, 4),
       ('3ccd5f32-4865-408e-a717-e5ef0018892b', 1, 4),
       ('3ccd5f32-4865-408e-a717-e5ef0018892b', 1, 3),
       ('3ccd5f32-4865-408e-a717-e5ef0018892b', 1, 2),
       -- round two
       ('3ccd5f32-4865-408e-a717-e5ef0018892b', 1, 1),
       ('3ccd5f32-4865-408e-a717-e5ef0018892b', 2, 1),
       ('3ccd5f32-4865-408e-a717-e5ef0018892b', 3, 1),
       ('3ccd5f32-4865-408e-a717-e5ef0018892b', 4, 1),
       ('3ccd5f32-4865-408e-a717-e5ef0018892b', 5, 1),
       ('3ccd5f32-4865-408e-a717-e5ef0018892b', 5, 2),
       ('3ccd5f32-4865-408e-a717-e5ef0018892b', 6, 2),
       ('3ccd5f32-4865-408e-a717-e5ef0018892b', 6, 3),
       ('3ccd5f32-4865-408e-a717-e5ef0018892b', 6, 4),
       ('3ccd5f32-4865-408e-a717-e5ef0018892b', 6, 5),
       ('3ccd5f32-4865-408e-a717-e5ef0018892b', 6, 6),
       ('3ccd5f32-4865-408e-a717-e5ef0018892b', 5, 6),
       ('3ccd5f32-4865-408e-a717-e5ef0018892b', 4, 6),
       ('3ccd5f32-4865-408e-a717-e5ef0018892b', 3, 6),
       ('3ccd5f32-4865-408e-a717-e5ef0018892b', 2, 6),
       ('3ccd5f32-4865-408e-a717-e5ef0018892b', 2, 5),
       ('3ccd5f32-4865-408e-a717-e5ef0018892b', 2, 4),
       ('3ccd5f32-4865-408e-a717-e5ef0018892b', 1, 4),
       ('3ccd5f32-4865-408e-a717-e5ef0018892b', 1, 3),
       ('3ccd5f32-4865-408e-a717-e5ef0018892b', 1, 2),
       -- round three
       ('3ccd5f32-4865-408e-a717-e5ef0018892b', 1, 1),
       ('3ccd5f32-4865-408e-a717-e5ef0018892b', 2, 1),
       ('3ccd5f32-4865-408e-a717-e5ef0018892b', 3, 1),
       ('3ccd5f32-4865-408e-a717-e5ef0018892b', 4, 1),
       ('3ccd5f32-4865-408e-a717-e5ef0018892b', 5, 1),
       ('3ccd5f32-4865-408e-a717-e5ef0018892b', 5, 2),
       ('3ccd5f32-4865-408e-a717-e5ef0018892b', 6, 2),
       ('3ccd5f32-4865-408e-a717-e5ef0018892b', 6, 3),
       ('3ccd5f32-4865-408e-a717-e5ef0018892b', 6, 4),
       ('3ccd5f32-4865-408e-a717-e5ef0018892b', 6, 5),
       ('3ccd5f32-4865-408e-a717-e5ef0018892b', 6, 6),
       ('3ccd5f32-4865-408e-a717-e5ef0018892b', 5, 6),
       ('3ccd5f32-4865-408e-a717-e5ef0018892b', 4, 6),
       ('3ccd5f32-4865-408e-a717-e5ef0018892b', 3, 6),
       ('3ccd5f32-4865-408e-a717-e5ef0018892b', 2, 6),
       ('3ccd5f32-4865-408e-a717-e5ef0018892b', 2, 5),
       ('3ccd5f32-4865-408e-a717-e5ef0018892b', 2, 4),
       ('3ccd5f32-4865-408e-a717-e5ef0018892b', 1, 4),
       ('3ccd5f32-4865-408e-a717-e5ef0018892b', 1, 3),
       ('3ccd5f32-4865-408e-a717-e5ef0018892b', 1, 2),
       -- leave
       ('3ccd5f32-4865-408e-a717-e5ef0018892b', 1, 1),
       ('3ccd5f32-4865-408e-a717-e5ef0018892b', 0, 1);


-- forth critter
insert into `path_list` (`healing_collector_id`, `x`, `y`)
values ('3b4236b7-8550-488d-bad0-b42a6333e791', 0, 1),
       ('3b4236b7-8550-488d-bad0-b42a6333e791', 1, 1),
       ('3b4236b7-8550-488d-bad0-b42a6333e791', 2, 1),
       ('3b4236b7-8550-488d-bad0-b42a6333e791', 3, 1),
       ('3b4236b7-8550-488d-bad0-b42a6333e791', 4, 1),
       ('3b4236b7-8550-488d-bad0-b42a6333e791', 5, 1),
       ('3b4236b7-8550-488d-bad0-b42a6333e791', 5, 2),
       ('3b4236b7-8550-488d-bad0-b42a6333e791', 6, 2),
       ('3b4236b7-8550-488d-bad0-b42a6333e791', 6, 3),
       ('3b4236b7-8550-488d-bad0-b42a6333e791', 6, 4),
       ('3b4236b7-8550-488d-bad0-b42a6333e791', 6, 5),
       ('3b4236b7-8550-488d-bad0-b42a6333e791', 6, 6),
       ('3b4236b7-8550-488d-bad0-b42a6333e791', 5, 6),
       ('3b4236b7-8550-488d-bad0-b42a6333e791', 4, 6),
       ('3b4236b7-8550-488d-bad0-b42a6333e791', 3, 6),
       ('3b4236b7-8550-488d-bad0-b42a6333e791', 2, 6),
       ('3b4236b7-8550-488d-bad0-b42a6333e791', 2, 5),
       ('3b4236b7-8550-488d-bad0-b42a6333e791', 2, 4),
       ('3b4236b7-8550-488d-bad0-b42a6333e791', 1, 4),
       ('3b4236b7-8550-488d-bad0-b42a6333e791', 1, 3),
       ('3b4236b7-8550-488d-bad0-b42a6333e791', 1, 2),
       -- round two
       ('3b4236b7-8550-488d-bad0-b42a6333e791', 1, 1),
       ('3b4236b7-8550-488d-bad0-b42a6333e791', 2, 1),
       ('3b4236b7-8550-488d-bad0-b42a6333e791', 3, 1),
       ('3b4236b7-8550-488d-bad0-b42a6333e791', 4, 1),
       ('3b4236b7-8550-488d-bad0-b42a6333e791', 5, 1),
       ('3b4236b7-8550-488d-bad0-b42a6333e791', 5, 2),
       ('3b4236b7-8550-488d-bad0-b42a6333e791', 6, 2),
       ('3b4236b7-8550-488d-bad0-b42a6333e791', 6, 3),
       ('3b4236b7-8550-488d-bad0-b42a6333e791', 6, 4),
       ('3b4236b7-8550-488d-bad0-b42a6333e791', 6, 5),
       ('3b4236b7-8550-488d-bad0-b42a6333e791', 6, 6),
       ('3b4236b7-8550-488d-bad0-b42a6333e791', 5, 6),
       ('3b4236b7-8550-488d-bad0-b42a6333e791', 4, 6),
       ('3b4236b7-8550-488d-bad0-b42a6333e791', 3, 6),
       ('3b4236b7-8550-488d-bad0-b42a6333e791', 2, 6),
       ('3b4236b7-8550-488d-bad0-b42a6333e791', 2, 5),
       ('3b4236b7-8550-488d-bad0-b42a6333e791', 2, 4),
       ('3b4236b7-8550-488d-bad0-b42a6333e791', 1, 4),
       ('3b4236b7-8550-488d-bad0-b42a6333e791', 1, 3),
       ('3b4236b7-8550-488d-bad0-b42a6333e791', 1, 2),
       -- round three
       ('3b4236b7-8550-488d-bad0-b42a6333e791', 1, 1),
       ('3b4236b7-8550-488d-bad0-b42a6333e791', 2, 1),
       ('3b4236b7-8550-488d-bad0-b42a6333e791', 3, 1),
       ('3b4236b7-8550-488d-bad0-b42a6333e791', 4, 1),
       ('3b4236b7-8550-488d-bad0-b42a6333e791', 5, 1),
       ('3b4236b7-8550-488d-bad0-b42a6333e791', 5, 2),
       ('3b4236b7-8550-488d-bad0-b42a6333e791', 6, 2),
       ('3b4236b7-8550-488d-bad0-b42a6333e791', 6, 3),
       ('3b4236b7-8550-488d-bad0-b42a6333e791', 6, 4),
       ('3b4236b7-8550-488d-bad0-b42a6333e791', 6, 5),
       ('3b4236b7-8550-488d-bad0-b42a6333e791', 6, 6),
       ('3b4236b7-8550-488d-bad0-b42a6333e791', 5, 6),
       ('3b4236b7-8550-488d-bad0-b42a6333e791', 4, 6),
       ('3b4236b7-8550-488d-bad0-b42a6333e791', 3, 6),
       ('3b4236b7-8550-488d-bad0-b42a6333e791', 2, 6),
       ('3b4236b7-8550-488d-bad0-b42a6333e791', 2, 5),
       ('3b4236b7-8550-488d-bad0-b42a6333e791', 2, 4),
       ('3b4236b7-8550-488d-bad0-b42a6333e791', 1, 4),
       ('3b4236b7-8550-488d-bad0-b42a6333e791', 1, 3),
       ('3b4236b7-8550-488d-bad0-b42a6333e791', 1, 2),
       -- leave
       ('3b4236b7-8550-488d-bad0-b42a6333e791', 1, 1),
       ('3b4236b7-8550-488d-bad0-b42a6333e791', 0, 1);


-- fifth critter
insert into `path_list` (`healing_collector_id`, `x`, `y`)
values ('9351e977-3f32-4da0-8294-8390822e8519', 0, 1),
       ('9351e977-3f32-4da0-8294-8390822e8519', 1, 1),
       ('9351e977-3f32-4da0-8294-8390822e8519', 2, 1),
       ('9351e977-3f32-4da0-8294-8390822e8519', 3, 1),
       ('9351e977-3f32-4da0-8294-8390822e8519', 4, 1),
       ('9351e977-3f32-4da0-8294-8390822e8519', 5, 1),
       ('9351e977-3f32-4da0-8294-8390822e8519', 5, 2),
       ('9351e977-3f32-4da0-8294-8390822e8519', 6, 2),
       ('9351e977-3f32-4da0-8294-8390822e8519', 6, 3),
       ('9351e977-3f32-4da0-8294-8390822e8519', 6, 4),
       ('9351e977-3f32-4da0-8294-8390822e8519', 6, 5),
       ('9351e977-3f32-4da0-8294-8390822e8519', 6, 6),
       ('9351e977-3f32-4da0-8294-8390822e8519', 5, 6),
       ('9351e977-3f32-4da0-8294-8390822e8519', 4, 6),
       ('9351e977-3f32-4da0-8294-8390822e8519', 3, 6),
       ('9351e977-3f32-4da0-8294-8390822e8519', 2, 6),
       ('9351e977-3f32-4da0-8294-8390822e8519', 2, 5),
       ('9351e977-3f32-4da0-8294-8390822e8519', 2, 4),
       ('9351e977-3f32-4da0-8294-8390822e8519', 1, 4),
       ('9351e977-3f32-4da0-8294-8390822e8519', 1, 3),
       ('9351e977-3f32-4da0-8294-8390822e8519', 1, 2),
       -- round two
       ('9351e977-3f32-4da0-8294-8390822e8519', 1, 1),
       ('9351e977-3f32-4da0-8294-8390822e8519', 2, 1),
       ('9351e977-3f32-4da0-8294-8390822e8519', 3, 1),
       ('9351e977-3f32-4da0-8294-8390822e8519', 4, 1),
       ('9351e977-3f32-4da0-8294-8390822e8519', 5, 1),
       ('9351e977-3f32-4da0-8294-8390822e8519', 5, 2),
       ('9351e977-3f32-4da0-8294-8390822e8519', 6, 2),
       ('9351e977-3f32-4da0-8294-8390822e8519', 6, 3),
       ('9351e977-3f32-4da0-8294-8390822e8519', 6, 4),
       ('9351e977-3f32-4da0-8294-8390822e8519', 6, 5),
       ('9351e977-3f32-4da0-8294-8390822e8519', 6, 6),
       ('9351e977-3f32-4da0-8294-8390822e8519', 5, 6),
       ('9351e977-3f32-4da0-8294-8390822e8519', 4, 6),
       ('9351e977-3f32-4da0-8294-8390822e8519', 3, 6),
       ('9351e977-3f32-4da0-8294-8390822e8519', 2, 6),
       ('9351e977-3f32-4da0-8294-8390822e8519', 2, 5),
       ('9351e977-3f32-4da0-8294-8390822e8519', 2, 4),
       ('9351e977-3f32-4da0-8294-8390822e8519', 1, 4),
       ('9351e977-3f32-4da0-8294-8390822e8519', 1, 3),
       ('9351e977-3f32-4da0-8294-8390822e8519', 1, 2),
       -- round three
       ('9351e977-3f32-4da0-8294-8390822e8519', 1, 1),
       ('9351e977-3f32-4da0-8294-8390822e8519', 2, 1),
       ('9351e977-3f32-4da0-8294-8390822e8519', 3, 1),
       ('9351e977-3f32-4da0-8294-8390822e8519', 4, 1),
       ('9351e977-3f32-4da0-8294-8390822e8519', 5, 1),
       ('9351e977-3f32-4da0-8294-8390822e8519', 5, 2),
       ('9351e977-3f32-4da0-8294-8390822e8519', 6, 2),
       ('9351e977-3f32-4da0-8294-8390822e8519', 6, 3),
       ('9351e977-3f32-4da0-8294-8390822e8519', 6, 4),
       ('9351e977-3f32-4da0-8294-8390822e8519', 6, 5),
       ('9351e977-3f32-4da0-8294-8390822e8519', 6, 6),
       ('9351e977-3f32-4da0-8294-8390822e8519', 5, 6),
       ('9351e977-3f32-4da0-8294-8390822e8519', 4, 6),
       ('9351e977-3f32-4da0-8294-8390822e8519', 3, 6),
       ('9351e977-3f32-4da0-8294-8390822e8519', 2, 6),
       ('9351e977-3f32-4da0-8294-8390822e8519', 2, 5),
       ('9351e977-3f32-4da0-8294-8390822e8519', 2, 4),
       ('9351e977-3f32-4da0-8294-8390822e8519', 1, 4),
       ('9351e977-3f32-4da0-8294-8390822e8519', 1, 3),
       ('9351e977-3f32-4da0-8294-8390822e8519', 1, 2),
       -- round four
       ('9351e977-3f32-4da0-8294-8390822e8519', 1, 1),
       ('9351e977-3f32-4da0-8294-8390822e8519', 2, 1),
       ('9351e977-3f32-4da0-8294-8390822e8519', 3, 1),
       ('9351e977-3f32-4da0-8294-8390822e8519', 4, 1),
       ('9351e977-3f32-4da0-8294-8390822e8519', 5, 1),
       ('9351e977-3f32-4da0-8294-8390822e8519', 5, 2),
       ('9351e977-3f32-4da0-8294-8390822e8519', 6, 2),
       ('9351e977-3f32-4da0-8294-8390822e8519', 6, 3),
       ('9351e977-3f32-4da0-8294-8390822e8519', 6, 4),
       ('9351e977-3f32-4da0-8294-8390822e8519', 6, 5),
       ('9351e977-3f32-4da0-8294-8390822e8519', 6, 6),
       ('9351e977-3f32-4da0-8294-8390822e8519', 5, 6),
       ('9351e977-3f32-4da0-8294-8390822e8519', 4, 6),
       ('9351e977-3f32-4da0-8294-8390822e8519', 3, 6),
       ('9351e977-3f32-4da0-8294-8390822e8519', 2, 6),
       ('9351e977-3f32-4da0-8294-8390822e8519', 2, 5),
       ('9351e977-3f32-4da0-8294-8390822e8519', 2, 4),
       ('9351e977-3f32-4da0-8294-8390822e8519', 1, 4),
       ('9351e977-3f32-4da0-8294-8390822e8519', 1, 3),
       ('9351e977-3f32-4da0-8294-8390822e8519', 1, 2),
       -- leave
       ('9351e977-3f32-4da0-8294-8390822e8519', 1, 1),
       ('9351e977-3f32-4da0-8294-8390822e8519', 0, 1);


-- sixth critter
insert into `path_list` (`healing_collector_id`, `x`, `y`)
values ('46628439-8b87-4eda-9c93-496b2bdc1b44', 0, 1),
       ('46628439-8b87-4eda-9c93-496b2bdc1b44', 1, 1),
       ('46628439-8b87-4eda-9c93-496b2bdc1b44', 2, 1),
       ('46628439-8b87-4eda-9c93-496b2bdc1b44', 3, 1),
       ('46628439-8b87-4eda-9c93-496b2bdc1b44', 4, 1),
       ('46628439-8b87-4eda-9c93-496b2bdc1b44', 5, 1),
       ('46628439-8b87-4eda-9c93-496b2bdc1b44', 5, 2),
       ('46628439-8b87-4eda-9c93-496b2bdc1b44', 6, 2),
       ('46628439-8b87-4eda-9c93-496b2bdc1b44', 6, 3),
       ('46628439-8b87-4eda-9c93-496b2bdc1b44', 6, 4),
       ('46628439-8b87-4eda-9c93-496b2bdc1b44', 6, 5),
       ('46628439-8b87-4eda-9c93-496b2bdc1b44', 6, 6),
       ('46628439-8b87-4eda-9c93-496b2bdc1b44', 5, 6),
       ('46628439-8b87-4eda-9c93-496b2bdc1b44', 4, 6),
       ('46628439-8b87-4eda-9c93-496b2bdc1b44', 3, 6),
       ('46628439-8b87-4eda-9c93-496b2bdc1b44', 2, 6),
       ('46628439-8b87-4eda-9c93-496b2bdc1b44', 2, 5),
       ('46628439-8b87-4eda-9c93-496b2bdc1b44', 2, 4),
       ('46628439-8b87-4eda-9c93-496b2bdc1b44', 1, 4),
       ('46628439-8b87-4eda-9c93-496b2bdc1b44', 1, 3),
       ('46628439-8b87-4eda-9c93-496b2bdc1b44', 1, 2),
       -- round two
       ('46628439-8b87-4eda-9c93-496b2bdc1b44', 1, 1),
       ('46628439-8b87-4eda-9c93-496b2bdc1b44', 2, 1),
       ('46628439-8b87-4eda-9c93-496b2bdc1b44', 3, 1),
       ('46628439-8b87-4eda-9c93-496b2bdc1b44', 4, 1),
       ('46628439-8b87-4eda-9c93-496b2bdc1b44', 5, 1),
       ('46628439-8b87-4eda-9c93-496b2bdc1b44', 5, 2),
       ('46628439-8b87-4eda-9c93-496b2bdc1b44', 6, 2),
       ('46628439-8b87-4eda-9c93-496b2bdc1b44', 6, 3),
       ('46628439-8b87-4eda-9c93-496b2bdc1b44', 6, 4),
       ('46628439-8b87-4eda-9c93-496b2bdc1b44', 6, 5),
       ('46628439-8b87-4eda-9c93-496b2bdc1b44', 6, 6),
       ('46628439-8b87-4eda-9c93-496b2bdc1b44', 5, 6),
       ('46628439-8b87-4eda-9c93-496b2bdc1b44', 4, 6),
       ('46628439-8b87-4eda-9c93-496b2bdc1b44', 3, 6),
       ('46628439-8b87-4eda-9c93-496b2bdc1b44', 2, 6),
       ('46628439-8b87-4eda-9c93-496b2bdc1b44', 2, 5),
       ('46628439-8b87-4eda-9c93-496b2bdc1b44', 2, 4),
       ('46628439-8b87-4eda-9c93-496b2bdc1b44', 1, 4),
       ('46628439-8b87-4eda-9c93-496b2bdc1b44', 1, 3),
       ('46628439-8b87-4eda-9c93-496b2bdc1b44', 1, 2),
       -- round three
       ('46628439-8b87-4eda-9c93-496b2bdc1b44', 1, 1),
       ('46628439-8b87-4eda-9c93-496b2bdc1b44', 2, 1),
       ('46628439-8b87-4eda-9c93-496b2bdc1b44', 3, 1),
       ('46628439-8b87-4eda-9c93-496b2bdc1b44', 4, 1),
       ('46628439-8b87-4eda-9c93-496b2bdc1b44', 5, 1),
       ('46628439-8b87-4eda-9c93-496b2bdc1b44', 5, 2),
       ('46628439-8b87-4eda-9c93-496b2bdc1b44', 6, 2),
       ('46628439-8b87-4eda-9c93-496b2bdc1b44', 6, 3),
       ('46628439-8b87-4eda-9c93-496b2bdc1b44', 6, 4),
       ('46628439-8b87-4eda-9c93-496b2bdc1b44', 6, 5),
       ('46628439-8b87-4eda-9c93-496b2bdc1b44', 6, 6),
       ('46628439-8b87-4eda-9c93-496b2bdc1b44', 5, 6),
       ('46628439-8b87-4eda-9c93-496b2bdc1b44', 4, 6),
       ('46628439-8b87-4eda-9c93-496b2bdc1b44', 3, 6),
       ('46628439-8b87-4eda-9c93-496b2bdc1b44', 2, 6),
       ('46628439-8b87-4eda-9c93-496b2bdc1b44', 2, 5),
       ('46628439-8b87-4eda-9c93-496b2bdc1b44', 2, 4),
       ('46628439-8b87-4eda-9c93-496b2bdc1b44', 1, 4),
       ('46628439-8b87-4eda-9c93-496b2bdc1b44', 1, 3),
       ('46628439-8b87-4eda-9c93-496b2bdc1b44', 1, 2),
       -- leave
       ('46628439-8b87-4eda-9c93-496b2bdc1b44', 1, 1),
       ('46628439-8b87-4eda-9c93-496b2bdc1b44', 0, 1);


-- seventh critter
insert into `path_list` (`healing_collector_id`, `x`, `y`)
values ('961608dc-6084-41f1-a2e2-993fea1c3742', 0, 1),
       ('961608dc-6084-41f1-a2e2-993fea1c3742', 1, 1),
       ('961608dc-6084-41f1-a2e2-993fea1c3742', 2, 1),
       ('961608dc-6084-41f1-a2e2-993fea1c3742', 3, 1),
       ('961608dc-6084-41f1-a2e2-993fea1c3742', 4, 1),
       ('961608dc-6084-41f1-a2e2-993fea1c3742', 5, 1),
       ('961608dc-6084-41f1-a2e2-993fea1c3742', 5, 2),
       ('961608dc-6084-41f1-a2e2-993fea1c3742', 6, 2),
       ('961608dc-6084-41f1-a2e2-993fea1c3742', 6, 3),
       ('961608dc-6084-41f1-a2e2-993fea1c3742', 6, 4),
       ('961608dc-6084-41f1-a2e2-993fea1c3742', 6, 5),
       ('961608dc-6084-41f1-a2e2-993fea1c3742', 6, 6),
       ('961608dc-6084-41f1-a2e2-993fea1c3742', 5, 6),
       ('961608dc-6084-41f1-a2e2-993fea1c3742', 4, 6),
       ('961608dc-6084-41f1-a2e2-993fea1c3742', 3, 6),
       ('961608dc-6084-41f1-a2e2-993fea1c3742', 2, 6),
       ('961608dc-6084-41f1-a2e2-993fea1c3742', 2, 5),
       ('961608dc-6084-41f1-a2e2-993fea1c3742', 2, 4),
       ('961608dc-6084-41f1-a2e2-993fea1c3742', 1, 4),
       ('961608dc-6084-41f1-a2e2-993fea1c3742', 1, 3),
       ('961608dc-6084-41f1-a2e2-993fea1c3742', 1, 2),
       -- round two
       ('961608dc-6084-41f1-a2e2-993fea1c3742', 1, 1),
       ('961608dc-6084-41f1-a2e2-993fea1c3742', 2, 1),
       ('961608dc-6084-41f1-a2e2-993fea1c3742', 3, 1),
       ('961608dc-6084-41f1-a2e2-993fea1c3742', 4, 1),
       ('961608dc-6084-41f1-a2e2-993fea1c3742', 5, 1),
       ('961608dc-6084-41f1-a2e2-993fea1c3742', 5, 2),
       ('961608dc-6084-41f1-a2e2-993fea1c3742', 6, 2),
       ('961608dc-6084-41f1-a2e2-993fea1c3742', 6, 3),
       ('961608dc-6084-41f1-a2e2-993fea1c3742', 6, 4),
       ('961608dc-6084-41f1-a2e2-993fea1c3742', 6, 5),
       ('961608dc-6084-41f1-a2e2-993fea1c3742', 6, 6),
       ('961608dc-6084-41f1-a2e2-993fea1c3742', 5, 6),
       ('961608dc-6084-41f1-a2e2-993fea1c3742', 4, 6),
       ('961608dc-6084-41f1-a2e2-993fea1c3742', 3, 6),
       ('961608dc-6084-41f1-a2e2-993fea1c3742', 2, 6),
       ('961608dc-6084-41f1-a2e2-993fea1c3742', 2, 5),
       ('961608dc-6084-41f1-a2e2-993fea1c3742', 2, 4),
       ('961608dc-6084-41f1-a2e2-993fea1c3742', 1, 4),
       ('961608dc-6084-41f1-a2e2-993fea1c3742', 1, 3),
       ('961608dc-6084-41f1-a2e2-993fea1c3742', 1, 2),
       -- round three
       ('961608dc-6084-41f1-a2e2-993fea1c3742', 1, 1),
       ('961608dc-6084-41f1-a2e2-993fea1c3742', 2, 1),
       ('961608dc-6084-41f1-a2e2-993fea1c3742', 3, 1),
       ('961608dc-6084-41f1-a2e2-993fea1c3742', 4, 1),
       ('961608dc-6084-41f1-a2e2-993fea1c3742', 5, 1),
       ('961608dc-6084-41f1-a2e2-993fea1c3742', 5, 2),
       ('961608dc-6084-41f1-a2e2-993fea1c3742', 6, 2),
       ('961608dc-6084-41f1-a2e2-993fea1c3742', 6, 3),
       ('961608dc-6084-41f1-a2e2-993fea1c3742', 6, 4),
       ('961608dc-6084-41f1-a2e2-993fea1c3742', 6, 5),
       ('961608dc-6084-41f1-a2e2-993fea1c3742', 6, 6),
       ('961608dc-6084-41f1-a2e2-993fea1c3742', 5, 6),
       ('961608dc-6084-41f1-a2e2-993fea1c3742', 4, 6),
       ('961608dc-6084-41f1-a2e2-993fea1c3742', 3, 6),
       ('961608dc-6084-41f1-a2e2-993fea1c3742', 2, 6),
       ('961608dc-6084-41f1-a2e2-993fea1c3742', 2, 5),
       ('961608dc-6084-41f1-a2e2-993fea1c3742', 2, 4),
       ('961608dc-6084-41f1-a2e2-993fea1c3742', 1, 4),
       ('961608dc-6084-41f1-a2e2-993fea1c3742', 1, 3),
       ('961608dc-6084-41f1-a2e2-993fea1c3742', 1, 2),
       -- leave
       ('961608dc-6084-41f1-a2e2-993fea1c3742', 1, 1),
       ('961608dc-6084-41f1-a2e2-993fea1c3742', 0, 1);


-- eighths critter
insert into `path_list` (`healing_collector_id`, `x`, `y`)
values ('971b7be5-348f-4fe2-8abd-41bb5b4ba74c', 0, 1),
       ('971b7be5-348f-4fe2-8abd-41bb5b4ba74c', 1, 1),
       ('971b7be5-348f-4fe2-8abd-41bb5b4ba74c', 2, 1),
       ('971b7be5-348f-4fe2-8abd-41bb5b4ba74c', 3, 1),
       ('971b7be5-348f-4fe2-8abd-41bb5b4ba74c', 4, 1),
       ('971b7be5-348f-4fe2-8abd-41bb5b4ba74c', 5, 1),
       ('971b7be5-348f-4fe2-8abd-41bb5b4ba74c', 5, 2),
       ('971b7be5-348f-4fe2-8abd-41bb5b4ba74c', 6, 2),
       ('971b7be5-348f-4fe2-8abd-41bb5b4ba74c', 6, 3),
       ('971b7be5-348f-4fe2-8abd-41bb5b4ba74c', 6, 4),
       ('971b7be5-348f-4fe2-8abd-41bb5b4ba74c', 6, 5),
       ('971b7be5-348f-4fe2-8abd-41bb5b4ba74c', 6, 6),
       ('971b7be5-348f-4fe2-8abd-41bb5b4ba74c', 5, 6),
       ('971b7be5-348f-4fe2-8abd-41bb5b4ba74c', 4, 6),
       ('971b7be5-348f-4fe2-8abd-41bb5b4ba74c', 3, 6),
       ('971b7be5-348f-4fe2-8abd-41bb5b4ba74c', 2, 6),
       ('971b7be5-348f-4fe2-8abd-41bb5b4ba74c', 2, 5),
       ('971b7be5-348f-4fe2-8abd-41bb5b4ba74c', 2, 4),
       ('971b7be5-348f-4fe2-8abd-41bb5b4ba74c', 1, 4),
       ('971b7be5-348f-4fe2-8abd-41bb5b4ba74c', 1, 3),
       ('971b7be5-348f-4fe2-8abd-41bb5b4ba74c', 1, 2),
       -- round two
       ('971b7be5-348f-4fe2-8abd-41bb5b4ba74c', 1, 1),
       ('971b7be5-348f-4fe2-8abd-41bb5b4ba74c', 2, 1),
       ('971b7be5-348f-4fe2-8abd-41bb5b4ba74c', 3, 1),
       ('971b7be5-348f-4fe2-8abd-41bb5b4ba74c', 4, 1),
       ('971b7be5-348f-4fe2-8abd-41bb5b4ba74c', 5, 1),
       ('971b7be5-348f-4fe2-8abd-41bb5b4ba74c', 5, 2),
       ('971b7be5-348f-4fe2-8abd-41bb5b4ba74c', 6, 2),
       ('971b7be5-348f-4fe2-8abd-41bb5b4ba74c', 6, 3),
       ('971b7be5-348f-4fe2-8abd-41bb5b4ba74c', 6, 4),
       ('971b7be5-348f-4fe2-8abd-41bb5b4ba74c', 6, 5),
       ('971b7be5-348f-4fe2-8abd-41bb5b4ba74c', 6, 6),
       ('971b7be5-348f-4fe2-8abd-41bb5b4ba74c', 5, 6),
       ('971b7be5-348f-4fe2-8abd-41bb5b4ba74c', 4, 6),
       ('971b7be5-348f-4fe2-8abd-41bb5b4ba74c', 3, 6),
       ('971b7be5-348f-4fe2-8abd-41bb5b4ba74c', 2, 6),
       ('971b7be5-348f-4fe2-8abd-41bb5b4ba74c', 2, 5),
       ('971b7be5-348f-4fe2-8abd-41bb5b4ba74c', 2, 4),
       ('971b7be5-348f-4fe2-8abd-41bb5b4ba74c', 1, 4),
       ('971b7be5-348f-4fe2-8abd-41bb5b4ba74c', 1, 3),
       ('971b7be5-348f-4fe2-8abd-41bb5b4ba74c', 1, 2),
       -- round three
       ('971b7be5-348f-4fe2-8abd-41bb5b4ba74c', 1, 1),
       ('971b7be5-348f-4fe2-8abd-41bb5b4ba74c', 2, 1),
       ('971b7be5-348f-4fe2-8abd-41bb5b4ba74c', 3, 1),
       ('971b7be5-348f-4fe2-8abd-41bb5b4ba74c', 4, 1),
       ('971b7be5-348f-4fe2-8abd-41bb5b4ba74c', 5, 1),
       ('971b7be5-348f-4fe2-8abd-41bb5b4ba74c', 5, 2),
       ('971b7be5-348f-4fe2-8abd-41bb5b4ba74c', 6, 2),
       ('971b7be5-348f-4fe2-8abd-41bb5b4ba74c', 6, 3),
       ('971b7be5-348f-4fe2-8abd-41bb5b4ba74c', 6, 4),
       ('971b7be5-348f-4fe2-8abd-41bb5b4ba74c', 6, 5),
       ('971b7be5-348f-4fe2-8abd-41bb5b4ba74c', 6, 6),
       ('971b7be5-348f-4fe2-8abd-41bb5b4ba74c', 5, 6),
       ('971b7be5-348f-4fe2-8abd-41bb5b4ba74c', 4, 6),
       ('971b7be5-348f-4fe2-8abd-41bb5b4ba74c', 3, 6),
       ('971b7be5-348f-4fe2-8abd-41bb5b4ba74c', 2, 6),
       ('971b7be5-348f-4fe2-8abd-41bb5b4ba74c', 2, 5),
       ('971b7be5-348f-4fe2-8abd-41bb5b4ba74c', 2, 4),
       ('971b7be5-348f-4fe2-8abd-41bb5b4ba74c', 1, 4),
       ('971b7be5-348f-4fe2-8abd-41bb5b4ba74c', 1, 3),
       ('971b7be5-348f-4fe2-8abd-41bb5b4ba74c', 1, 2),
       -- leave
       ('971b7be5-348f-4fe2-8abd-41bb5b4ba74c', 1, 1),
       ('971b7be5-348f-4fe2-8abd-41bb5b4ba74c', 0, 1);


-- ninth critter
insert into `path_list` (`healing_collector_id`, `x`, `y`)
values ('5d52d205-bbec-4c3d-adfb-9eedeeccc3b0', 0, 1),
       ('5d52d205-bbec-4c3d-adfb-9eedeeccc3b0', 1, 1),
       ('5d52d205-bbec-4c3d-adfb-9eedeeccc3b0', 2, 1),
       ('5d52d205-bbec-4c3d-adfb-9eedeeccc3b0', 3, 1),
       ('5d52d205-bbec-4c3d-adfb-9eedeeccc3b0', 4, 1),
       ('5d52d205-bbec-4c3d-adfb-9eedeeccc3b0', 5, 1),
       ('5d52d205-bbec-4c3d-adfb-9eedeeccc3b0', 5, 2),
       ('5d52d205-bbec-4c3d-adfb-9eedeeccc3b0', 6, 2),
       ('5d52d205-bbec-4c3d-adfb-9eedeeccc3b0', 6, 3),
       ('5d52d205-bbec-4c3d-adfb-9eedeeccc3b0', 6, 4),
       ('5d52d205-bbec-4c3d-adfb-9eedeeccc3b0', 6, 5),
       ('5d52d205-bbec-4c3d-adfb-9eedeeccc3b0', 6, 6),
       ('5d52d205-bbec-4c3d-adfb-9eedeeccc3b0', 5, 6),
       ('5d52d205-bbec-4c3d-adfb-9eedeeccc3b0', 4, 6),
       ('5d52d205-bbec-4c3d-adfb-9eedeeccc3b0', 3, 6),
       ('5d52d205-bbec-4c3d-adfb-9eedeeccc3b0', 2, 6),
       ('5d52d205-bbec-4c3d-adfb-9eedeeccc3b0', 2, 5),
       ('5d52d205-bbec-4c3d-adfb-9eedeeccc3b0', 2, 4),
       ('5d52d205-bbec-4c3d-adfb-9eedeeccc3b0', 1, 4),
       ('5d52d205-bbec-4c3d-adfb-9eedeeccc3b0', 1, 3),
       ('5d52d205-bbec-4c3d-adfb-9eedeeccc3b0', 1, 2),
       -- round two
       ('5d52d205-bbec-4c3d-adfb-9eedeeccc3b0', 1, 1),
       ('5d52d205-bbec-4c3d-adfb-9eedeeccc3b0', 2, 1),
       ('5d52d205-bbec-4c3d-adfb-9eedeeccc3b0', 3, 1),
       ('5d52d205-bbec-4c3d-adfb-9eedeeccc3b0', 4, 1),
       ('5d52d205-bbec-4c3d-adfb-9eedeeccc3b0', 5, 1),
       ('5d52d205-bbec-4c3d-adfb-9eedeeccc3b0', 5, 2),
       ('5d52d205-bbec-4c3d-adfb-9eedeeccc3b0', 6, 2),
       ('5d52d205-bbec-4c3d-adfb-9eedeeccc3b0', 6, 3),
       ('5d52d205-bbec-4c3d-adfb-9eedeeccc3b0', 6, 4),
       ('5d52d205-bbec-4c3d-adfb-9eedeeccc3b0', 6, 5),
       ('5d52d205-bbec-4c3d-adfb-9eedeeccc3b0', 6, 6),
       ('5d52d205-bbec-4c3d-adfb-9eedeeccc3b0', 5, 6),
       ('5d52d205-bbec-4c3d-adfb-9eedeeccc3b0', 4, 6),
       ('5d52d205-bbec-4c3d-adfb-9eedeeccc3b0', 3, 6),
       ('5d52d205-bbec-4c3d-adfb-9eedeeccc3b0', 2, 6),
       ('5d52d205-bbec-4c3d-adfb-9eedeeccc3b0', 2, 5),
       ('5d52d205-bbec-4c3d-adfb-9eedeeccc3b0', 2, 4),
       ('5d52d205-bbec-4c3d-adfb-9eedeeccc3b0', 1, 4),
       ('5d52d205-bbec-4c3d-adfb-9eedeeccc3b0', 1, 3),
       ('5d52d205-bbec-4c3d-adfb-9eedeeccc3b0', 1, 2),
       -- round three
       ('5d52d205-bbec-4c3d-adfb-9eedeeccc3b0', 1, 1),
       ('5d52d205-bbec-4c3d-adfb-9eedeeccc3b0', 2, 1),
       ('5d52d205-bbec-4c3d-adfb-9eedeeccc3b0', 3, 1),
       ('5d52d205-bbec-4c3d-adfb-9eedeeccc3b0', 4, 1),
       ('5d52d205-bbec-4c3d-adfb-9eedeeccc3b0', 5, 1),
       ('5d52d205-bbec-4c3d-adfb-9eedeeccc3b0', 5, 2),
       ('5d52d205-bbec-4c3d-adfb-9eedeeccc3b0', 6, 2),
       ('5d52d205-bbec-4c3d-adfb-9eedeeccc3b0', 6, 3),
       ('5d52d205-bbec-4c3d-adfb-9eedeeccc3b0', 6, 4),
       ('5d52d205-bbec-4c3d-adfb-9eedeeccc3b0', 6, 5),
       ('5d52d205-bbec-4c3d-adfb-9eedeeccc3b0', 6, 6),
       ('5d52d205-bbec-4c3d-adfb-9eedeeccc3b0', 5, 6),
       ('5d52d205-bbec-4c3d-adfb-9eedeeccc3b0', 4, 6),
       ('5d52d205-bbec-4c3d-adfb-9eedeeccc3b0', 3, 6),
       ('5d52d205-bbec-4c3d-adfb-9eedeeccc3b0', 2, 6),
       ('5d52d205-bbec-4c3d-adfb-9eedeeccc3b0', 2, 5),
       ('5d52d205-bbec-4c3d-adfb-9eedeeccc3b0', 2, 4),
       ('5d52d205-bbec-4c3d-adfb-9eedeeccc3b0', 1, 4),
       ('5d52d205-bbec-4c3d-adfb-9eedeeccc3b0', 1, 3),
       ('5d52d205-bbec-4c3d-adfb-9eedeeccc3b0', 1, 2),
       -- leave
       ('5d52d205-bbec-4c3d-adfb-9eedeeccc3b0', 1, 1),
       ('5d52d205-bbec-4c3d-adfb-9eedeeccc3b0', 0, 1);


-- tenth critter
insert into `path_list` (`healing_collector_id`, `x`, `y`)
values ('acce7b5f-8c8e-4572-8d9c-953dbb815759', 0, 1),
       ('acce7b5f-8c8e-4572-8d9c-953dbb815759', 1, 1),
       ('acce7b5f-8c8e-4572-8d9c-953dbb815759', 2, 1),
       ('acce7b5f-8c8e-4572-8d9c-953dbb815759', 3, 1),
       ('acce7b5f-8c8e-4572-8d9c-953dbb815759', 4, 1),
       ('acce7b5f-8c8e-4572-8d9c-953dbb815759', 5, 1),
       ('acce7b5f-8c8e-4572-8d9c-953dbb815759', 5, 2),
       ('acce7b5f-8c8e-4572-8d9c-953dbb815759', 6, 2),
       ('acce7b5f-8c8e-4572-8d9c-953dbb815759', 6, 3),
       ('acce7b5f-8c8e-4572-8d9c-953dbb815759', 6, 4),
       ('acce7b5f-8c8e-4572-8d9c-953dbb815759', 6, 5),
       ('acce7b5f-8c8e-4572-8d9c-953dbb815759', 6, 6),
       ('acce7b5f-8c8e-4572-8d9c-953dbb815759', 5, 6),
       ('acce7b5f-8c8e-4572-8d9c-953dbb815759', 4, 6),
       ('acce7b5f-8c8e-4572-8d9c-953dbb815759', 3, 6),
       ('acce7b5f-8c8e-4572-8d9c-953dbb815759', 2, 6),
       ('acce7b5f-8c8e-4572-8d9c-953dbb815759', 2, 5),
       ('acce7b5f-8c8e-4572-8d9c-953dbb815759', 2, 4),
       ('acce7b5f-8c8e-4572-8d9c-953dbb815759', 1, 4),
       ('acce7b5f-8c8e-4572-8d9c-953dbb815759', 1, 3),
       ('acce7b5f-8c8e-4572-8d9c-953dbb815759', 1, 2),
       -- round two
       ('acce7b5f-8c8e-4572-8d9c-953dbb815759', 1, 1),
       ('acce7b5f-8c8e-4572-8d9c-953dbb815759', 2, 1),
       ('acce7b5f-8c8e-4572-8d9c-953dbb815759', 3, 1),
       ('acce7b5f-8c8e-4572-8d9c-953dbb815759', 4, 1),
       ('acce7b5f-8c8e-4572-8d9c-953dbb815759', 5, 1),
       ('acce7b5f-8c8e-4572-8d9c-953dbb815759', 5, 2),
       ('acce7b5f-8c8e-4572-8d9c-953dbb815759', 6, 2),
       ('acce7b5f-8c8e-4572-8d9c-953dbb815759', 6, 3),
       ('acce7b5f-8c8e-4572-8d9c-953dbb815759', 6, 4),
       ('acce7b5f-8c8e-4572-8d9c-953dbb815759', 6, 5),
       ('acce7b5f-8c8e-4572-8d9c-953dbb815759', 6, 6),
       ('acce7b5f-8c8e-4572-8d9c-953dbb815759', 5, 6),
       ('acce7b5f-8c8e-4572-8d9c-953dbb815759', 4, 6),
       ('acce7b5f-8c8e-4572-8d9c-953dbb815759', 3, 6),
       ('acce7b5f-8c8e-4572-8d9c-953dbb815759', 2, 6),
       ('acce7b5f-8c8e-4572-8d9c-953dbb815759', 2, 5),
       ('acce7b5f-8c8e-4572-8d9c-953dbb815759', 2, 4),
       ('acce7b5f-8c8e-4572-8d9c-953dbb815759', 1, 4),
       ('acce7b5f-8c8e-4572-8d9c-953dbb815759', 1, 3),
       ('acce7b5f-8c8e-4572-8d9c-953dbb815759', 1, 2),
       -- round three
       ('acce7b5f-8c8e-4572-8d9c-953dbb815759', 1, 1),
       ('acce7b5f-8c8e-4572-8d9c-953dbb815759', 2, 1),
       ('acce7b5f-8c8e-4572-8d9c-953dbb815759', 3, 1),
       ('acce7b5f-8c8e-4572-8d9c-953dbb815759', 4, 1),
       ('acce7b5f-8c8e-4572-8d9c-953dbb815759', 5, 1),
       ('acce7b5f-8c8e-4572-8d9c-953dbb815759', 5, 2),
       ('acce7b5f-8c8e-4572-8d9c-953dbb815759', 6, 2),
       ('acce7b5f-8c8e-4572-8d9c-953dbb815759', 6, 3),
       ('acce7b5f-8c8e-4572-8d9c-953dbb815759', 6, 4),
       ('acce7b5f-8c8e-4572-8d9c-953dbb815759', 6, 5),
       ('acce7b5f-8c8e-4572-8d9c-953dbb815759', 6, 6),
       ('acce7b5f-8c8e-4572-8d9c-953dbb815759', 5, 6),
       ('acce7b5f-8c8e-4572-8d9c-953dbb815759', 4, 6),
       ('acce7b5f-8c8e-4572-8d9c-953dbb815759', 3, 6),
       ('acce7b5f-8c8e-4572-8d9c-953dbb815759', 2, 6),
       ('acce7b5f-8c8e-4572-8d9c-953dbb815759', 2, 5),
       ('acce7b5f-8c8e-4572-8d9c-953dbb815759', 2, 4),
       ('acce7b5f-8c8e-4572-8d9c-953dbb815759', 1, 4),
       ('acce7b5f-8c8e-4572-8d9c-953dbb815759', 1, 3),
       ('acce7b5f-8c8e-4572-8d9c-953dbb815759', 1, 2),
       -- leave
       ('acce7b5f-8c8e-4572-8d9c-953dbb815759', 1, 1),
       ('acce7b5f-8c8e-4572-8d9c-953dbb815759', 0, 1);

