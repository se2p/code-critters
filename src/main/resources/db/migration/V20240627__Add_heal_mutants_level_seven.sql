insert into `healing_collector` (`id`, xml, `level_id`, `init`, `mutated`, `first_faulty_round`)
values
    ('3689963d-f1f9-43cd-b7e4-892a6377e324',
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
</xml>',
     'f76c60ed-1ec0-4ffd-9455-e33d0c660182',
     '(this.color) = ("yellow");\n',
     false,
     0),
    ('c47ec46e-c6a1-47b1-ae90-94c82bd4b166',
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
</xml>',
     'f76c60ed-1ec0-4ffd-9455-e33d0c660182',
     '(this.color) = ("blue");\n',
     false,
     0),
    ('ca40595c-47b2-426f-9bb5-3ad4de8bb583',
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
</xml>',
     'f76c60ed-1ec0-4ffd-9455-e33d0c660182',
     '(this.color) = ("orange");\n (this.hair) = ("brown");\n',
     false,
     0),
    ('db6ebcd6-5361-44f8-94c0-79058f1b5190',
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
</xml>',
     'f76c60ed-1ec0-4ffd-9455-e33d0c660182',
     '(this.color) = ("orange");\n (this.hair) = ("black");\n',
     false,
     0),
    ('033e5f74-170a-494b-9efc-83f2283e17f6',
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
                                <field name="OP">NEQ</field>
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
</xml>',
     'f76c60ed-1ec0-4ffd-9455-e33d0c660182',
     '(this.color) = ("red");\n',
     true,
     1),
    ('2c0c793a-a91f-48bc-8bad-f0a1bb451f29',
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
                                <field name="NUM">3</field>
                            </block>
                        </value>
                    </block>
                </statement>
            </block>
        </statement>
    </block>
</xml>',
     'f76c60ed-1ec0-4ffd-9455-e33d0c660182',
     '(this.color) = ("blue");\n (this.hair) = ("black");\n',
     true,
     1),
    ('7a22cac6-e117-45c1-84e9-d162840a4af8',
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
                                <field name="NUM">1</field>
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
</xml>',
     'f76c60ed-1ec0-4ffd-9455-e33d0c660182',
     '(this.color) = ("green");\n',
     true,
     1),
    ('fe855b1c-68b5-413e-9831-5f9d6efada9d',
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
                        <field name="OP">OR</field>
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
</xml>',
     'f76c60ed-1ec0-4ffd-9455-e33d0c660182',
     '(this.color) = ("green");\n',
     true,
     2),
    ('8d8143c4-9403-45c3-8e20-a846d8d71a30',
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
                                <field name="properties">BLACKBERRIES</field>
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
                                <field name="properties">PURPLEBERRIES</field>
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
</xml>',
     'f76c60ed-1ec0-4ffd-9455-e33d0c660182',
     '(this.color) = ("pink");\n (this.hair) = ("black");\n',
     true,
     1),

    ('9530f374-05bc-4611-bb2a-80cdd3914a96',
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
                        <field name="NUM">4</field>
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
</xml>',
     'f76c60ed-1ec0-4ffd-9455-e33d0c660182',
     '(this.color) = ("cyan");\n (this.hair) = ("brown");\n',
     true,
     4);

-- is blond
insert into `codes_per_bush` (`healing_collector_id`, `code`, `bush_type`)
values ('3689963d-f1f9-43cd-b7e4-892a6377e324',
        'if (((this.roundsCount) % 2 !== 0) && (this.hair == "blond")) {\r\n    this.purpleBerryCount = this.purpleBerryCount + 2;\r\n}',
        'PURPLE'),
       ('3689963d-f1f9-43cd-b7e4-892a6377e324',
        'if (((this.roundsCount) % 2 === 0) || (this.hair !== "blond")) {\r\n    this.blackBerryCount = this.blackBerryCount + 2;\r\n}',
        'BLACK');
-- is blond
insert into `codes_per_bush` (`healing_collector_id`, `code`, `bush_type`)
values ('c47ec46e-c6a1-47b1-ae90-94c82bd4b166',
        'if (((this.roundsCount) % 2 !== 0) && (this.hair == "blond")) {\r\n    this.purpleBerryCount = this.purpleBerryCount + 2;\r\n}',
        'PURPLE'),
       ('c47ec46e-c6a1-47b1-ae90-94c82bd4b166',
        'if (((this.roundsCount) % 2 === 0) || (this.hair !== "blond")) {\r\n    this.blackBerryCount = this.blackBerryCount + 2;\r\n}',
        'BLACK');

insert into `codes_per_bush` (`healing_collector_id`, `code`, `bush_type`)
values ('ca40595c-47b2-426f-9bb5-3ad4de8bb583',
        'if (((this.roundsCount) % 2 !== 0) && (this.hair == "blond")) {\r\n    this.purpleBerryCount = this.purpleBerryCount + 2;\r\n}',
        'PURPLE'),
       ('ca40595c-47b2-426f-9bb5-3ad4de8bb583',
        'if (((this.roundsCount) % 2 === 0) || (this.hair !== "blond")) {\r\n    this.blackBerryCount = this.blackBerryCount + 2;\r\n}',
        'BLACK');

insert into `codes_per_bush` (`healing_collector_id`, `code`, `bush_type`)
values ('db6ebcd6-5361-44f8-94c0-79058f1b5190',
        'if (((this.roundsCount) % 2 !== 0) && (this.hair == "blond")) {\r\n    this.purpleBerryCount = this.purpleBerryCount + 2;\r\n}',
        'PURPLE'),
       ('db6ebcd6-5361-44f8-94c0-79058f1b5190',
        'if (((this.roundsCount) % 2 === 0) || (this.hair !== "blond")) {\r\n    this.blackBerryCount = this.blackBerryCount + 2;\r\n}',
        'BLACK');

-- is blond
insert into `codes_per_bush` (`healing_collector_id`, `code`, `bush_type`)
values ('033e5f74-170a-494b-9efc-83f2283e17f6',
        'if (((this.roundsCount) % 2 !== 0) && (this.hair !== "blond")) {\r\n    this.purpleBerryCount = this.purpleBerryCount + 2;\r\n}',
        'PURPLE'),
       ('033e5f74-170a-494b-9efc-83f2283e17f6',
        'if (((this.roundsCount) % 2 === 0) || (this.hair === "blond")) {\r\n    this.blackBerryCount = this.blackBerryCount + 2;\r\n}',
        'BLACK');

insert into `codes_per_bush` (`healing_collector_id`, `code`, `bush_type`)
values ('2c0c793a-a91f-48bc-8bad-f0a1bb451f29',
        'if (((this.roundsCount) % 2 !== 0) && (this.hair == "blond")) {\r\n    this.purpleBerryCount = this.purpleBerryCount + 2;\r\n}',
        'PURPLE'),
       ('2c0c793a-a91f-48bc-8bad-f0a1bb451f29',
        'if (((this.roundsCount) % 2 === 0) || (this.hair !== "blond")) {\r\n    this.blackBerryCount = this.blackBerryCount + 3;\r\n}',
        'BLACK');

-- is blond
insert into `codes_per_bush` (`healing_collector_id`, `code`, `bush_type`)
values ('7a22cac6-e117-45c1-84e9-d162840a4af8',
        'if (((this.roundsCount) % 2 !== 0) && (this.hair == "blond")) {\r\n    this.purpleBerryCount = this.purpleBerryCount + 1;\r\n}',
        'PURPLE'),
       ('7a22cac6-e117-45c1-84e9-d162840a4af8',
        'if (((this.roundsCount) % 2 === 0) || (this.hair !== "blond")) {\r\n    this.blackBerryCount = this.blackBerryCount + 2;\r\n}',
        'BLACK');

