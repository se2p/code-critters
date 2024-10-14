insert into `healing_collector` (`id`, `xml`, `level_id`, `init`, `mutated`, `first_faulty_round`)
values
    (
        'a419da31-e727-44e8-ad70-ea4f7f538a8c',
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
        </xml>',
        'ee430d4c-186f-40d3-9f7f-3cfa1f0de937',
        '(this.color) = ("blue");\n',
        false,
        0
    ),
    (
        '6a42a1a4-da96-427a-9bf4-3790be92ea84',
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
        </xml>',
        'ee430d4c-186f-40d3-9f7f-3cfa1f0de937',
        '(this.color) = ("orange");\n',
        false,
        0
    ),
    (
        'd524015c-4219-4ee3-be34-4b714c860dfe',
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
        </xml>',
        'ee430d4c-186f-40d3-9f7f-3cfa1f0de937',
        '(this.color) = ("pink");\n',
        false,
        0
    ),
    (
        '31f3aa67-1783-4f89-b7dd-00635ff123a9',
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
                                        <field name="NUM">2</field>
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
        </xml>',
        'ee430d4c-186f-40d3-9f7f-3cfa1f0de937',
        '(this.color) = ("blue");\n (this.hair) = ("red");\n',
        true,
        4
    ),
    (
        'c8ae9f12-d2df-4806-9e75-cd753a654193',
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
                                        <field name="NUM">4</field>
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
        </xml>',
        'ee430d4c-186f-40d3-9f7f-3cfa1f0de937',
        '(this.color) = ("orange");\n',
        true,
        3
    ),
    (
        'fc2abdd6-8e05-45e9-af65-ed235d53d1ec',
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
                                        <field name="NUM">3</field>
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
        </xml>',
        'ee430d4c-186f-40d3-9f7f-3cfa1f0de937',
        '(this.color) = ("pink");\n',
        true,
        3
    ),
    (
        'dedb5cc8-9e0d-4783-9873-93c7a5d748ed',
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
                                <field name="NUM">1</field>
                            </block>
                        </value>
                    </block>
                </next>
            </block>
        </statement>
    </block>
        </xml>',
        'ee430d4c-186f-40d3-9f7f-3cfa1f0de937',
        '(this.color) = ("cyan");\n (this.hair) = ("brown");\n',
        true,
        1
    ),
    (
        '0394c1a3-3214-4855-85ed-45556e276b98',
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
                                <field name="NUM">3</field>
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
                                <field name="NUM">3</field>
                            </block>
                        </value>
                    </block>
                </next>
            </block>
        </statement>
    </block>
        </xml>',
        'ee430d4c-186f-40d3-9f7f-3cfa1f0de937',
        '(this.color) = ("green");\n (this.hair) = ("black");\n',
        true,
        1
    ),
    (
        'ccb77012-9479-4b29-9fe9-bad6f090ccaa',
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
                        <field name="OP">LT</field>
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
        </xml>',
        'ee430d4c-186f-40d3-9f7f-3cfa1f0de937',
        '(this.color) = ("yellow");\n',
        true,
        2
    ),
    (
        '28978fe0-b9e8-4fc7-bc6e-60c7448939b9',
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
        </xml>',
        'ee430d4c-186f-40d3-9f7f-3cfa1f0de937',
        '(this.color) = ("yellow");\n (this.hair) = ("black");\n',
        false,
        0
    );


insert into `codes_per_bush` (`healing_collector_id`, `code`, `bush_type`)
values ('a419da31-e727-44e8-ad70-ea4f7f538a8c',
        'this.pinkBerryCount = this.pinkBerryCount + 2;',
        'PINK'),
       ('a419da31-e727-44e8-ad70-ea4f7f538a8c',
        'if ((this.pinkBerryCount) >= 2 && (this.purpleBerryCount) < 4) { \r\n this.purpleBerryCount = this.purpleBerryCount + 2;\r\n}',
        'PURPLE');

insert into `codes_per_bush` (`healing_collector_id`, `code`, `bush_type`)
values ('6a42a1a4-da96-427a-9bf4-3790be92ea84',
        'this.pinkBerryCount = this.pinkBerryCount + 2;',
        'PINK'),
       ('6a42a1a4-da96-427a-9bf4-3790be92ea84',
        'if ((this.pinkBerryCount) >= 2 && (this.purpleBerryCount) < 4) { \r\n this.purpleBerryCount = this.purpleBerryCount + 2;\r\n}',
        'PURPLE');

insert into `codes_per_bush` (`healing_collector_id`, `code`, `bush_type`)
values ('d524015c-4219-4ee3-be34-4b714c860dfe',
        'this.pinkBerryCount = this.pinkBerryCount + 2;',
        'PINK'),
       ('d524015c-4219-4ee3-be34-4b714c860dfe',
        'if ((this.pinkBerryCount) >= 2 && (this.purpleBerryCount) < 4) { \r\n this.purpleBerryCount = this.purpleBerryCount + 2;\r\n}',
        'PURPLE');

insert into `codes_per_bush` (`healing_collector_id`, `code`, `bush_type`)
values ('31f3aa67-1783-4f89-b7dd-00635ff123a9',
        'this.pinkBerryCount = this.pinkBerryCount + 2;',
        'PINK'),
       ('31f3aa67-1783-4f89-b7dd-00635ff123a9',
        'if ((this.pinkBerryCount) >= 2 && (this.purpleBerryCount) < 4) { \r\n this.purpleBerryCount = this.purpleBerryCount + 2;\r\n}',
        'PURPLE');

insert into `codes_per_bush` (`healing_collector_id`, `code`, `bush_type`)
values ('c8ae9f12-d2df-4806-9e75-cd753a654193',
        'this.pinkBerryCount = this.pinkBerryCount + 2;',
        'PINK'),
       ('c8ae9f12-d2df-4806-9e75-cd753a654193',
        'if ((this.pinkBerryCount) >= 2 && (this.purpleBerryCount) < 2) { \r\n this.purpleBerryCount = this.purpleBerryCount + 4;\r\n}',
        'PURPLE');

insert into `codes_per_bush` (`healing_collector_id`, `code`, `bush_type`)
values ('fc2abdd6-8e05-45e9-af65-ed235d53d1ec',
        'this.pinkBerryCount = this.pinkBerryCount + 2;',
        'PINK'),
       ('fc2abdd6-8e05-45e9-af65-ed235d53d1ec',
        'if ((this.pinkBerryCount) >= 2 && (this.purpleBerryCount) < 4) { \r\n this.purpleBerryCount = this.purpleBerryCount + 3;\r\n}',
        'PURPLE');

insert into `codes_per_bush` (`healing_collector_id`, `code`, `bush_type`)
values ('dedb5cc8-9e0d-4783-9873-93c7a5d748ed',
        'this.pinkBerryCount = this.pinkBerryCount + 1;',
        'PINK'),
       ('dedb5cc8-9e0d-4783-9873-93c7a5d748ed',
        'if ((this.pinkBerryCount) >= 2 && (this.purpleBerryCount) < 4) { \r\n this.purpleBerryCount = this.purpleBerryCount + 2;\r\n}',
        'PURPLE');

insert into `codes_per_bush` (`healing_collector_id`, `code`, `bush_type`)
values ('0394c1a3-3214-4855-85ed-45556e276b98',
        'this.pinkBerryCount = this.pinkBerryCount + 3;',
        'PINK'),
       ('0394c1a3-3214-4855-85ed-45556e276b98',
        'if ((this.pinkBerryCount) >= 3 && (this.purpleBerryCount) < 4) { \r\n this.purpleBerryCount = this.purpleBerryCount + 2;\r\n}',
        'PURPLE');

insert into `codes_per_bush` (`healing_collector_id`, `code`, `bush_type`)
values ('ccb77012-9479-4b29-9fe9-bad6f090ccaa',
        'this.pinkBerryCount = this.pinkBerryCount + 2;',
        'PINK'),
       ('ccb77012-9479-4b29-9fe9-bad6f090ccaa',
        'if ((this.pinkBerryCount) < 2 && (this.purpleBerryCount) < 4) { \r\n this.purpleBerryCount = this.purpleBerryCount + 2;\r\n}',
        'PURPLE');

insert into `codes_per_bush` (`healing_collector_id`, `code`, `bush_type`)
values ('28978fe0-b9e8-4fc7-bc6e-60c7448939b9',
        'this.pinkBerryCount = this.pinkBerryCount + 2;',
        'PINK'),
       ('28978fe0-b9e8-4fc7-bc6e-60c7448939b9',
        'if ((this.pinkBerryCount) >= 2 && (this.purpleBerryCount) < 4) { \r\n this.purpleBerryCount = this.purpleBerryCount + 2;\r\n}',
        'PURPLE');



/* pathlist for Level 10*/

