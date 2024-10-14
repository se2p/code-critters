delete
from `healing_collector`;
insert into `healing_collector` (`id`, xml, `level_id`, `init`, `mutated`, `first_faulty_round`)
values
    ('05649da0-004b-4d4a-899d-868c4ad7a427',
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
                        <field name="NUM">2</field>
                    </block>
                </value>
            </block>
      </statement>
     </block>
 </xml>',
     '0d4d7178-8e67-4969-9b36-1adc3d0b5a0c',
     '(this.color) = ("red");\n',
     true,
     1),
    ('3285e0b5-1f01-4202-b046-4f5f2cdbecb8',
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
                        <field name="NUM">2</field>
                    </block>
                </value>
            </block>
     </statement>
     </block>
  </xml>',
     '0d4d7178-8e67-4969-9b36-1adc3d0b5a0c',
     '(this.color) = ("pink");\n',
     true,
     1),

    ('3af42ece-1a50-42b8-b975-6677a4946cad',
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
                        <field name="NUM">0</field>
                    </block>
                </value>
            </block>
     </statement>
     </block>
   </xml>',
     '0d4d7178-8e67-4969-9b36-1adc3d0b5a0c',
     '(this.color) = ("cyan");\n (this.hair) = ("red");\n',
     true,
     1),

    ('ff8bc767-6ce6-40c1-a1ba-a02376953ebb',
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
                        <field name="NUM">0</field>
                    </block>
                </value>
            </block>
     </statement>
     </block>
        </xml>',
     '0d4d7178-8e67-4969-9b36-1adc3d0b5a0c',
     '(this.color) = ("green");\n (this.hair) = ("brown");\n',
     true,
     1),

    ('62af53a6-03cd-4995-9533-9bc3f1a552d2',
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
     '0d4d7178-8e67-4969-9b36-1adc3d0b5a0c',
     '(this.color) = ("red");\n',
     false,
     0),
    ('cd3c3c3d-9e7b-429c-828a-4a45c3acc290',
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
     '0d4d7178-8e67-4969-9b36-1adc3d0b5a0c',
     '(this.color) = ("yellow");\n (this.hair) = ("black");\n',
     false,
     0),
    ('1aca217d-7dfe-4406-9914-cbccd19b36c5',
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
     '0d4d7178-8e67-4969-9b36-1adc3d0b5a0c',
     '(this.color) = ("cyan");\n',
     false,
     0),
    ('effe338e-bf0b-4af8-a183-f5b6a97551ae',
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
     '0d4d7178-8e67-4969-9b36-1adc3d0b5a0c',
     '(this.color) = ("green");\n (this.hair) = ("brown");\n',
     false,
     0),
    ('09eb4b19-5a43-4e7c-99a0-7509358f8b89',
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
                        <field name="NUM">0</field>
                    </block>
                </value>
            </block>
     </statement>
     </block>
        </xml>',
     '0d4d7178-8e67-4969-9b36-1adc3d0b5a0c',
     '(this.color) = ("blue");\n',
     true,
     1),
    ('ddc65dff-d217-4c6d-bd1a-e1deceeff1b1',
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
                        <field name="NUM">3</field>
                    </block>
                </value>
            </block>
     </statement>
     </block>
        </xml>',
     '0d4d7178-8e67-4969-9b36-1adc3d0b5a0c',
     '(this.color) = ("cyan");\n',
     true,
     1);

insert into `codes_per_bush` (`healing_collector_id`, `code`, `bush_type`)
values ('05649da0-004b-4d4a-899d-868c4ad7a427',
        '(this.redBerryCount) = (this.redBerryCount + 2);',
        'RED');

insert into `codes_per_bush` (`healing_collector_id`, `code`, `bush_type`)
values ('3285e0b5-1f01-4202-b046-4f5f2cdbecb8',
        '(this.redBerryCount) = (this.redBerryCount + 2);',
        'RED');

insert into `codes_per_bush` (`healing_collector_id`, `code`, `bush_type`)
values ('3af42ece-1a50-42b8-b975-6677a4946cad',
        '(this.redBerryCount) = (this.redBerryCount + 0);',
        'RED');

insert into `codes_per_bush` (`healing_collector_id`, `code`, `bush_type`)
values ('ff8bc767-6ce6-40c1-a1ba-a02376953ebb',
        '(this.redBerryCount) = (this.redBerryCount + 0);',
        'RED');

insert into `codes_per_bush` (`healing_collector_id`, `code`, `bush_type`)
values ('62af53a6-03cd-4995-9533-9bc3f1a552d2',
        '(this.redBerryCount) = (this.redBerryCount + 1);',
        'RED');

insert into `codes_per_bush` (`healing_collector_id`, `code`, `bush_type`)
values ('cd3c3c3d-9e7b-429c-828a-4a45c3acc290',
        '(this.redBerryCount) = (this.redBerryCount + 1);',
        'RED');

insert into `codes_per_bush` (`healing_collector_id`, `code`, `bush_type`)
values ('1aca217d-7dfe-4406-9914-cbccd19b36c5',
        '(this.redBerryCount) = (this.redBerryCount + 1);',
        'RED');

insert into `codes_per_bush` (`healing_collector_id`, `code`, `bush_type`)
values ('effe338e-bf0b-4af8-a183-f5b6a97551ae',
        '(this.redBerryCount) = (this.redBerryCount + 1);',
        'RED');

insert into `codes_per_bush` (`healing_collector_id`, `code`, `bush_type`)
values ('09eb4b19-5a43-4e7c-99a0-7509358f8b89',
        '(this.redBerryCount) = (this.redBerryCount + 0);',
        'RED');

insert into `codes_per_bush` (`healing_collector_id`, `code`, `bush_type`)
values ('ddc65dff-d217-4c6d-bd1a-e1deceeff1b1',
        '(this.redBerryCount) = (this.redBerryCount + 3);',
        'RED');


