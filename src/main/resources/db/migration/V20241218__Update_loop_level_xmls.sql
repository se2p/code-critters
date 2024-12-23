-- update block ids xml of level 1:
update `heal_level`
set `xml` = '<xml xmlns="https://developers.google.com/blockly/xml">
  <block type="controls_whileUntil" id="recipe_start_while" x="141" y="277">
    <field name="MODE">WHILE</field>
    <value name="BOOL">
      <block type="logic_compare" id="logic_compare_1">
        <field name="OP">LTE</field>
        <value name="A">
          <block type="properties_user_healing" id="properties_user_healing_1">
            <field name="properties">ROUNDS</field>
          </block>
        </value>
        <value name="B">
          <block type="math_number" id="math_number_1">
            <field name="NUM">3</field>
          </block>
        </value>
      </block>
    </value>
    <statement name="DO">
      <block type="set_berries" id="set_berries_1" x="42" y="139">
        <value name="value1">
          <block type="bush_properties" id="bush_properties_1">
            <field name="properties">REDBERRIES</field>
          </block>
        </value>
        <value name="value2">
          <block type="math_number" id="math_number_2" x="263" y="113">
            <field name="NUM">1</field>
          </block>
        </value>
      </block>
    </statement>
  </block>
</xml>
'
where `id` = '0d4d7178-8e67-4969-9b36-1adc3d0b5a0c';


-- update block ids in xml of level 2 :
update `heal_level`
set `xml` = '<xml xmlns="https://developers.google.com/blockly/xml">
  <block type="controls_whileUntil" id="recipe_start_while" x="141" y="277">
    <field name="MODE">WHILE</field>
    <value name="BOOL">
      <block type="logic_compare" id="logic_compare_1">
        <field name="OP">LTE</field>
        <value name="A">
          <block type="properties_user_healing" id="properties_user_healing_1">
            <field name="properties">ROUNDS</field>
          </block>
        </value>
        <value name="B">
          <block type="math_number" id="math_number_1">
            <field name="NUM">3</field>
          </block>
        </value>
      </block>
    </value>
    <statement name="DO">
      <block type="set_berries" id="set_berries_1" x="42" y="139">
        <value name="value1">
          <block type="bush_properties" id="bush_properties_1">
            <field name="properties">PURPLEBERRIES</field>
          </block>
        </value>
        <value name="value2">
          <block type="math_number" id="math_number_2" x="263" y="113">
            <field name="NUM">3</field>
          </block>
        </value>
      </block>
    </statement>
  </block>
</xml>
'
where `id` = '827429bf-72ad-48df-ba1f-e9dba34d342b';


-- update block ids in xml of level 3:
update `heal_level`
set `xml` = '<xml xmlns="https://developers.google.com/blockly/xml">
    <block type="controls_whileUntil" id="recipe_start_while" x="141" y="277">
        <field name="MODE">WHILE</field>
        <value name="BOOL">
            <block type="logic_compare" id="logic_compare_1">
                <field name="OP">LTE</field>
                <value name="A">
                    <block type="properties_user_healing" id="properties_user_healing_1">
                        <field name="properties">ROUNDS</field>
                    </block>
                </value>
                <value name="B">
                    <block type="math_number" id="math_number_1">
                        <field name="NUM">3</field>
                    </block>
                </value>
            </block>
        </value>
        <statement name="DO">
            <block type="controls_if" id="controls_if_1">
                <mutation else="1"></mutation>
                <value name="IF0">
                    <block type="logic_compare" id="logic_compare_2">
                        <field name="OP">EQ</field>
                        <value name="A">
                            <block type="properties_user_healing" id="properties_user_healing_2">
                                <field name="properties">ROUNDS</field>
                            </block>
                        </value>
                        <value name="B">
                            <block type="math_number" id="math_number_2">
                                <field name="NUM">1</field>
                            </block>
                        </value>
                    </block>
                </value>
                <statement name="DO0">
                    <block type="set_berries" id="set_berries_1">
                        <value name="value1">
                            <block type="bush_properties" id="bush_properties_1">
                                <field name="properties">ORANGEBERRIES</field>
                            </block>
                        </value>
                        <value name="value2">
                            <block type="math_number" id="math_number_3">
                                <field name="NUM">1</field>
                            </block>
                        </value>
                    </block>
                </statement>
                <statement name="ELSE">
                    <block type="set_berries" id="set_berries_2">
                        <value name="value1">
                            <block type="bush_properties" id="bush_properties_2">
                                <field name="properties">ORANGEBERRIES</field>
                            </block>
                        </value>
                        <value name="value2">
                            <block type="math_number" id="math_number_4">
                                <field name="NUM">2</field>
                            </block>
                        </value>
                    </block>
                </statement>
            </block>
        </statement>
    </block>