-- is blond
insert into `codes_per_bush` (`healing_collector_id`, `code`, `bush_type`)
values ('fe855b1c-68b5-413e-9831-5f9d6efada9d',
        'if (((this.roundsCount) % 2 !== 0) || (this.hair == "blond")) {\r\n    this.purpleBerryCount = this.purpleBerryCount + 2;\r\n}',
        'PURPLE'),
       ('fe855b1c-68b5-413e-9831-5f9d6efada9d',
        'if (((this.roundsCount) % 2 === 0) && (this.hair !== "blond")) {\r\n    this.blackBerryCount = this.blackBerryCount + 2;\r\n}',
        'BLACK');

insert into `codes_per_bush` (`healing_collector_id`, `code`, `bush_type`)
values ('8d8143c4-9403-45c3-8e20-a846d8d71a30',
        'if (((this.roundsCount) % 2 === 0) || (this.hair !== "blond")) {\r\n    this.purpleBerryCount = this.purpleBerryCount + 2;\r\n}',
        'PURPLE'),
       ('8d8143c4-9403-45c3-8e20-a846d8d71a30',
        'if (((this.roundsCount) % 2 !== 0) && (this.hair === "blond")) {\r\n    this.blackBerryCount = this.blackBerryCount + 2;\r\n}',
        'BLACK');

insert into `codes_per_bush` (`healing_collector_id`, `code`, `bush_type`)
values ('9530f374-05bc-4611-bb2a-80cdd3914a96',
        'if (((this.roundsCount) % 2 !== 0) && (this.hair == "blond")) {\r\n    this.purpleBerryCount = this.purpleBerryCount + 2;\r\n}',
        'PURPLE'),
       ('9530f374-05bc-4611-bb2a-80cdd3914a96',
        'if (((this.roundsCount) % 2 === 0) || (this.hair !== "blond")) {\r\n    this.blackBerryCount = this.blackBerryCount + 2;\r\n}',
        'BLACK');



-- first critter
insert into `path_list` (`healing_collector_id`, `x`, `y`)
values ('3689963d-f1f9-43cd-b7e4-892a6377e324', 3, 0),
       ('3689963d-f1f9-43cd-b7e4-892a6377e324', 3, 1),
       ('3689963d-f1f9-43cd-b7e4-892a6377e324', 4, 1),
       ('3689963d-f1f9-43cd-b7e4-892a6377e324', 5, 1),
       ('3689963d-f1f9-43cd-b7e4-892a6377e324', 6, 1),
       ('3689963d-f1f9-43cd-b7e4-892a6377e324', 6, 2),
       ('3689963d-f1f9-43cd-b7e4-892a6377e324', 6, 3),
       ('3689963d-f1f9-43cd-b7e4-892a6377e324', 6, 4),
       ('3689963d-f1f9-43cd-b7e4-892a6377e324', 5, 4),
       ('3689963d-f1f9-43cd-b7e4-892a6377e324', 4, 4),
       ('3689963d-f1f9-43cd-b7e4-892a6377e324', 3, 4),
       ('3689963d-f1f9-43cd-b7e4-892a6377e324', 2, 4),
       ('3689963d-f1f9-43cd-b7e4-892a6377e324', 2, 3),
       ('3689963d-f1f9-43cd-b7e4-892a6377e324', 2, 2),
       ('3689963d-f1f9-43cd-b7e4-892a6377e324', 2, 1),
       -- round two
       ('3689963d-f1f9-43cd-b7e4-892a6377e324', 3, 1),
       ('3689963d-f1f9-43cd-b7e4-892a6377e324', 4, 1),
       ('3689963d-f1f9-43cd-b7e4-892a6377e324', 5, 1),
       ('3689963d-f1f9-43cd-b7e4-892a6377e324', 6, 1),
       ('3689963d-f1f9-43cd-b7e4-892a6377e324', 6, 2),
       ('3689963d-f1f9-43cd-b7e4-892a6377e324', 6, 3),
       ('3689963d-f1f9-43cd-b7e4-892a6377e324', 6, 4),
       ('3689963d-f1f9-43cd-b7e4-892a6377e324', 6, 5),
       ('3689963d-f1f9-43cd-b7e4-892a6377e324', 6, 6),
       ('3689963d-f1f9-43cd-b7e4-892a6377e324', 5, 6),
       ('3689963d-f1f9-43cd-b7e4-892a6377e324', 4, 6),
       ('3689963d-f1f9-43cd-b7e4-892a6377e324', 3, 6),
       ('3689963d-f1f9-43cd-b7e4-892a6377e324', 3, 5),
       ('3689963d-f1f9-43cd-b7e4-892a6377e324', 3, 4),
       ('3689963d-f1f9-43cd-b7e4-892a6377e324', 2, 4),
       ('3689963d-f1f9-43cd-b7e4-892a6377e324', 2, 3),
       ('3689963d-f1f9-43cd-b7e4-892a6377e324', 2, 2),
       ('3689963d-f1f9-43cd-b7e4-892a6377e324', 2, 1),
       -- round three
       ('3689963d-f1f9-43cd-b7e4-892a6377e324', 3, 1),
       ('3689963d-f1f9-43cd-b7e4-892a6377e324', 4, 1),
       ('3689963d-f1f9-43cd-b7e4-892a6377e324', 5, 1),
       ('3689963d-f1f9-43cd-b7e4-892a6377e324', 6, 1),
       ('3689963d-f1f9-43cd-b7e4-892a6377e324', 6, 2),
       ('3689963d-f1f9-43cd-b7e4-892a6377e324', 6, 3),
       ('3689963d-f1f9-43cd-b7e4-892a6377e324', 6, 4),
       ('3689963d-f1f9-43cd-b7e4-892a6377e324', 5, 4),
       ('3689963d-f1f9-43cd-b7e4-892a6377e324', 4, 4),
       ('3689963d-f1f9-43cd-b7e4-892a6377e324', 3, 4),
       ('3689963d-f1f9-43cd-b7e4-892a6377e324', 2, 4),
       ('3689963d-f1f9-43cd-b7e4-892a6377e324', 2, 3),
       ('3689963d-f1f9-43cd-b7e4-892a6377e324', 2, 2),
       ('3689963d-f1f9-43cd-b7e4-892a6377e324', 2, 1),
       ('3689963d-f1f9-43cd-b7e4-892a6377e324', 3, 1),
       -- leave
       ('3689963d-f1f9-43cd-b7e4-892a6377e324', 3, 0);


