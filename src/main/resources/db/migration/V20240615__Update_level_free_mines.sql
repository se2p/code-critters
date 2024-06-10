-- fix free mines for level 4
update `level`
set `free_mines` = 4
where `id` = 'c0259e5d-0563-4b06-8c03-4e348b98f3f7';


-- fix free mines for level 5
update `level`
set `free_mines` = 3
where `id` = '6a0c24f5-4744-4de5-9ea5-5a19a659ac9f';

-- fix free mines for level 7
update `level`
set `free_mines` = 3
where `id` = 'ada0d9e2-e58b-49ac-86c2-aa7da1203242';


-- fix free mines for level 10
update `level`
set `free_mines` = 4
where `id` = '370bde4b-94cd-4189-a0bb-d131049dc7e3';

-- update xml of a level 2 mutant (greater-than block => greater-than-equals block)
update `mutant`
set `xml` = '<xml xmlns="https://developers.google.com/blockly/xml"><block type="init_head" id="init_head" x="0" y="0"><statement name="Content"><block type="set" id="Kjc!J@F:@dj1_y:_BFCm"><value name="value1"><block type="properties" id="EC+Ysr??[c]4RUl@ym:/"><field name="properties">BODYCOLOR</field></block></value><value name="value2"><block type="shirt_picker" id="LbO_-US,4emZ[Dir,Q:+"><field name="color">cyan</field></block></value></block></statement></block><block type="cut_head" id="cut_head" x="0" y="171"><statement name="Content"><block type="controls_if" id="Ai/S5o|iY9PFh=)-OWnt"><value name="IF0"><block type="logic_compare" id="Updh4`dmqWOl8d}M;g8y"><field name="OP">GTE</field><value name="A"><block type="properties" id="F$)~+H].(;+UHnYoIA]l"><field name="properties">XCOORD</field></block></value><value name="B"><block type="math_number" id="Eem[Vxht-;;+ILj@@lxp"><field name="NUM">7</field></block></value></block></value><statement name="DO0"><block type="set" id="DM`bwSZeVuL_ULdw-eZA"><value name="value1"><block type="properties" id="`BGTjBMzJTzc%E]e?rGR"><field name="properties">BODYCOLOR</field></block></value><value name="value2"><block type="shirt_picker" id="bW-w`M[a]R1t?gVLo[me"><field name="color">orange</field></block></value></block></statement></block></statement></block></xml>'
where `id` = '30fa9cf0-073b-4fa1-9226-b442d2982891';