</xml>
'
where `id` = '050f7bee-c3f7-4dd4-8c1e-c8598842d787';


-- update level 4 block ids:
update `heal_level`
set `xml`= '<xml xmlns="https://developers.google.com/blockly/xml">
  <block type="controls_whileUntil" id="recipe_start_while" x="141" y="277">
    <field name="MODE">WHILE</field>
    <value name="BOOL">
      <block type="logic_compare" id="logic_compare_1">
        <field name="OP">LTE</field>
        <value name="A">
          <block type="properties_user_healing" id="user_healing_1">
            <field name="properties">ROUNDS</field>
          </block>
        </value>
        <value name="B">
          <block type="math_number" id="math_number_1">
            <field name="NUM">3</field>
          </block>
        </value>
      </block>
    </value>
    <statement name="DO">
      <block type="controls_if" id="controls_if_1">
        <mutation else="1"></mutation>
        <value name="IF0">
          <block type="logic_compare" id="logic_compare_2">
            <field name="OP">EQ</field>
            <value name="A">
              <block type="properties_user_healing" id="user_healing_2">
                <field name="properties">BODYCOLOR</field>
              </block>
            </value>
            <value name="B">
              <block type="shirt_picker" id="shirt_picker_1" x="229" y="171">
                <field name="color">red</field>
              </block>
            </value>
          </block>
        </value>
        <statement name="DO0">
          <block type="set_berries" id="set_berries_1" x="42" y="139">
            <value name="value1">
              <block type="bush_properties" id="bush_properties_1">
                <field name="properties">REDBERRIES</field>
              </block>
            </value>
            <value name="value2">
              <block type="math_number" id="math_number_2" x="263" y="113">
                <field name="NUM">1</field>
              </block>
            </value>
          </block>
        </statement>
        <statement name="ELSE">
          <block type="set_berries" id="set_berries_2" x="42" y="139">
            <value name="value1">
              <block type="bush_properties" id="bush_properties_2">
                <field name="properties">PINKBERRIES</field>
              </block>
            </value>
            <value name="value2">
              <block type="math_number" id="math_number_3" x="263" y="113">
                <field name="NUM">2</field>
              </block>
            </value>
          </block>
        </statement>
      </block>
    </statement>
  </block>
</xml>
'
where id = '00efaabe-cf73-423a-aa26-69c0377d7c23';