-- second critter
insert into `path_list` (`healing_collector_id`, `x`, `y`)
values ('c47ec46e-c6a1-47b1-ae90-94c82bd4b166', 3, 0),
       ('c47ec46e-c6a1-47b1-ae90-94c82bd4b166', 3, 1),
       ('c47ec46e-c6a1-47b1-ae90-94c82bd4b166', 4, 1),
       ('c47ec46e-c6a1-47b1-ae90-94c82bd4b166', 5, 1),
       ('c47ec46e-c6a1-47b1-ae90-94c82bd4b166', 6, 1),
       ('c47ec46e-c6a1-47b1-ae90-94c82bd4b166', 6, 2),
       ('c47ec46e-c6a1-47b1-ae90-94c82bd4b166', 6, 3),
       ('c47ec46e-c6a1-47b1-ae90-94c82bd4b166', 6, 4),
       ('c47ec46e-c6a1-47b1-ae90-94c82bd4b166', 5, 4),
       ('c47ec46e-c6a1-47b1-ae90-94c82bd4b166', 4, 4),
       ('c47ec46e-c6a1-47b1-ae90-94c82bd4b166', 3, 4),
       ('c47ec46e-c6a1-47b1-ae90-94c82bd4b166', 2, 4),
       ('c47ec46e-c6a1-47b1-ae90-94c82bd4b166', 2, 3),
       ('c47ec46e-c6a1-47b1-ae90-94c82bd4b166', 2, 2),
       ('c47ec46e-c6a1-47b1-ae90-94c82bd4b166', 2, 1),
       -- round two
       ('c47ec46e-c6a1-47b1-ae90-94c82bd4b166', 3, 1),
       ('c47ec46e-c6a1-47b1-ae90-94c82bd4b166', 4, 1),
       ('c47ec46e-c6a1-47b1-ae90-94c82bd4b166', 5, 1),
       ('c47ec46e-c6a1-47b1-ae90-94c82bd4b166', 6, 1),
       ('c47ec46e-c6a1-47b1-ae90-94c82bd4b166', 6, 2),
       ('c47ec46e-c6a1-47b1-ae90-94c82bd4b166', 6, 3),
       ('c47ec46e-c6a1-47b1-ae90-94c82bd4b166', 6, 4),
       ('c47ec46e-c6a1-47b1-ae90-94c82bd4b166', 6, 5),
       ('c47ec46e-c6a1-47b1-ae90-94c82bd4b166', 6, 6),
       ('c47ec46e-c6a1-47b1-ae90-94c82bd4b166', 5, 6),
       ('c47ec46e-c6a1-47b1-ae90-94c82bd4b166', 4, 6),
       ('c47ec46e-c6a1-47b1-ae90-94c82bd4b166', 3, 6),
       ('c47ec46e-c6a1-47b1-ae90-94c82bd4b166', 3, 5),
       ('c47ec46e-c6a1-47b1-ae90-94c82bd4b166', 3, 4),
       ('c47ec46e-c6a1-47b1-ae90-94c82bd4b166', 2, 4),
       ('c47ec46e-c6a1-47b1-ae90-94c82bd4b166', 2, 3),
       ('c47ec46e-c6a1-47b1-ae90-94c82bd4b166', 2, 2),
       ('c47ec46e-c6a1-47b1-ae90-94c82bd4b166', 2, 1),
       -- round three
       ('c47ec46e-c6a1-47b1-ae90-94c82bd4b166', 3, 1),
       ('c47ec46e-c6a1-47b1-ae90-94c82bd4b166', 4, 1),
       ('c47ec46e-c6a1-47b1-ae90-94c82bd4b166', 5, 1),
       ('c47ec46e-c6a1-47b1-ae90-94c82bd4b166', 6, 1),
       ('c47ec46e-c6a1-47b1-ae90-94c82bd4b166', 6, 2),
       ('c47ec46e-c6a1-47b1-ae90-94c82bd4b166', 6, 3),
       ('c47ec46e-c6a1-47b1-ae90-94c82bd4b166', 6, 4),
       ('c47ec46e-c6a1-47b1-ae90-94c82bd4b166', 5, 4),
       ('c47ec46e-c6a1-47b1-ae90-94c82bd4b166', 4, 4),
       ('c47ec46e-c6a1-47b1-ae90-94c82bd4b166', 3, 4),
       ('c47ec46e-c6a1-47b1-ae90-94c82bd4b166', 2, 4),
       ('c47ec46e-c6a1-47b1-ae90-94c82bd4b166', 2, 3),
       ('c47ec46e-c6a1-47b1-ae90-94c82bd4b166', 2, 2),
       ('c47ec46e-c6a1-47b1-ae90-94c82bd4b166', 2, 1),
       ('c47ec46e-c6a1-47b1-ae90-94c82bd4b166', 3, 1),
       -- leave
       ('c47ec46e-c6a1-47b1-ae90-94c82bd4b166', 3, 0);

-- third critter
insert into `path_list` (`healing_collector_id`, `x`, `y`)
values ('ca40595c-47b2-426f-9bb5-3ad4de8bb583', 3, 0),
       ('ca40595c-47b2-426f-9bb5-3ad4de8bb583', 3, 1),
       ('ca40595c-47b2-426f-9bb5-3ad4de8bb583', 4, 1),
       ('ca40595c-47b2-426f-9bb5-3ad4de8bb583', 5, 1),
       ('ca40595c-47b2-426f-9bb5-3ad4de8bb583', 6, 1),
       ('ca40595c-47b2-426f-9bb5-3ad4de8bb583', 6, 2),
       ('ca40595c-47b2-426f-9bb5-3ad4de8bb583', 6, 3),
       ('ca40595c-47b2-426f-9bb5-3ad4de8bb583', 6, 4),
       ('ca40595c-47b2-426f-9bb5-3ad4de8bb583', 6, 5),
       ('ca40595c-47b2-426f-9bb5-3ad4de8bb583', 6, 6),
       ('ca40595c-47b2-426f-9bb5-3ad4de8bb583', 5, 6),
       ('ca40595c-47b2-426f-9bb5-3ad4de8bb583', 4, 6),
       ('ca40595c-47b2-426f-9bb5-3ad4de8bb583', 3, 6),
       ('ca40595c-47b2-426f-9bb5-3ad4de8bb583', 3, 5),
       ('ca40595c-47b2-426f-9bb5-3ad4de8bb583', 3, 4),
       ('ca40595c-47b2-426f-9bb5-3ad4de8bb583', 2, 4),
       ('ca40595c-47b2-426f-9bb5-3ad4de8bb583', 2, 3),
       ('ca40595c-47b2-426f-9bb5-3ad4de8bb583', 2, 2),
       ('ca40595c-47b2-426f-9bb5-3ad4de8bb583', 2, 1),
       -- round two
       ('ca40595c-47b2-426f-9bb5-3ad4de8bb583', 3, 1),
       ('ca40595c-47b2-426f-9bb5-3ad4de8bb583', 4, 1),
       ('ca40595c-47b2-426f-9bb5-3ad4de8bb583', 5, 1),
       ('ca40595c-47b2-426f-9bb5-3ad4de8bb583', 6, 1),
       ('ca40595c-47b2-426f-9bb5-3ad4de8bb583', 6, 2),
       ('ca40595c-47b2-426f-9bb5-3ad4de8bb583', 6, 3),
       ('ca40595c-47b2-426f-9bb5-3ad4de8bb583', 6, 4),
       ('ca40595c-47b2-426f-9bb5-3ad4de8bb583', 6, 5),
       ('ca40595c-47b2-426f-9bb5-3ad4de8bb583', 6, 6),
       ('ca40595c-47b2-426f-9bb5-3ad4de8bb583', 5, 6),
       ('ca40595c-47b2-426f-9bb5-3ad4de8bb583', 4, 6),
       ('ca40595c-47b2-426f-9bb5-3ad4de8bb583', 3, 6),
       ('ca40595c-47b2-426f-9bb5-3ad4de8bb583', 3, 5),
       ('ca40595c-47b2-426f-9bb5-3ad4de8bb583', 3, 4),
       ('ca40595c-47b2-426f-9bb5-3ad4de8bb583', 2, 4),
       ('ca40595c-47b2-426f-9bb5-3ad4de8bb583', 2, 3),
       ('ca40595c-47b2-426f-9bb5-3ad4de8bb583', 2, 2),
       ('ca40595c-47b2-426f-9bb5-3ad4de8bb583', 2, 1),
       -- round three
       ('ca40595c-47b2-426f-9bb5-3ad4de8bb583', 3, 1),
       ('ca40595c-47b2-426f-9bb5-3ad4de8bb583', 4, 1),
       ('ca40595c-47b2-426f-9bb5-3ad4de8bb583', 5, 1),
       ('ca40595c-47b2-426f-9bb5-3ad4de8bb583', 6, 1),
       ('ca40595c-47b2-426f-9bb5-3ad4de8bb583', 6, 2),
       ('ca40595c-47b2-426f-9bb5-3ad4de8bb583', 6, 3),
       ('ca40595c-47b2-426f-9bb5-3ad4de8bb583', 6, 4),
       ('ca40595c-47b2-426f-9bb5-3ad4de8bb583', 6, 5),
       ('ca40595c-47b2-426f-9bb5-3ad4de8bb583', 6, 6),
       ('ca40595c-47b2-426f-9bb5-3ad4de8bb583', 5, 6),
       ('ca40595c-47b2-426f-9bb5-3ad4de8bb583', 4, 6),
       ('ca40595c-47b2-426f-9bb5-3ad4de8bb583', 3, 6),
       ('ca40595c-47b2-426f-9bb5-3ad4de8bb583', 3, 5),
       ('ca40595c-47b2-426f-9bb5-3ad4de8bb583', 3, 4),
       ('ca40595c-47b2-426f-9bb5-3ad4de8bb583', 2, 4),
       ('ca40595c-47b2-426f-9bb5-3ad4de8bb583', 2, 3),
       ('ca40595c-47b2-426f-9bb5-3ad4de8bb583', 2, 2),
       ('ca40595c-47b2-426f-9bb5-3ad4de8bb583', 2, 1),
       ('ca40595c-47b2-426f-9bb5-3ad4de8bb583', 3, 1),
       -- leave
       ('ca40595c-47b2-426f-9bb5-3ad4de8bb583', 3, 0);