delete
from `path_list`;
insert into `path_list` (`healing_collector_id`, `x`, `y`)
values ('05649da0-004b-4d4a-899d-868c4ad7a427', 3, 0),
       ('05649da0-004b-4d4a-899d-868c4ad7a427', 3, 1),
       ('05649da0-004b-4d4a-899d-868c4ad7a427', 4, 1),
       ('05649da0-004b-4d4a-899d-868c4ad7a427', 5, 1),
       ('05649da0-004b-4d4a-899d-868c4ad7a427', 6, 1),
       ('05649da0-004b-4d4a-899d-868c4ad7a427', 6, 2),
       ('05649da0-004b-4d4a-899d-868c4ad7a427', 6, 3),
       ('05649da0-004b-4d4a-899d-868c4ad7a427', 6, 4),
       ('05649da0-004b-4d4a-899d-868c4ad7a427', 6, 5),
       ('05649da0-004b-4d4a-899d-868c4ad7a427', 6, 6),
       ('05649da0-004b-4d4a-899d-868c4ad7a427', 5, 6),
       ('05649da0-004b-4d4a-899d-868c4ad7a427', 4, 6),
       ('05649da0-004b-4d4a-899d-868c4ad7a427', 3, 6),
       ('05649da0-004b-4d4a-899d-868c4ad7a427', 2, 6),
       ('05649da0-004b-4d4a-899d-868c4ad7a427', 1, 6),
       ('05649da0-004b-4d4a-899d-868c4ad7a427', 1, 5),
       ('05649da0-004b-4d4a-899d-868c4ad7a427', 1, 4),
       ('05649da0-004b-4d4a-899d-868c4ad7a427', 1, 3),
       ('05649da0-004b-4d4a-899d-868c4ad7a427', 1, 2),
       ('05649da0-004b-4d4a-899d-868c4ad7a427', 1, 1),
       ('05649da0-004b-4d4a-899d-868c4ad7a427', 2, 1),
       ('05649da0-004b-4d4a-899d-868c4ad7a427', 3, 1),
       -- round two
       ('05649da0-004b-4d4a-899d-868c4ad7a427', 4, 1),
       ('05649da0-004b-4d4a-899d-868c4ad7a427', 5, 1),
       ('05649da0-004b-4d4a-899d-868c4ad7a427', 6, 1),
       ('05649da0-004b-4d4a-899d-868c4ad7a427', 6, 2),
       ('05649da0-004b-4d4a-899d-868c4ad7a427', 6, 3),
       ('05649da0-004b-4d4a-899d-868c4ad7a427', 6, 4),
       ('05649da0-004b-4d4a-899d-868c4ad7a427', 6, 5),
       ('05649da0-004b-4d4a-899d-868c4ad7a427', 6, 6),
       ('05649da0-004b-4d4a-899d-868c4ad7a427', 5, 6),
       ('05649da0-004b-4d4a-899d-868c4ad7a427', 4, 6),
       ('05649da0-004b-4d4a-899d-868c4ad7a427', 3, 6),
       ('05649da0-004b-4d4a-899d-868c4ad7a427', 2, 6),
       ('05649da0-004b-4d4a-899d-868c4ad7a427', 1, 6),
       ('05649da0-004b-4d4a-899d-868c4ad7a427', 1, 5),
       ('05649da0-004b-4d4a-899d-868c4ad7a427', 1, 4),
       ('05649da0-004b-4d4a-899d-868c4ad7a427', 1, 3),
       ('05649da0-004b-4d4a-899d-868c4ad7a427', 1, 2),
       ('05649da0-004b-4d4a-899d-868c4ad7a427', 1, 1),
       ('05649da0-004b-4d4a-899d-868c4ad7a427', 2, 1),
       ('05649da0-004b-4d4a-899d-868c4ad7a427', 3, 1),
       -- now round three:
       ('05649da0-004b-4d4a-899d-868c4ad7a427', 4, 1),
       ('05649da0-004b-4d4a-899d-868c4ad7a427', 5, 1),
       ('05649da0-004b-4d4a-899d-868c4ad7a427', 6, 1),
       ('05649da0-004b-4d4a-899d-868c4ad7a427', 6, 2),
       ('05649da0-004b-4d4a-899d-868c4ad7a427', 6, 3),
       ('05649da0-004b-4d4a-899d-868c4ad7a427', 6, 4),
       ('05649da0-004b-4d4a-899d-868c4ad7a427', 6, 5),
       ('05649da0-004b-4d4a-899d-868c4ad7a427', 6, 6),
       ('05649da0-004b-4d4a-899d-868c4ad7a427', 5, 6),
       ('05649da0-004b-4d4a-899d-868c4ad7a427', 4, 6),
       ('05649da0-004b-4d4a-899d-868c4ad7a427', 3, 6),
       ('05649da0-004b-4d4a-899d-868c4ad7a427', 2, 6),
       ('05649da0-004b-4d4a-899d-868c4ad7a427', 1, 6),
       ('05649da0-004b-4d4a-899d-868c4ad7a427', 1, 5),
       ('05649da0-004b-4d4a-899d-868c4ad7a427', 1, 4),
       ('05649da0-004b-4d4a-899d-868c4ad7a427', 1, 3),
       ('05649da0-004b-4d4a-899d-868c4ad7a427', 1, 2),
       ('05649da0-004b-4d4a-899d-868c4ad7a427', 1, 1),
       ('05649da0-004b-4d4a-899d-868c4ad7a427', 2, 1),
       ('05649da0-004b-4d4a-899d-868c4ad7a427', 3, 1),
       -- now leave
       ('05649da0-004b-4d4a-899d-868c4ad7a427', 3, 0),
       -- end first mutant
       ('3285e0b5-1f01-4202-b046-4f5f2cdbecb8', 3, 0),
       -- start second mutant
       ('3285e0b5-1f01-4202-b046-4f5f2cdbecb8', 3, 1),
       ('3285e0b5-1f01-4202-b046-4f5f2cdbecb8', 4, 1),
       ('3285e0b5-1f01-4202-b046-4f5f2cdbecb8', 5, 1),
       ('3285e0b5-1f01-4202-b046-4f5f2cdbecb8', 6, 1),
       ('3285e0b5-1f01-4202-b046-4f5f2cdbecb8', 6, 2),
       ('3285e0b5-1f01-4202-b046-4f5f2cdbecb8', 6, 3),
       ('3285e0b5-1f01-4202-b046-4f5f2cdbecb8', 6, 4),
       ('3285e0b5-1f01-4202-b046-4f5f2cdbecb8', 6, 5),
       ('3285e0b5-1f01-4202-b046-4f5f2cdbecb8', 6, 6),
       ('3285e0b5-1f01-4202-b046-4f5f2cdbecb8', 5, 6),
       ('3285e0b5-1f01-4202-b046-4f5f2cdbecb8', 4, 6),
       ('3285e0b5-1f01-4202-b046-4f5f2cdbecb8', 3, 6),
       ('3285e0b5-1f01-4202-b046-4f5f2cdbecb8', 2, 6),
       ('3285e0b5-1f01-4202-b046-4f5f2cdbecb8', 1, 6),
       ('3285e0b5-1f01-4202-b046-4f5f2cdbecb8', 1, 5),
       ('3285e0b5-1f01-4202-b046-4f5f2cdbecb8', 1, 4),
       ('3285e0b5-1f01-4202-b046-4f5f2cdbecb8', 1, 3),
       ('3285e0b5-1f01-4202-b046-4f5f2cdbecb8', 1, 2),
       ('3285e0b5-1f01-4202-b046-4f5f2cdbecb8', 1, 1),
       ('3285e0b5-1f01-4202-b046-4f5f2cdbecb8', 2, 1),
       ('3285e0b5-1f01-4202-b046-4f5f2cdbecb8', 3, 1),
       -- round two
       ('3285e0b5-1f01-4202-b046-4f5f2cdbecb8', 4, 1),
       ('3285e0b5-1f01-4202-b046-4f5f2cdbecb8', 5, 1),
       ('3285e0b5-1f01-4202-b046-4f5f2cdbecb8', 6, 1),
       ('3285e0b5-1f01-4202-b046-4f5f2cdbecb8', 6, 2),
       ('3285e0b5-1f01-4202-b046-4f5f2cdbecb8', 6, 3),
       ('3285e0b5-1f01-4202-b046-4f5f2cdbecb8', 6, 4),
       ('3285e0b5-1f01-4202-b046-4f5f2cdbecb8', 6, 5),
       ('3285e0b5-1f01-4202-b046-4f5f2cdbecb8', 6, 6),
       ('3285e0b5-1f01-4202-b046-4f5f2cdbecb8', 5, 6),
       ('3285e0b5-1f01-4202-b046-4f5f2cdbecb8', 4, 6),
       ('3285e0b5-1f01-4202-b046-4f5f2cdbecb8', 3, 6),
       ('3285e0b5-1f01-4202-b046-4f5f2cdbecb8', 2, 6),
       ('3285e0b5-1f01-4202-b046-4f5f2cdbecb8', 1, 6),
       ('3285e0b5-1f01-4202-b046-4f5f2cdbecb8', 1, 5),
       ('3285e0b5-1f01-4202-b046-4f5f2cdbecb8', 1, 4),
       ('3285e0b5-1f01-4202-b046-4f5f2cdbecb8', 1, 3),
       ('3285e0b5-1f01-4202-b046-4f5f2cdbecb8', 1, 2),
       ('3285e0b5-1f01-4202-b046-4f5f2cdbecb8', 1, 1),
       ('3285e0b5-1f01-4202-b046-4f5f2cdbecb8', 2, 1),
       ('3285e0b5-1f01-4202-b046-4f5f2cdbecb8', 3, 1),
       -- round three
       ('3285e0b5-1f01-4202-b046-4f5f2cdbecb8', 4, 1),
       ('3285e0b5-1f01-4202-b046-4f5f2cdbecb8', 5, 1),
       ('3285e0b5-1f01-4202-b046-4f5f2cdbecb8', 6, 1),
       ('3285e0b5-1f01-4202-b046-4f5f2cdbecb8', 6, 2),
       ('3285e0b5-1f01-4202-b046-4f5f2cdbecb8', 6, 3),
       ('3285e0b5-1f01-4202-b046-4f5f2cdbecb8', 6, 4),
       ('3285e0b5-1f01-4202-b046-4f5f2cdbecb8', 6, 5),
       ('3285e0b5-1f01-4202-b046-4f5f2cdbecb8', 6, 6),
       ('3285e0b5-1f01-4202-b046-4f5f2cdbecb8', 5, 6),
       ('3285e0b5-1f01-4202-b046-4f5f2cdbecb8', 4, 6),
       ('3285e0b5-1f01-4202-b046-4f5f2cdbecb8', 3, 6),
       ('3285e0b5-1f01-4202-b046-4f5f2cdbecb8', 2, 6),
       ('3285e0b5-1f01-4202-b046-4f5f2cdbecb8', 1, 6),
       ('3285e0b5-1f01-4202-b046-4f5f2cdbecb8', 1, 5),
       ('3285e0b5-1f01-4202-b046-4f5f2cdbecb8', 1, 4),
       ('3285e0b5-1f01-4202-b046-4f5f2cdbecb8', 1, 3),
       ('3285e0b5-1f01-4202-b046-4f5f2cdbecb8', 1, 2),
       ('3285e0b5-1f01-4202-b046-4f5f2cdbecb8', 1, 1),
       ('3285e0b5-1f01-4202-b046-4f5f2cdbecb8', 2, 1),
       ('3285e0b5-1f01-4202-b046-4f5f2cdbecb8', 3, 1),
       -- leave now
       ('3285e0b5-1f01-4202-b046-4f5f2cdbecb8', 3, 0),
       -- end second mutant
       ('3af42ece-1a50-42b8-b975-6677a4946cad', 3, 0),
       -- start third mutant
       ('3af42ece-1a50-42b8-b975-6677a4946cad', 3, 1),
       ('3af42ece-1a50-42b8-b975-6677a4946cad', 4, 1),
       ('3af42ece-1a50-42b8-b975-6677a4946cad', 5, 1),
       ('3af42ece-1a50-42b8-b975-6677a4946cad', 6, 1),
       ('3af42ece-1a50-42b8-b975-6677a4946cad', 6, 2),
       ('3af42ece-1a50-42b8-b975-6677a4946cad', 6, 3),
       ('3af42ece-1a50-42b8-b975-6677a4946cad', 6, 4),
       ('3af42ece-1a50-42b8-b975-6677a4946cad', 6, 5),
       ('3af42ece-1a50-42b8-b975-6677a4946cad', 6, 6),
       ('3af42ece-1a50-42b8-b975-6677a4946cad', 5, 6),
       ('3af42ece-1a50-42b8-b975-6677a4946cad', 4, 6),
       ('3af42ece-1a50-42b8-b975-6677a4946cad', 3, 6),
       ('3af42ece-1a50-42b8-b975-6677a4946cad', 2, 6),
       ('3af42ece-1a50-42b8-b975-6677a4946cad', 1, 6),
       ('3af42ece-1a50-42b8-b975-6677a4946cad', 1, 5),
       ('3af42ece-1a50-42b8-b975-6677a4946cad', 1, 4),
       ('3af42ece-1a50-42b8-b975-6677a4946cad', 1, 3),
       ('3af42ece-1a50-42b8-b975-6677a4946cad', 1, 2),
       ('3af42ece-1a50-42b8-b975-6677a4946cad', 1, 1),
       ('3af42ece-1a50-42b8-b975-6677a4946cad', 2, 1),
       ('3af42ece-1a50-42b8-b975-6677a4946cad', 3, 1),
       -- round two
       ('3af42ece-1a50-42b8-b975-6677a4946cad', 4, 1),
       ('3af42ece-1a50-42b8-b975-6677a4946cad', 5, 1),
       ('3af42ece-1a50-42b8-b975-6677a4946cad', 6, 1),
       ('3af42ece-1a50-42b8-b975-6677a4946cad', 6, 2),
       ('3af42ece-1a50-42b8-b975-6677a4946cad', 6, 3),
       ('3af42ece-1a50-42b8-b975-6677a4946cad', 6, 4),
       ('3af42ece-1a50-42b8-b975-6677a4946cad', 6, 5),
       ('3af42ece-1a50-42b8-b975-6677a4946cad', 6, 6),
       ('3af42ece-1a50-42b8-b975-6677a4946cad', 5, 6),
       ('3af42ece-1a50-42b8-b975-6677a4946cad', 4, 6),
       ('3af42ece-1a50-42b8-b975-6677a4946cad', 3, 6),
       ('3af42ece-1a50-42b8-b975-6677a4946cad', 2, 6),
       ('3af42ece-1a50-42b8-b975-6677a4946cad', 1, 6),
       ('3af42ece-1a50-42b8-b975-6677a4946cad', 1, 5),
       ('3af42ece-1a50-42b8-b975-6677a4946cad', 1, 4),
       ('3af42ece-1a50-42b8-b975-6677a4946cad', 1, 3),
       ('3af42ece-1a50-42b8-b975-6677a4946cad', 1, 2),
       ('3af42ece-1a50-42b8-b975-6677a4946cad', 1, 1),
       ('3af42ece-1a50-42b8-b975-6677a4946cad', 2, 1),
       ('3af42ece-1a50-42b8-b975-6677a4946cad', 3, 1),
       -- round three
       ('3af42ece-1a50-42b8-b975-6677a4946cad', 4, 1),
       ('3af42ece-1a50-42b8-b975-6677a4946cad', 5, 1),
       ('3af42ece-1a50-42b8-b975-6677a4946cad', 6, 1),
       ('3af42ece-1a50-42b8-b975-6677a4946cad', 6, 2),
       ('3af42ece-1a50-42b8-b975-6677a4946cad', 6, 3),
       ('3af42ece-1a50-42b8-b975-6677a4946cad', 6, 4),
       ('3af42ece-1a50-42b8-b975-6677a4946cad', 6, 5),
       ('3af42ece-1a50-42b8-b975-6677a4946cad', 6, 6),
       ('3af42ece-1a50-42b8-b975-6677a4946cad', 5, 6),
       ('3af42ece-1a50-42b8-b975-6677a4946cad', 4, 6),
       ('3af42ece-1a50-42b8-b975-6677a4946cad', 3, 6),
       ('3af42ece-1a50-42b8-b975-6677a4946cad', 2, 6),
       ('3af42ece-1a50-42b8-b975-6677a4946cad', 1, 6),
       ('3af42ece-1a50-42b8-b975-6677a4946cad', 1, 5),
       ('3af42ece-1a50-42b8-b975-6677a4946cad', 1, 4),
       ('3af42ece-1a50-42b8-b975-6677a4946cad', 1, 3),
       ('3af42ece-1a50-42b8-b975-6677a4946cad', 1, 2),
       ('3af42ece-1a50-42b8-b975-6677a4946cad', 1, 1),
       ('3af42ece-1a50-42b8-b975-6677a4946cad', 2, 1),
       ('3af42ece-1a50-42b8-b975-6677a4946cad', 3, 1),
       -- leave now
       ('3af42ece-1a50-42b8-b975-6677a4946cad', 3, 0),
       -- end third mutant
       ('ff8bc767-6ce6-40c1-a1ba-a02376953ebb', 3, 0),
       -- start forth mutant
       ('ff8bc767-6ce6-40c1-a1ba-a02376953ebb', 3, 1),
       ('ff8bc767-6ce6-40c1-a1ba-a02376953ebb', 4, 1),
       ('ff8bc767-6ce6-40c1-a1ba-a02376953ebb', 5, 1),
       ('ff8bc767-6ce6-40c1-a1ba-a02376953ebb', 6, 1),
       ('ff8bc767-6ce6-40c1-a1ba-a02376953ebb', 6, 2),
       ('ff8bc767-6ce6-40c1-a1ba-a02376953ebb', 6, 3),
       ('ff8bc767-6ce6-40c1-a1ba-a02376953ebb', 6, 4),
       ('ff8bc767-6ce6-40c1-a1ba-a02376953ebb', 6, 5),
       ('ff8bc767-6ce6-40c1-a1ba-a02376953ebb', 6, 6),
       ('ff8bc767-6ce6-40c1-a1ba-a02376953ebb', 5, 6),
       ('ff8bc767-6ce6-40c1-a1ba-a02376953ebb', 4, 6),
       ('ff8bc767-6ce6-40c1-a1ba-a02376953ebb', 3, 6),
       ('ff8bc767-6ce6-40c1-a1ba-a02376953ebb', 2, 6),
       ('ff8bc767-6ce6-40c1-a1ba-a02376953ebb', 1, 6),
       ('ff8bc767-6ce6-40c1-a1ba-a02376953ebb', 1, 5),
       ('ff8bc767-6ce6-40c1-a1ba-a02376953ebb', 1, 4),
       ('ff8bc767-6ce6-40c1-a1ba-a02376953ebb', 1, 3),
       ('ff8bc767-6ce6-40c1-a1ba-a02376953ebb', 1, 2),
       ('ff8bc767-6ce6-40c1-a1ba-a02376953ebb', 1, 1),
       ('ff8bc767-6ce6-40c1-a1ba-a02376953ebb', 2, 1),
       ('ff8bc767-6ce6-40c1-a1ba-a02376953ebb', 3, 1),
       -- round two
       ('ff8bc767-6ce6-40c1-a1ba-a02376953ebb', 4, 1),
       ('ff8bc767-6ce6-40c1-a1ba-a02376953ebb', 5, 1),
       ('ff8bc767-6ce6-40c1-a1ba-a02376953ebb', 6, 1),
       ('ff8bc767-6ce6-40c1-a1ba-a02376953ebb', 6, 2),
       ('ff8bc767-6ce6-40c1-a1ba-a02376953ebb', 6, 3),
       ('ff8bc767-6ce6-40c1-a1ba-a02376953ebb', 6, 4),
       ('ff8bc767-6ce6-40c1-a1ba-a02376953ebb', 6, 5),
       ('ff8bc767-6ce6-40c1-a1ba-a02376953ebb', 6, 6),
       ('ff8bc767-6ce6-40c1-a1ba-a02376953ebb', 5, 6),
       ('ff8bc767-6ce6-40c1-a1ba-a02376953ebb', 4, 6),
       ('ff8bc767-6ce6-40c1-a1ba-a02376953ebb', 3, 6),
       ('ff8bc767-6ce6-40c1-a1ba-a02376953ebb', 2, 6),
       ('ff8bc767-6ce6-40c1-a1ba-a02376953ebb', 1, 6),
       ('ff8bc767-6ce6-40c1-a1ba-a02376953ebb', 1, 5),
       ('ff8bc767-6ce6-40c1-a1ba-a02376953ebb', 1, 4),
       ('ff8bc767-6ce6-40c1-a1ba-a02376953ebb', 1, 3),
       ('ff8bc767-6ce6-40c1-a1ba-a02376953ebb', 1, 2),
       ('ff8bc767-6ce6-40c1-a1ba-a02376953ebb', 1, 1),
       ('ff8bc767-6ce6-40c1-a1ba-a02376953ebb', 2, 1),
       ('ff8bc767-6ce6-40c1-a1ba-a02376953ebb', 3, 1),
       -- round three
       ('ff8bc767-6ce6-40c1-a1ba-a02376953ebb', 4, 1),
       ('ff8bc767-6ce6-40c1-a1ba-a02376953ebb', 5, 1),
       ('ff8bc767-6ce6-40c1-a1ba-a02376953ebb', 6, 1),
       ('ff8bc767-6ce6-40c1-a1ba-a02376953ebb', 6, 2),
       ('ff8bc767-6ce6-40c1-a1ba-a02376953ebb', 6, 3),
       ('ff8bc767-6ce6-40c1-a1ba-a02376953ebb', 6, 4),
       ('ff8bc767-6ce6-40c1-a1ba-a02376953ebb', 6, 5),
       ('ff8bc767-6ce6-40c1-a1ba-a02376953ebb', 6, 6),
       ('ff8bc767-6ce6-40c1-a1ba-a02376953ebb', 5, 6),
       ('ff8bc767-6ce6-40c1-a1ba-a02376953ebb', 4, 6),
       ('ff8bc767-6ce6-40c1-a1ba-a02376953ebb', 3, 6),
       ('ff8bc767-6ce6-40c1-a1ba-a02376953ebb', 2, 6),
       ('ff8bc767-6ce6-40c1-a1ba-a02376953ebb', 1, 6),
       ('ff8bc767-6ce6-40c1-a1ba-a02376953ebb', 1, 5),
       ('ff8bc767-6ce6-40c1-a1ba-a02376953ebb', 1, 4),
       ('ff8bc767-6ce6-40c1-a1ba-a02376953ebb', 1, 3),
       ('ff8bc767-6ce6-40c1-a1ba-a02376953ebb', 1, 2),
       ('ff8bc767-6ce6-40c1-a1ba-a02376953ebb', 1, 1),
       ('ff8bc767-6ce6-40c1-a1ba-a02376953ebb', 2, 1),
       ('ff8bc767-6ce6-40c1-a1ba-a02376953ebb', 3, 1),
       -- leave
       ('ff8bc767-6ce6-40c1-a1ba-a02376953ebb', 3, 0),
       -- end forth mutant
       ('62af53a6-03cd-4995-9533-9bc3f1a552d2', 3, 0),
       -- start fifth mutant
       ('62af53a6-03cd-4995-9533-9bc3f1a552d2', 3, 1),
       ('62af53a6-03cd-4995-9533-9bc3f1a552d2', 4, 1),
       ('62af53a6-03cd-4995-9533-9bc3f1a552d2', 5, 1),
       ('62af53a6-03cd-4995-9533-9bc3f1a552d2', 6, 1),
       ('62af53a6-03cd-4995-9533-9bc3f1a552d2', 6, 2),
       ('62af53a6-03cd-4995-9533-9bc3f1a552d2', 6, 3),
       ('62af53a6-03cd-4995-9533-9bc3f1a552d2', 6, 4),
       ('62af53a6-03cd-4995-9533-9bc3f1a552d2', 6, 5),
       ('62af53a6-03cd-4995-9533-9bc3f1a552d2', 6, 6),
       ('62af53a6-03cd-4995-9533-9bc3f1a552d2', 5, 6),
       ('62af53a6-03cd-4995-9533-9bc3f1a552d2', 4, 6),
       ('62af53a6-03cd-4995-9533-9bc3f1a552d2', 3, 6),
       ('62af53a6-03cd-4995-9533-9bc3f1a552d2', 2, 6),
       ('62af53a6-03cd-4995-9533-9bc3f1a552d2', 1, 6),
       ('62af53a6-03cd-4995-9533-9bc3f1a552d2', 1, 5),
       ('62af53a6-03cd-4995-9533-9bc3f1a552d2', 1, 4),
       ('62af53a6-03cd-4995-9533-9bc3f1a552d2', 1, 3),
       ('62af53a6-03cd-4995-9533-9bc3f1a552d2', 1, 2),
       ('62af53a6-03cd-4995-9533-9bc3f1a552d2', 1, 1),
       ('62af53a6-03cd-4995-9533-9bc3f1a552d2', 2, 1),
       ('62af53a6-03cd-4995-9533-9bc3f1a552d2', 3, 1),
       -- round two
       ('62af53a6-03cd-4995-9533-9bc3f1a552d2', 4, 1),
       ('62af53a6-03cd-4995-9533-9bc3f1a552d2', 5, 1),
       ('62af53a6-03cd-4995-9533-9bc3f1a552d2', 6, 1),
       ('62af53a6-03cd-4995-9533-9bc3f1a552d2', 6, 2),
       ('62af53a6-03cd-4995-9533-9bc3f1a552d2', 6, 3),
       ('62af53a6-03cd-4995-9533-9bc3f1a552d2', 6, 4),
       ('62af53a6-03cd-4995-9533-9bc3f1a552d2', 6, 5),
       ('62af53a6-03cd-4995-9533-9bc3f1a552d2', 6, 6),
       ('62af53a6-03cd-4995-9533-9bc3f1a552d2', 5, 6),
       ('62af53a6-03cd-4995-9533-9bc3f1a552d2', 4, 6),
       ('62af53a6-03cd-4995-9533-9bc3f1a552d2', 3, 6),
       ('62af53a6-03cd-4995-9533-9bc3f1a552d2', 2, 6),
       ('62af53a6-03cd-4995-9533-9bc3f1a552d2', 1, 6),
       ('62af53a6-03cd-4995-9533-9bc3f1a552d2', 1, 5),
       ('62af53a6-03cd-4995-9533-9bc3f1a552d2', 1, 4),
       ('62af53a6-03cd-4995-9533-9bc3f1a552d2', 1, 3),
       ('62af53a6-03cd-4995-9533-9bc3f1a552d2', 1, 2),
       ('62af53a6-03cd-4995-9533-9bc3f1a552d2', 1, 1),
       ('62af53a6-03cd-4995-9533-9bc3f1a552d2', 2, 1),
       ('62af53a6-03cd-4995-9533-9bc3f1a552d2', 3, 1),
       -- round three
       ('62af53a6-03cd-4995-9533-9bc3f1a552d2', 4, 1),
       ('62af53a6-03cd-4995-9533-9bc3f1a552d2', 5, 1),
       ('62af53a6-03cd-4995-9533-9bc3f1a552d2', 6, 1),
       ('62af53a6-03cd-4995-9533-9bc3f1a552d2', 6, 2),
       ('62af53a6-03cd-4995-9533-9bc3f1a552d2', 6, 3),
       ('62af53a6-03cd-4995-9533-9bc3f1a552d2', 6, 4),
       ('62af53a6-03cd-4995-9533-9bc3f1a552d2', 6, 5),
       ('62af53a6-03cd-4995-9533-9bc3f1a552d2', 6, 6),
       ('62af53a6-03cd-4995-9533-9bc3f1a552d2', 5, 6),
       ('62af53a6-03cd-4995-9533-9bc3f1a552d2', 4, 6),
       ('62af53a6-03cd-4995-9533-9bc3f1a552d2', 3, 6),
       ('62af53a6-03cd-4995-9533-9bc3f1a552d2', 2, 6),
       ('62af53a6-03cd-4995-9533-9bc3f1a552d2', 1, 6),
       ('62af53a6-03cd-4995-9533-9bc3f1a552d2', 1, 5),
       ('62af53a6-03cd-4995-9533-9bc3f1a552d2', 1, 4),
       ('62af53a6-03cd-4995-9533-9bc3f1a552d2', 1, 3),
       ('62af53a6-03cd-4995-9533-9bc3f1a552d2', 1, 2),
       ('62af53a6-03cd-4995-9533-9bc3f1a552d2', 1, 1),
       ('62af53a6-03cd-4995-9533-9bc3f1a552d2', 2, 1),
       ('62af53a6-03cd-4995-9533-9bc3f1a552d2', 3, 1),
       -- leave
       ('62af53a6-03cd-4995-9533-9bc3f1a552d2', 3, 0),
       -- end fifth mutant
       -- start sixth mutant:
       ('cd3c3c3d-9e7b-429c-828a-4a45c3acc290', 3, 0),
       ('cd3c3c3d-9e7b-429c-828a-4a45c3acc290', 3, 1),
       ('cd3c3c3d-9e7b-429c-828a-4a45c3acc290', 4, 1),
       ('cd3c3c3d-9e7b-429c-828a-4a45c3acc290', 5, 1),
       ('cd3c3c3d-9e7b-429c-828a-4a45c3acc290', 6, 1),
       ('cd3c3c3d-9e7b-429c-828a-4a45c3acc290', 6, 2),
       ('cd3c3c3d-9e7b-429c-828a-4a45c3acc290', 6, 3),
       ('cd3c3c3d-9e7b-429c-828a-4a45c3acc290', 6, 4),
       ('cd3c3c3d-9e7b-429c-828a-4a45c3acc290', 6, 5),
       ('cd3c3c3d-9e7b-429c-828a-4a45c3acc290', 6, 6),
       ('cd3c3c3d-9e7b-429c-828a-4a45c3acc290', 5, 6),
       ('cd3c3c3d-9e7b-429c-828a-4a45c3acc290', 4, 6),
       ('cd3c3c3d-9e7b-429c-828a-4a45c3acc290', 3, 6),
       ('cd3c3c3d-9e7b-429c-828a-4a45c3acc290', 2, 6),
       ('cd3c3c3d-9e7b-429c-828a-4a45c3acc290', 1, 6),
       ('cd3c3c3d-9e7b-429c-828a-4a45c3acc290', 1, 5),
       ('cd3c3c3d-9e7b-429c-828a-4a45c3acc290', 1, 4),
       ('cd3c3c3d-9e7b-429c-828a-4a45c3acc290', 1, 3),
       ('cd3c3c3d-9e7b-429c-828a-4a45c3acc290', 1, 2),
       ('cd3c3c3d-9e7b-429c-828a-4a45c3acc290', 1, 1),
       ('cd3c3c3d-9e7b-429c-828a-4a45c3acc290', 2, 1),
       ('cd3c3c3d-9e7b-429c-828a-4a45c3acc290', 3, 1),
       -- round two
       ('cd3c3c3d-9e7b-429c-828a-4a45c3acc290', 4, 1),
       ('cd3c3c3d-9e7b-429c-828a-4a45c3acc290', 5, 1),
       ('cd3c3c3d-9e7b-429c-828a-4a45c3acc290', 6, 1),
       ('cd3c3c3d-9e7b-429c-828a-4a45c3acc290', 6, 2),
       ('cd3c3c3d-9e7b-429c-828a-4a45c3acc290', 6, 3),
       ('cd3c3c3d-9e7b-429c-828a-4a45c3acc290', 6, 4),
       ('cd3c3c3d-9e7b-429c-828a-4a45c3acc290', 6, 5),
       ('cd3c3c3d-9e7b-429c-828a-4a45c3acc290', 6, 6),
       ('cd3c3c3d-9e7b-429c-828a-4a45c3acc290', 5, 6),
       ('cd3c3c3d-9e7b-429c-828a-4a45c3acc290', 4, 6),
       ('cd3c3c3d-9e7b-429c-828a-4a45c3acc290', 3, 6),
       ('cd3c3c3d-9e7b-429c-828a-4a45c3acc290', 2, 6),
       ('cd3c3c3d-9e7b-429c-828a-4a45c3acc290', 1, 6),
       ('cd3c3c3d-9e7b-429c-828a-4a45c3acc290', 1, 5),
       ('cd3c3c3d-9e7b-429c-828a-4a45c3acc290', 1, 4),
       ('cd3c3c3d-9e7b-429c-828a-4a45c3acc290', 1, 3),
       ('cd3c3c3d-9e7b-429c-828a-4a45c3acc290', 1, 2),
       ('cd3c3c3d-9e7b-429c-828a-4a45c3acc290', 1, 1),
       ('cd3c3c3d-9e7b-429c-828a-4a45c3acc290', 2, 1),
       ('cd3c3c3d-9e7b-429c-828a-4a45c3acc290', 3, 1),
       -- round three
       ('cd3c3c3d-9e7b-429c-828a-4a45c3acc290', 4, 1),
       ('cd3c3c3d-9e7b-429c-828a-4a45c3acc290', 5, 1),
       ('cd3c3c3d-9e7b-429c-828a-4a45c3acc290', 6, 1),
       ('cd3c3c3d-9e7b-429c-828a-4a45c3acc290', 6, 2),
       ('cd3c3c3d-9e7b-429c-828a-4a45c3acc290', 6, 3),
       ('cd3c3c3d-9e7b-429c-828a-4a45c3acc290', 6, 4),
       ('cd3c3c3d-9e7b-429c-828a-4a45c3acc290', 6, 5),
       ('cd3c3c3d-9e7b-429c-828a-4a45c3acc290', 6, 6),
       ('cd3c3c3d-9e7b-429c-828a-4a45c3acc290', 5, 6),
       ('cd3c3c3d-9e7b-429c-828a-4a45c3acc290', 4, 6),
       ('cd3c3c3d-9e7b-429c-828a-4a45c3acc290', 3, 6),
       ('cd3c3c3d-9e7b-429c-828a-4a45c3acc290', 2, 6),
       ('cd3c3c3d-9e7b-429c-828a-4a45c3acc290', 1, 6),
       ('cd3c3c3d-9e7b-429c-828a-4a45c3acc290', 1, 5),
       ('cd3c3c3d-9e7b-429c-828a-4a45c3acc290', 1, 4),
       ('cd3c3c3d-9e7b-429c-828a-4a45c3acc290', 1, 3),
       ('cd3c3c3d-9e7b-429c-828a-4a45c3acc290', 1, 2),
       ('cd3c3c3d-9e7b-429c-828a-4a45c3acc290', 1, 1),
       ('cd3c3c3d-9e7b-429c-828a-4a45c3acc290', 2, 1),
       ('cd3c3c3d-9e7b-429c-828a-4a45c3acc290', 3, 1),
       -- leave
       ('cd3c3c3d-9e7b-429c-828a-4a45c3acc290', 3, 0),
       -- end sixth mutant
       -- start seventh mutant:
       ('1aca217d-7dfe-4406-9914-cbccd19b36c5', 3, 0),
       ('1aca217d-7dfe-4406-9914-cbccd19b36c5', 3, 1),
       ('1aca217d-7dfe-4406-9914-cbccd19b36c5', 4, 1),
       ('1aca217d-7dfe-4406-9914-cbccd19b36c5', 5, 1),
       ('1aca217d-7dfe-4406-9914-cbccd19b36c5', 6, 1),
       ('1aca217d-7dfe-4406-9914-cbccd19b36c5', 6, 2),
       ('1aca217d-7dfe-4406-9914-cbccd19b36c5', 6, 3),
       ('1aca217d-7dfe-4406-9914-cbccd19b36c5', 6, 4),
       ('1aca217d-7dfe-4406-9914-cbccd19b36c5', 6, 5),
       ('1aca217d-7dfe-4406-9914-cbccd19b36c5', 6, 6),
       ('1aca217d-7dfe-4406-9914-cbccd19b36c5', 5, 6),
       ('1aca217d-7dfe-4406-9914-cbccd19b36c5', 4, 6),
       ('1aca217d-7dfe-4406-9914-cbccd19b36c5', 3, 6),
       ('1aca217d-7dfe-4406-9914-cbccd19b36c5', 2, 6),
       ('1aca217d-7dfe-4406-9914-cbccd19b36c5', 1, 6),
       ('1aca217d-7dfe-4406-9914-cbccd19b36c5', 1, 5),
       ('1aca217d-7dfe-4406-9914-cbccd19b36c5', 1, 4),
       ('1aca217d-7dfe-4406-9914-cbccd19b36c5', 1, 3),
       ('1aca217d-7dfe-4406-9914-cbccd19b36c5', 1, 2),
       ('1aca217d-7dfe-4406-9914-cbccd19b36c5', 1, 1),
       ('1aca217d-7dfe-4406-9914-cbccd19b36c5', 2, 1),
       ('1aca217d-7dfe-4406-9914-cbccd19b36c5', 3, 1),
       -- round two
       ('1aca217d-7dfe-4406-9914-cbccd19b36c5', 4, 1),
       ('1aca217d-7dfe-4406-9914-cbccd19b36c5', 5, 1),
       ('1aca217d-7dfe-4406-9914-cbccd19b36c5', 6, 1),
       ('1aca217d-7dfe-4406-9914-cbccd19b36c5', 6, 2),
       ('1aca217d-7dfe-4406-9914-cbccd19b36c5', 6, 3),
       ('1aca217d-7dfe-4406-9914-cbccd19b36c5', 6, 4),
       ('1aca217d-7dfe-4406-9914-cbccd19b36c5', 6, 5),
       ('1aca217d-7dfe-4406-9914-cbccd19b36c5', 6, 6),
       ('1aca217d-7dfe-4406-9914-cbccd19b36c5', 5, 6),
       ('1aca217d-7dfe-4406-9914-cbccd19b36c5', 4, 6),
       ('1aca217d-7dfe-4406-9914-cbccd19b36c5', 3, 6),
       ('1aca217d-7dfe-4406-9914-cbccd19b36c5', 2, 6),
       ('1aca217d-7dfe-4406-9914-cbccd19b36c5', 1, 6),
       ('1aca217d-7dfe-4406-9914-cbccd19b36c5', 1, 5),
       ('1aca217d-7dfe-4406-9914-cbccd19b36c5', 1, 4),
       ('1aca217d-7dfe-4406-9914-cbccd19b36c5', 1, 3),
       ('1aca217d-7dfe-4406-9914-cbccd19b36c5', 1, 2),
       ('1aca217d-7dfe-4406-9914-cbccd19b36c5', 1, 1),
       ('1aca217d-7dfe-4406-9914-cbccd19b36c5', 2, 1),
       ('1aca217d-7dfe-4406-9914-cbccd19b36c5', 3, 1),
       -- round three
       ('1aca217d-7dfe-4406-9914-cbccd19b36c5', 4, 1),
       ('1aca217d-7dfe-4406-9914-cbccd19b36c5', 5, 1),
       ('1aca217d-7dfe-4406-9914-cbccd19b36c5', 6, 1),
       ('1aca217d-7dfe-4406-9914-cbccd19b36c5', 6, 2),
       ('1aca217d-7dfe-4406-9914-cbccd19b36c5', 6, 3),
       ('1aca217d-7dfe-4406-9914-cbccd19b36c5', 6, 4),
       ('1aca217d-7dfe-4406-9914-cbccd19b36c5', 6, 5),
       ('1aca217d-7dfe-4406-9914-cbccd19b36c5', 6, 6),
       ('1aca217d-7dfe-4406-9914-cbccd19b36c5', 5, 6),
       ('1aca217d-7dfe-4406-9914-cbccd19b36c5', 4, 6),
       ('1aca217d-7dfe-4406-9914-cbccd19b36c5', 3, 6),
       ('1aca217d-7dfe-4406-9914-cbccd19b36c5', 2, 6),
       ('1aca217d-7dfe-4406-9914-cbccd19b36c5', 1, 6),
       ('1aca217d-7dfe-4406-9914-cbccd19b36c5', 1, 5),
       ('1aca217d-7dfe-4406-9914-cbccd19b36c5', 1, 4),
       ('1aca217d-7dfe-4406-9914-cbccd19b36c5', 1, 3),
       ('1aca217d-7dfe-4406-9914-cbccd19b36c5', 1, 2),
       ('1aca217d-7dfe-4406-9914-cbccd19b36c5', 1, 1),
       ('1aca217d-7dfe-4406-9914-cbccd19b36c5', 2, 1),
       ('1aca217d-7dfe-4406-9914-cbccd19b36c5', 3, 1),
       -- leave
       ('1aca217d-7dfe-4406-9914-cbccd19b36c5', 3, 0),
       -- end seventh mutant
       -- start eights mutant
       ('effe338e-bf0b-4af8-a183-f5b6a97551ae', 3, 0),
       ('effe338e-bf0b-4af8-a183-f5b6a97551ae', 3, 1),
       ('effe338e-bf0b-4af8-a183-f5b6a97551ae', 4, 1),
       ('effe338e-bf0b-4af8-a183-f5b6a97551ae', 5, 1),
       ('effe338e-bf0b-4af8-a183-f5b6a97551ae', 6, 1),
       ('effe338e-bf0b-4af8-a183-f5b6a97551ae', 6, 2),
       ('effe338e-bf0b-4af8-a183-f5b6a97551ae', 6, 3),
       ('effe338e-bf0b-4af8-a183-f5b6a97551ae', 6, 4),
       ('effe338e-bf0b-4af8-a183-f5b6a97551ae', 6, 5),
       ('effe338e-bf0b-4af8-a183-f5b6a97551ae', 6, 6),
       ('effe338e-bf0b-4af8-a183-f5b6a97551ae', 5, 6),
       ('effe338e-bf0b-4af8-a183-f5b6a97551ae', 4, 6),
       ('effe338e-bf0b-4af8-a183-f5b6a97551ae', 3, 6),
       ('effe338e-bf0b-4af8-a183-f5b6a97551ae', 2, 6),
       ('effe338e-bf0b-4af8-a183-f5b6a97551ae', 1, 6),
       ('effe338e-bf0b-4af8-a183-f5b6a97551ae', 1, 5),
       ('effe338e-bf0b-4af8-a183-f5b6a97551ae', 1, 4),
       ('effe338e-bf0b-4af8-a183-f5b6a97551ae', 1, 3),
       ('effe338e-bf0b-4af8-a183-f5b6a97551ae', 1, 2),
       ('effe338e-bf0b-4af8-a183-f5b6a97551ae', 1, 1),
       ('effe338e-bf0b-4af8-a183-f5b6a97551ae', 2, 1),
       ('effe338e-bf0b-4af8-a183-f5b6a97551ae', 3, 1),
       -- round two
       ('effe338e-bf0b-4af8-a183-f5b6a97551ae', 4, 1),
       ('effe338e-bf0b-4af8-a183-f5b6a97551ae', 5, 1),
       ('effe338e-bf0b-4af8-a183-f5b6a97551ae', 6, 1),
       ('effe338e-bf0b-4af8-a183-f5b6a97551ae', 6, 2),
       ('effe338e-bf0b-4af8-a183-f5b6a97551ae', 6, 3),
       ('effe338e-bf0b-4af8-a183-f5b6a97551ae', 6, 4),
       ('effe338e-bf0b-4af8-a183-f5b6a97551ae', 6, 5),
       ('effe338e-bf0b-4af8-a183-f5b6a97551ae', 6, 6),
       ('effe338e-bf0b-4af8-a183-f5b6a97551ae', 5, 6),
       ('effe338e-bf0b-4af8-a183-f5b6a97551ae', 4, 6),
       ('effe338e-bf0b-4af8-a183-f5b6a97551ae', 3, 6),
       ('effe338e-bf0b-4af8-a183-f5b6a97551ae', 2, 6),
       ('effe338e-bf0b-4af8-a183-f5b6a97551ae', 1, 6),
       ('effe338e-bf0b-4af8-a183-f5b6a97551ae', 1, 5),
       ('effe338e-bf0b-4af8-a183-f5b6a97551ae', 1, 4),
       ('effe338e-bf0b-4af8-a183-f5b6a97551ae', 1, 3),
       ('effe338e-bf0b-4af8-a183-f5b6a97551ae', 1, 2),
       ('effe338e-bf0b-4af8-a183-f5b6a97551ae', 1, 1),
       ('effe338e-bf0b-4af8-a183-f5b6a97551ae', 2, 1),
       ('effe338e-bf0b-4af8-a183-f5b6a97551ae', 3, 1),
       -- round three
       ('effe338e-bf0b-4af8-a183-f5b6a97551ae', 4, 1),
       ('effe338e-bf0b-4af8-a183-f5b6a97551ae', 5, 1),
       ('effe338e-bf0b-4af8-a183-f5b6a97551ae', 6, 1),
       ('effe338e-bf0b-4af8-a183-f5b6a97551ae', 6, 2),
       ('effe338e-bf0b-4af8-a183-f5b6a97551ae', 6, 3),
       ('effe338e-bf0b-4af8-a183-f5b6a97551ae', 6, 4),
       ('effe338e-bf0b-4af8-a183-f5b6a97551ae', 6, 5),
       ('effe338e-bf0b-4af8-a183-f5b6a97551ae', 6, 6),
       ('effe338e-bf0b-4af8-a183-f5b6a97551ae', 5, 6),
       ('effe338e-bf0b-4af8-a183-f5b6a97551ae', 4, 6),
       ('effe338e-bf0b-4af8-a183-f5b6a97551ae', 3, 6),
       ('effe338e-bf0b-4af8-a183-f5b6a97551ae', 2, 6),
       ('effe338e-bf0b-4af8-a183-f5b6a97551ae', 1, 6),
       ('effe338e-bf0b-4af8-a183-f5b6a97551ae', 1, 5),
       ('effe338e-bf0b-4af8-a183-f5b6a97551ae', 1, 4),
       ('effe338e-bf0b-4af8-a183-f5b6a97551ae', 1, 3),
       ('effe338e-bf0b-4af8-a183-f5b6a97551ae', 1, 2),
       ('effe338e-bf0b-4af8-a183-f5b6a97551ae', 1, 1),
       ('effe338e-bf0b-4af8-a183-f5b6a97551ae', 2, 1),
       ('effe338e-bf0b-4af8-a183-f5b6a97551ae', 3, 1),
       -- leave
       ('effe338e-bf0b-4af8-a183-f5b6a97551ae', 3, 0),
       -- end eights mutant
       -- start ninth mutant:
       ('09eb4b19-5a43-4e7c-99a0-7509358f8b89', 3, 0),
       ('09eb4b19-5a43-4e7c-99a0-7509358f8b89', 3, 1),
       ('09eb4b19-5a43-4e7c-99a0-7509358f8b89', 4, 1),
       ('09eb4b19-5a43-4e7c-99a0-7509358f8b89', 5, 1),
       ('09eb4b19-5a43-4e7c-99a0-7509358f8b89', 6, 1),
       ('09eb4b19-5a43-4e7c-99a0-7509358f8b89', 6, 2),
       ('09eb4b19-5a43-4e7c-99a0-7509358f8b89', 6, 3),
       ('09eb4b19-5a43-4e7c-99a0-7509358f8b89', 6, 4),
       ('09eb4b19-5a43-4e7c-99a0-7509358f8b89', 6, 5),
       ('09eb4b19-5a43-4e7c-99a0-7509358f8b89', 6, 6),
       ('09eb4b19-5a43-4e7c-99a0-7509358f8b89', 5, 6),
       ('09eb4b19-5a43-4e7c-99a0-7509358f8b89', 4, 6),
       ('09eb4b19-5a43-4e7c-99a0-7509358f8b89', 3, 6),
       ('09eb4b19-5a43-4e7c-99a0-7509358f8b89', 2, 6),
       ('09eb4b19-5a43-4e7c-99a0-7509358f8b89', 1, 6),
       ('09eb4b19-5a43-4e7c-99a0-7509358f8b89', 1, 5),
       ('09eb4b19-5a43-4e7c-99a0-7509358f8b89', 1, 4),
       ('09eb4b19-5a43-4e7c-99a0-7509358f8b89', 1, 3),
       ('09eb4b19-5a43-4e7c-99a0-7509358f8b89', 1, 2),
       ('09eb4b19-5a43-4e7c-99a0-7509358f8b89', 1, 1),
       ('09eb4b19-5a43-4e7c-99a0-7509358f8b89', 2, 1),
       ('09eb4b19-5a43-4e7c-99a0-7509358f8b89', 3, 1),
       -- round two
       ('09eb4b19-5a43-4e7c-99a0-7509358f8b89', 4, 1),
       ('09eb4b19-5a43-4e7c-99a0-7509358f8b89', 5, 1),
       ('09eb4b19-5a43-4e7c-99a0-7509358f8b89', 6, 1),
       ('09eb4b19-5a43-4e7c-99a0-7509358f8b89', 6, 2),
       ('09eb4b19-5a43-4e7c-99a0-7509358f8b89', 6, 3),
       ('09eb4b19-5a43-4e7c-99a0-7509358f8b89', 6, 4),
       ('09eb4b19-5a43-4e7c-99a0-7509358f8b89', 6, 5),
       ('09eb4b19-5a43-4e7c-99a0-7509358f8b89', 6, 6),
       ('09eb4b19-5a43-4e7c-99a0-7509358f8b89', 5, 6),
       ('09eb4b19-5a43-4e7c-99a0-7509358f8b89', 4, 6),
       ('09eb4b19-5a43-4e7c-99a0-7509358f8b89', 3, 6),
       ('09eb4b19-5a43-4e7c-99a0-7509358f8b89', 2, 6),
       ('09eb4b19-5a43-4e7c-99a0-7509358f8b89', 1, 6),
       ('09eb4b19-5a43-4e7c-99a0-7509358f8b89', 1, 5),
       ('09eb4b19-5a43-4e7c-99a0-7509358f8b89', 1, 4),
       ('09eb4b19-5a43-4e7c-99a0-7509358f8b89', 1, 3),
       ('09eb4b19-5a43-4e7c-99a0-7509358f8b89', 1, 2),
       ('09eb4b19-5a43-4e7c-99a0-7509358f8b89', 1, 1),
       ('09eb4b19-5a43-4e7c-99a0-7509358f8b89', 2, 1),
       ('09eb4b19-5a43-4e7c-99a0-7509358f8b89', 3, 1),
       -- round three
       ('09eb4b19-5a43-4e7c-99a0-7509358f8b89', 4, 1),
       ('09eb4b19-5a43-4e7c-99a0-7509358f8b89', 5, 1),
       ('09eb4b19-5a43-4e7c-99a0-7509358f8b89', 6, 1),
       ('09eb4b19-5a43-4e7c-99a0-7509358f8b89', 6, 2),
       ('09eb4b19-5a43-4e7c-99a0-7509358f8b89', 6, 3),
       ('09eb4b19-5a43-4e7c-99a0-7509358f8b89', 6, 4),
       ('09eb4b19-5a43-4e7c-99a0-7509358f8b89', 6, 5),
       ('09eb4b19-5a43-4e7c-99a0-7509358f8b89', 6, 6),
       ('09eb4b19-5a43-4e7c-99a0-7509358f8b89', 5, 6),
       ('09eb4b19-5a43-4e7c-99a0-7509358f8b89', 4, 6),
       ('09eb4b19-5a43-4e7c-99a0-7509358f8b89', 3, 6),
       ('09eb4b19-5a43-4e7c-99a0-7509358f8b89', 2, 6),
       ('09eb4b19-5a43-4e7c-99a0-7509358f8b89', 1, 6),
       ('09eb4b19-5a43-4e7c-99a0-7509358f8b89', 1, 5),
       ('09eb4b19-5a43-4e7c-99a0-7509358f8b89', 1, 4),
       ('09eb4b19-5a43-4e7c-99a0-7509358f8b89', 1, 3),
       ('09eb4b19-5a43-4e7c-99a0-7509358f8b89', 1, 2),
       ('09eb4b19-5a43-4e7c-99a0-7509358f8b89', 1, 1),
       ('09eb4b19-5a43-4e7c-99a0-7509358f8b89', 2, 1),
       ('09eb4b19-5a43-4e7c-99a0-7509358f8b89', 3, 1),
       -- leave
       ('09eb4b19-5a43-4e7c-99a0-7509358f8b89', 3, 0),
       -- end ninth mutant
       -- start tenth mutant:
       ('ddc65dff-d217-4c6d-bd1a-e1deceeff1b1', 3, 0),
       ('ddc65dff-d217-4c6d-bd1a-e1deceeff1b1', 3, 1),
       ('ddc65dff-d217-4c6d-bd1a-e1deceeff1b1', 4, 1),
       ('ddc65dff-d217-4c6d-bd1a-e1deceeff1b1', 5, 1),
       ('ddc65dff-d217-4c6d-bd1a-e1deceeff1b1', 6, 1),
       ('ddc65dff-d217-4c6d-bd1a-e1deceeff1b1', 6, 2),
       ('ddc65dff-d217-4c6d-bd1a-e1deceeff1b1', 6, 3),
       ('ddc65dff-d217-4c6d-bd1a-e1deceeff1b1', 6, 4),
       ('ddc65dff-d217-4c6d-bd1a-e1deceeff1b1', 6, 5),
       ('ddc65dff-d217-4c6d-bd1a-e1deceeff1b1', 6, 6),
       ('ddc65dff-d217-4c6d-bd1a-e1deceeff1b1', 5, 6),
       ('ddc65dff-d217-4c6d-bd1a-e1deceeff1b1', 4, 6),
       ('ddc65dff-d217-4c6d-bd1a-e1deceeff1b1', 3, 6),
       ('ddc65dff-d217-4c6d-bd1a-e1deceeff1b1', 2, 6),
       ('ddc65dff-d217-4c6d-bd1a-e1deceeff1b1', 1, 6),
       ('ddc65dff-d217-4c6d-bd1a-e1deceeff1b1', 1, 5),
       ('ddc65dff-d217-4c6d-bd1a-e1deceeff1b1', 1, 4),
       ('ddc65dff-d217-4c6d-bd1a-e1deceeff1b1', 1, 3),
       ('ddc65dff-d217-4c6d-bd1a-e1deceeff1b1', 1, 2),
       ('ddc65dff-d217-4c6d-bd1a-e1deceeff1b1', 1, 1),
       ('ddc65dff-d217-4c6d-bd1a-e1deceeff1b1', 2, 1),
       ('ddc65dff-d217-4c6d-bd1a-e1deceeff1b1', 3, 1),
       -- round two
       ('ddc65dff-d217-4c6d-bd1a-e1deceeff1b1', 4, 1),
       ('ddc65dff-d217-4c6d-bd1a-e1deceeff1b1', 5, 1),
       ('ddc65dff-d217-4c6d-bd1a-e1deceeff1b1', 6, 1),
       ('ddc65dff-d217-4c6d-bd1a-e1deceeff1b1', 6, 2),
       ('ddc65dff-d217-4c6d-bd1a-e1deceeff1b1', 6, 3),
       ('ddc65dff-d217-4c6d-bd1a-e1deceeff1b1', 6, 4),
       ('ddc65dff-d217-4c6d-bd1a-e1deceeff1b1', 6, 5),
       ('ddc65dff-d217-4c6d-bd1a-e1deceeff1b1', 6, 6),
       ('ddc65dff-d217-4c6d-bd1a-e1deceeff1b1', 5, 6),
       ('ddc65dff-d217-4c6d-bd1a-e1deceeff1b1', 4, 6),
       ('ddc65dff-d217-4c6d-bd1a-e1deceeff1b1', 3, 6),
       ('ddc65dff-d217-4c6d-bd1a-e1deceeff1b1', 2, 6),
       ('ddc65dff-d217-4c6d-bd1a-e1deceeff1b1', 1, 6),
       ('ddc65dff-d217-4c6d-bd1a-e1deceeff1b1', 1, 5),
       ('ddc65dff-d217-4c6d-bd1a-e1deceeff1b1', 1, 4),
       ('ddc65dff-d217-4c6d-bd1a-e1deceeff1b1', 1, 3),
       ('ddc65dff-d217-4c6d-bd1a-e1deceeff1b1', 1, 2),
       ('ddc65dff-d217-4c6d-bd1a-e1deceeff1b1', 1, 1),
       ('ddc65dff-d217-4c6d-bd1a-e1deceeff1b1', 2, 1),
       ('ddc65dff-d217-4c6d-bd1a-e1deceeff1b1', 3, 1),
       -- round three
       ('ddc65dff-d217-4c6d-bd1a-e1deceeff1b1', 4, 1),
       ('ddc65dff-d217-4c6d-bd1a-e1deceeff1b1', 5, 1),
       ('ddc65dff-d217-4c6d-bd1a-e1deceeff1b1', 6, 1),
       ('ddc65dff-d217-4c6d-bd1a-e1deceeff1b1', 6, 2),
       ('ddc65dff-d217-4c6d-bd1a-e1deceeff1b1', 6, 3),
       ('ddc65dff-d217-4c6d-bd1a-e1deceeff1b1', 6, 4),
       ('ddc65dff-d217-4c6d-bd1a-e1deceeff1b1', 6, 5),
       ('ddc65dff-d217-4c6d-bd1a-e1deceeff1b1', 6, 6),
       ('ddc65dff-d217-4c6d-bd1a-e1deceeff1b1', 5, 6),
       ('ddc65dff-d217-4c6d-bd1a-e1deceeff1b1', 4, 6),
       ('ddc65dff-d217-4c6d-bd1a-e1deceeff1b1', 3, 6),
       ('ddc65dff-d217-4c6d-bd1a-e1deceeff1b1', 2, 6),
       ('ddc65dff-d217-4c6d-bd1a-e1deceeff1b1', 1, 6),
       ('ddc65dff-d217-4c6d-bd1a-e1deceeff1b1', 1, 5),
       ('ddc65dff-d217-4c6d-bd1a-e1deceeff1b1', 1, 4),
       ('ddc65dff-d217-4c6d-bd1a-e1deceeff1b1', 1, 3),
       ('ddc65dff-d217-4c6d-bd1a-e1deceeff1b1', 1, 2),
       ('ddc65dff-d217-4c6d-bd1a-e1deceeff1b1', 1, 1),
       ('ddc65dff-d217-4c6d-bd1a-e1deceeff1b1', 2, 1),
       ('ddc65dff-d217-4c6d-bd1a-e1deceeff1b1', 3, 1),
       -- leave
       ('ddc65dff-d217-4c6d-bd1a-e1deceeff1b1', 3, 0);
       -- end tenth mutant