-- update level 5 block ids:
update `heal_level`
set `xml`= '<xml xmlns="https://developers.google.com/blockly/xml">
  <block type="controls_whileUntil" id="recipe_start_while" x="141" y="277">
    <field name="MODE">WHILE</field>
    <value name="BOOL">
      <block type="logic_compare" id="logic_compare_1">
        <field name="OP">LTE</field>
        <value name="A">
          <block type="properties_user_healing" id="properties_user_healing_1">
            <field name="properties">ROUNDS</field>
          </block>
        </value>
        <value name="B">
          <block type="math_number" id="math_number_1">
            <field name="NUM">3</field>
          </block>
        </value>
      </block>
    </value>
    <statement name="DO">
      <block type="controls_if" id="controls_if_1">
        <mutation else="1"></mutation>
        <value name="IF0">
          <block type="logic_compare" id="logic_compare_2">
            <field name="OP">EQ</field>
            <value name="A">
              <block type="properties_user_healing" id="properties_user_healing_2">
                <field name="properties">ROUNDS</field>
              </block>
            </value>
            <value name="B">
              <block type="math_number" id="math_number_2">
                <field name="NUM">3</field>
              </block>
            </value>
          </block>
        </value>
        <statement name="DO0">
          <block type="set_berries" id="set_berries_1" x="42" y="139">
            <value name="value1">
              <block type="bush_properties" id="bush_properties_1">
                <field name="properties">BLACKBERRIES</field>
              </block>
            </value>
            <value name="value2">
              <block type="math_number" id="math_number_3" x="263" y="113">
                <field name="NUM">1</field>
              </block>
            </value>
          </block>
        </statement>
        <statement name="ELSE">
          <block type="set_berries" id="set_berries_2" x="42" y="139">
            <value name="value1">
              <block type="bush_properties" id="bush_properties_2">
                <field name="properties">WHITEBERRIES</field>
              </block>
            </value>
            <value name="value2">
              <block type="properties_user_healing" id="properties_user_healing_3">
                <field name="properties">ROUNDS</field>
              </block>
            </value>
          </block>
        </statement>
      </block>
    </statement>
  </block>
</xml>'
where id = 'a920c5b9-e9c4-4f77-8e95-08f570d0c013';


-- update level 6 block ids:
update `heal_level`
set `xml`= '<xml xmlns="https://developers.google.com/blockly/xml">
  <block type="controls_whileUntil" id="recipe_start_while" x="141" y="277">
    <field name="MODE">WHILE</field>
    <value name="BOOL">
      <block type="logic_compare" id="logic_compare_1">
        <field name="OP">LTE</field>
        <value name="A">
          <block type="properties_user_healing" id="properties_user_healing_1">
            <field name="properties">ROUNDS</field>
          </block>
        </value>
        <value name="B">
          <block type="math_number" id="math_number_1">
            <field name="NUM">3</field>
          </block>
        </value>
      </block>
    </value>
    <statement name="DO">
      <block type="controls_if" id="controls_if_1">
        <mutation elseif="1" else="1"></mutation>
        <value name="IF0">
          <block type="logic_compare" id="logic_compare_2">
            <field name="OP">EQ</field>
            <value name="A">
              <block type="properties_user_healing" id="properties_user_healing_2">
                <field name="properties">ROUNDS</field>
              </block>
            </value>
            <value name="B">
              <block type="math_number" id="math_number_2">
                <field name="NUM">1</field>
              </block>
            </value>
          </block>
        </value>
        <statement name="DO0">
          <block type="set_berries" id="set_berries_1" x="42" y="139">
            <value name="value1">
              <block type="bush_properties" id="bush_properties_1">
                <field name="properties">REDBERRIES</field>
              </block>
            </value>
            <value name="value2">
              <block type="math_number" id="math_number_3" x="263" y="113">
                <field name="NUM">1</field>
              </block>
            </value>
          </block>
        </statement>
        <value name="IF1">
          <block type="logic_compare" id="logic_compare_3">
            <field name="OP">EQ</field>
            <value name="A">
              <block type="properties_user_healing" id="properties_user_healing_3">
                <field name="properties">ROUNDS</field>
              </block>
            </value>
            <value name="B">
              <block type="math_number" id="math_number_4">
                <field name="NUM">2</field>
              </block>
            </value>
          </block>
        </value>
        <statement name="DO1">
          <block type="set_berries" id="set_berries_2" x="42" y="139">
            <value name="value1">
              <block type="bush_properties" id="bush_properties_2">
                <field name="properties">PINKBERRIES</field>
              </block>
            </value>
            <value name="value2">
              <block type="math_number" id="math_number_5" x="263" y="113">
                <field name="NUM">2</field>
              </block>
            </value>
          </block>
        </statement>
        <statement name="ELSE">
          <block type="set_berries" id="set_berries_3" x="42" y="139">
            <value name="value1">
              <block type="bush_properties" id="bush_properties_3">
                <field name="properties">BLACKBERRIES</field>
              </block>
            </value>
            <value name="value2">
              <block type="math_number" id="math_number_6" x="263" y="113">
                <field name="NUM">3</field>
              </block>
            </value>
          </block>
        </statement>
      </block>
    </statement>
  </block>