-- forth critter
insert into `path_list` (`healing_collector_id`, `x`, `y`)
values ('db6ebcd6-5361-44f8-94c0-79058f1b5190', 3, 0),
       ('db6ebcd6-5361-44f8-94c0-79058f1b5190', 3, 1),
       ('db6ebcd6-5361-44f8-94c0-79058f1b5190', 4, 1),
       ('db6ebcd6-5361-44f8-94c0-79058f1b5190', 5, 1),
       ('db6ebcd6-5361-44f8-94c0-79058f1b5190', 6, 1),
       ('db6ebcd6-5361-44f8-94c0-79058f1b5190', 6, 2),
       ('db6ebcd6-5361-44f8-94c0-79058f1b5190', 6, 3),
       ('db6ebcd6-5361-44f8-94c0-79058f1b5190', 6, 4),
       ('db6ebcd6-5361-44f8-94c0-79058f1b5190', 6, 5),
       ('db6ebcd6-5361-44f8-94c0-79058f1b5190', 6, 6),
       ('db6ebcd6-5361-44f8-94c0-79058f1b5190', 5, 6),
       ('db6ebcd6-5361-44f8-94c0-79058f1b5190', 4, 6),
       ('db6ebcd6-5361-44f8-94c0-79058f1b5190', 3, 6),
       ('db6ebcd6-5361-44f8-94c0-79058f1b5190', 3, 5),
       ('db6ebcd6-5361-44f8-94c0-79058f1b5190', 3, 4),
       ('db6ebcd6-5361-44f8-94c0-79058f1b5190', 2, 4),
       ('db6ebcd6-5361-44f8-94c0-79058f1b5190', 2, 3),
       ('db6ebcd6-5361-44f8-94c0-79058f1b5190', 2, 2),
       ('db6ebcd6-5361-44f8-94c0-79058f1b5190', 2, 1),
       -- round two
       ('db6ebcd6-5361-44f8-94c0-79058f1b5190', 3, 1),
       ('db6ebcd6-5361-44f8-94c0-79058f1b5190', 4, 1),
       ('db6ebcd6-5361-44f8-94c0-79058f1b5190', 5, 1),
       ('db6ebcd6-5361-44f8-94c0-79058f1b5190', 6, 1),
       ('db6ebcd6-5361-44f8-94c0-79058f1b5190', 6, 2),
       ('db6ebcd6-5361-44f8-94c0-79058f1b5190', 6, 3),
       ('db6ebcd6-5361-44f8-94c0-79058f1b5190', 6, 4),
       ('db6ebcd6-5361-44f8-94c0-79058f1b5190', 6, 5),
       ('db6ebcd6-5361-44f8-94c0-79058f1b5190', 6, 6),
       ('db6ebcd6-5361-44f8-94c0-79058f1b5190', 5, 6),
       ('db6ebcd6-5361-44f8-94c0-79058f1b5190', 4, 6),
       ('db6ebcd6-5361-44f8-94c0-79058f1b5190', 3, 6),
       ('db6ebcd6-5361-44f8-94c0-79058f1b5190', 3, 5),
       ('db6ebcd6-5361-44f8-94c0-79058f1b5190', 3, 4),
       ('db6ebcd6-5361-44f8-94c0-79058f1b5190', 2, 4),
       ('db6ebcd6-5361-44f8-94c0-79058f1b5190', 2, 3),
       ('db6ebcd6-5361-44f8-94c0-79058f1b5190', 2, 2),
       ('db6ebcd6-5361-44f8-94c0-79058f1b5190', 2, 1),
       -- round three
       ('db6ebcd6-5361-44f8-94c0-79058f1b5190', 3, 1),
       ('db6ebcd6-5361-44f8-94c0-79058f1b5190', 4, 1),
       ('db6ebcd6-5361-44f8-94c0-79058f1b5190', 5, 1),
       ('db6ebcd6-5361-44f8-94c0-79058f1b5190', 6, 1),
       ('db6ebcd6-5361-44f8-94c0-79058f1b5190', 6, 2),
       ('db6ebcd6-5361-44f8-94c0-79058f1b5190', 6, 3),
       ('db6ebcd6-5361-44f8-94c0-79058f1b5190', 6, 4),
       ('db6ebcd6-5361-44f8-94c0-79058f1b5190', 6, 5),
       ('db6ebcd6-5361-44f8-94c0-79058f1b5190', 6, 6),
       ('db6ebcd6-5361-44f8-94c0-79058f1b5190', 5, 6),
       ('db6ebcd6-5361-44f8-94c0-79058f1b5190', 4, 6),
       ('db6ebcd6-5361-44f8-94c0-79058f1b5190', 3, 6),
       ('db6ebcd6-5361-44f8-94c0-79058f1b5190', 3, 5),
       ('db6ebcd6-5361-44f8-94c0-79058f1b5190', 3, 4),
       ('db6ebcd6-5361-44f8-94c0-79058f1b5190', 2, 4),
       ('db6ebcd6-5361-44f8-94c0-79058f1b5190', 2, 3),
       ('db6ebcd6-5361-44f8-94c0-79058f1b5190', 2, 2),
       ('db6ebcd6-5361-44f8-94c0-79058f1b5190', 2, 1),
       ('db6ebcd6-5361-44f8-94c0-79058f1b5190', 3, 1),
       -- leave
       ('db6ebcd6-5361-44f8-94c0-79058f1b5190', 3, 0);