insert into `path_list` (`healing_collector_id`, `x`, `y`)
values
    ('a419da31-e727-44e8-ad70-ea4f7f538a8c', 1, 0),
    ('a419da31-e727-44e8-ad70-ea4f7f538a8c', 1, 1),
    ('a419da31-e727-44e8-ad70-ea4f7f538a8c', 2, 1),
    ('a419da31-e727-44e8-ad70-ea4f7f538a8c', 3, 1),
    ('a419da31-e727-44e8-ad70-ea4f7f538a8c', 4, 1),
    ('a419da31-e727-44e8-ad70-ea4f7f538a8c', 5, 1),
    ('a419da31-e727-44e8-ad70-ea4f7f538a8c', 6, 1),
    ('a419da31-e727-44e8-ad70-ea4f7f538a8c', 6, 2),
    ('a419da31-e727-44e8-ad70-ea4f7f538a8c', 6, 3),
    ('a419da31-e727-44e8-ad70-ea4f7f538a8c', 6, 4),
    ('a419da31-e727-44e8-ad70-ea4f7f538a8c', 6, 5),
    ('a419da31-e727-44e8-ad70-ea4f7f538a8c', 6, 6),
    ('a419da31-e727-44e8-ad70-ea4f7f538a8c', 6, 7),
    ('a419da31-e727-44e8-ad70-ea4f7f538a8c', 5, 7),
    ('a419da31-e727-44e8-ad70-ea4f7f538a8c', 4, 7),
    ('a419da31-e727-44e8-ad70-ea4f7f538a8c', 3, 7),
    ('a419da31-e727-44e8-ad70-ea4f7f538a8c', 2, 7),
    ('a419da31-e727-44e8-ad70-ea4f7f538a8c', 1, 7),
    ('a419da31-e727-44e8-ad70-ea4f7f538a8c', 0, 7),
    ('a419da31-e727-44e8-ad70-ea4f7f538a8c', 0, 6),
    ('a419da31-e727-44e8-ad70-ea4f7f538a8c', 0, 5),
    ('a419da31-e727-44e8-ad70-ea4f7f538a8c', 0, 4),
    ('a419da31-e727-44e8-ad70-ea4f7f538a8c', 0, 3),
    ('a419da31-e727-44e8-ad70-ea4f7f538a8c', 0, 2),
    ('a419da31-e727-44e8-ad70-ea4f7f538a8c', 0, 1),
    ('a419da31-e727-44e8-ad70-ea4f7f538a8c', 1, 1),
    ('a419da31-e727-44e8-ad70-ea4f7f538a8c', 2, 1),
    ('a419da31-e727-44e8-ad70-ea4f7f538a8c', 3, 1),
    -- round two (inner round)
    ('a419da31-e727-44e8-ad70-ea4f7f538a8c', 3, 2),
    ('a419da31-e727-44e8-ad70-ea4f7f538a8c', 3, 3),
    ('a419da31-e727-44e8-ad70-ea4f7f538a8c', 4, 3),
    ('a419da31-e727-44e8-ad70-ea4f7f538a8c', 4, 4),
    ('a419da31-e727-44e8-ad70-ea4f7f538a8c', 4, 5),
    ('a419da31-e727-44e8-ad70-ea4f7f538a8c', 3, 5),
    ('a419da31-e727-44e8-ad70-ea4f7f538a8c', 2, 5),
    ('a419da31-e727-44e8-ad70-ea4f7f538a8c', 2, 4),
    ('a419da31-e727-44e8-ad70-ea4f7f538a8c', 2, 3),
    -- now round three (inner round)
    ('a419da31-e727-44e8-ad70-ea4f7f538a8c', 3, 3),
    ('a419da31-e727-44e8-ad70-ea4f7f538a8c', 4, 3),
    ('a419da31-e727-44e8-ad70-ea4f7f538a8c', 4, 4),
    ('a419da31-e727-44e8-ad70-ea4f7f538a8c', 4, 5),
    ('a419da31-e727-44e8-ad70-ea4f7f538a8c', 3, 5),
    ('a419da31-e727-44e8-ad70-ea4f7f538a8c', 2, 5),
    ('a419da31-e727-44e8-ad70-ea4f7f538a8c', 2, 4),
    ('a419da31-e727-44e8-ad70-ea4f7f538a8c', 2, 3),
    -- walk up to outer round:
    ('a419da31-e727-44e8-ad70-ea4f7f538a8c', 3, 3),
    ('a419da31-e727-44e8-ad70-ea4f7f538a8c', 3, 2),
    ('a419da31-e727-44e8-ad70-ea4f7f538a8c', 3, 1),
    -- now round four (outer round)
    ('a419da31-e727-44e8-ad70-ea4f7f538a8c', 4, 1),
    ('a419da31-e727-44e8-ad70-ea4f7f538a8c', 5, 1),
    ('a419da31-e727-44e8-ad70-ea4f7f538a8c', 6, 1),
    ('a419da31-e727-44e8-ad70-ea4f7f538a8c', 6, 2),
    ('a419da31-e727-44e8-ad70-ea4f7f538a8c', 6, 3),
    ('a419da31-e727-44e8-ad70-ea4f7f538a8c', 6, 4),
    ('a419da31-e727-44e8-ad70-ea4f7f538a8c', 6, 5),
    ('a419da31-e727-44e8-ad70-ea4f7f538a8c', 6, 6),
    ('a419da31-e727-44e8-ad70-ea4f7f538a8c', 6, 7),
    ('a419da31-e727-44e8-ad70-ea4f7f538a8c', 5, 7),
    ('a419da31-e727-44e8-ad70-ea4f7f538a8c', 4, 7),
    ('a419da31-e727-44e8-ad70-ea4f7f538a8c', 3, 7),
    ('a419da31-e727-44e8-ad70-ea4f7f538a8c', 2, 7),
    ('a419da31-e727-44e8-ad70-ea4f7f538a8c', 1, 7),
    ('a419da31-e727-44e8-ad70-ea4f7f538a8c', 0, 7),
    ('a419da31-e727-44e8-ad70-ea4f7f538a8c', 0, 6),
    ('a419da31-e727-44e8-ad70-ea4f7f538a8c', 0, 5),
    ('a419da31-e727-44e8-ad70-ea4f7f538a8c', 0, 4),
    ('a419da31-e727-44e8-ad70-ea4f7f538a8c', 0, 3),
    ('a419da31-e727-44e8-ad70-ea4f7f538a8c', 0, 2),
    ('a419da31-e727-44e8-ad70-ea4f7f538a8c', 0, 1),
    ('a419da31-e727-44e8-ad70-ea4f7f538a8c', 1, 1),
    -- now leave
    ('a419da31-e727-44e8-ad70-ea4f7f538a8c', 1, 0),
    -- end first mutant
    -- start second mutant:
    ('6a42a1a4-da96-427a-9bf4-3790be92ea84', 1, 0),
    ('6a42a1a4-da96-427a-9bf4-3790be92ea84', 1, 1),
    ('6a42a1a4-da96-427a-9bf4-3790be92ea84', 2, 1),
    ('6a42a1a4-da96-427a-9bf4-3790be92ea84', 3, 1),
    ('6a42a1a4-da96-427a-9bf4-3790be92ea84', 4, 1),
    ('6a42a1a4-da96-427a-9bf4-3790be92ea84', 5, 1),
    ('6a42a1a4-da96-427a-9bf4-3790be92ea84', 6, 1),
    ('6a42a1a4-da96-427a-9bf4-3790be92ea84', 6, 2),
    ('6a42a1a4-da96-427a-9bf4-3790be92ea84', 6, 3),
    ('6a42a1a4-da96-427a-9bf4-3790be92ea84', 6, 4),
    ('6a42a1a4-da96-427a-9bf4-3790be92ea84', 6, 5),
    ('6a42a1a4-da96-427a-9bf4-3790be92ea84', 6, 6),
    ('6a42a1a4-da96-427a-9bf4-3790be92ea84', 6, 7),
    ('6a42a1a4-da96-427a-9bf4-3790be92ea84', 5, 7),
    ('6a42a1a4-da96-427a-9bf4-3790be92ea84', 4, 7),
    ('6a42a1a4-da96-427a-9bf4-3790be92ea84', 3, 7),
    ('6a42a1a4-da96-427a-9bf4-3790be92ea84', 2, 7),
    ('6a42a1a4-da96-427a-9bf4-3790be92ea84', 1, 7),
    ('6a42a1a4-da96-427a-9bf4-3790be92ea84', 0, 7),
    ('6a42a1a4-da96-427a-9bf4-3790be92ea84', 0, 6),
    ('6a42a1a4-da96-427a-9bf4-3790be92ea84', 0, 5),
    ('6a42a1a4-da96-427a-9bf4-3790be92ea84', 0, 4),
    ('6a42a1a4-da96-427a-9bf4-3790be92ea84', 0, 3),
    ('6a42a1a4-da96-427a-9bf4-3790be92ea84', 0, 2),
    ('6a42a1a4-da96-427a-9bf4-3790be92ea84', 0, 1),
    ('6a42a1a4-da96-427a-9bf4-3790be92ea84', 1, 1),
    ('6a42a1a4-da96-427a-9bf4-3790be92ea84', 2, 1),
    ('6a42a1a4-da96-427a-9bf4-3790be92ea84', 3, 1),
    -- round two (inner round)
    ('6a42a1a4-da96-427a-9bf4-3790be92ea84', 3, 2),
    ('6a42a1a4-da96-427a-9bf4-3790be92ea84', 3, 3),
    ('6a42a1a4-da96-427a-9bf4-3790be92ea84', 4, 3),
    ('6a42a1a4-da96-427a-9bf4-3790be92ea84', 4, 4),
    ('6a42a1a4-da96-427a-9bf4-3790be92ea84', 4, 5),
    ('6a42a1a4-da96-427a-9bf4-3790be92ea84', 3, 5),
    ('6a42a1a4-da96-427a-9bf4-3790be92ea84', 2, 5),
    ('6a42a1a4-da96-427a-9bf4-3790be92ea84', 2, 4),
    ('6a42a1a4-da96-427a-9bf4-3790be92ea84', 2, 3),
    -- now round three (inner round)
    ('6a42a1a4-da96-427a-9bf4-3790be92ea84', 3, 3),
    ('6a42a1a4-da96-427a-9bf4-3790be92ea84', 4, 3),
    ('6a42a1a4-da96-427a-9bf4-3790be92ea84', 4, 4),
    ('6a42a1a4-da96-427a-9bf4-3790be92ea84', 4, 5),
    ('6a42a1a4-da96-427a-9bf4-3790be92ea84', 3, 5),
    ('6a42a1a4-da96-427a-9bf4-3790be92ea84', 2, 5),
    ('6a42a1a4-da96-427a-9bf4-3790be92ea84', 2, 4),
    ('6a42a1a4-da96-427a-9bf4-3790be92ea84', 2, 3),
    -- walk up to outer round:
    ('6a42a1a4-da96-427a-9bf4-3790be92ea84', 3, 3),
    ('6a42a1a4-da96-427a-9bf4-3790be92ea84', 3, 2),
    ('6a42a1a4-da96-427a-9bf4-3790be92ea84', 3, 1),
    -- now round four (outer round)
    ('6a42a1a4-da96-427a-9bf4-3790be92ea84', 4, 1),
    ('6a42a1a4-da96-427a-9bf4-3790be92ea84', 5, 1),
    ('6a42a1a4-da96-427a-9bf4-3790be92ea84', 6, 1),
    ('6a42a1a4-da96-427a-9bf4-3790be92ea84', 6, 2),
    ('6a42a1a4-da96-427a-9bf4-3790be92ea84', 6, 3),
    ('6a42a1a4-da96-427a-9bf4-3790be92ea84', 6, 4),
    ('6a42a1a4-da96-427a-9bf4-3790be92ea84', 6, 5),
    ('6a42a1a4-da96-427a-9bf4-3790be92ea84', 6, 6),
    ('6a42a1a4-da96-427a-9bf4-3790be92ea84', 6, 7),
    ('6a42a1a4-da96-427a-9bf4-3790be92ea84', 5, 7),
    ('6a42a1a4-da96-427a-9bf4-3790be92ea84', 4, 7),
    ('6a42a1a4-da96-427a-9bf4-3790be92ea84', 3, 7),
    ('6a42a1a4-da96-427a-9bf4-3790be92ea84', 2, 7),
    ('6a42a1a4-da96-427a-9bf4-3790be92ea84', 1, 7),
    ('6a42a1a4-da96-427a-9bf4-3790be92ea84', 0, 7),
    ('6a42a1a4-da96-427a-9bf4-3790be92ea84', 0, 6),
    ('6a42a1a4-da96-427a-9bf4-3790be92ea84', 0, 5),
    ('6a42a1a4-da96-427a-9bf4-3790be92ea84', 0, 4),
    ('6a42a1a4-da96-427a-9bf4-3790be92ea84', 0, 3),
    ('6a42a1a4-da96-427a-9bf4-3790be92ea84', 0, 2),
    ('6a42a1a4-da96-427a-9bf4-3790be92ea84', 0, 1),
    ('6a42a1a4-da96-427a-9bf4-3790be92ea84', 1, 1),
    -- now leave
    ('6a42a1a4-da96-427a-9bf4-3790be92ea84', 1, 0),
    -- end second mutant
    -- start third mutant:
    ('d524015c-4219-4ee3-be34-4b714c860dfe', 1, 0),
    ('d524015c-4219-4ee3-be34-4b714c860dfe', 1, 1),
    ('d524015c-4219-4ee3-be34-4b714c860dfe', 2, 1),
    ('d524015c-4219-4ee3-be34-4b714c860dfe', 3, 1),
    ('d524015c-4219-4ee3-be34-4b714c860dfe', 4, 1),
    ('d524015c-4219-4ee3-be34-4b714c860dfe', 5, 1),
    ('d524015c-4219-4ee3-be34-4b714c860dfe', 6, 1),
    ('d524015c-4219-4ee3-be34-4b714c860dfe', 6, 2),
    ('d524015c-4219-4ee3-be34-4b714c860dfe', 6, 3),
    ('d524015c-4219-4ee3-be34-4b714c860dfe', 6, 4),
    ('d524015c-4219-4ee3-be34-4b714c860dfe', 6, 5),
    ('d524015c-4219-4ee3-be34-4b714c860dfe', 6, 6),
    ('d524015c-4219-4ee3-be34-4b714c860dfe', 6, 7),
    ('d524015c-4219-4ee3-be34-4b714c860dfe', 5, 7),
    ('d524015c-4219-4ee3-be34-4b714c860dfe', 4, 7),
    ('d524015c-4219-4ee3-be34-4b714c860dfe', 3, 7),
    ('d524015c-4219-4ee3-be34-4b714c860dfe', 2, 7),
    ('d524015c-4219-4ee3-be34-4b714c860dfe', 1, 7),
    ('d524015c-4219-4ee3-be34-4b714c860dfe', 0, 7),
    ('d524015c-4219-4ee3-be34-4b714c860dfe', 0, 6),
    ('d524015c-4219-4ee3-be34-4b714c860dfe', 0, 5),
    ('d524015c-4219-4ee3-be34-4b714c860dfe', 0, 4),
    ('d524015c-4219-4ee3-be34-4b714c860dfe', 0, 3),
    ('d524015c-4219-4ee3-be34-4b714c860dfe', 0, 2),
    ('d524015c-4219-4ee3-be34-4b714c860dfe', 0, 1),
    ('d524015c-4219-4ee3-be34-4b714c860dfe', 1, 1),
    ('d524015c-4219-4ee3-be34-4b714c860dfe', 2, 1),
    ('d524015c-4219-4ee3-be34-4b714c860dfe', 3, 1),
    -- round two (inner round)
    ('d524015c-4219-4ee3-be34-4b714c860dfe', 3, 2),
    ('d524015c-4219-4ee3-be34-4b714c860dfe', 3, 3),
    ('d524015c-4219-4ee3-be34-4b714c860dfe', 4, 3),
    ('d524015c-4219-4ee3-be34-4b714c860dfe', 4, 4),
    ('d524015c-4219-4ee3-be34-4b714c860dfe', 4, 5),
    ('d524015c-4219-4ee3-be34-4b714c860dfe', 3, 5),
    ('d524015c-4219-4ee3-be34-4b714c860dfe', 2, 5),
    ('d524015c-4219-4ee3-be34-4b714c860dfe', 2, 4),
    ('d524015c-4219-4ee3-be34-4b714c860dfe', 2, 3),
    -- now round three (inner round)
    ('d524015c-4219-4ee3-be34-4b714c860dfe', 3, 3),
    ('d524015c-4219-4ee3-be34-4b714c860dfe', 4, 3),
    ('d524015c-4219-4ee3-be34-4b714c860dfe', 4, 4),
    ('d524015c-4219-4ee3-be34-4b714c860dfe', 4, 5),
    ('d524015c-4219-4ee3-be34-4b714c860dfe', 3, 5),
    ('d524015c-4219-4ee3-be34-4b714c860dfe', 2, 5),
    ('d524015c-4219-4ee3-be34-4b714c860dfe', 2, 4),
    ('d524015c-4219-4ee3-be34-4b714c860dfe', 2, 3),
    -- walk up to outer round:
    ('d524015c-4219-4ee3-be34-4b714c860dfe', 3, 3),
    ('d524015c-4219-4ee3-be34-4b714c860dfe', 3, 2),
    ('d524015c-4219-4ee3-be34-4b714c860dfe', 3, 1),
    -- now round four (outer round)
    ('d524015c-4219-4ee3-be34-4b714c860dfe', 4, 1),
    ('d524015c-4219-4ee3-be34-4b714c860dfe', 5, 1),
    ('d524015c-4219-4ee3-be34-4b714c860dfe', 6, 1),
    ('d524015c-4219-4ee3-be34-4b714c860dfe', 6, 2),
    ('d524015c-4219-4ee3-be34-4b714c860dfe', 6, 3),
    ('d524015c-4219-4ee3-be34-4b714c860dfe', 6, 4),
    ('d524015c-4219-4ee3-be34-4b714c860dfe', 6, 5),
    ('d524015c-4219-4ee3-be34-4b714c860dfe', 6, 6),
    ('d524015c-4219-4ee3-be34-4b714c860dfe', 6, 7),
    ('d524015c-4219-4ee3-be34-4b714c860dfe', 5, 7),
    ('d524015c-4219-4ee3-be34-4b714c860dfe', 4, 7),
    ('d524015c-4219-4ee3-be34-4b714c860dfe', 3, 7),
    ('d524015c-4219-4ee3-be34-4b714c860dfe', 2, 7),
    ('d524015c-4219-4ee3-be34-4b714c860dfe', 1, 7),
    ('d524015c-4219-4ee3-be34-4b714c860dfe', 0, 7),
    ('d524015c-4219-4ee3-be34-4b714c860dfe', 0, 6),
    ('d524015c-4219-4ee3-be34-4b714c860dfe', 0, 5),
    ('d524015c-4219-4ee3-be34-4b714c860dfe', 0, 4),
    ('d524015c-4219-4ee3-be34-4b714c860dfe', 0, 3),
    ('d524015c-4219-4ee3-be34-4b714c860dfe', 0, 2),
    ('d524015c-4219-4ee3-be34-4b714c860dfe', 0, 1),
    ('d524015c-4219-4ee3-be34-4b714c860dfe', 1, 1),
    -- now leave
    ('d524015c-4219-4ee3-be34-4b714c860dfe', 1, 0),
    -- end third mutant
    -- start forth mutant:
    ('31f3aa67-1783-4f89-b7dd-00635ff123a9', 1, 0),
    ('31f3aa67-1783-4f89-b7dd-00635ff123a9', 1, 1),
    ('31f3aa67-1783-4f89-b7dd-00635ff123a9', 2, 1),
    ('31f3aa67-1783-4f89-b7dd-00635ff123a9', 3, 1),
    ('31f3aa67-1783-4f89-b7dd-00635ff123a9', 4, 1),
    ('31f3aa67-1783-4f89-b7dd-00635ff123a9', 5, 1),
    ('31f3aa67-1783-4f89-b7dd-00635ff123a9', 6, 1),
    ('31f3aa67-1783-4f89-b7dd-00635ff123a9', 6, 2),
    ('31f3aa67-1783-4f89-b7dd-00635ff123a9', 6, 3),
    ('31f3aa67-1783-4f89-b7dd-00635ff123a9', 6, 4),
    ('31f3aa67-1783-4f89-b7dd-00635ff123a9', 6, 5),
    ('31f3aa67-1783-4f89-b7dd-00635ff123a9', 6, 6),
    ('31f3aa67-1783-4f89-b7dd-00635ff123a9', 6, 7),
    ('31f3aa67-1783-4f89-b7dd-00635ff123a9', 5, 7),
    ('31f3aa67-1783-4f89-b7dd-00635ff123a9', 4, 7),
    ('31f3aa67-1783-4f89-b7dd-00635ff123a9', 3, 7),
    ('31f3aa67-1783-4f89-b7dd-00635ff123a9', 2, 7),
    ('31f3aa67-1783-4f89-b7dd-00635ff123a9', 1, 7),
    ('31f3aa67-1783-4f89-b7dd-00635ff123a9', 0, 7),
    ('31f3aa67-1783-4f89-b7dd-00635ff123a9', 0, 6),
    ('31f3aa67-1783-4f89-b7dd-00635ff123a9', 0, 5),
    ('31f3aa67-1783-4f89-b7dd-00635ff123a9', 0, 4),
    ('31f3aa67-1783-4f89-b7dd-00635ff123a9', 0, 3),
    ('31f3aa67-1783-4f89-b7dd-00635ff123a9', 0, 2),
    ('31f3aa67-1783-4f89-b7dd-00635ff123a9', 0, 1),
    ('31f3aa67-1783-4f89-b7dd-00635ff123a9', 1, 1),
    ('31f3aa67-1783-4f89-b7dd-00635ff123a9', 2, 1),
    ('31f3aa67-1783-4f89-b7dd-00635ff123a9', 3, 1),
    -- round two (inner round)
    ('31f3aa67-1783-4f89-b7dd-00635ff123a9', 3, 2),
    ('31f3aa67-1783-4f89-b7dd-00635ff123a9', 3, 3),
    ('31f3aa67-1783-4f89-b7dd-00635ff123a9', 4, 3),
    ('31f3aa67-1783-4f89-b7dd-00635ff123a9', 4, 4),
    ('31f3aa67-1783-4f89-b7dd-00635ff123a9', 4, 5),
    ('31f3aa67-1783-4f89-b7dd-00635ff123a9', 3, 5),
    ('31f3aa67-1783-4f89-b7dd-00635ff123a9', 2, 5),
    ('31f3aa67-1783-4f89-b7dd-00635ff123a9', 2, 4),
    ('31f3aa67-1783-4f89-b7dd-00635ff123a9', 2, 3),
    -- walk up to outer round:
    ('31f3aa67-1783-4f89-b7dd-00635ff123a9', 3, 3),
    ('31f3aa67-1783-4f89-b7dd-00635ff123a9', 3, 2),
    ('31f3aa67-1783-4f89-b7dd-00635ff123a9', 3, 1),
    -- now round three (outer round)
    ('31f3aa67-1783-4f89-b7dd-00635ff123a9', 4, 1),
    ('31f3aa67-1783-4f89-b7dd-00635ff123a9', 5, 1),
    ('31f3aa67-1783-4f89-b7dd-00635ff123a9', 6, 1),
    ('31f3aa67-1783-4f89-b7dd-00635ff123a9', 6, 2),
    ('31f3aa67-1783-4f89-b7dd-00635ff123a9', 6, 3),
    ('31f3aa67-1783-4f89-b7dd-00635ff123a9', 6, 4),
    ('31f3aa67-1783-4f89-b7dd-00635ff123a9', 6, 5),
    ('31f3aa67-1783-4f89-b7dd-00635ff123a9', 6, 6),
    ('31f3aa67-1783-4f89-b7dd-00635ff123a9', 6, 7),
    ('31f3aa67-1783-4f89-b7dd-00635ff123a9', 5, 7),
    ('31f3aa67-1783-4f89-b7dd-00635ff123a9', 4, 7),
    ('31f3aa67-1783-4f89-b7dd-00635ff123a9', 3, 7),
    ('31f3aa67-1783-4f89-b7dd-00635ff123a9', 2, 7),
    ('31f3aa67-1783-4f89-b7dd-00635ff123a9', 1, 7),
    ('31f3aa67-1783-4f89-b7dd-00635ff123a9', 0, 7),
    ('31f3aa67-1783-4f89-b7dd-00635ff123a9', 0, 6),
    ('31f3aa67-1783-4f89-b7dd-00635ff123a9', 0, 5),
    ('31f3aa67-1783-4f89-b7dd-00635ff123a9', 0, 4),
    ('31f3aa67-1783-4f89-b7dd-00635ff123a9', 0, 3),
    ('31f3aa67-1783-4f89-b7dd-00635ff123a9', 0, 2),
    ('31f3aa67-1783-4f89-b7dd-00635ff123a9', 0, 1),
    ('31f3aa67-1783-4f89-b7dd-00635ff123a9', 1, 1),
    -- now leave
    ('31f3aa67-1783-4f89-b7dd-00635ff123a9', 1, 0),
    -- end forth mutant
    -- start fifth mutant:
    ('c8ae9f12-d2df-4806-9e75-cd753a654193', 1, 0),
    ('c8ae9f12-d2df-4806-9e75-cd753a654193', 1, 1),
    ('c8ae9f12-d2df-4806-9e75-cd753a654193', 2, 1),
    ('c8ae9f12-d2df-4806-9e75-cd753a654193', 3, 1),
    ('c8ae9f12-d2df-4806-9e75-cd753a654193', 4, 1),
    ('c8ae9f12-d2df-4806-9e75-cd753a654193', 5, 1),
    ('c8ae9f12-d2df-4806-9e75-cd753a654193', 6, 1),
    ('c8ae9f12-d2df-4806-9e75-cd753a654193', 6, 2),
    ('c8ae9f12-d2df-4806-9e75-cd753a654193', 6, 3),
    ('c8ae9f12-d2df-4806-9e75-cd753a654193', 6, 4),
    ('c8ae9f12-d2df-4806-9e75-cd753a654193', 6, 5),
    ('c8ae9f12-d2df-4806-9e75-cd753a654193', 6, 6),
    ('c8ae9f12-d2df-4806-9e75-cd753a654193', 6, 7),
    ('c8ae9f12-d2df-4806-9e75-cd753a654193', 5, 7),
    ('c8ae9f12-d2df-4806-9e75-cd753a654193', 4, 7),
    ('c8ae9f12-d2df-4806-9e75-cd753a654193', 3, 7),
    ('c8ae9f12-d2df-4806-9e75-cd753a654193', 2, 7),
    ('c8ae9f12-d2df-4806-9e75-cd753a654193', 1, 7),
    ('c8ae9f12-d2df-4806-9e75-cd753a654193', 0, 7),
    ('c8ae9f12-d2df-4806-9e75-cd753a654193', 0, 6),
    ('c8ae9f12-d2df-4806-9e75-cd753a654193', 0, 5),
    ('c8ae9f12-d2df-4806-9e75-cd753a654193', 0, 4),
    ('c8ae9f12-d2df-4806-9e75-cd753a654193', 0, 3),
    ('c8ae9f12-d2df-4806-9e75-cd753a654193', 0, 2),
    ('c8ae9f12-d2df-4806-9e75-cd753a654193', 0, 1),
    ('c8ae9f12-d2df-4806-9e75-cd753a654193', 1, 1),
    ('c8ae9f12-d2df-4806-9e75-cd753a654193', 2, 1),
    ('c8ae9f12-d2df-4806-9e75-cd753a654193', 3, 1),
    -- round two (inner round)
    ('c8ae9f12-d2df-4806-9e75-cd753a654193', 3, 2),
    ('c8ae9f12-d2df-4806-9e75-cd753a654193', 3, 3),
    ('c8ae9f12-d2df-4806-9e75-cd753a654193', 4, 3),
    ('c8ae9f12-d2df-4806-9e75-cd753a654193', 4, 4),
    ('c8ae9f12-d2df-4806-9e75-cd753a654193', 4, 5),
    ('c8ae9f12-d2df-4806-9e75-cd753a654193', 3, 5),
    ('c8ae9f12-d2df-4806-9e75-cd753a654193', 2, 5),
    ('c8ae9f12-d2df-4806-9e75-cd753a654193', 2, 4),
    ('c8ae9f12-d2df-4806-9e75-cd753a654193', 2, 3),
    -- walk up to outer round:
    ('c8ae9f12-d2df-4806-9e75-cd753a654193', 3, 3),
    ('c8ae9f12-d2df-4806-9e75-cd753a654193', 3, 2),
    ('c8ae9f12-d2df-4806-9e75-cd753a654193', 3, 1),
    -- now round three (outer round)
    ('c8ae9f12-d2df-4806-9e75-cd753a654193', 4, 1),
    ('c8ae9f12-d2df-4806-9e75-cd753a654193', 5, 1),
    ('c8ae9f12-d2df-4806-9e75-cd753a654193', 6, 1),
    ('c8ae9f12-d2df-4806-9e75-cd753a654193', 6, 2),
    ('c8ae9f12-d2df-4806-9e75-cd753a654193', 6, 3),
    ('c8ae9f12-d2df-4806-9e75-cd753a654193', 6, 4),
    ('c8ae9f12-d2df-4806-9e75-cd753a654193', 6, 5),
    ('c8ae9f12-d2df-4806-9e75-cd753a654193', 6, 6),
    ('c8ae9f12-d2df-4806-9e75-cd753a654193', 6, 7),
    ('c8ae9f12-d2df-4806-9e75-cd753a654193', 5, 7),
    ('c8ae9f12-d2df-4806-9e75-cd753a654193', 4, 7),
    ('c8ae9f12-d2df-4806-9e75-cd753a654193', 3, 7),
    ('c8ae9f12-d2df-4806-9e75-cd753a654193', 2, 7),
    ('c8ae9f12-d2df-4806-9e75-cd753a654193', 1, 7),
    ('c8ae9f12-d2df-4806-9e75-cd753a654193', 0, 7),
    ('c8ae9f12-d2df-4806-9e75-cd753a654193', 0, 6),
    ('c8ae9f12-d2df-4806-9e75-cd753a654193', 0, 5),
    ('c8ae9f12-d2df-4806-9e75-cd753a654193', 0, 4),
    ('c8ae9f12-d2df-4806-9e75-cd753a654193', 0, 3),
    ('c8ae9f12-d2df-4806-9e75-cd753a654193', 0, 2),
    ('c8ae9f12-d2df-4806-9e75-cd753a654193', 0, 1),
    ('c8ae9f12-d2df-4806-9e75-cd753a654193', 1, 1),
    -- now leave
    ('c8ae9f12-d2df-4806-9e75-cd753a654193', 1, 0),
    -- end fifth mutant
    -- start sixth mutant:
    ('fc2abdd6-8e05-45e9-af65-ed235d53d1ec', 1, 0),
    ('fc2abdd6-8e05-45e9-af65-ed235d53d1ec', 1, 1),
    ('fc2abdd6-8e05-45e9-af65-ed235d53d1ec', 2, 1),
    ('fc2abdd6-8e05-45e9-af65-ed235d53d1ec', 3, 1),
    ('fc2abdd6-8e05-45e9-af65-ed235d53d1ec', 4, 1),
    ('fc2abdd6-8e05-45e9-af65-ed235d53d1ec', 5, 1),
    ('fc2abdd6-8e05-45e9-af65-ed235d53d1ec', 6, 1),
    ('fc2abdd6-8e05-45e9-af65-ed235d53d1ec', 6, 2),
    ('fc2abdd6-8e05-45e9-af65-ed235d53d1ec', 6, 3),
    ('fc2abdd6-8e05-45e9-af65-ed235d53d1ec', 6, 4),
    ('fc2abdd6-8e05-45e9-af65-ed235d53d1ec', 6, 5),
    ('fc2abdd6-8e05-45e9-af65-ed235d53d1ec', 6, 6),
    ('fc2abdd6-8e05-45e9-af65-ed235d53d1ec', 6, 7),
    ('fc2abdd6-8e05-45e9-af65-ed235d53d1ec', 5, 7),
    ('fc2abdd6-8e05-45e9-af65-ed235d53d1ec', 4, 7),
    ('fc2abdd6-8e05-45e9-af65-ed235d53d1ec', 3, 7),
    ('fc2abdd6-8e05-45e9-af65-ed235d53d1ec', 2, 7),
    ('fc2abdd6-8e05-45e9-af65-ed235d53d1ec', 1, 7),
    ('fc2abdd6-8e05-45e9-af65-ed235d53d1ec', 0, 7),
    ('fc2abdd6-8e05-45e9-af65-ed235d53d1ec', 0, 6),
    ('fc2abdd6-8e05-45e9-af65-ed235d53d1ec', 0, 5),
    ('fc2abdd6-8e05-45e9-af65-ed235d53d1ec', 0, 4),
    ('fc2abdd6-8e05-45e9-af65-ed235d53d1ec', 0, 3),
    ('fc2abdd6-8e05-45e9-af65-ed235d53d1ec', 0, 2),
    ('fc2abdd6-8e05-45e9-af65-ed235d53d1ec', 0, 1),
    ('fc2abdd6-8e05-45e9-af65-ed235d53d1ec', 1, 1),
    ('fc2abdd6-8e05-45e9-af65-ed235d53d1ec', 2, 1),
    ('fc2abdd6-8e05-45e9-af65-ed235d53d1ec', 3, 1),
    -- round two (inner round)
    ('fc2abdd6-8e05-45e9-af65-ed235d53d1ec', 3, 2),
    ('fc2abdd6-8e05-45e9-af65-ed235d53d1ec', 3, 3),
    ('fc2abdd6-8e05-45e9-af65-ed235d53d1ec', 4, 3),
    ('fc2abdd6-8e05-45e9-af65-ed235d53d1ec', 4, 4),
    ('fc2abdd6-8e05-45e9-af65-ed235d53d1ec', 4, 5),
    ('fc2abdd6-8e05-45e9-af65-ed235d53d1ec', 3, 5),
    ('fc2abdd6-8e05-45e9-af65-ed235d53d1ec', 2, 5),
    ('fc2abdd6-8e05-45e9-af65-ed235d53d1ec', 2, 4),
    ('fc2abdd6-8e05-45e9-af65-ed235d53d1ec', 2, 3),
    -- now round three (inner round)
    ('fc2abdd6-8e05-45e9-af65-ed235d53d1ec', 3, 3),
    ('fc2abdd6-8e05-45e9-af65-ed235d53d1ec', 4, 3),
    ('fc2abdd6-8e05-45e9-af65-ed235d53d1ec', 4, 4),
    ('fc2abdd6-8e05-45e9-af65-ed235d53d1ec', 4, 5),
    ('fc2abdd6-8e05-45e9-af65-ed235d53d1ec', 3, 5),
    ('fc2abdd6-8e05-45e9-af65-ed235d53d1ec', 2, 5),
    ('fc2abdd6-8e05-45e9-af65-ed235d53d1ec', 2, 4),
    ('fc2abdd6-8e05-45e9-af65-ed235d53d1ec', 2, 3),
    -- walk up to outer round:
    ('fc2abdd6-8e05-45e9-af65-ed235d53d1ec', 3, 3),
    ('fc2abdd6-8e05-45e9-af65-ed235d53d1ec', 3, 2),
    ('fc2abdd6-8e05-45e9-af65-ed235d53d1ec', 3, 1),
    -- now round four (outer round)
    ('fc2abdd6-8e05-45e9-af65-ed235d53d1ec', 4, 1),
    ('fc2abdd6-8e05-45e9-af65-ed235d53d1ec', 5, 1),
    ('fc2abdd6-8e05-45e9-af65-ed235d53d1ec', 6, 1),
    ('fc2abdd6-8e05-45e9-af65-ed235d53d1ec', 6, 2),
    ('fc2abdd6-8e05-45e9-af65-ed235d53d1ec', 6, 3),
    ('fc2abdd6-8e05-45e9-af65-ed235d53d1ec', 6, 4),
    ('fc2abdd6-8e05-45e9-af65-ed235d53d1ec', 6, 5),
    ('fc2abdd6-8e05-45e9-af65-ed235d53d1ec', 6, 6),
    ('fc2abdd6-8e05-45e9-af65-ed235d53d1ec', 6, 7),
    ('fc2abdd6-8e05-45e9-af65-ed235d53d1ec', 5, 7),
    ('fc2abdd6-8e05-45e9-af65-ed235d53d1ec', 4, 7),
    ('fc2abdd6-8e05-45e9-af65-ed235d53d1ec', 3, 7),
    ('fc2abdd6-8e05-45e9-af65-ed235d53d1ec', 2, 7),
    ('fc2abdd6-8e05-45e9-af65-ed235d53d1ec', 1, 7),
    ('fc2abdd6-8e05-45e9-af65-ed235d53d1ec', 0, 7),
    ('fc2abdd6-8e05-45e9-af65-ed235d53d1ec', 0, 6),
    ('fc2abdd6-8e05-45e9-af65-ed235d53d1ec', 0, 5),
    ('fc2abdd6-8e05-45e9-af65-ed235d53d1ec', 0, 4),
    ('fc2abdd6-8e05-45e9-af65-ed235d53d1ec', 0, 3),
    ('fc2abdd6-8e05-45e9-af65-ed235d53d1ec', 0, 2),
    ('fc2abdd6-8e05-45e9-af65-ed235d53d1ec', 0, 1),
    ('fc2abdd6-8e05-45e9-af65-ed235d53d1ec', 1, 1),
    -- now leave
    ('fc2abdd6-8e05-45e9-af65-ed235d53d1ec', 1, 0),
    -- end sixth mutant
    -- start seventh mutant:
    ('dedb5cc8-9e0d-4783-9873-93c7a5d748ed', 1, 0),
    ('dedb5cc8-9e0d-4783-9873-93c7a5d748ed', 1, 1),
    ('dedb5cc8-9e0d-4783-9873-93c7a5d748ed', 2, 1),
    ('dedb5cc8-9e0d-4783-9873-93c7a5d748ed', 3, 1),
    ('dedb5cc8-9e0d-4783-9873-93c7a5d748ed', 4, 1),
    ('dedb5cc8-9e0d-4783-9873-93c7a5d748ed', 5, 1),
    ('dedb5cc8-9e0d-4783-9873-93c7a5d748ed', 6, 1),
    ('dedb5cc8-9e0d-4783-9873-93c7a5d748ed', 6, 2),
    ('dedb5cc8-9e0d-4783-9873-93c7a5d748ed', 6, 3),
    ('dedb5cc8-9e0d-4783-9873-93c7a5d748ed', 6, 4),
    ('dedb5cc8-9e0d-4783-9873-93c7a5d748ed', 6, 5),
    ('dedb5cc8-9e0d-4783-9873-93c7a5d748ed', 6, 6),
    ('dedb5cc8-9e0d-4783-9873-93c7a5d748ed', 6, 7),
    ('dedb5cc8-9e0d-4783-9873-93c7a5d748ed', 5, 7),
    ('dedb5cc8-9e0d-4783-9873-93c7a5d748ed', 4, 7),
    ('dedb5cc8-9e0d-4783-9873-93c7a5d748ed', 3, 7),
    ('dedb5cc8-9e0d-4783-9873-93c7a5d748ed', 2, 7),
    ('dedb5cc8-9e0d-4783-9873-93c7a5d748ed', 1, 7),
    ('dedb5cc8-9e0d-4783-9873-93c7a5d748ed', 0, 7),
    ('dedb5cc8-9e0d-4783-9873-93c7a5d748ed', 0, 6),
    ('dedb5cc8-9e0d-4783-9873-93c7a5d748ed', 0, 5),
    ('dedb5cc8-9e0d-4783-9873-93c7a5d748ed', 0, 4),
    ('dedb5cc8-9e0d-4783-9873-93c7a5d748ed', 0, 3),
    ('dedb5cc8-9e0d-4783-9873-93c7a5d748ed', 0, 2),
    ('dedb5cc8-9e0d-4783-9873-93c7a5d748ed', 0, 1),
    ('dedb5cc8-9e0d-4783-9873-93c7a5d748ed', 1, 1),
    ('dedb5cc8-9e0d-4783-9873-93c7a5d748ed', 2, 1),
    ('dedb5cc8-9e0d-4783-9873-93c7a5d748ed', 3, 1),
    -- round two
    ('dedb5cc8-9e0d-4783-9873-93c7a5d748ed', 4, 1),
    ('dedb5cc8-9e0d-4783-9873-93c7a5d748ed', 5, 1),
    ('dedb5cc8-9e0d-4783-9873-93c7a5d748ed', 6, 1),
    ('dedb5cc8-9e0d-4783-9873-93c7a5d748ed', 6, 2),
    ('dedb5cc8-9e0d-4783-9873-93c7a5d748ed', 6, 3),
    ('dedb5cc8-9e0d-4783-9873-93c7a5d748ed', 6, 4),
    ('dedb5cc8-9e0d-4783-9873-93c7a5d748ed', 6, 5),
    ('dedb5cc8-9e0d-4783-9873-93c7a5d748ed', 6, 6),
    ('dedb5cc8-9e0d-4783-9873-93c7a5d748ed', 6, 7),
    ('dedb5cc8-9e0d-4783-9873-93c7a5d748ed', 5, 7),
    ('dedb5cc8-9e0d-4783-9873-93c7a5d748ed', 4, 7),
    ('dedb5cc8-9e0d-4783-9873-93c7a5d748ed', 3, 7),
    ('dedb5cc8-9e0d-4783-9873-93c7a5d748ed', 2, 7),
    ('dedb5cc8-9e0d-4783-9873-93c7a5d748ed', 1, 7),
    ('dedb5cc8-9e0d-4783-9873-93c7a5d748ed', 0, 7),
    ('dedb5cc8-9e0d-4783-9873-93c7a5d748ed', 0, 6),
    ('dedb5cc8-9e0d-4783-9873-93c7a5d748ed', 0, 5),
    ('dedb5cc8-9e0d-4783-9873-93c7a5d748ed', 0, 4),
    ('dedb5cc8-9e0d-4783-9873-93c7a5d748ed', 0, 3),
    ('dedb5cc8-9e0d-4783-9873-93c7a5d748ed', 0, 2),
    ('dedb5cc8-9e0d-4783-9873-93c7a5d748ed', 0, 1),
    ('dedb5cc8-9e0d-4783-9873-93c7a5d748ed', 1, 1),
    ('dedb5cc8-9e0d-4783-9873-93c7a5d748ed', 2, 1),
    ('dedb5cc8-9e0d-4783-9873-93c7a5d748ed', 3, 1),
    -- round three (inner round)
    ('dedb5cc8-9e0d-4783-9873-93c7a5d748ed', 3, 2),
    ('dedb5cc8-9e0d-4783-9873-93c7a5d748ed', 3, 3),
    ('dedb5cc8-9e0d-4783-9873-93c7a5d748ed', 4, 3),
    ('dedb5cc8-9e0d-4783-9873-93c7a5d748ed', 4, 4),
    ('dedb5cc8-9e0d-4783-9873-93c7a5d748ed', 4, 5),
    ('dedb5cc8-9e0d-4783-9873-93c7a5d748ed', 3, 5),
    ('dedb5cc8-9e0d-4783-9873-93c7a5d748ed', 2, 5),
    ('dedb5cc8-9e0d-4783-9873-93c7a5d748ed', 2, 4),
    ('dedb5cc8-9e0d-4783-9873-93c7a5d748ed', 2, 3),
    -- now round four (inner round)
    ('dedb5cc8-9e0d-4783-9873-93c7a5d748ed', 3, 3),
    ('dedb5cc8-9e0d-4783-9873-93c7a5d748ed', 4, 3),
    ('dedb5cc8-9e0d-4783-9873-93c7a5d748ed', 4, 4),
    ('dedb5cc8-9e0d-4783-9873-93c7a5d748ed', 4, 5),
    ('dedb5cc8-9e0d-4783-9873-93c7a5d748ed', 3, 5),
    ('dedb5cc8-9e0d-4783-9873-93c7a5d748ed', 2, 5),
    ('dedb5cc8-9e0d-4783-9873-93c7a5d748ed', 2, 4),
    ('dedb5cc8-9e0d-4783-9873-93c7a5d748ed', 2, 3),
    -- walk up and out of game:
    ('dedb5cc8-9e0d-4783-9873-93c7a5d748ed', 3, 3),
    ('dedb5cc8-9e0d-4783-9873-93c7a5d748ed', 3, 2),
    ('dedb5cc8-9e0d-4783-9873-93c7a5d748ed', 3, 1),
    ('dedb5cc8-9e0d-4783-9873-93c7a5d748ed', 2, 1),
    ('dedb5cc8-9e0d-4783-9873-93c7a5d748ed', 1, 1),
    -- now leave
    ('dedb5cc8-9e0d-4783-9873-93c7a5d748ed', 1, 0),
    -- end seventh mutant
    -- start eights mutant:
    ('0394c1a3-3214-4855-85ed-45556e276b98', 1, 0),
    ('0394c1a3-3214-4855-85ed-45556e276b98', 1, 1),
    ('0394c1a3-3214-4855-85ed-45556e276b98', 2, 1),
    ('0394c1a3-3214-4855-85ed-45556e276b98', 3, 1),
    ('0394c1a3-3214-4855-85ed-45556e276b98', 4, 1),
    ('0394c1a3-3214-4855-85ed-45556e276b98', 5, 1),
    ('0394c1a3-3214-4855-85ed-45556e276b98', 6, 1),
    ('0394c1a3-3214-4855-85ed-45556e276b98', 6, 2),
    ('0394c1a3-3214-4855-85ed-45556e276b98', 6, 3),
    ('0394c1a3-3214-4855-85ed-45556e276b98', 6, 4),
    ('0394c1a3-3214-4855-85ed-45556e276b98', 6, 5),
    ('0394c1a3-3214-4855-85ed-45556e276b98', 6, 6),
    ('0394c1a3-3214-4855-85ed-45556e276b98', 6, 7),
    ('0394c1a3-3214-4855-85ed-45556e276b98', 5, 7),
    ('0394c1a3-3214-4855-85ed-45556e276b98', 4, 7),
    ('0394c1a3-3214-4855-85ed-45556e276b98', 3, 7),
    ('0394c1a3-3214-4855-85ed-45556e276b98', 2, 7),
    ('0394c1a3-3214-4855-85ed-45556e276b98', 1, 7),
    ('0394c1a3-3214-4855-85ed-45556e276b98', 0, 7),
    ('0394c1a3-3214-4855-85ed-45556e276b98', 0, 6),
    ('0394c1a3-3214-4855-85ed-45556e276b98', 0, 5),
    ('0394c1a3-3214-4855-85ed-45556e276b98', 0, 4),
    ('0394c1a3-3214-4855-85ed-45556e276b98', 0, 3),
    ('0394c1a3-3214-4855-85ed-45556e276b98', 0, 2),
    ('0394c1a3-3214-4855-85ed-45556e276b98', 0, 1),
    ('0394c1a3-3214-4855-85ed-45556e276b98', 1, 1),
    ('0394c1a3-3214-4855-85ed-45556e276b98', 2, 1),
    ('0394c1a3-3214-4855-85ed-45556e276b98', 3, 1),
    -- round two (inner round)
    ('0394c1a3-3214-4855-85ed-45556e276b98', 3, 2),
    ('0394c1a3-3214-4855-85ed-45556e276b98', 3, 3),
    ('0394c1a3-3214-4855-85ed-45556e276b98', 4, 3),
    ('0394c1a3-3214-4855-85ed-45556e276b98', 4, 4),
    ('0394c1a3-3214-4855-85ed-45556e276b98', 4, 5),
    ('0394c1a3-3214-4855-85ed-45556e276b98', 3, 5),
    ('0394c1a3-3214-4855-85ed-45556e276b98', 2, 5),
    ('0394c1a3-3214-4855-85ed-45556e276b98', 2, 4),
    ('0394c1a3-3214-4855-85ed-45556e276b98', 2, 3),
    -- now round three (inner round)
    ('0394c1a3-3214-4855-85ed-45556e276b98', 3, 3),
    ('0394c1a3-3214-4855-85ed-45556e276b98', 4, 3),
    ('0394c1a3-3214-4855-85ed-45556e276b98', 4, 4),
    ('0394c1a3-3214-4855-85ed-45556e276b98', 4, 5),
    ('0394c1a3-3214-4855-85ed-45556e276b98', 3, 5),
    ('0394c1a3-3214-4855-85ed-45556e276b98', 2, 5),
    ('0394c1a3-3214-4855-85ed-45556e276b98', 2, 4),
    ('0394c1a3-3214-4855-85ed-45556e276b98', 2, 3),
    -- walk up to outer round:
    ('0394c1a3-3214-4855-85ed-45556e276b98', 3, 3),
    ('0394c1a3-3214-4855-85ed-45556e276b98', 3, 2),
    ('0394c1a3-3214-4855-85ed-45556e276b98', 3, 1),
    -- now round four (outer round)
    ('0394c1a3-3214-4855-85ed-45556e276b98', 4, 1),
    ('0394c1a3-3214-4855-85ed-45556e276b98', 5, 1),
    ('0394c1a3-3214-4855-85ed-45556e276b98', 6, 1),
    ('0394c1a3-3214-4855-85ed-45556e276b98', 6, 2),
    ('0394c1a3-3214-4855-85ed-45556e276b98', 6, 3),
    ('0394c1a3-3214-4855-85ed-45556e276b98', 6, 4),
    ('0394c1a3-3214-4855-85ed-45556e276b98', 6, 5),
    ('0394c1a3-3214-4855-85ed-45556e276b98', 6, 6),
    ('0394c1a3-3214-4855-85ed-45556e276b98', 6, 7),
    ('0394c1a3-3214-4855-85ed-45556e276b98', 5, 7),
    ('0394c1a3-3214-4855-85ed-45556e276b98', 4, 7),
    ('0394c1a3-3214-4855-85ed-45556e276b98', 3, 7),
    ('0394c1a3-3214-4855-85ed-45556e276b98', 2, 7),
    ('0394c1a3-3214-4855-85ed-45556e276b98', 1, 7),
    ('0394c1a3-3214-4855-85ed-45556e276b98', 0, 7),
    ('0394c1a3-3214-4855-85ed-45556e276b98', 0, 6),
    ('0394c1a3-3214-4855-85ed-45556e276b98', 0, 5),
    ('0394c1a3-3214-4855-85ed-45556e276b98', 0, 4),
    ('0394c1a3-3214-4855-85ed-45556e276b98', 0, 3),
    ('0394c1a3-3214-4855-85ed-45556e276b98', 0, 2),
    ('0394c1a3-3214-4855-85ed-45556e276b98', 0, 1),
    ('0394c1a3-3214-4855-85ed-45556e276b98', 1, 1),
    -- now leave
    ('0394c1a3-3214-4855-85ed-45556e276b98', 1, 0),
    -- end eights mutant
    -- start ninth mutant:
    ('ccb77012-9479-4b29-9fe9-bad6f090ccaa', 1, 0),
    ('ccb77012-9479-4b29-9fe9-bad6f090ccaa', 1, 1),
    ('ccb77012-9479-4b29-9fe9-bad6f090ccaa', 2, 1),
    ('ccb77012-9479-4b29-9fe9-bad6f090ccaa', 3, 1),
    -- first (inner round)
    ('ccb77012-9479-4b29-9fe9-bad6f090ccaa', 3, 2),
    ('ccb77012-9479-4b29-9fe9-bad6f090ccaa', 3, 3),
    ('ccb77012-9479-4b29-9fe9-bad6f090ccaa', 4, 3),
    ('ccb77012-9479-4b29-9fe9-bad6f090ccaa', 4, 4),
    ('ccb77012-9479-4b29-9fe9-bad6f090ccaa', 4, 5),
    ('ccb77012-9479-4b29-9fe9-bad6f090ccaa', 3, 5),
    ('ccb77012-9479-4b29-9fe9-bad6f090ccaa', 2, 5),
    ('ccb77012-9479-4b29-9fe9-bad6f090ccaa', 2, 4),
    ('ccb77012-9479-4b29-9fe9-bad6f090ccaa', 2, 3),
    -- second (inner round)
    ('ccb77012-9479-4b29-9fe9-bad6f090ccaa', 3, 3),
    ('ccb77012-9479-4b29-9fe9-bad6f090ccaa', 4, 3),
    ('ccb77012-9479-4b29-9fe9-bad6f090ccaa', 4, 4),
    ('ccb77012-9479-4b29-9fe9-bad6f090ccaa', 4, 5),
    ('ccb77012-9479-4b29-9fe9-bad6f090ccaa', 3, 5),
    ('ccb77012-9479-4b29-9fe9-bad6f090ccaa', 2, 5),
    ('ccb77012-9479-4b29-9fe9-bad6f090ccaa', 2, 4),
    ('ccb77012-9479-4b29-9fe9-bad6f090ccaa', 2, 3),
    -- walk up to outer round:
    ('ccb77012-9479-4b29-9fe9-bad6f090ccaa', 3, 3),
    ('ccb77012-9479-4b29-9fe9-bad6f090ccaa', 3, 2),
    ('ccb77012-9479-4b29-9fe9-bad6f090ccaa', 3, 1),
    -- now round three (outer round)
    ('ccb77012-9479-4b29-9fe9-bad6f090ccaa', 4, 1),
    ('ccb77012-9479-4b29-9fe9-bad6f090ccaa', 5, 1),
    ('ccb77012-9479-4b29-9fe9-bad6f090ccaa', 6, 1),
    ('ccb77012-9479-4b29-9fe9-bad6f090ccaa', 6, 2),
    ('ccb77012-9479-4b29-9fe9-bad6f090ccaa', 6, 3),
    ('ccb77012-9479-4b29-9fe9-bad6f090ccaa', 6, 4),
    ('ccb77012-9479-4b29-9fe9-bad6f090ccaa', 6, 5),
    ('ccb77012-9479-4b29-9fe9-bad6f090ccaa', 6, 6),
    ('ccb77012-9479-4b29-9fe9-bad6f090ccaa', 6, 7),
    ('ccb77012-9479-4b29-9fe9-bad6f090ccaa', 5, 7),
    ('ccb77012-9479-4b29-9fe9-bad6f090ccaa', 4, 7),
    ('ccb77012-9479-4b29-9fe9-bad6f090ccaa', 3, 7),
    ('ccb77012-9479-4b29-9fe9-bad6f090ccaa', 2, 7),
    ('ccb77012-9479-4b29-9fe9-bad6f090ccaa', 1, 7),
    ('ccb77012-9479-4b29-9fe9-bad6f090ccaa', 0, 7),
    ('ccb77012-9479-4b29-9fe9-bad6f090ccaa', 0, 6),
    ('ccb77012-9479-4b29-9fe9-bad6f090ccaa', 0, 5),
    ('ccb77012-9479-4b29-9fe9-bad6f090ccaa', 0, 4),
    ('ccb77012-9479-4b29-9fe9-bad6f090ccaa', 0, 3),
    ('ccb77012-9479-4b29-9fe9-bad6f090ccaa', 0, 2),
    ('ccb77012-9479-4b29-9fe9-bad6f090ccaa', 0, 1),
    ('ccb77012-9479-4b29-9fe9-bad6f090ccaa', 1, 1),
    ('ccb77012-9479-4b29-9fe9-bad6f090ccaa', 2, 1),
    -- now round four (outer)
    ('ccb77012-9479-4b29-9fe9-bad6f090ccaa', 3, 1),
    ('ccb77012-9479-4b29-9fe9-bad6f090ccaa', 4, 1),
    ('ccb77012-9479-4b29-9fe9-bad6f090ccaa', 5, 1),
    ('ccb77012-9479-4b29-9fe9-bad6f090ccaa', 6, 1),
    ('ccb77012-9479-4b29-9fe9-bad6f090ccaa', 6, 2),
    ('ccb77012-9479-4b29-9fe9-bad6f090ccaa', 6, 3),
    ('ccb77012-9479-4b29-9fe9-bad6f090ccaa', 6, 4),
    ('ccb77012-9479-4b29-9fe9-bad6f090ccaa', 6, 5),
    ('ccb77012-9479-4b29-9fe9-bad6f090ccaa', 6, 6),
    ('ccb77012-9479-4b29-9fe9-bad6f090ccaa', 6, 7),
    ('ccb77012-9479-4b29-9fe9-bad6f090ccaa', 5, 7),
    ('ccb77012-9479-4b29-9fe9-bad6f090ccaa', 4, 7),
    ('ccb77012-9479-4b29-9fe9-bad6f090ccaa', 3, 7),
    ('ccb77012-9479-4b29-9fe9-bad6f090ccaa', 2, 7),
    ('ccb77012-9479-4b29-9fe9-bad6f090ccaa', 1, 7),
    ('ccb77012-9479-4b29-9fe9-bad6f090ccaa', 0, 7),
    ('ccb77012-9479-4b29-9fe9-bad6f090ccaa', 0, 6),
    ('ccb77012-9479-4b29-9fe9-bad6f090ccaa', 0, 5),
    ('ccb77012-9479-4b29-9fe9-bad6f090ccaa', 0, 4),
    ('ccb77012-9479-4b29-9fe9-bad6f090ccaa', 0, 3),
    ('ccb77012-9479-4b29-9fe9-bad6f090ccaa', 0, 2),
    ('ccb77012-9479-4b29-9fe9-bad6f090ccaa', 0, 1),
    ('ccb77012-9479-4b29-9fe9-bad6f090ccaa', 1, 1),
    -- now leave
    ('ccb77012-9479-4b29-9fe9-bad6f090ccaa', 1, 0),
    -- end ninth mutant
    -- start tenth mutant:
    ('28978fe0-b9e8-4fc7-bc6e-60c7448939b9', 1, 0),
    ('28978fe0-b9e8-4fc7-bc6e-60c7448939b9', 1, 1),
    ('28978fe0-b9e8-4fc7-bc6e-60c7448939b9', 2, 1),
    ('28978fe0-b9e8-4fc7-bc6e-60c7448939b9', 3, 1),
    ('28978fe0-b9e8-4fc7-bc6e-60c7448939b9', 4, 1),
    ('28978fe0-b9e8-4fc7-bc6e-60c7448939b9', 5, 1),
    ('28978fe0-b9e8-4fc7-bc6e-60c7448939b9', 6, 1),
    ('28978fe0-b9e8-4fc7-bc6e-60c7448939b9', 6, 2),
    ('28978fe0-b9e8-4fc7-bc6e-60c7448939b9', 6, 3),
    ('28978fe0-b9e8-4fc7-bc6e-60c7448939b9', 6, 4),
    ('28978fe0-b9e8-4fc7-bc6e-60c7448939b9', 6, 5),
    ('28978fe0-b9e8-4fc7-bc6e-60c7448939b9', 6, 6),
    ('28978fe0-b9e8-4fc7-bc6e-60c7448939b9', 6, 7),
    ('28978fe0-b9e8-4fc7-bc6e-60c7448939b9', 5, 7),
    ('28978fe0-b9e8-4fc7-bc6e-60c7448939b9', 4, 7),
    ('28978fe0-b9e8-4fc7-bc6e-60c7448939b9', 3, 7),
    ('28978fe0-b9e8-4fc7-bc6e-60c7448939b9', 2, 7),
    ('28978fe0-b9e8-4fc7-bc6e-60c7448939b9', 1, 7),
    ('28978fe0-b9e8-4fc7-bc6e-60c7448939b9', 0, 7),
    ('28978fe0-b9e8-4fc7-bc6e-60c7448939b9', 0, 6),
    ('28978fe0-b9e8-4fc7-bc6e-60c7448939b9', 0, 5),
    ('28978fe0-b9e8-4fc7-bc6e-60c7448939b9', 0, 4),
    ('28978fe0-b9e8-4fc7-bc6e-60c7448939b9', 0, 3),
    ('28978fe0-b9e8-4fc7-bc6e-60c7448939b9', 0, 2),
    ('28978fe0-b9e8-4fc7-bc6e-60c7448939b9', 0, 1),
    ('28978fe0-b9e8-4fc7-bc6e-60c7448939b9', 1, 1),
    ('28978fe0-b9e8-4fc7-bc6e-60c7448939b9', 2, 1),
    ('28978fe0-b9e8-4fc7-bc6e-60c7448939b9', 3, 1),
    -- round two (inner round)
    ('28978fe0-b9e8-4fc7-bc6e-60c7448939b9', 3, 2),
    ('28978fe0-b9e8-4fc7-bc6e-60c7448939b9', 3, 3),
    ('28978fe0-b9e8-4fc7-bc6e-60c7448939b9', 4, 3),
    ('28978fe0-b9e8-4fc7-bc6e-60c7448939b9', 4, 4),
    ('28978fe0-b9e8-4fc7-bc6e-60c7448939b9', 4, 5),
    ('28978fe0-b9e8-4fc7-bc6e-60c7448939b9', 3, 5),
    ('28978fe0-b9e8-4fc7-bc6e-60c7448939b9', 2, 5),
    ('28978fe0-b9e8-4fc7-bc6e-60c7448939b9', 2, 4),
    ('28978fe0-b9e8-4fc7-bc6e-60c7448939b9', 2, 3),
    -- now round three (inner round)
    ('28978fe0-b9e8-4fc7-bc6e-60c7448939b9', 3, 3),
    ('28978fe0-b9e8-4fc7-bc6e-60c7448939b9', 4, 3),
    ('28978fe0-b9e8-4fc7-bc6e-60c7448939b9', 4, 4),
    ('28978fe0-b9e8-4fc7-bc6e-60c7448939b9', 4, 5),
    ('28978fe0-b9e8-4fc7-bc6e-60c7448939b9', 3, 5),
    ('28978fe0-b9e8-4fc7-bc6e-60c7448939b9', 2, 5),
    ('28978fe0-b9e8-4fc7-bc6e-60c7448939b9', 2, 4),
    ('28978fe0-b9e8-4fc7-bc6e-60c7448939b9', 2, 3),
    -- walk up to outer round:
    ('28978fe0-b9e8-4fc7-bc6e-60c7448939b9', 3, 3),
    ('28978fe0-b9e8-4fc7-bc6e-60c7448939b9', 3, 2),
    ('28978fe0-b9e8-4fc7-bc6e-60c7448939b9', 3, 1),
    -- now round four (outer round)
    ('28978fe0-b9e8-4fc7-bc6e-60c7448939b9', 4, 1),
    ('28978fe0-b9e8-4fc7-bc6e-60c7448939b9', 5, 1),
    ('28978fe0-b9e8-4fc7-bc6e-60c7448939b9', 6, 1),
    ('28978fe0-b9e8-4fc7-bc6e-60c7448939b9', 6, 2),
    ('28978fe0-b9e8-4fc7-bc6e-60c7448939b9', 6, 3),
    ('28978fe0-b9e8-4fc7-bc6e-60c7448939b9', 6, 4),
    ('28978fe0-b9e8-4fc7-bc6e-60c7448939b9', 6, 5),
    ('28978fe0-b9e8-4fc7-bc6e-60c7448939b9', 6, 6),
    ('28978fe0-b9e8-4fc7-bc6e-60c7448939b9', 6, 7),
    ('28978fe0-b9e8-4fc7-bc6e-60c7448939b9', 5, 7),
    ('28978fe0-b9e8-4fc7-bc6e-60c7448939b9', 4, 7),
    ('28978fe0-b9e8-4fc7-bc6e-60c7448939b9', 3, 7),
    ('28978fe0-b9e8-4fc7-bc6e-60c7448939b9', 2, 7),
    ('28978fe0-b9e8-4fc7-bc6e-60c7448939b9', 1, 7),
    ('28978fe0-b9e8-4fc7-bc6e-60c7448939b9', 0, 7),
    ('28978fe0-b9e8-4fc7-bc6e-60c7448939b9', 0, 6),
    ('28978fe0-b9e8-4fc7-bc6e-60c7448939b9', 0, 5),
    ('28978fe0-b9e8-4fc7-bc6e-60c7448939b9', 0, 4),
    ('28978fe0-b9e8-4fc7-bc6e-60c7448939b9', 0, 3),
    ('28978fe0-b9e8-4fc7-bc6e-60c7448939b9', 0, 2),
    ('28978fe0-b9e8-4fc7-bc6e-60c7448939b9', 0, 1),
    ('28978fe0-b9e8-4fc7-bc6e-60c7448939b9', 1, 1),
    -- now leave
    ('28978fe0-b9e8-4fc7-bc6e-60c7448939b9', 1, 0);
-- end tenth mutant