</xml>
'
where id = 'ef594c76-0544-465f-ac72-f6293d73910d';


-- update level 7 block ids:
update `heal_level`
set `xml`= '<xml xmlns="https://developers.google.com/blockly/xml">
  <block type="controls_whileUntil" id="recipe_start_while" x="141" y="277">
    <field name="MODE">WHILE</field>
    <value name="BOOL">
      <block type="logic_compare" id="logic_compare_1">
        <field name="OP">LTE</field>
        <value name="A">
          <block type="properties_user_healing" id="properties_user_healing_1">
            <field name="properties">ROUNDS</field>
          </block>
        </value>
        <value name="B">
          <block type="math_number" id="math_number_1">
            <field name="NUM">3</field>
          </block>
        </value>
      </block>
    </value>
    <statement name="DO">
      <block type="controls_if" id="controls_if_1">
        <mutation else="1"></mutation>
        <value name="IF0">
          <block type="logic_operation" id="logic_operation_1">
            <field name="OP">AND</field>
            <value name="A">
              <block type="math_number_property" id="math_number_property_1">
                <mutation divisor_input="false"></mutation>
                <field name="PROPERTY">ODD</field>
                <value name="NUMBER_TO_CHECK">
                  <block type="properties_user_healing" id="properties_user_healing_2">
                    <field name="properties">ROUNDS</field>
                  </block>
                </value>
              </block>
            </value>
            <value name="B">
              <block type="logic_compare" id="logic_compare_2">
                <field name="OP">EQ</field>
                <value name="A">
                  <block type="properties_user_healing" id="properties_user_healing_3">
                    <field name="properties">HATCOLOR</field>
                  </block>
                </value>
                <value name="B">
                  <block type="hair_picker" id="hair_picker_1">
                    <field name="color">blond</field>
                  </block>
                </value>
              </block>
            </value>
          </block>
        </value>
        <statement name="DO0">
          <block type="set_berries" id="set_berries_1">
            <value name="value1">
              <block type="bush_properties" id="bush_properties_1">
                <field name="properties">PURPLEBERRIES</field>
              </block>
            </value>
            <value name="value2">
              <block type="math_number" id="math_number_2">
                <field name="NUM">2</field>
              </block>
            </value>
          </block>
        </statement>
        <statement name="ELSE">
          <block type="set_berries" id="set_berries_2">
            <value name="value1">
              <block type="bush_properties" id="bush_properties_2">
                <field name="properties">BLACKBERRIES</field>
              </block>
            </value>
            <value name="value2">
              <block type="math_number" id="math_number_3">
                <field name="NUM">2</field>
              </block>
            </value>
          </block>
        </statement>
      </block>
    </statement>
  </block>
</xml>
'
where id = 'f76c60ed-1ec0-4ffd-9455-e33d0c660182';