-- fifth critter
insert into `path_list` (`healing_collector_id`, `x`, `y`)
values ('033e5f74-170a-494b-9efc-83f2283e17f6', 3, 0),
       ('033e5f74-170a-494b-9efc-83f2283e17f6', 3, 1),
       ('033e5f74-170a-494b-9efc-83f2283e17f6', 4, 1),
       ('033e5f74-170a-494b-9efc-83f2283e17f6', 5, 1),
       ('033e5f74-170a-494b-9efc-83f2283e17f6', 6, 1),
       ('033e5f74-170a-494b-9efc-83f2283e17f6', 6, 2),
       ('033e5f74-170a-494b-9efc-83f2283e17f6', 6, 3),
       ('033e5f74-170a-494b-9efc-83f2283e17f6', 6, 4),
       ('033e5f74-170a-494b-9efc-83f2283e17f6', 6, 5),
       ('033e5f74-170a-494b-9efc-83f2283e17f6', 6, 6),
       ('033e5f74-170a-494b-9efc-83f2283e17f6', 5, 6),
       ('033e5f74-170a-494b-9efc-83f2283e17f6', 4, 6),
       ('033e5f74-170a-494b-9efc-83f2283e17f6', 3, 6),
       ('033e5f74-170a-494b-9efc-83f2283e17f6', 3, 5),
       ('033e5f74-170a-494b-9efc-83f2283e17f6', 3, 4),
       ('033e5f74-170a-494b-9efc-83f2283e17f6', 2, 4),
       ('033e5f74-170a-494b-9efc-83f2283e17f6', 2, 3),
       ('033e5f74-170a-494b-9efc-83f2283e17f6', 2, 2),
       ('033e5f74-170a-494b-9efc-83f2283e17f6', 2, 1),
       -- round two
       ('033e5f74-170a-494b-9efc-83f2283e17f6', 3, 1),
       ('033e5f74-170a-494b-9efc-83f2283e17f6', 4, 1),
       ('033e5f74-170a-494b-9efc-83f2283e17f6', 5, 1),
       ('033e5f74-170a-494b-9efc-83f2283e17f6', 6, 1),
       ('033e5f74-170a-494b-9efc-83f2283e17f6', 6, 2),
       ('033e5f74-170a-494b-9efc-83f2283e17f6', 6, 3),
       ('033e5f74-170a-494b-9efc-83f2283e17f6', 6, 4),
       ('033e5f74-170a-494b-9efc-83f2283e17f6', 6, 5),
       ('033e5f74-170a-494b-9efc-83f2283e17f6', 6, 6),
       ('033e5f74-170a-494b-9efc-83f2283e17f6', 5, 6),
       ('033e5f74-170a-494b-9efc-83f2283e17f6', 4, 6),
       ('033e5f74-170a-494b-9efc-83f2283e17f6', 3, 6),
       ('033e5f74-170a-494b-9efc-83f2283e17f6', 3, 5),
       ('033e5f74-170a-494b-9efc-83f2283e17f6', 3, 4),
       ('033e5f74-170a-494b-9efc-83f2283e17f6', 2, 4),
       ('033e5f74-170a-494b-9efc-83f2283e17f6', 2, 3),
       ('033e5f74-170a-494b-9efc-83f2283e17f6', 2, 2),
       ('033e5f74-170a-494b-9efc-83f2283e17f6', 2, 1),
       -- round three
       ('033e5f74-170a-494b-9efc-83f2283e17f6', 3, 1),
       ('033e5f74-170a-494b-9efc-83f2283e17f6', 4, 1),
       ('033e5f74-170a-494b-9efc-83f2283e17f6', 5, 1),
       ('033e5f74-170a-494b-9efc-83f2283e17f6', 6, 1),
       ('033e5f74-170a-494b-9efc-83f2283e17f6', 6, 2),
       ('033e5f74-170a-494b-9efc-83f2283e17f6', 6, 3),
       ('033e5f74-170a-494b-9efc-83f2283e17f6', 6, 4),
       ('033e5f74-170a-494b-9efc-83f2283e17f6', 6, 5),
       ('033e5f74-170a-494b-9efc-83f2283e17f6', 6, 6),
       ('033e5f74-170a-494b-9efc-83f2283e17f6', 5, 6),
       ('033e5f74-170a-494b-9efc-83f2283e17f6', 4, 6),
       ('033e5f74-170a-494b-9efc-83f2283e17f6', 3, 6),
       ('033e5f74-170a-494b-9efc-83f2283e17f6', 3, 5),
       ('033e5f74-170a-494b-9efc-83f2283e17f6', 3, 4),
       ('033e5f74-170a-494b-9efc-83f2283e17f6', 2, 4),
       ('033e5f74-170a-494b-9efc-83f2283e17f6', 2, 3),
       ('033e5f74-170a-494b-9efc-83f2283e17f6', 2, 2),
       ('033e5f74-170a-494b-9efc-83f2283e17f6', 2, 1),
       ('033e5f74-170a-494b-9efc-83f2283e17f6', 3, 1),
       -- leave
       ('033e5f74-170a-494b-9efc-83f2283e17f6', 3, 0);


-- sixth critter
insert into `path_list` (`healing_collector_id`, `x`, `y`)
values ('2c0c793a-a91f-48bc-8bad-f0a1bb451f29', 3, 0),
       ('2c0c793a-a91f-48bc-8bad-f0a1bb451f29', 3, 1),
       ('2c0c793a-a91f-48bc-8bad-f0a1bb451f29', 4, 1),
       ('2c0c793a-a91f-48bc-8bad-f0a1bb451f29', 5, 1),
       ('2c0c793a-a91f-48bc-8bad-f0a1bb451f29', 6, 1),
       ('2c0c793a-a91f-48bc-8bad-f0a1bb451f29', 6, 2),
       ('2c0c793a-a91f-48bc-8bad-f0a1bb451f29', 6, 3),
       ('2c0c793a-a91f-48bc-8bad-f0a1bb451f29', 6, 4),
       ('2c0c793a-a91f-48bc-8bad-f0a1bb451f29', 6, 5),
       ('2c0c793a-a91f-48bc-8bad-f0a1bb451f29', 6, 6),
       ('2c0c793a-a91f-48bc-8bad-f0a1bb451f29', 5, 6),
       ('2c0c793a-a91f-48bc-8bad-f0a1bb451f29', 4, 6),
       ('2c0c793a-a91f-48bc-8bad-f0a1bb451f29', 3, 6),
       ('2c0c793a-a91f-48bc-8bad-f0a1bb451f29', 3, 5),
       ('2c0c793a-a91f-48bc-8bad-f0a1bb451f29', 3, 4),
       ('2c0c793a-a91f-48bc-8bad-f0a1bb451f29', 2, 4),
       ('2c0c793a-a91f-48bc-8bad-f0a1bb451f29', 2, 3),
       ('2c0c793a-a91f-48bc-8bad-f0a1bb451f29', 2, 2),
       ('2c0c793a-a91f-48bc-8bad-f0a1bb451f29', 2, 1),
       -- round two
       ('2c0c793a-a91f-48bc-8bad-f0a1bb451f29', 3, 1),
       ('2c0c793a-a91f-48bc-8bad-f0a1bb451f29', 4, 1),
       ('2c0c793a-a91f-48bc-8bad-f0a1bb451f29', 5, 1),
       ('2c0c793a-a91f-48bc-8bad-f0a1bb451f29', 6, 1),
       ('2c0c793a-a91f-48bc-8bad-f0a1bb451f29', 6, 2),
       ('2c0c793a-a91f-48bc-8bad-f0a1bb451f29', 6, 3),
       ('2c0c793a-a91f-48bc-8bad-f0a1bb451f29', 6, 4),
       ('2c0c793a-a91f-48bc-8bad-f0a1bb451f29', 6, 5),
       ('2c0c793a-a91f-48bc-8bad-f0a1bb451f29', 6, 6),
       ('2c0c793a-a91f-48bc-8bad-f0a1bb451f29', 5, 6),
       ('2c0c793a-a91f-48bc-8bad-f0a1bb451f29', 4, 6),
       ('2c0c793a-a91f-48bc-8bad-f0a1bb451f29', 3, 6),
       ('2c0c793a-a91f-48bc-8bad-f0a1bb451f29', 3, 5),
       ('2c0c793a-a91f-48bc-8bad-f0a1bb451f29', 3, 4),
       ('2c0c793a-a91f-48bc-8bad-f0a1bb451f29', 2, 4),
       ('2c0c793a-a91f-48bc-8bad-f0a1bb451f29', 2, 3),
       ('2c0c793a-a91f-48bc-8bad-f0a1bb451f29', 2, 2),
       ('2c0c793a-a91f-48bc-8bad-f0a1bb451f29', 2, 1),
       -- round three
       ('2c0c793a-a91f-48bc-8bad-f0a1bb451f29', 3, 1),
       ('2c0c793a-a91f-48bc-8bad-f0a1bb451f29', 4, 1),
       ('2c0c793a-a91f-48bc-8bad-f0a1bb451f29', 5, 1),
       ('2c0c793a-a91f-48bc-8bad-f0a1bb451f29', 6, 1),
       ('2c0c793a-a91f-48bc-8bad-f0a1bb451f29', 6, 2),
       ('2c0c793a-a91f-48bc-8bad-f0a1bb451f29', 6, 3),
       ('2c0c793a-a91f-48bc-8bad-f0a1bb451f29', 6, 4),
       ('2c0c793a-a91f-48bc-8bad-f0a1bb451f29', 6, 5),
       ('2c0c793a-a91f-48bc-8bad-f0a1bb451f29', 6, 6),
       ('2c0c793a-a91f-48bc-8bad-f0a1bb451f29', 5, 6),
       ('2c0c793a-a91f-48bc-8bad-f0a1bb451f29', 4, 6),
       ('2c0c793a-a91f-48bc-8bad-f0a1bb451f29', 3, 6),
       ('2c0c793a-a91f-48bc-8bad-f0a1bb451f29', 3, 5),
       ('2c0c793a-a91f-48bc-8bad-f0a1bb451f29', 3, 4),
       ('2c0c793a-a91f-48bc-8bad-f0a1bb451f29', 2, 4),
       ('2c0c793a-a91f-48bc-8bad-f0a1bb451f29', 2, 3),
       ('2c0c793a-a91f-48bc-8bad-f0a1bb451f29', 2, 2),
       ('2c0c793a-a91f-48bc-8bad-f0a1bb451f29', 2, 1),
       ('2c0c793a-a91f-48bc-8bad-f0a1bb451f29', 3, 1),
       -- leave
       ('2c0c793a-a91f-48bc-8bad-f0a1bb451f29', 3, 0);

-- seventh critter
insert into `path_list` (`healing_collector_id`, `x`, `y`)
values ('7a22cac6-e117-45c1-84e9-d162840a4af8', 3, 0),
       ('7a22cac6-e117-45c1-84e9-d162840a4af8', 3, 1),
       ('7a22cac6-e117-45c1-84e9-d162840a4af8', 4, 1),
       ('7a22cac6-e117-45c1-84e9-d162840a4af8', 5, 1),
       ('7a22cac6-e117-45c1-84e9-d162840a4af8', 6, 1),
       ('7a22cac6-e117-45c1-84e9-d162840a4af8', 6, 2),
       ('7a22cac6-e117-45c1-84e9-d162840a4af8', 6, 3),
       ('7a22cac6-e117-45c1-84e9-d162840a4af8', 6, 4),
       ('7a22cac6-e117-45c1-84e9-d162840a4af8', 5, 4),
       ('7a22cac6-e117-45c1-84e9-d162840a4af8', 4, 4),
       ('7a22cac6-e117-45c1-84e9-d162840a4af8', 3, 4),
       ('7a22cac6-e117-45c1-84e9-d162840a4af8', 2, 4),
       ('7a22cac6-e117-45c1-84e9-d162840a4af8', 2, 3),
       ('7a22cac6-e117-45c1-84e9-d162840a4af8', 2, 2),
       ('7a22cac6-e117-45c1-84e9-d162840a4af8', 2, 1),
       -- round two
       ('7a22cac6-e117-45c1-84e9-d162840a4af8', 3, 1),
       ('7a22cac6-e117-45c1-84e9-d162840a4af8', 4, 1),
       ('7a22cac6-e117-45c1-84e9-d162840a4af8', 5, 1),
       ('7a22cac6-e117-45c1-84e9-d162840a4af8', 6, 1),
       ('7a22cac6-e117-45c1-84e9-d162840a4af8', 6, 2),
       ('7a22cac6-e117-45c1-84e9-d162840a4af8', 6, 3),
       ('7a22cac6-e117-45c1-84e9-d162840a4af8', 6, 4),
       ('7a22cac6-e117-45c1-84e9-d162840a4af8', 6, 5),
       ('7a22cac6-e117-45c1-84e9-d162840a4af8', 6, 6),
       ('7a22cac6-e117-45c1-84e9-d162840a4af8', 5, 6),
       ('7a22cac6-e117-45c1-84e9-d162840a4af8', 4, 6),
       ('7a22cac6-e117-45c1-84e9-d162840a4af8', 3, 6),
       ('7a22cac6-e117-45c1-84e9-d162840a4af8', 3, 5),
       ('7a22cac6-e117-45c1-84e9-d162840a4af8', 3, 4),
       ('7a22cac6-e117-45c1-84e9-d162840a4af8', 2, 4),
       ('7a22cac6-e117-45c1-84e9-d162840a4af8', 2, 3),
       ('7a22cac6-e117-45c1-84e9-d162840a4af8', 2, 2),
       ('7a22cac6-e117-45c1-84e9-d162840a4af8', 2, 1),
       -- round three
       ('7a22cac6-e117-45c1-84e9-d162840a4af8', 3, 1),
       ('7a22cac6-e117-45c1-84e9-d162840a4af8', 4, 1),
       ('7a22cac6-e117-45c1-84e9-d162840a4af8', 5, 1),
       ('7a22cac6-e117-45c1-84e9-d162840a4af8', 6, 1),
       ('7a22cac6-e117-45c1-84e9-d162840a4af8', 6, 2),
       ('7a22cac6-e117-45c1-84e9-d162840a4af8', 6, 3),
       ('7a22cac6-e117-45c1-84e9-d162840a4af8', 6, 4),
       ('7a22cac6-e117-45c1-84e9-d162840a4af8', 5, 4),
       ('7a22cac6-e117-45c1-84e9-d162840a4af8', 4, 4),
       ('7a22cac6-e117-45c1-84e9-d162840a4af8', 3, 4),
       ('7a22cac6-e117-45c1-84e9-d162840a4af8', 2, 4),
       ('7a22cac6-e117-45c1-84e9-d162840a4af8', 2, 3),
       ('7a22cac6-e117-45c1-84e9-d162840a4af8', 2, 2),
       ('7a22cac6-e117-45c1-84e9-d162840a4af8', 2, 1),
       ('7a22cac6-e117-45c1-84e9-d162840a4af8', 3, 1),
       -- leave
       ('7a22cac6-e117-45c1-84e9-d162840a4af8', 3, 0);