-- update level 8 block ids:
update `heal_level`
set `xml`= '<xml xmlns="https://developers.google.com/blockly/xml">
  <block type="controls_whileUntil" id="recipe_start_while" x="141" y="277">
    <field name="MODE">WHILE</field>
    <value name="BOOL">
      <block type="logic_compare" id="logic_compare_1">
        <field name="OP">LTE</field>
        <value name="A">
          <block type="properties_user_healing" id="properties_user_healing_1">
            <field name="properties">ROUNDS</field>
          </block>
        </value>
        <value name="B">
          <block type="math_number" id="math_number_1">
            <field name="NUM">3</field>
          </block>
        </value>
      </block>
    </value>
    <statement name="DO">
      <block type="controls_if" id="controls_if_1">
        <mutation else="1"></mutation>
        <value name="IF0">
          <block type="logic_compare" id="logic_compare_2">
            <field name="OP">GTE</field>
            <value name="A">
              <block type="properties_user_healing" id="properties_user_healing_2">
                <field name="properties">ORANGEBERRIES</field>
              </block>
            </value>
            <value name="B">
              <block type="math_number" id="math_number_2">
                <field name="NUM">2</field>
              </block>
            </value>
          </block>
        </value>
        <statement name="DO0">
          <block type="set_berries" id="set_berries_1" x="42" y="139">
            <value name="value1">
              <block type="bush_properties" id="bush_properties_1">
                <field name="properties">WHITEBERRIES</field>
              </block>
            </value>
            <value name="value2">
              <block type="math_number" id="math_number_3" x="263" y="113">
                <field name="NUM">1</field>
              </block>
            </value>
          </block>
        </statement>
        <statement name="ELSE">
          <block type="set_berries" id="set_berries_2" x="42" y="139">
            <value name="value1">
              <block type="bush_properties" id="bush_properties_2">
                <field name="properties">ORANGEBERRIES</field>
              </block>
            </value>
            <value name="value2">
              <block type="math_number" id="math_number_4" x="263" y="113">
                <field name="NUM">2</field>
              </block>
            </value>
          </block>
        </statement>
      </block>
    </statement>
  </block>
</xml>
'
where id = '50069dd5-bead-49e8-8936-498e9436d72f';


-- update level 9 block ids:
update `heal_level`
set `xml`= '<xml xmlns="https://developers.google.com/blockly/xml">
  <block type="controls_whileUntil" id="recipe_start_while" x="141" y="277">
    <field name="MODE">WHILE</field>
    <value name="BOOL">
      <block type="logic_compare" id="logic_compare_1">
        <field name="OP">LTE</field>
        <value name="A">
          <block type="properties_user_healing" id="properties_user_healing_1">
            <field name="properties">ROUNDS</field>
          </block>
        </value>
        <value name="B">
          <block type="math_number" id="math_number_1">
            <field name="NUM">3</field>
          </block>
        </value>
      </block>
    </value>
    <statement name="DO">
      <block type="controls_if" id="controls_if_1">
        <mutation else="1"></mutation>
        <value name="IF0">
          <block type="logic_operation" id="logic_operation_1">
            <field name="OP">OR</field>
            <value name="A">
              <block type="logic_compare" id="logic_compare_2">
                <field name="OP">LT</field>
                <value name="A">
                  <block type="properties_user_healing" id="properties_user_healing_2">
                    <field name="properties">REDBERRIES</field>
                  </block>
                </value>
                <value name="B">
                  <block type="math_number" id="math_number_2">
                    <field name="NUM">2</field>
                  </block>
                </value>
              </block>
            </value>
            <value name="B">
              <block type="logic_compare" id="logic_compare_3">
                <field name="OP">EQ</field>
                <value name="A">
                  <block type="properties_user_healing" id="properties_user_healing_3">
                    <field name="properties">BODYCOLOR</field>
                  </block>
                </value>
                <value name="B">
                  <block type="shirt_picker" id="shirt_picker_1">
                    <field name="color">cyan</field>
                  </block>
                </value>
              </block>
            </value>
          </block>
        </value>
        <statement name="DO0">
          <block type="set_berries" id="set_berries_1">
            <value name="value1">
              <block type="bush_properties" id="bush_properties_1">
                <field name="properties">WHITEBERRIES</field>
              </block>
            </value>
            <value name="value2">
              <block type="math_number" id="math_number_3">
                <field name="NUM">2</field>
              </block>
            </value>
            <next>
              <block type="set_berries" id="set_berries_2">
                <value name="value1">
                  <block type="bush_properties" id="bush_properties_2">
                    <field name="properties">REDBERRIES</field>
                  </block>
                </value>
                <value name="value2">
                  <block type="math_number" id="math_number_4">
                    <field name="NUM">2</field>
                  </block>
                </value>
              </block>
            </next>
          </block>
        </statement>
        <statement name="ELSE">
          <block type="set_berries" id="set_berries_3">
            <value name="value1">
              <block type="bush_properties" id="bush_properties_3">
                <field name="properties">REDBERRIES</field>
              </block>
            </value>
            <value name="value2">
              <block type="math_number" id="math_number_5">
                <field name="NUM">1</field>
              </block>
            </value>
          </block>
        </statement>
      </block>
    </statement>
  </block>