-- eighths critter
insert into `path_list` (`healing_collector_id`, `x`, `y`)
values ('fe855b1c-68b5-413e-9831-5f9d6efada9d', 3, 0),
       ('fe855b1c-68b5-413e-9831-5f9d6efada9d', 3, 1),
       ('fe855b1c-68b5-413e-9831-5f9d6efada9d', 4, 1),
       ('fe855b1c-68b5-413e-9831-5f9d6efada9d', 5, 1),
       ('fe855b1c-68b5-413e-9831-5f9d6efada9d', 6, 1),
       ('fe855b1c-68b5-413e-9831-5f9d6efada9d', 6, 2),
       ('fe855b1c-68b5-413e-9831-5f9d6efada9d', 6, 3),
       ('fe855b1c-68b5-413e-9831-5f9d6efada9d', 6, 4),
       ('fe855b1c-68b5-413e-9831-5f9d6efada9d', 5, 4),
       ('fe855b1c-68b5-413e-9831-5f9d6efada9d', 4, 4),
       ('fe855b1c-68b5-413e-9831-5f9d6efada9d', 3, 4),
       ('fe855b1c-68b5-413e-9831-5f9d6efada9d', 2, 4),
       ('fe855b1c-68b5-413e-9831-5f9d6efada9d', 2, 3),
       ('fe855b1c-68b5-413e-9831-5f9d6efada9d', 2, 2),
       ('fe855b1c-68b5-413e-9831-5f9d6efada9d', 2, 1),
       -- round two
       ('fe855b1c-68b5-413e-9831-5f9d6efada9d', 3, 1),
       ('fe855b1c-68b5-413e-9831-5f9d6efada9d', 4, 1),
       ('fe855b1c-68b5-413e-9831-5f9d6efada9d', 5, 1),
       ('fe855b1c-68b5-413e-9831-5f9d6efada9d', 6, 1),
       ('fe855b1c-68b5-413e-9831-5f9d6efada9d', 6, 2),
       ('fe855b1c-68b5-413e-9831-5f9d6efada9d', 6, 3),
       ('fe855b1c-68b5-413e-9831-5f9d6efada9d', 6, 4),
       ('fe855b1c-68b5-413e-9831-5f9d6efada9d', 5, 4),
       ('fe855b1c-68b5-413e-9831-5f9d6efada9d', 4, 4),
       ('fe855b1c-68b5-413e-9831-5f9d6efada9d', 3, 4),
       ('fe855b1c-68b5-413e-9831-5f9d6efada9d', 2, 4),
       ('fe855b1c-68b5-413e-9831-5f9d6efada9d', 2, 3),
       ('fe855b1c-68b5-413e-9831-5f9d6efada9d', 2, 2),
       ('fe855b1c-68b5-413e-9831-5f9d6efada9d', 2, 1),
       -- round three
       ('fe855b1c-68b5-413e-9831-5f9d6efada9d', 3, 1),
       ('fe855b1c-68b5-413e-9831-5f9d6efada9d', 4, 1),
       ('fe855b1c-68b5-413e-9831-5f9d6efada9d', 5, 1),
       ('fe855b1c-68b5-413e-9831-5f9d6efada9d', 6, 1),
       ('fe855b1c-68b5-413e-9831-5f9d6efada9d', 6, 2),
       ('fe855b1c-68b5-413e-9831-5f9d6efada9d', 6, 3),
       ('fe855b1c-68b5-413e-9831-5f9d6efada9d', 6, 4),
       ('fe855b1c-68b5-413e-9831-5f9d6efada9d', 5, 4),
       ('fe855b1c-68b5-413e-9831-5f9d6efada9d', 4, 4),
       ('fe855b1c-68b5-413e-9831-5f9d6efada9d', 3, 4),
       ('fe855b1c-68b5-413e-9831-5f9d6efada9d', 2, 4),
       ('fe855b1c-68b5-413e-9831-5f9d6efada9d', 2, 3),
       ('fe855b1c-68b5-413e-9831-5f9d6efada9d', 2, 2),
       ('fe855b1c-68b5-413e-9831-5f9d6efada9d', 2, 1),
       ('fe855b1c-68b5-413e-9831-5f9d6efada9d', 3, 1),
       -- leave
       ('fe855b1c-68b5-413e-9831-5f9d6efada9d', 3, 0);

-- ninth critter
insert into `path_list` (`healing_collector_id`, `x`, `y`)
values ('8d8143c4-9403-45c3-8e20-a846d8d71a30', 3, 0),
       ('8d8143c4-9403-45c3-8e20-a846d8d71a30', 3, 1),
       ('8d8143c4-9403-45c3-8e20-a846d8d71a30', 4, 1),
       ('8d8143c4-9403-45c3-8e20-a846d8d71a30', 5, 1),
       ('8d8143c4-9403-45c3-8e20-a846d8d71a30', 6, 1),
       ('8d8143c4-9403-45c3-8e20-a846d8d71a30', 6, 2),
       ('8d8143c4-9403-45c3-8e20-a846d8d71a30', 6, 3),
       ('8d8143c4-9403-45c3-8e20-a846d8d71a30', 6, 4),
       ('8d8143c4-9403-45c3-8e20-a846d8d71a30', 5, 4),
       ('8d8143c4-9403-45c3-8e20-a846d8d71a30', 4, 4),
       ('8d8143c4-9403-45c3-8e20-a846d8d71a30', 3, 4),
       ('8d8143c4-9403-45c3-8e20-a846d8d71a30', 2, 4),
       ('8d8143c4-9403-45c3-8e20-a846d8d71a30', 2, 3),
       ('8d8143c4-9403-45c3-8e20-a846d8d71a30', 2, 2),
       ('8d8143c4-9403-45c3-8e20-a846d8d71a30', 2, 1),
       -- round two
       ('8d8143c4-9403-45c3-8e20-a846d8d71a30', 3, 1),
       ('8d8143c4-9403-45c3-8e20-a846d8d71a30', 4, 1),
       ('8d8143c4-9403-45c3-8e20-a846d8d71a30', 5, 1),
       ('8d8143c4-9403-45c3-8e20-a846d8d71a30', 6, 1),
       ('8d8143c4-9403-45c3-8e20-a846d8d71a30', 6, 2),
       ('8d8143c4-9403-45c3-8e20-a846d8d71a30', 6, 3),
       ('8d8143c4-9403-45c3-8e20-a846d8d71a30', 6, 4),
       ('8d8143c4-9403-45c3-8e20-a846d8d71a30', 5, 4),
       ('8d8143c4-9403-45c3-8e20-a846d8d71a30', 4, 4),
       ('8d8143c4-9403-45c3-8e20-a846d8d71a30', 3, 4),
       ('8d8143c4-9403-45c3-8e20-a846d8d71a30', 2, 4),
       ('8d8143c4-9403-45c3-8e20-a846d8d71a30', 2, 3),
       ('8d8143c4-9403-45c3-8e20-a846d8d71a30', 2, 2),
       ('8d8143c4-9403-45c3-8e20-a846d8d71a30', 2, 1),
       -- round three
       ('8d8143c4-9403-45c3-8e20-a846d8d71a30', 3, 1),
       ('8d8143c4-9403-45c3-8e20-a846d8d71a30', 4, 1),
       ('8d8143c4-9403-45c3-8e20-a846d8d71a30', 5, 1),
       ('8d8143c4-9403-45c3-8e20-a846d8d71a30', 6, 1),
       ('8d8143c4-9403-45c3-8e20-a846d8d71a30', 6, 2),
       ('8d8143c4-9403-45c3-8e20-a846d8d71a30', 6, 3),
       ('8d8143c4-9403-45c3-8e20-a846d8d71a30', 6, 4),
       ('8d8143c4-9403-45c3-8e20-a846d8d71a30', 5, 4),
       ('8d8143c4-9403-45c3-8e20-a846d8d71a30', 4, 4),
       ('8d8143c4-9403-45c3-8e20-a846d8d71a30', 3, 4),
       ('8d8143c4-9403-45c3-8e20-a846d8d71a30', 2, 4),
       ('8d8143c4-9403-45c3-8e20-a846d8d71a30', 2, 3),
       ('8d8143c4-9403-45c3-8e20-a846d8d71a30', 2, 2),
       ('8d8143c4-9403-45c3-8e20-a846d8d71a30', 2, 1),
       ('8d8143c4-9403-45c3-8e20-a846d8d71a30', 3, 1),
       -- leave
       ('8d8143c4-9403-45c3-8e20-a846d8d71a30', 3, 0);