</xml>
'
where id = '8fae4dce-20f6-47ea-aea2-dc44a2d148ed';


-- update level 10 block ids:
update `heal_level`
set `xml`= '<xml xmlns="https://developers.google.com/blockly/xml">
  <block type="controls_whileUntil" id="recipe_start_while" x="219" y="111">
    <field name="MODE">WHILE</field>
    <value name="BOOL">
      <block type="logic_compare" id="logic_compare_1">
        <field name="OP">LTE</field>
        <value name="A">
          <block type="properties_user_healing" id="properties_user_healing_1">
            <field name="properties">ROUNDS</field>
          </block>
        </value>
        <value name="B">
          <block type="math_number" id="math_number_1">
            <field name="NUM">2</field>
          </block>
        </value>
      </block>
    </value>
    <statement name="DO">
      <block type="controls_if" id="controls_if_1">
        <value name="IF0">
          <block type="logic_compare" id="logic_compare_2">
            <field name="OP">GTE</field>
            <value name="A">
              <block type="properties_user_healing" id="properties_user_healing_2">
                <field name="properties">PINKBERRIES</field>
              </block>
            </value>
            <value name="B">
              <block type="math_number" id="math_number_2">
                <field name="NUM">2</field>
              </block>
            </value>
          </block>
        </value>
        <statement name="DO0">
          <block type="controls_whileUntil" id="inner_while">
            <field name="MODE">WHILE</field>
            <value name="BOOL">
              <block type="logic_compare" id="logic_compare_3">
                <field name="OP">LT</field>
                <value name="A">
                  <block type="properties_user_healing" id="properties_user_healing_3">
                    <field name="properties">PURPLEBERRIES</field>
                  </block>
                </value>
                <value name="B">
                  <block type="math_number" id="math_number_3">
                    <field name="NUM">4</field>
                  </block>
                </value>
              </block>
            </value>
            <statement name="DO">
              <block type="set_berries" id="set_berries_1">
                <value name="value1">
                  <block type="bush_properties" id="bush_properties_1">
                    <field name="properties">PURPLEBERRIES</field>
                  </block>
                </value>
                <value name="value2">
                  <block type="math_number" id="math_number_4">
                    <field name="NUM">2</field>
                  </block>
                </value>
              </block>
            </statement>
          </block>
        </statement>
        <next>
          <block type="set_berries" id="set_berries_2">
            <value name="value1">
              <block type="bush_properties" id="bush_properties_2">
                <field name="properties">PINKBERRIES</field>
              </block>
            </value>
            <value name="value2">
              <block type="math_number" id="math_number_5">
                <field name="NUM">2</field>
              </block>
            </value>
          </block>
        </next>
      </block>
    </statement>
  </block>
</xml>
'
where id = 'ee430d4c-186f-40d3-9f7f-3cfa1f0de937';