-- tenth critter
insert into `path_list` (`healing_collector_id`, `x`, `y`)
values ('9530f374-05bc-4611-bb2a-80cdd3914a96', 3, 0),
       ('9530f374-05bc-4611-bb2a-80cdd3914a96', 3, 1),
       ('9530f374-05bc-4611-bb2a-80cdd3914a96', 4, 1),
       ('9530f374-05bc-4611-bb2a-80cdd3914a96', 5, 1),
       ('9530f374-05bc-4611-bb2a-80cdd3914a96', 6, 1),
       ('9530f374-05bc-4611-bb2a-80cdd3914a96', 6, 2),
       ('9530f374-05bc-4611-bb2a-80cdd3914a96', 6, 3),
       ('9530f374-05bc-4611-bb2a-80cdd3914a96', 6, 4),
       ('9530f374-05bc-4611-bb2a-80cdd3914a96', 6, 5),
       ('9530f374-05bc-4611-bb2a-80cdd3914a96', 6, 6),
       ('9530f374-05bc-4611-bb2a-80cdd3914a96', 5, 6),
       ('9530f374-05bc-4611-bb2a-80cdd3914a96', 4, 6),
       ('9530f374-05bc-4611-bb2a-80cdd3914a96', 3, 6),
       ('9530f374-05bc-4611-bb2a-80cdd3914a96', 3, 5),
       ('9530f374-05bc-4611-bb2a-80cdd3914a96', 3, 4),
       ('9530f374-05bc-4611-bb2a-80cdd3914a96', 2, 4),
       ('9530f374-05bc-4611-bb2a-80cdd3914a96', 2, 3),
       ('9530f374-05bc-4611-bb2a-80cdd3914a96', 2, 2),
       ('9530f374-05bc-4611-bb2a-80cdd3914a96', 2, 1),
       -- round two
       ('9530f374-05bc-4611-bb2a-80cdd3914a96', 3, 1),
       ('9530f374-05bc-4611-bb2a-80cdd3914a96', 4, 1),
       ('9530f374-05bc-4611-bb2a-80cdd3914a96', 5, 1),
       ('9530f374-05bc-4611-bb2a-80cdd3914a96', 6, 1),
       ('9530f374-05bc-4611-bb2a-80cdd3914a96', 6, 2),
       ('9530f374-05bc-4611-bb2a-80cdd3914a96', 6, 3),
       ('9530f374-05bc-4611-bb2a-80cdd3914a96', 6, 4),
       ('9530f374-05bc-4611-bb2a-80cdd3914a96', 6, 5),
       ('9530f374-05bc-4611-bb2a-80cdd3914a96', 6, 6),
       ('9530f374-05bc-4611-bb2a-80cdd3914a96', 5, 6),
       ('9530f374-05bc-4611-bb2a-80cdd3914a96', 4, 6),
       ('9530f374-05bc-4611-bb2a-80cdd3914a96', 3, 6),
       ('9530f374-05bc-4611-bb2a-80cdd3914a96', 3, 5),
       ('9530f374-05bc-4611-bb2a-80cdd3914a96', 3, 4),
       ('9530f374-05bc-4611-bb2a-80cdd3914a96', 2, 4),
       ('9530f374-05bc-4611-bb2a-80cdd3914a96', 2, 3),
       ('9530f374-05bc-4611-bb2a-80cdd3914a96', 2, 2),
       ('9530f374-05bc-4611-bb2a-80cdd3914a96', 2, 1),
       -- round three
       ('9530f374-05bc-4611-bb2a-80cdd3914a96', 3, 1),
       ('9530f374-05bc-4611-bb2a-80cdd3914a96', 4, 1),
       ('9530f374-05bc-4611-bb2a-80cdd3914a96', 5, 1),
       ('9530f374-05bc-4611-bb2a-80cdd3914a96', 6, 1),
       ('9530f374-05bc-4611-bb2a-80cdd3914a96', 6, 2),
       ('9530f374-05bc-4611-bb2a-80cdd3914a96', 6, 3),
       ('9530f374-05bc-4611-bb2a-80cdd3914a96', 6, 4),
       ('9530f374-05bc-4611-bb2a-80cdd3914a96', 6, 5),
       ('9530f374-05bc-4611-bb2a-80cdd3914a96', 6, 6),
       ('9530f374-05bc-4611-bb2a-80cdd3914a96', 5, 6),
       ('9530f374-05bc-4611-bb2a-80cdd3914a96', 4, 6),
       ('9530f374-05bc-4611-bb2a-80cdd3914a96', 3, 6),
       ('9530f374-05bc-4611-bb2a-80cdd3914a96', 3, 5),
       ('9530f374-05bc-4611-bb2a-80cdd3914a96', 3, 4),
       ('9530f374-05bc-4611-bb2a-80cdd3914a96', 2, 4),
       ('9530f374-05bc-4611-bb2a-80cdd3914a96', 2, 3),
       ('9530f374-05bc-4611-bb2a-80cdd3914a96', 2, 2),
       ('9530f374-05bc-4611-bb2a-80cdd3914a96', 2, 1),
       -- round four
       ('9530f374-05bc-4611-bb2a-80cdd3914a96', 3, 1),
       ('9530f374-05bc-4611-bb2a-80cdd3914a96', 4, 1),
       ('9530f374-05bc-4611-bb2a-80cdd3914a96', 5, 1),
       ('9530f374-05bc-4611-bb2a-80cdd3914a96', 6, 1),
       ('9530f374-05bc-4611-bb2a-80cdd3914a96', 6, 2),
       ('9530f374-05bc-4611-bb2a-80cdd3914a96', 6, 3),
       ('9530f374-05bc-4611-bb2a-80cdd3914a96', 6, 4),
       ('9530f374-05bc-4611-bb2a-80cdd3914a96', 6, 5),
       ('9530f374-05bc-4611-bb2a-80cdd3914a96', 6, 6),
       ('9530f374-05bc-4611-bb2a-80cdd3914a96', 5, 6),
       ('9530f374-05bc-4611-bb2a-80cdd3914a96', 4, 6),
       ('9530f374-05bc-4611-bb2a-80cdd3914a96', 3, 6),
       ('9530f374-05bc-4611-bb2a-80cdd3914a96', 3, 5),
       ('9530f374-05bc-4611-bb2a-80cdd3914a96', 3, 4),
       ('9530f374-05bc-4611-bb2a-80cdd3914a96', 2, 4),
       ('9530f374-05bc-4611-bb2a-80cdd3914a96', 2, 3),
       ('9530f374-05bc-4611-bb2a-80cdd3914a96', 2, 2),
       ('9530f374-05bc-4611-bb2a-80cdd3914a96', 2, 1),
       ('9530f374-05bc-4611-bb2a-80cdd3914a96', 3, 1),
       -- leave
       ('9530f374-05bc-4611-bb2a-80cdd3914a96', 3, 0);

