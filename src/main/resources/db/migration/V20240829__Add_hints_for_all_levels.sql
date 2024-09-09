-- Level 1 Hints
insert into `hint` (`id`, `hint_situation`, `level_id`)
values ('62675fbd-fff4-4633-b4b0-c6f849d55ec4', 0, '7c51e36e-9f19-48b7-ae7b-c27e4b4d0329');

insert into `hint_hint_texts` (`hint_id`, `hint_texts`, `hint_texts_key`)
values ('62675fbd-fff4-4633-b4b0-c6f849d55ec4', 'hint_level_1_intro_0', 0),
       ('62675fbd-fff4-4633-b4b0-c6f849d55ec4', 'hint_level_1_intro_1', 1),
       ('62675fbd-fff4-4633-b4b0-c6f849d55ec4', 'hint_level_1_intro_2', 2),
       ('62675fbd-fff4-4633-b4b0-c6f849d55ec4', 'hint_level_1_intro_3', 3),
       ('62675fbd-fff4-4633-b4b0-c6f849d55ec4', 'hint_level_1_intro_4', 4),
       ('62675fbd-fff4-4633-b4b0-c6f849d55ec4', 'hint_level_1_intro_5', 5),
       ('62675fbd-fff4-4633-b4b0-c6f849d55ec4', 'hint_level_1_intro_6', 6),
       ('62675fbd-fff4-4633-b4b0-c6f849d55ec4', 'hint_level_1_intro_7', 7),
       ('62675fbd-fff4-4633-b4b0-c6f849d55ec4', 'hint_level_1_intro_8', 8);


insert into `associated_coordinates` (`hint_id`, `x`, `y`, `associated_coordinates_key`)
values ('62675fbd-fff4-4633-b4b0-c6f849d55ec4', 1, 8, 2),
       ('62675fbd-fff4-4633-b4b0-c6f849d55ec4', 14, 7, 3);

insert into `associated_cut_blocks` (`id`, `hint_id`, `associated_cut_blocks_key`)
values ('33d85c85-ce18-4ba5-a800-60786866e910', '62675fbd-fff4-4633-b4b0-c6f849d55ec4', 1),
       ('d4cbf960-e1ab-4931-9f36-fd307aae612b', '62675fbd-fff4-4633-b4b0-c6f849d55ec4', 6),
       ('276d8538-fd7f-4544-9fa0-d5e89a2a9e4f', '62675fbd-fff4-4633-b4b0-c6f849d55ec4', 7);

insert into `associated_cut_blocks_block_ids` (`associated_cut_blocks_id`, `block_ids`)
values ('33d85c85-ce18-4ba5-a800-60786866e910', 'init_head'),
       ('33d85c85-ce18-4ba5-a800-60786866e910', 'cut_head'),
       ('d4cbf960-e1ab-4931-9f36-fd307aae612b', 'init_head'),
       ('276d8538-fd7f-4544-9fa0-d5e89a2a9e4f', 'cut_head');

insert into `associated_component_ids` (`id`, `hint_id`, `associated_component_ids_key`)
values ('031cd9fc-c23a-4d12-ace9-8dae53a86d5a', '62675fbd-fff4-4633-b4b0-c6f849d55ec4', 1),
       ('195c2b96-ff59-4dec-a0fc-642d4ca4e87a', '62675fbd-fff4-4633-b4b0-c6f849d55ec4', 6),
       ('79bd288a-5958-48f7-af71-1b8eb2219b57', '62675fbd-fff4-4633-b4b0-c6f849d55ec4', 7);

insert into `associated_component_ids_component_ids` (`associated_component_ids_id`, `component_ids`)
values ('031cd9fc-c23a-4d12-ace9-8dae53a86d5a', 'blockly_cut_div'),
       ('195c2b96-ff59-4dec-a0fc-642d4ca4e87a', 'blockly_cut_div'),
       ('79bd288a-5958-48f7-af71-1b8eb2219b57', 'blockly_cut_div');

insert into `portal_xmls` (`hint_id`, `portal_xml`, `portal_xml_key`)
values ('62675fbd-fff4-4633-b4b0-c6f849d55ec4', '<xml xmlns="http://www.w3.org/1999/xhtml"></xml>', 5),
       ('62675fbd-fff4-4633-b4b0-c6f849d55ec4',
        '<xml xmlns="http://www.w3.org/1999/xhtml"><block type="assert" id="^yaA$yq,j8JIJ%`7ZUI8" x="241" y="189"><value name="target"></value><value name="value"></value></block></xml>', 6);

insert into `expected_clicked_coordinate` (`id`, `hint_id`, `expected_clicked_coordinates_key`)
values ('993ab5e4-f7c8-4ac0-bd05-e5c3325366ca', '62675fbd-fff4-4633-b4b0-c6f849d55ec4', 4),
       ('5ed242c0-a6db-4570-ac67-c06600c6eafc','62675fbd-fff4-4633-b4b0-c6f849d55ec4', 5);

insert into `expected_clicked_coordinate_coordinates` (`expected_clicked_coordinate_id`, `x`, `y`)
values ('993ab5e4-f7c8-4ac0-bd05-e5c3325366ca', 4, 8),
       ('5ed242c0-a6db-4570-ac67-c06600c6eafc', 4, 8);

insert into `hint_expected_user_interaction` (`hint_id`, `expected_user_interaction`, `expected_user_interaction_key`)
values ('62675fbd-fff4-4633-b4b0-c6f849d55ec4', 0, 4),
       ('62675fbd-fff4-4633-b4b0-c6f849d55ec4', 1, 5);

insert into `hint_expected_portal_js_code` (`hint_id`, `expected_portal_js_code`, `expected_portal_js_code_key`)
values ('62675fbd-fff4-4633-b4b0-c6f849d55ec4', 'if ( !== ) {\n\tthis._killCritter(x, y, , );\n}\n', 5);

insert into `hint` (`id`, `hint_situation`, `level_id`)
values ('19041e58-2302-41e3-99d3-4a3051fbe917', 1, '7c51e36e-9f19-48b7-ae7b-c27e4b4d0329');

insert into `hint_hint_texts` (`hint_id`, `hint_texts`, `hint_texts_key`)
values ('19041e58-2302-41e3-99d3-4a3051fbe917', 'hint_level_1_first_0', 0),
       ('19041e58-2302-41e3-99d3-4a3051fbe917', 'hint_level_1_first_1', 1),
       ('19041e58-2302-41e3-99d3-4a3051fbe917', 'hint_level_1_first_2', 2),
       ('19041e58-2302-41e3-99d3-4a3051fbe917', 'hint_level_1_first_3', 3),
       ('19041e58-2302-41e3-99d3-4a3051fbe917', 'hint_level_1_first_4', 4);

insert into `associated_coordinates` (`hint_id`, `x`, `y`, `associated_coordinates_key`)
values ('19041e58-2302-41e3-99d3-4a3051fbe917', 3, 8, 2);

insert into `associated_cut_blocks` (`id`, `hint_id`, `associated_cut_blocks_key`)
values ('c3b7f6da-967b-49e9-b134-bed2d5b26ac6', '19041e58-2302-41e3-99d3-4a3051fbe917', 0),
       ('fc91cd3e-b85f-4e59-8dde-04d34ab0a563', '19041e58-2302-41e3-99d3-4a3051fbe917', 1),
       ('d8dcdfdd-9cb7-447d-9e3d-124964b6b017', '19041e58-2302-41e3-99d3-4a3051fbe917', 3),
       ('ce32a675-8f21-4499-ad45-4377bd799a68', '19041e58-2302-41e3-99d3-4a3051fbe917', 4);

insert into `associated_cut_blocks_block_ids` (`associated_cut_blocks_id`, `block_ids`)
values ('c3b7f6da-967b-49e9-b134-bed2d5b26ac6', 'init_head'),
       ('c3b7f6da-967b-49e9-b134-bed2d5b26ac6', 'cut_head'),
       ('fc91cd3e-b85f-4e59-8dde-04d34ab0a563', 'J{%A6z!OuR7hUH|l~l[I'),
       ('d8dcdfdd-9cb7-447d-9e3d-124964b6b017', 'J{%A6z!OuR7hUH|l~l[I'),
       ('d8dcdfdd-9cb7-447d-9e3d-124964b6b017', 'Z8^!mD3YRCbV;;69c.lN'),
       ('ce32a675-8f21-4499-ad45-4377bd799a68', 'J{%A6z!OuR7hUH|l~l[I');

insert into `associated_component_ids` (`id`, `hint_id`, `associated_component_ids_key`)
values ('644eef93-43ef-444e-b00a-47faad45eedf', '19041e58-2302-41e3-99d3-4a3051fbe917', 0),
       ('5d0c4c8c-9aab-48e1-bfae-48f4cb371174', '19041e58-2302-41e3-99d3-4a3051fbe917', 1),
       ('ae68c320-32af-4339-a997-a97841676b30', '19041e58-2302-41e3-99d3-4a3051fbe917', 4);

insert into `associated_component_ids_component_ids` (`associated_component_ids_id`, `component_ids`)
values ('644eef93-43ef-444e-b00a-47faad45eedf', 'blockly_cut_div'),
       ('5d0c4c8c-9aab-48e1-bfae-48f4cb371174', 'blockly_cut_div'),
       ('ae68c320-32af-4339-a997-a97841676b30', 'save_button');

insert into `portal_xmls` (`hint_id`, `portal_xml`, `portal_xml_key`)
values ('19041e58-2302-41e3-99d3-4a3051fbe917', '<xml xmlns="http://www.w3.org/1999/xhtml"></xml>', 3),
       ('19041e58-2302-41e3-99d3-4a3051fbe917',
        '<xml xmlns="http://www.w3.org/1999/xhtml"><block type="assert" id="%t)pLCtl+XEaCfYxBUiI" x="180" y="138"><value name="target"><block type="properties" id="Vu?}Z@_EnR.(,NN+Ejbu"><field name="properties">BODYCOLOR</field></block></value><value name="value"></value></block></xml>', 4);

insert into `expected_clicked_coordinate` (`id`, `hint_id`, `expected_clicked_coordinates_key`)
values ('a9df53bb-4712-4b8b-84b8-01796955bd09', '19041e58-2302-41e3-99d3-4a3051fbe917', 2),
       ('2d76ed6e-21de-4314-80ae-570e56c6156b', '19041e58-2302-41e3-99d3-4a3051fbe917', 3);

insert into `expected_clicked_coordinate_coordinates` (`expected_clicked_coordinate_id`, `x`, `y`)
values ('a9df53bb-4712-4b8b-84b8-01796955bd09', 3, 8),
       ('2d76ed6e-21de-4314-80ae-570e56c6156b', 3, 8);

insert into `hint_expected_user_interaction` (`hint_id`, `expected_user_interaction`, `expected_user_interaction_key`)
values ('19041e58-2302-41e3-99d3-4a3051fbe917', 0, 2);

-- Start solution portals of level 1:

insert into `portal_solution_hint` (`id`, `name`, `level_id`)
values ('baeaf63d-89a9-4d67-a975-2367d997f7cb', 'portal_1', '7c51e36e-9f19-48b7-ae7b-c27e4b4d0329'),
       ('e7e27c7f-de97-4106-8861-ba857e652f9a', 'portal_2', '7c51e36e-9f19-48b7-ae7b-c27e4b4d0329');

insert into `portal_solution_hint_possible_coordinates` (`portal_solution_hint_id`, `x`, `y`)
values ('baeaf63d-89a9-4d67-a975-2367d997f7cb', 3, 8),
       ('e7e27c7f-de97-4106-8861-ba857e652f9a', 4, 8),
       ('e7e27c7f-de97-4106-8861-ba857e652f9a', 5, 8),
       ('e7e27c7f-de97-4106-8861-ba857e652f9a', 6, 8),
       ('e7e27c7f-de97-4106-8861-ba857e652f9a', 7, 8),
       ('e7e27c7f-de97-4106-8861-ba857e652f9a', 8, 8),
       ('e7e27c7f-de97-4106-8861-ba857e652f9a', 9, 8),
       ('e7e27c7f-de97-4106-8861-ba857e652f9a', 10, 8),
       ('e7e27c7f-de97-4106-8861-ba857e652f9a', 11, 8);


insert into `portal_solution_xmls` (`portal_solution_hint_id`, `portal_solution_xml`)
values ('baeaf63d-89a9-4d67-a975-2367d997f7cb', '<xml xmlns="http://www.w3.org/1999/xhtml"><block type="assert" id="assert_id" x="180" y="138"><value name="target"><block type="properties" id="Vu?}Z@_EnR.(,NN+Ejbu"><field name="properties">BODYCOLOR</field></block></value><value name="value"></value></block></xml>'),
       ('e7e27c7f-de97-4106-8861-ba857e652f9a', '<xml xmlns="http://www.w3.org/1999/xhtml"><block type="assert" id="assert_id" x="180" y="138"><value name="target"><block type="properties" id="Vu?}Z@_EnR.(,NN+Ejbu"><field name="properties">BODYCOLOR</field></block></value><value name="value"></value></block></xml>');

insert into `portal_solution_hint_associated_component_ids` (`portal_solution_hint_id`, `associated_component_ids`)
values ('baeaf63d-89a9-4d67-a975-2367d997f7cb', 'blockly_cut_div'),
       ('e7e27c7f-de97-4106-8861-ba857e652f9a', 'blockly_cut_div');


insert into `portal_solution_hint_code_block_to_be_tested` (`portal_solution_hint_id`, `code_block_to_be_tested`)
values ('baeaf63d-89a9-4d67-a975-2367d997f7cb', 'J{%A6z!OuR7hUH|l~l[I'),
       ('e7e27c7f-de97-4106-8861-ba857e652f9a', 'k{1t231G(3EK4zurqr+b'),
       ('e7e27c7f-de97-4106-8861-ba857e652f9a', 'Updh4`dmqWOl8d}M;g8y'),
       ('e7e27c7f-de97-4106-8861-ba857e652f9a', 'Vi5sq^T^q~3/+~]FktjM');

insert into `portal_solution_hint_key_code_blocks` (`portal_solution_hint_id`, `key_code_blocks`)
values ('e7e27c7f-de97-4106-8861-ba857e652f9a', 'k{1t231G(3EK4zurqr+b'),
       ('e7e27c7f-de97-4106-8861-ba857e652f9a', 'Updh4`dmqWOl8d}M;g8y');


-- Level 2 Hints
insert into `hint` (`id`, `hint_situation`, `level_id`)
values ('ed28fa08-6e7a-4f9e-9e84-1baabf0475f3', 1, '522d1852-807f-4097-a9d0-ae1dddac8db7');

insert into `hint_hint_texts` (`hint_id`, `hint_texts`, `hint_texts_key`)
values ('ed28fa08-6e7a-4f9e-9e84-1baabf0475f3', 'hint_level_2_first_0', 0),
       ('ed28fa08-6e7a-4f9e-9e84-1baabf0475f3', 'hint_level_2_first_1', 1),
       ('ed28fa08-6e7a-4f9e-9e84-1baabf0475f3', 'hint_level_2_first_2', 2),
       ('ed28fa08-6e7a-4f9e-9e84-1baabf0475f3', 'hint_level_2_first_3', 3),
       ('ed28fa08-6e7a-4f9e-9e84-1baabf0475f3', 'hint_level_2_first_4', 4),
       ('ed28fa08-6e7a-4f9e-9e84-1baabf0475f3', 'hint_level_2_first_5', 5);

insert into `associated_coordinates` (`hint_id`, `x`, `y`, `associated_coordinates_key`)
values ('ed28fa08-6e7a-4f9e-9e84-1baabf0475f3', 6, 8, 3);


insert into `associated_cut_blocks` (`id`, `hint_id`, `associated_cut_blocks_key`)
values ('8f97cfa5-d158-48a0-9e76-66d93c96a607', 'ed28fa08-6e7a-4f9e-9e84-1baabf0475f3', 0),
       ('06042346-582a-4878-a82a-b70398add72d', 'ed28fa08-6e7a-4f9e-9e84-1baabf0475f3', 1),
       ('eaa99ae7-447e-49cc-93bb-c39364e59e25', 'ed28fa08-6e7a-4f9e-9e84-1baabf0475f3', 2),
       ('d3be4f30-9435-4670-a994-6af05eb22d3c', 'ed28fa08-6e7a-4f9e-9e84-1baabf0475f3', 3),
       ('236a368c-8ed0-439d-b12d-7543a7737518', 'ed28fa08-6e7a-4f9e-9e84-1baabf0475f3', 4),
       ('d48ace83-af7d-4dd9-9cf7-75c8b6bec8f4', 'ed28fa08-6e7a-4f9e-9e84-1baabf0475f3', 5);

insert into `associated_cut_blocks_block_ids` (`associated_cut_blocks_id`, `block_ids`)
values ('8f97cfa5-d158-48a0-9e76-66d93c96a607', 'init_head'),
       ('8f97cfa5-d158-48a0-9e76-66d93c96a607', 'cut_head'),
       ('06042346-582a-4878-a82a-b70398add72d', 'Kjc!J@F:@dj1_y:_BFCm'),
       ('eaa99ae7-447e-49cc-93bb-c39364e59e25', 'Ai/S5o|iY9PFh=)-OWnt'),
       ('eaa99ae7-447e-49cc-93bb-c39364e59e25', 'Updh4`dmqWOl8d}M;g8y'),
       ('d3be4f30-9435-4670-a994-6af05eb22d3c', 'Kjc!J@F:@dj1_y:_BFCm'),
       ('d3be4f30-9435-4670-a994-6af05eb22d3c', 'Updh4`dmqWOl8d}M;g8y'),
       ('236a368c-8ed0-439d-b12d-7543a7737518', 'Kjc!J@F:@dj1_y:_BFCm'),
       ('d48ace83-af7d-4dd9-9cf7-75c8b6bec8f4', 'Kjc!J@F:@dj1_y:_BFCm');


insert into `associated_component_ids` (`id`, `hint_id`, `associated_component_ids_key`)
values ('159b6bea-6d27-45aa-8e6a-b44022b7facc', 'ed28fa08-6e7a-4f9e-9e84-1baabf0475f3', 0),
       ('38201793-700b-431a-91ab-418208193cc0', 'ed28fa08-6e7a-4f9e-9e84-1baabf0475f3', 1);


insert into `associated_component_ids_component_ids` (`associated_component_ids_id`, `component_ids`)
values ('159b6bea-6d27-45aa-8e6a-b44022b7facc', 'blockly_cut_div'),
       ('38201793-700b-431a-91ab-418208193cc0', 'blockly_cut_div');


insert into `portal_xmls` (`hint_id`, `portal_xml`, `portal_xml_key`)
values ('ed28fa08-6e7a-4f9e-9e84-1baabf0475f3', '<xml xmlns="http://www.w3.org/1999/xhtml"></xml>', 4),
       ('ed28fa08-6e7a-4f9e-9e84-1baabf0475f3',
        '<xml xmlns="http://www.w3.org/1999/xhtml"><block type="assert" id="%t)pLCtl+XEaCfYxBUiI" x="180" y="138"><value name="target"><block type="properties" id="Vu?}Z@_EnR.(,NN+Ejbu"><field name="properties">BODYCOLOR</field></block></value><value name="value"></value></block></xml>', 5);

insert into `expected_clicked_coordinate` (`id`, `hint_id`, `expected_clicked_coordinates_key`)
values ('dc1d0795-4f7a-4073-a657-b02e0b82d25a', 'ed28fa08-6e7a-4f9e-9e84-1baabf0475f3', 3),
       ('7300ffe3-81ee-42af-b8e4-47d7d25484c7','ed28fa08-6e7a-4f9e-9e84-1baabf0475f3', 4);

insert into `expected_clicked_coordinate_coordinates` (`expected_clicked_coordinate_id`, `x`, `y`)
values ('dc1d0795-4f7a-4073-a657-b02e0b82d25a', 6, 8),
       ('7300ffe3-81ee-42af-b8e4-47d7d25484c7', 6, 8);

insert into `hint_expected_user_interaction` (`hint_id`, `expected_user_interaction`, `expected_user_interaction_key`)
values ('ed28fa08-6e7a-4f9e-9e84-1baabf0475f3', 0, 3);


-- Start solution portals of level 2:

insert into `portal_solution_hint` (`id`, `name`, `level_id`)
values ('ff8d3c7e-1f22-40fa-81fe-0617101fcbf2', 'portal_1', '522d1852-807f-4097-a9d0-ae1dddac8db7'),
       ('3f6d107f-47c5-4d76-b56d-487f267162f3', 'portal_2', '522d1852-807f-4097-a9d0-ae1dddac8db7');

insert into `portal_solution_hint_possible_coordinates` (`portal_solution_hint_id`, `x`, `y`)
values ('ff8d3c7e-1f22-40fa-81fe-0617101fcbf2', 6, 8),
       ('3f6d107f-47c5-4d76-b56d-487f267162f3', 7, 8);

insert into `portal_solution_xmls` (`portal_solution_hint_id`, `portal_solution_xml`)
values ('ff8d3c7e-1f22-40fa-81fe-0617101fcbf2', '<xml xmlns="http://www.w3.org/1999/xhtml"><block type="assert" id="assert_id" x="180" y="138"><value name="target"><block type="properties" id="Vu?}Z@_EnR.(,NN+Ejbu"><field name="properties">BODYCOLOR</field></block></value><value name="value"></value></block></xml>'),
       ('3f6d107f-47c5-4d76-b56d-487f267162f3', '<xml xmlns="http://www.w3.org/1999/xhtml"><block type="assert" id="assert_id" x="180" y="138"><value name="target"><block type="properties" id="Vu?}Z@_EnR.(,NN+Ejbu"><field name="properties">BODYCOLOR</field></block></value><value name="value"></value></block></xml>');

insert into `portal_solution_hint_associated_component_ids` (`portal_solution_hint_id`, `associated_component_ids`)
values ('ff8d3c7e-1f22-40fa-81fe-0617101fcbf2', 'blockly_cut_div'),
       ('3f6d107f-47c5-4d76-b56d-487f267162f3', 'blockly_cut_div');

insert into `portal_solution_hint_code_block_to_be_tested` (`portal_solution_hint_id`, `code_block_to_be_tested`)
values ('ff8d3c7e-1f22-40fa-81fe-0617101fcbf2', 'Kjc!J@F:@dj1_y:_BFCm'),
       ('3f6d107f-47c5-4d76-b56d-487f267162f3', 'DM`bwSZeVuL_ULdw-eZA'),
       ('3f6d107f-47c5-4d76-b56d-487f267162f3', 'Ai/S5o|iY9PFh=)-OWnt'),
       ('3f6d107f-47c5-4d76-b56d-487f267162f3', 'Updh4`dmqWOl8d}M;g8y');

insert into `portal_solution_hint_key_code_blocks` (`portal_solution_hint_id`, `key_code_blocks`)
values ('3f6d107f-47c5-4d76-b56d-487f267162f3', 'Updh4`dmqWOl8d}M;g8y'),
       ('3f6d107f-47c5-4d76-b56d-487f267162f3', 'Ai/S5o|iY9PFh=)-OWnt');


-- Level 3 Hints

insert into `hint` (`id`, `hint_situation`, `level_id`)
values ('6ea2c539-3d70-43f4-9df8-57e9e7cb74e2', 1, 'c3a1468e-07f6-474b-9641-891e906bd068');

insert into `hint_hint_texts` (`hint_id`, `hint_texts`, `hint_texts_key`)
values ('6ea2c539-3d70-43f4-9df8-57e9e7cb74e2', 'hint_level_3_first_0', 0),
       ('6ea2c539-3d70-43f4-9df8-57e9e7cb74e2', 'hint_level_3_first_1', 1),
       ('6ea2c539-3d70-43f4-9df8-57e9e7cb74e2', 'hint_level_3_first_2', 2),
       ('6ea2c539-3d70-43f4-9df8-57e9e7cb74e2', 'hint_level_3_first_3', 3),
       ('6ea2c539-3d70-43f4-9df8-57e9e7cb74e2', 'hint_level_3_first_4', 4);

insert into `associated_coordinates` (`hint_id`, `x`, `y`, `associated_coordinates_key`)
values ('6ea2c539-3d70-43f4-9df8-57e9e7cb74e2', 3, 8, 2);


insert into `associated_cut_blocks` (`id`, `hint_id`, `associated_cut_blocks_key`)
values ('4d2cdf79-957b-43cd-b452-351ee710eefb', '6ea2c539-3d70-43f4-9df8-57e9e7cb74e2', 0),
       ('137eb04c-ff99-4166-adb8-eba10264f379', '6ea2c539-3d70-43f4-9df8-57e9e7cb74e2', 1),
       ('e5b29f23-093c-4b13-afb8-222474bef06c', '6ea2c539-3d70-43f4-9df8-57e9e7cb74e2', 2),
       ('df3c3310-0b5b-44ec-8e93-a619c9b75f2b', '6ea2c539-3d70-43f4-9df8-57e9e7cb74e2', 3),
       ('6b0d7e9b-c4ab-4b84-9249-00d7c247bdf7', '6ea2c539-3d70-43f4-9df8-57e9e7cb74e2', 4);

insert into `associated_cut_blocks_block_ids` (`associated_cut_blocks_id`, `block_ids`)
values ('4d2cdf79-957b-43cd-b452-351ee710eefb', 'cut_head'),
       ('137eb04c-ff99-4166-adb8-eba10264f379', '+9|,JVO!JdX:]jR#x!aI'),
       ('137eb04c-ff99-4166-adb8-eba10264f379', 'Updh4`dmqWOl8d}M;g8y'),
       ('e5b29f23-093c-4b13-afb8-222474bef06c', '+9|,JVO!JdX:]jR#x!aI'),
       ('e5b29f23-093c-4b13-afb8-222474bef06c', 'Updh4`dmqWOl8d}M;g8y'),
       ('df3c3310-0b5b-44ec-8e93-a619c9b75f2b', '+9|,JVO!JdX:]jR#x!aI'),
       ('df3c3310-0b5b-44ec-8e93-a619c9b75f2b', 'Updh4`dmqWOl8d}M;g8y'),
       ('6b0d7e9b-c4ab-4b84-9249-00d7c247bdf7', '+9|,JVO!JdX:]jR#x!aI'),
       ('6b0d7e9b-c4ab-4b84-9249-00d7c247bdf7', 'Ty/T_QS6Dw1v|vkCh8+R'),
       ('6b0d7e9b-c4ab-4b84-9249-00d7c247bdf7', 'Updh4`dmqWOl8d}M;g8y');

insert into `associated_component_ids` (`id`, `hint_id`, `associated_component_ids_key`)
values ('09cd5a6a-5757-4f8e-8694-4f4ab286def9', '6ea2c539-3d70-43f4-9df8-57e9e7cb74e2', 0),
       ('ded5be99-d769-40cf-9375-061f517535c3', '6ea2c539-3d70-43f4-9df8-57e9e7cb74e2', 1);


insert into `associated_component_ids_component_ids` (`associated_component_ids_id`, `component_ids`)
values ('09cd5a6a-5757-4f8e-8694-4f4ab286def9', 'blockly_cut_div'),
       ('ded5be99-d769-40cf-9375-061f517535c3', 'blockly_cut_div');


insert into `portal_xmls` (`hint_id`, `portal_xml`, `portal_xml_key`)
values ('6ea2c539-3d70-43f4-9df8-57e9e7cb74e2', '<xml xmlns="http://www.w3.org/1999/xhtml"><block type="assert" id="%t)pLCtl+XEaCfYxBUiI" x="180" y="138"><value name="target"><block type="properties" id="Vu?}Z@_EnR.(,NN+Ejbu"><field name="properties">BODYCOLOR</field></block></value><value name="value"></value></block></xml>', 4);

insert into `expected_clicked_coordinate` (`id`, `hint_id`, `expected_clicked_coordinates_key`)
values ('6083c422-e8bb-43e6-9462-6186a2ddc151', '6ea2c539-3d70-43f4-9df8-57e9e7cb74e2', 2),
       ('9db7fba4-ae8f-467d-a38b-86d49f0970f1','6ea2c539-3d70-43f4-9df8-57e9e7cb74e2', 3);

insert into `expected_clicked_coordinate_coordinates` (`expected_clicked_coordinate_id`, `x`, `y`)
values ('6083c422-e8bb-43e6-9462-6186a2ddc151', 3, 8),
       ('9db7fba4-ae8f-467d-a38b-86d49f0970f1', 3, 8);

insert into `hint_expected_user_interaction` (`hint_id`, `expected_user_interaction`, `expected_user_interaction_key`)
values ('6ea2c539-3d70-43f4-9df8-57e9e7cb74e2', 0, 2);


-- Start solution portals of level 3:

insert into `portal_solution_hint` (`id`, `name`, `level_id`)
values ('5eff5cc2-16ed-40c1-bfae-05d739a34b7b', 'portal_1', 'c3a1468e-07f6-474b-9641-891e906bd068'),
       ('1fa7bae4-9696-49ca-bae4-8e2a5c040e76', 'portal_2', 'c3a1468e-07f6-474b-9641-891e906bd068');


insert into `portal_solution_hint_possible_coordinates` (`portal_solution_hint_id`, `x`, `y`)
values ('5eff5cc2-16ed-40c1-bfae-05d739a34b7b', 3, 8),
       ('5eff5cc2-16ed-40c1-bfae-05d739a34b7b', 12, 8),
       ('1fa7bae4-9696-49ca-bae4-8e2a5c040e76', 4, 8),
       ('1fa7bae4-9696-49ca-bae4-8e2a5c040e76', 5, 8),
       ('1fa7bae4-9696-49ca-bae4-8e2a5c040e76', 6, 8),
       ('1fa7bae4-9696-49ca-bae4-8e2a5c040e76', 7, 8),
       ('1fa7bae4-9696-49ca-bae4-8e2a5c040e76', 8, 8),
       ('1fa7bae4-9696-49ca-bae4-8e2a5c040e76', 9, 8),
       ('1fa7bae4-9696-49ca-bae4-8e2a5c040e76', 10, 8),
       ('1fa7bae4-9696-49ca-bae4-8e2a5c040e76', 11, 8);

insert into `portal_solution_xmls` (`portal_solution_hint_id`, `portal_solution_xml`)
values ('5eff5cc2-16ed-40c1-bfae-05d739a34b7b', '<xml xmlns="http://www.w3.org/1999/xhtml"><block type="assert" id="assert_id" x="180" y="138"><value name="target"><block type="properties" id="Vu?}Z@_EnR.(,NN+Ejbu"><field name="properties">BODYCOLOR</field></block></value><value name="value"></value></block></xml>'),
       ('1fa7bae4-9696-49ca-bae4-8e2a5c040e76', '<xml xmlns="http://www.w3.org/1999/xhtml"><block type="assert" id="assert_id" x="180" y="138"><value name="target"><block type="properties" id="Vu?}Z@_EnR.(,NN+Ejbu"><field name="properties">BODYCOLOR</field></block></value><value name="value"></value></block></xml>');

insert into `portal_solution_hint_associated_component_ids` (`portal_solution_hint_id`, `associated_component_ids`)
values ('5eff5cc2-16ed-40c1-bfae-05d739a34b7b', 'blockly_cut_div'),
       ('1fa7bae4-9696-49ca-bae4-8e2a5c040e76', 'blockly_cut_div');

insert into `portal_solution_hint_code_block_to_be_tested` (`portal_solution_hint_id`, `code_block_to_be_tested`)
values ('5eff5cc2-16ed-40c1-bfae-05d739a34b7b', '+9|,JVO!JdX:]jR#x!aI'),
       ('5eff5cc2-16ed-40c1-bfae-05d739a34b7b', 'Updh4`dmqWOl8d}M;g8y'),
       ('5eff5cc2-16ed-40c1-bfae-05d739a34b7b', 'Ty/T_QS6Dw1v|vkCh8+R'),
       ('1fa7bae4-9696-49ca-bae4-8e2a5c040e76', '+9|,JVO!JdX:]jR#x!aI'),
       ('1fa7bae4-9696-49ca-bae4-8e2a5c040e76', 'Updh4`dmqWOl8d}M;g8y'),
       ('1fa7bae4-9696-49ca-bae4-8e2a5c040e76', 'OLwmiZHpPolvzIuV%J^~');

insert into `portal_solution_hint_key_code_blocks` (`portal_solution_hint_id`, `key_code_blocks`)
values ('5eff5cc2-16ed-40c1-bfae-05d739a34b7b', '+9|,JVO!JdX:]jR#x!aI'),
       ('5eff5cc2-16ed-40c1-bfae-05d739a34b7b', 'Updh4`dmqWOl8d}M;g8y');


-- Level 4 Hints

insert into `hint` (`id`, `hint_situation`, `level_id`)
values ('434f257a-540b-4295-83d0-6da981e42d95', 1, 'c0259e5d-0563-4b06-8c03-4e348b98f3f7');


insert into `hint_hint_texts` (`hint_id`, `hint_texts`, `hint_texts_key`)
values ('434f257a-540b-4295-83d0-6da981e42d95', 'hint_level_4_first_0', 0),
       ('434f257a-540b-4295-83d0-6da981e42d95', 'hint_level_4_first_1', 1),
       ('434f257a-540b-4295-83d0-6da981e42d95', 'hint_level_4_first_2', 2),
       ('434f257a-540b-4295-83d0-6da981e42d95', 'hint_level_4_first_3', 3),
       ('434f257a-540b-4295-83d0-6da981e42d95', 'hint_level_4_first_4', 4),
       ('434f257a-540b-4295-83d0-6da981e42d95', 'hint_level_4_first_5', 5),
       ('434f257a-540b-4295-83d0-6da981e42d95', 'hint_level_4_first_6', 6),
       ('434f257a-540b-4295-83d0-6da981e42d95', 'hint_level_4_first_7', 7);



insert into `associated_coordinates` (`hint_id`, `x`, `y`, `associated_coordinates_key`)
values ('434f257a-540b-4295-83d0-6da981e42d95', 4, 5, 2),
       ('434f257a-540b-4295-83d0-6da981e42d95', 3, 5, 6);


insert into `associated_cut_blocks` (`id`, `hint_id`, `associated_cut_blocks_key`)
values ('ba419464-3f19-4c11-82ac-4d40733beb84', '434f257a-540b-4295-83d0-6da981e42d95', 0),
       ('75e0f0d9-5038-4a79-b777-024af6ff107a', '434f257a-540b-4295-83d0-6da981e42d95', 1),
       ('6a11048e-9ae6-44b9-9e40-56f6b285f274', '434f257a-540b-4295-83d0-6da981e42d95', 2),
       ('209669a4-1b88-4478-a76f-80c6c604534f', '434f257a-540b-4295-83d0-6da981e42d95', 3),
       ('8f0dfb20-d66b-43e4-a2f9-ccc72137b1ba', '434f257a-540b-4295-83d0-6da981e42d95', 7);



insert into `associated_cut_blocks_block_ids` (`associated_cut_blocks_id`, `block_ids`)
values ('ba419464-3f19-4c11-82ac-4d40733beb84', 'cut_head'),
       ('75e0f0d9-5038-4a79-b777-024af6ff107a', 'Updh4`dmqWOl8d}M;g8y'),
       ('75e0f0d9-5038-4a79-b777-024af6ff107a', 't4tBLuDD*Kn1I[pmCX=W'),
       ('6a11048e-9ae6-44b9-9e40-56f6b285f274', 'Updh4`dmqWOl8d}M;g8y'),
       ('209669a4-1b88-4478-a76f-80c6c604534f', 'Updh4`dmqWOl8d}M;g8y'),
       ('209669a4-1b88-4478-a76f-80c6c604534f', 'Z8^!mD3YRCbV;;69c.lN'),
       ('8f0dfb20-d66b-43e4-a2f9-ccc72137b1ba', 'Z8^!mD3YRCbV;;69c.lN'),
       ('8f0dfb20-d66b-43e4-a2f9-ccc72137b1ba', '^WeS:+8cg1i=J.7wfx{z');

insert into `associated_component_ids` (`id`, `hint_id`, `associated_component_ids_key`)
values ('435ceb6f-6dcc-4b05-be06-d98c1eca7b6b', '434f257a-540b-4295-83d0-6da981e42d95', 0),
       ('b8af7c0d-566b-41db-9bbc-0a4aaebb172b', '434f257a-540b-4295-83d0-6da981e42d95', 1),
       ('6b65095b-e280-455e-87a4-c03b467a8aed', '434f257a-540b-4295-83d0-6da981e42d95', 4);

insert into `associated_component_ids_component_ids` (`associated_component_ids_id`, `component_ids`)
values ('435ceb6f-6dcc-4b05-be06-d98c1eca7b6b', 'blockly_cut_div'),
       ('b8af7c0d-566b-41db-9bbc-0a4aaebb172b', 'blockly_cut_div'),
       ('6b65095b-e280-455e-87a4-c03b467a8aed', 'save_button');

insert into `portal_xmls` (`hint_id`, `portal_xml`, `portal_xml_key`)
values ('434f257a-540b-4295-83d0-6da981e42d95', '<xml xmlns="https://developers.google.com/blockly/xml"><block type="assert" id="%t)pLCtl+XEaCfYxBUiI" x="180" y="138"><value name="target"><block type="properties" id="Vu?}Z@_EnR.(,NN+Ejbu"><field name="properties">BODYCOLOR</field></block></value></block></xml>', 3),
       ('434f257a-540b-4295-83d0-6da981e42d95', '<xml xmlns="https://developers.google.com/blockly/xml"><block type="assert" id="%t)pLCtl+XEaCfYxBUiI" x="180" y="138"><value name="target"><block type="properties" id="Vu?}Z@_EnR.(,NN+Ejbu"><field name="properties">BODYCOLOR</field></block></value></block></xml>', 7);

insert into `expected_clicked_coordinate` (`id`, `hint_id`, `expected_clicked_coordinates_key`)
values ('16e5edd3-0295-405f-9f4d-d306be992b1b', '434f257a-540b-4295-83d0-6da981e42d95', 2),
       ('8f5a5d42-d691-43a1-9745-1e027e816406','434f257a-540b-4295-83d0-6da981e42d95', 3),
       ('c5c4e26d-9197-4d1e-9fc1-202e19aaf0ed','434f257a-540b-4295-83d0-6da981e42d95', 6),
       ('e088e1f5-538d-4ce9-aa44-ed338cc1de1a','434f257a-540b-4295-83d0-6da981e42d95', 7);


insert into `expected_clicked_coordinate_coordinates` (`expected_clicked_coordinate_id`, `x`, `y`)
values ('16e5edd3-0295-405f-9f4d-d306be992b1b', 4, 5),
       ('8f5a5d42-d691-43a1-9745-1e027e816406', 4, 5),
       ('c5c4e26d-9197-4d1e-9fc1-202e19aaf0ed', 3, 5),
       ('e088e1f5-538d-4ce9-aa44-ed338cc1de1a', 3, 5);


insert into `hint_expected_user_interaction` (`hint_id`, `expected_user_interaction`, `expected_user_interaction_key`)
values ('434f257a-540b-4295-83d0-6da981e42d95', 0, 2),
       ('434f257a-540b-4295-83d0-6da981e42d95', 1, 3),
       ('434f257a-540b-4295-83d0-6da981e42d95', 2, 4),
       ('434f257a-540b-4295-83d0-6da981e42d95', 0, 6);


insert into `hint_expected_portal_js_code` (`hint_id`, `expected_portal_js_code`, `expected_portal_js_code_key`)
values ('434f257a-540b-4295-83d0-6da981e42d95', 'if ((this.color) !== (\"red\")) {\n\tthis._killCritter(x, y, (this.color), (\"red\"));\n}\n', 3);

-- Start solution portals of level 4:

insert into `portal_solution_hint` (`id`, `name`, `level_id`)
values ('20bbd5b8-b772-4a37-96b9-8df962c763d1', 'portal_1', 'c0259e5d-0563-4b06-8c03-4e348b98f3f7'),
       ('933dd9c4-2418-4515-84a6-7c5ce1d6d06f', 'portal_2', 'c0259e5d-0563-4b06-8c03-4e348b98f3f7'),
       ('3343620f-b669-4e17-8e49-f9447c8481b8', 'portal_3', 'c0259e5d-0563-4b06-8c03-4e348b98f3f7'),
       ('19da2eec-61e7-46c5-b498-9eac2a8bf025', 'portal_4', 'c0259e5d-0563-4b06-8c03-4e348b98f3f7');


insert into `portal_solution_hint_possible_coordinates` (`portal_solution_hint_id`, `x`, `y`)
values ('20bbd5b8-b772-4a37-96b9-8df962c763d1', 3, 5),
       ('933dd9c4-2418-4515-84a6-7c5ce1d6d06f', 3, 10),
       ('933dd9c4-2418-4515-84a6-7c5ce1d6d06f', 4, 10),
       ('933dd9c4-2418-4515-84a6-7c5ce1d6d06f', 5, 10),
       ('933dd9c4-2418-4515-84a6-7c5ce1d6d06f', 6, 10),
       ('933dd9c4-2418-4515-84a6-7c5ce1d6d06f', 7, 10),
       ('933dd9c4-2418-4515-84a6-7c5ce1d6d06f', 8, 10),
       ('3343620f-b669-4e17-8e49-f9447c8481b8', 4, 5),
       ('3343620f-b669-4e17-8e49-f9447c8481b8', 5, 5),
       ('3343620f-b669-4e17-8e49-f9447c8481b8', 6, 5),
       ('3343620f-b669-4e17-8e49-f9447c8481b8', 7, 5),
       ('3343620f-b669-4e17-8e49-f9447c8481b8', 8, 5),
       ('3343620f-b669-4e17-8e49-f9447c8481b8', 9, 5),
       ('3343620f-b669-4e17-8e49-f9447c8481b8', 10, 5),
       ('3343620f-b669-4e17-8e49-f9447c8481b8', 11, 5),
       ('3343620f-b669-4e17-8e49-f9447c8481b8', 11, 6),
       ('3343620f-b669-4e17-8e49-f9447c8481b8', 11, 7),
       ('3343620f-b669-4e17-8e49-f9447c8481b8', 11, 8),
       ('3343620f-b669-4e17-8e49-f9447c8481b8', 12, 8),
       ('3343620f-b669-4e17-8e49-f9447c8481b8', 13, 8),
       ('19da2eec-61e7-46c5-b498-9eac2a8bf025', 9, 10),
       ('19da2eec-61e7-46c5-b498-9eac2a8bf025', 10, 10),
       ('19da2eec-61e7-46c5-b498-9eac2a8bf025', 11, 10),
       ('19da2eec-61e7-46c5-b498-9eac2a8bf025', 11, 9),
       ('19da2eec-61e7-46c5-b498-9eac2a8bf025', 11, 8),
       ('19da2eec-61e7-46c5-b498-9eac2a8bf025', 12, 8),
       ('19da2eec-61e7-46c5-b498-9eac2a8bf025', 13, 8);


insert into `portal_solution_xmls` (`portal_solution_hint_id`, `portal_solution_xml`)
values ('20bbd5b8-b772-4a37-96b9-8df962c763d1', '<xml xmlns="http://www.w3.org/1999/xhtml"><block type="assert" id="assert_id" x="180" y="138"><value name="target"><block type="properties" id="Vu?}Z@_EnR.(,NN+Ejbu"><field name="properties">BODYCOLOR</field></block></value><value name="value"></value></block></xml>'),
       ('933dd9c4-2418-4515-84a6-7c5ce1d6d06f', '<xml xmlns="http://www.w3.org/1999/xhtml"><block type="assert" id="assert_id" x="180" y="138"><value name="target"><block type="properties" id="Vu?}Z@_EnR.(,NN+Ejbu"><field name="properties">BODYCOLOR</field></block></value><value name="value"></value></block></xml>'),
       ('3343620f-b669-4e17-8e49-f9447c8481b8', '<xml xmlns="http://www.w3.org/1999/xhtml"><block type="assert" id="assert_id" x="180" y="138"><value name="target"><block type="properties" id="Vu?}Z@_EnR.(,NN+Ejbu"><field name="properties">BODYCOLOR</field></block></value><value name="value"></value></block></xml>'),
       ('19da2eec-61e7-46c5-b498-9eac2a8bf025', '<xml xmlns="http://www.w3.org/1999/xhtml"><block type="assert" id="assert_id" x="180" y="138"><value name="target"><block type="properties" id="Vu?}Z@_EnR.(,NN+Ejbu"><field name="properties">BODYCOLOR</field></block></value><value name="value"></value></block></xml>');


insert into `portal_solution_hint_associated_component_ids` (`portal_solution_hint_id`, `associated_component_ids`)
values ('20bbd5b8-b772-4a37-96b9-8df962c763d1', 'blockly_cut_div'),
       ('933dd9c4-2418-4515-84a6-7c5ce1d6d06f', 'blockly_cut_div'),
       ('3343620f-b669-4e17-8e49-f9447c8481b8', 'blockly_cut_div'),
       ('19da2eec-61e7-46c5-b498-9eac2a8bf025', 'blockly_cut_div');


insert into `portal_solution_hint_code_block_to_be_tested` (`portal_solution_hint_id`, `code_block_to_be_tested`)
values ('20bbd5b8-b772-4a37-96b9-8df962c763d1', 'Updh4`dmqWOl8d}M;g8y'),
       ('20bbd5b8-b772-4a37-96b9-8df962c763d1', 't4tBLuDD*Kn1I[pmCX=W'),
       ('20bbd5b8-b772-4a37-96b9-8df962c763d1', '^WeS:+8cg1i=J.7wfx{z'),
       ('933dd9c4-2418-4515-84a6-7c5ce1d6d06f', 'Updh4`dmqWOl8d}M;g8y'),
       ('933dd9c4-2418-4515-84a6-7c5ce1d6d06f', 't4tBLuDD*Kn1I[pmCX=W'),
       ('933dd9c4-2418-4515-84a6-7c5ce1d6d06f', '^WeS:+8cg1i=J.7wfx{z'),
       ('3343620f-b669-4e17-8e49-f9447c8481b8', 'Updh4`dmqWOl8d}M;g8y'),
       ('3343620f-b669-4e17-8e49-f9447c8481b8', 't4tBLuDD*Kn1I[pmCX=W'),
       ('3343620f-b669-4e17-8e49-f9447c8481b8', 'Z8^!mD3YRCbV;;69c.lN'),
       ('19da2eec-61e7-46c5-b498-9eac2a8bf025', 'Updh4`dmqWOl8d}M;g8y'),
       ('19da2eec-61e7-46c5-b498-9eac2a8bf025', 't4tBLuDD*Kn1I[pmCX=W'),
       ('19da2eec-61e7-46c5-b498-9eac2a8bf025', 'Z8^!mD3YRCbV;;69c.lN');

insert into `portal_solution_hint_key_code_blocks` (`portal_solution_hint_id`, `key_code_blocks`)
values ('20bbd5b8-b772-4a37-96b9-8df962c763d1', 'Updh4`dmqWOl8d}M;g8y'),
       ('20bbd5b8-b772-4a37-96b9-8df962c763d1', 't4tBLuDD*Kn1I[pmCX=W'),
       ('20bbd5b8-b772-4a37-96b9-8df962c763d1', '*|P!_sW+Ayh},Pp46w]:');


-- Level 5 Hints

insert into `hint` (`id`, `hint_situation`, `level_id`)
values ('b93ad23d-e346-4720-9c11-73cf67080412', 1, '6a0c24f5-4744-4de5-9ea5-5a19a659ac9f');

insert into `hint_hint_texts` (`hint_id`, `hint_texts`, `hint_texts_key`)
values ('b93ad23d-e346-4720-9c11-73cf67080412', 'hint_level_5_first_0', 0),
       ('b93ad23d-e346-4720-9c11-73cf67080412', 'hint_level_5_first_1', 1),
       ('b93ad23d-e346-4720-9c11-73cf67080412', 'hint_level_5_first_2', 2),
       ('b93ad23d-e346-4720-9c11-73cf67080412', 'hint_level_5_first_3', 3),
       ('b93ad23d-e346-4720-9c11-73cf67080412', 'hint_level_5_first_4', 4),
       ('b93ad23d-e346-4720-9c11-73cf67080412', 'hint_level_5_first_5', 5),
       ('b93ad23d-e346-4720-9c11-73cf67080412', 'hint_level_5_first_6', 6);

insert into `associated_coordinates` (`hint_id`, `x`, `y`, `associated_coordinates_key`)
values ('b93ad23d-e346-4720-9c11-73cf67080412', 11, 3, 3);

insert into `associated_cut_blocks` (`id`, `hint_id`, `associated_cut_blocks_key`)
values ('14cc62b7-6305-4d18-a8ac-9c62bcf22fbe', 'b93ad23d-e346-4720-9c11-73cf67080412', 0),
       ('1c0bdd30-23b4-499c-bc75-35170e727c1b', 'b93ad23d-e346-4720-9c11-73cf67080412', 1),
       ('0b8bd4da-3113-45ed-81d9-d9ab375f7945', 'b93ad23d-e346-4720-9c11-73cf67080412', 2),
       ('39bdbdcb-d01c-4ac0-a090-d803b60baf6c', 'b93ad23d-e346-4720-9c11-73cf67080412', 3),
       ('d8db1c67-90df-4446-9195-716116dd99c3', 'b93ad23d-e346-4720-9c11-73cf67080412', 4),
       ('ddfd45d4-3bd4-423b-b96a-f00e948a8ad5', 'b93ad23d-e346-4720-9c11-73cf67080412', 6);

insert into `associated_cut_blocks_block_ids` (`associated_cut_blocks_id`, `block_ids`)
values ('14cc62b7-6305-4d18-a8ac-9c62bcf22fbe', 'cut_head'),
       ('14cc62b7-6305-4d18-a8ac-9c62bcf22fbe', '.N#$huRFJ^mEn.eXEy/N'),
       ('1c0bdd30-23b4-499c-bc75-35170e727c1b', 'Updh4`dmqWOl8d}M;g8y'),
       ('0b8bd4da-3113-45ed-81d9-d9ab375f7945', 'XwD;1#QhZluxc`X$JH`|'),
       ('39bdbdcb-d01c-4ac0-a090-d803b60baf6c', 'XwD;1#QhZluxc`X$JH`|'),
       ('d8db1c67-90df-4446-9195-716116dd99c3', 'XwD;1#QhZluxc`X$JH`|'),
       ('d8db1c67-90df-4446-9195-716116dd99c3', 'GihH|ql6b`XT8r@X]M,e'),
       ('ddfd45d4-3bd4-423b-b96a-f00e948a8ad5', 'id@x+7qO,?$2rHWO6zs.'),
       ('ddfd45d4-3bd4-423b-b96a-f00e948a8ad5', 'GihH|ql6b`XT8r@X]M,e');

insert into `associated_component_ids` (`id`, `hint_id`, `associated_component_ids_key`)
values ('097db596-e48f-4d58-ba1f-153c4ddf6eb7', 'b93ad23d-e346-4720-9c11-73cf67080412', 0),
       ('23b3f6e3-b108-4260-9a09-8be295e6ad50', 'b93ad23d-e346-4720-9c11-73cf67080412', 1),
       ('97355889-9ba5-4d88-877b-ab978de1d59b', 'b93ad23d-e346-4720-9c11-73cf67080412', 2),
       ('a390272f-c806-498e-8e52-72c877c82ad2', 'b93ad23d-e346-4720-9c11-73cf67080412', 5);

insert into `associated_component_ids_component_ids` (`associated_component_ids_id`, `component_ids`)
values ('097db596-e48f-4d58-ba1f-153c4ddf6eb7', 'blockly_cut_div'),
       ('23b3f6e3-b108-4260-9a09-8be295e6ad50', 'blockly_cut_div'),
       ('97355889-9ba5-4d88-877b-ab978de1d59b', 'blockly_cut_div'),
       ('a390272f-c806-498e-8e52-72c877c82ad2', 'save_button');

insert into `portal_xmls` (`hint_id`, `portal_xml`, `portal_xml_key`)
values ('b93ad23d-e346-4720-9c11-73cf67080412', '<xml xmlns="https://developers.google.com/blockly/xml"><block type="assert" id="%t)pLCtl+XEaCfYxBUiI" x="180" y="138"><value name="target"><block type="properties" id="Vu?}Z@_EnR.(,NN+Ejbu"><field name="properties">BODYCOLOR</field></block></value></block></xml>', 4);

insert into `expected_clicked_coordinate` (`id`, `hint_id`, `expected_clicked_coordinates_key`)
values ('ba1ab551-302d-4684-8f58-3faf4e865c72','b93ad23d-e346-4720-9c11-73cf67080412', 3),
       ('36fda705-3511-45ef-b4b1-f0c318cf92a6','b93ad23d-e346-4720-9c11-73cf67080412', 4);

insert into `expected_clicked_coordinate_coordinates` (`expected_clicked_coordinate_id`, `x`, `y`)
values ('ba1ab551-302d-4684-8f58-3faf4e865c72', 8, 3),
       ('ba1ab551-302d-4684-8f58-3faf4e865c72', 9, 3),
       ('ba1ab551-302d-4684-8f58-3faf4e865c72', 10, 3),
       ('ba1ab551-302d-4684-8f58-3faf4e865c72', 11, 3),
       ('ba1ab551-302d-4684-8f58-3faf4e865c72', 12, 3),
       ('ba1ab551-302d-4684-8f58-3faf4e865c72', 13, 3),
       ('ba1ab551-302d-4684-8f58-3faf4e865c72', 14, 3),
       ('36fda705-3511-45ef-b4b1-f0c318cf92a6', 11, 3);

insert into `hint_expected_user_interaction` (`hint_id`, `expected_user_interaction`, `expected_user_interaction_key`)
values ('b93ad23d-e346-4720-9c11-73cf67080412', 0, 3),
       ('b93ad23d-e346-4720-9c11-73cf67080412', 1, 4),
       ('b93ad23d-e346-4720-9c11-73cf67080412', 2, 5);

insert into `hint_expected_portal_js_code` (`hint_id`, `expected_portal_js_code`, `expected_portal_js_code_key`)
values ('b93ad23d-e346-4720-9c11-73cf67080412', 'if ((this.color) !== (\"red\")) {\n\tthis._killCritter(x, y, (this.color), (\"red\"));\n}\n', 4);


-- Start solution portals of level 5:

insert into `portal_solution_hint` (`id`, `name`, `level_id`)
values ('52982f59-c9bd-4cde-bca9-2b2dac8c9a8b', 'portal_1', '6a0c24f5-4744-4de5-9ea5-5a19a659ac9f'),
       ('cd77b186-b593-4bf8-b241-889cfb21401a', 'portal_2', '6a0c24f5-4744-4de5-9ea5-5a19a659ac9f'),
       ('adffa6c8-2fb5-4772-8370-fea6fa5cb466', 'portal_3', '6a0c24f5-4744-4de5-9ea5-5a19a659ac9f');

insert into `portal_solution_hint_possible_coordinates` (`portal_solution_hint_id`, `x`, `y`)
values ('52982f59-c9bd-4cde-bca9-2b2dac8c9a8b', 2, 8),
       ('52982f59-c9bd-4cde-bca9-2b2dac8c9a8b', 8, 5),
       ('52982f59-c9bd-4cde-bca9-2b2dac8c9a8b', 9, 5),
       ('52982f59-c9bd-4cde-bca9-2b2dac8c9a8b', 8, 4),
       ('52982f59-c9bd-4cde-bca9-2b2dac8c9a8b', 9, 4),
       ('cd77b186-b593-4bf8-b241-889cfb21401a', 3, 8),
       ('cd77b186-b593-4bf8-b241-889cfb21401a', 4, 8),
       ('cd77b186-b593-4bf8-b241-889cfb21401a', 5, 8),
       ('cd77b186-b593-4bf8-b241-889cfb21401a', 6, 8),
       ('cd77b186-b593-4bf8-b241-889cfb21401a', 7, 8),
       ('cd77b186-b593-4bf8-b241-889cfb21401a', 8, 8),
       ('cd77b186-b593-4bf8-b241-889cfb21401a', 9, 8),
       ('cd77b186-b593-4bf8-b241-889cfb21401a', 9, 7),
       ('cd77b186-b593-4bf8-b241-889cfb21401a', 8, 7),
       ('cd77b186-b593-4bf8-b241-889cfb21401a', 9, 6),
       ('cd77b186-b593-4bf8-b241-889cfb21401a', 8, 6),
       ('adffa6c8-2fb5-4772-8370-fea6fa5cb466', 8, 3),
       ('adffa6c8-2fb5-4772-8370-fea6fa5cb466', 9, 3),
       ('adffa6c8-2fb5-4772-8370-fea6fa5cb466', 10, 3),
       ('adffa6c8-2fb5-4772-8370-fea6fa5cb466', 11, 3),
       ('adffa6c8-2fb5-4772-8370-fea6fa5cb466', 12, 3),
       ('adffa6c8-2fb5-4772-8370-fea6fa5cb466', 13, 3),
       ('adffa6c8-2fb5-4772-8370-fea6fa5cb466', 14, 3);


insert into `portal_solution_xmls` (`portal_solution_hint_id`, `portal_solution_xml`)
values ('52982f59-c9bd-4cde-bca9-2b2dac8c9a8b', '<xml xmlns="http://www.w3.org/1999/xhtml"><block type="assert" id="assert_id" x="180" y="138"><value name="target"><block type="properties" id="Vu?}Z@_EnR.(,NN+Ejbu"><field name="properties">BODYCOLOR</field></block></value><value name="value"></value></block></xml>'),
       ('cd77b186-b593-4bf8-b241-889cfb21401a', '<xml xmlns="http://www.w3.org/1999/xhtml"><block type="assert" id="assert_id" x="180" y="138"><value name="target"><block type="properties" id="Vu?}Z@_EnR.(,NN+Ejbu"><field name="properties">BODYCOLOR</field></block></value><value name="value"></value></block></xml>'),
       ('adffa6c8-2fb5-4772-8370-fea6fa5cb466', '<xml xmlns="http://www.w3.org/1999/xhtml"><block type="assert" id="assert_id" x="180" y="138"><value name="target"><block type="properties" id="Vu?}Z@_EnR.(,NN+Ejbu"><field name="properties">BODYCOLOR</field></block></value><value name="value"></value></block></xml>');

insert into `portal_solution_hint_associated_component_ids` (`portal_solution_hint_id`, `associated_component_ids`)
values ('52982f59-c9bd-4cde-bca9-2b2dac8c9a8b', 'blockly_cut_div'),
       ('cd77b186-b593-4bf8-b241-889cfb21401a', 'blockly_cut_div'),
       ('adffa6c8-2fb5-4772-8370-fea6fa5cb466', 'blockly_cut_div');

insert into `portal_solution_hint_code_block_to_be_tested` (`portal_solution_hint_id`, `code_block_to_be_tested`)
values ('52982f59-c9bd-4cde-bca9-2b2dac8c9a8b', 'Updh4`dmqWOl8d}M;g8y'),
       ('52982f59-c9bd-4cde-bca9-2b2dac8c9a8b', 'XwD;1#QhZluxc`X$JH`|'),
       ('52982f59-c9bd-4cde-bca9-2b2dac8c9a8b', 'id@x+7qO,?$2rHWO6zs.'),
       ('cd77b186-b593-4bf8-b241-889cfb21401a', 'Updh4`dmqWOl8d}M;g8y'),
       ('cd77b186-b593-4bf8-b241-889cfb21401a', 'XwD;1#QhZluxc`X$JH`|'),
       ('cd77b186-b593-4bf8-b241-889cfb21401a', 'GihH|ql6b`XT8r@X]M,e'),
       ('adffa6c8-2fb5-4772-8370-fea6fa5cb466', 'Updh4`dmqWOl8d}M;g8y'),
       ('adffa6c8-2fb5-4772-8370-fea6fa5cb466', 'XwD;1#QhZluxc`X$JH`|'),
       ('adffa6c8-2fb5-4772-8370-fea6fa5cb466', 'GihH|ql6b`XT8r@X]M,e');

insert into `portal_solution_hint_key_code_blocks` (`portal_solution_hint_id`, `key_code_blocks`)
values ('52982f59-c9bd-4cde-bca9-2b2dac8c9a8b', 'Updh4`dmqWOl8d}M;g8y'),
       ('52982f59-c9bd-4cde-bca9-2b2dac8c9a8b', 'XwD;1#QhZluxc`X$JH`|'),
       ('52982f59-c9bd-4cde-bca9-2b2dac8c9a8b', 'mHm:h;%c4ptJkyGwVN2O');


-- Level 6 Hints

insert into `hint` (`id`, `hint_situation`, `level_id`)
values ('a2dcfc67-79c5-4537-9945-4aa69588b870', 1, '2e2dfb4e-c5b7-4f1d-b531-9fd2e1ebe35b');

insert into `hint_hint_texts` (`hint_id`, `hint_texts`, `hint_texts_key`)
values ('a2dcfc67-79c5-4537-9945-4aa69588b870', 'hint_level_6_first_0', 0),
       ('a2dcfc67-79c5-4537-9945-4aa69588b870', 'hint_level_6_first_1', 1),
       ('a2dcfc67-79c5-4537-9945-4aa69588b870', 'hint_level_6_first_2', 2),
       ('a2dcfc67-79c5-4537-9945-4aa69588b870', 'hint_level_6_first_3', 3),
       ('a2dcfc67-79c5-4537-9945-4aa69588b870', 'hint_level_6_first_4', 4),
       ('a2dcfc67-79c5-4537-9945-4aa69588b870', 'hint_level_6_first_5', 5),
       ('a2dcfc67-79c5-4537-9945-4aa69588b870', 'hint_level_6_first_6', 6),
       ('a2dcfc67-79c5-4537-9945-4aa69588b870', 'hint_level_6_first_7', 7),
       ('a2dcfc67-79c5-4537-9945-4aa69588b870', 'hint_level_6_first_8', 8);


insert into `associated_coordinates` (`hint_id`, `x`, `y`, `associated_coordinates_key`)
values ('a2dcfc67-79c5-4537-9945-4aa69588b870', 4, 8, 5),
       ('a2dcfc67-79c5-4537-9945-4aa69588b870', 11, 8, 8);

insert into `associated_cut_blocks` (`id`, `hint_id`, `associated_cut_blocks_key`)
values ('328b79aa-5b88-492b-baf7-a9e6d06842a8', 'a2dcfc67-79c5-4537-9945-4aa69588b870', 0),
       ('38c7cd22-f08c-4d41-8a96-58f5e373af97', 'a2dcfc67-79c5-4537-9945-4aa69588b870', 1),
       ('ed07b4f9-97eb-4d8a-a14c-3e8189dac85c', 'a2dcfc67-79c5-4537-9945-4aa69588b870', 2),
       ('ab604ba5-35ef-4c7b-a666-e2b5543a106a', 'a2dcfc67-79c5-4537-9945-4aa69588b870', 3),
       ('89181a68-f319-4df8-911a-4b6e7a21ab9a', 'a2dcfc67-79c5-4537-9945-4aa69588b870', 4),
       ('45f2ba20-63b3-4581-95e1-95b4b440fb28', 'a2dcfc67-79c5-4537-9945-4aa69588b870', 6);

insert into `associated_cut_blocks_block_ids` (`associated_cut_blocks_id`, `block_ids`)
values ('328b79aa-5b88-492b-baf7-a9e6d06842a8', 'KMXRPd!3ux/ppN_-hVd/'),
       ('328b79aa-5b88-492b-baf7-a9e6d06842a8', '`_aPJqWQ}n((w^J2MJ}q'),
       ('328b79aa-5b88-492b-baf7-a9e6d06842a8', 'R2h|y#opO)b|D_v`,N+x'),
       ('38c7cd22-f08c-4d41-8a96-58f5e373af97', 'KMXRPd!3ux/ppN_-hVd/'),
       ('38c7cd22-f08c-4d41-8a96-58f5e373af97', '`_aPJqWQ}n((w^J2MJ}q'),
       ('38c7cd22-f08c-4d41-8a96-58f5e373af97', 'R2h|y#opO)b|D_v`,N+x'),
       ('ed07b4f9-97eb-4d8a-a14c-3e8189dac85c', 'init_head'),
       ('ed07b4f9-97eb-4d8a-a14c-3e8189dac85c', 'R2h|y#opO)b|D_v`,N+x'),
       ('ab604ba5-35ef-4c7b-a666-e2b5543a106a', 'cut_head'),
       ('ab604ba5-35ef-4c7b-a666-e2b5543a106a', 'KMXRPd!3ux/ppN_-hVd/"'),
       ('ab604ba5-35ef-4c7b-a666-e2b5543a106a', 'M]Qfng[KcxW;Qdz%;CdX'),
       ('89181a68-f319-4df8-911a-4b6e7a21ab9a', 'init_head'),
       ('89181a68-f319-4df8-911a-4b6e7a21ab9a', 'cut_head'),
       ('45f2ba20-63b3-4581-95e1-95b4b440fb28', 'cut_head'),
       ('45f2ba20-63b3-4581-95e1-95b4b440fb28', 'Updh4`dmqWOl8d}M;g8y'),
       ('45f2ba20-63b3-4581-95e1-95b4b440fb28', 'kVNiRl]o~mYZv@6Bwr(|');

insert into `associated_component_ids` (`id`, `hint_id`, `associated_component_ids_key`)
values ('2e0a0b8e-963a-4b0a-85d6-38527209d958', 'a2dcfc67-79c5-4537-9945-4aa69588b870', 0),
       ('72b60494-a133-4f14-a60c-13c230547d6e', 'a2dcfc67-79c5-4537-9945-4aa69588b870', 1),
       ('9fe29651-2328-4a35-b24c-480e0051af94', 'a2dcfc67-79c5-4537-9945-4aa69588b870', 2),
       ('54c7a826-1953-491a-b547-0ec43919cdef', 'a2dcfc67-79c5-4537-9945-4aa69588b870', 3),
       ('b9bd4917-2a21-4eb5-b688-43bbf597ae5b', 'a2dcfc67-79c5-4537-9945-4aa69588b870', 4),
       ('470581b7-c456-4b31-9d35-7a16612a2647', 'a2dcfc67-79c5-4537-9945-4aa69588b870', 7);

insert into `associated_component_ids_component_ids` (`associated_component_ids_id`, `component_ids`)
values ('2e0a0b8e-963a-4b0a-85d6-38527209d958', 'blockly_cut_div'),
       ('72b60494-a133-4f14-a60c-13c230547d6e', 'blockly_cut_div'),
       ('9fe29651-2328-4a35-b24c-480e0051af94', 'blockly_cut_div'),
       ('b9bd4917-2a21-4eb5-b688-43bbf597ae5b', 'blockly_cut_div'),
       ('54c7a826-1953-491a-b547-0ec43919cdef', 'blockly_cut_div'),
       ('470581b7-c456-4b31-9d35-7a16612a2647', 'save_button');

insert into `portal_xmls` (`hint_id`, `portal_xml`, `portal_xml_key`)
values ('a2dcfc67-79c5-4537-9945-4aa69588b870', '<xml xmlns="https://developers.google.com/blockly/xml"><block type="assert" id="bey|2W?6wQEq[JKuz[JB" x="-243" y="-33"><value name="target"><block type="variable" id="eKFwaKp-G1yVvY5wvQmH"><field name="NAME">count</field></block></value><value name="value"></value></block></xml>', 6);

insert into `expected_clicked_coordinate` (`id`, `hint_id`, `expected_clicked_coordinates_key`)
values ('31272ad9-5503-4714-87ac-600d70a44dc7','a2dcfc67-79c5-4537-9945-4aa69588b870', 5),
       ('aab664d2-9720-4b57-9434-a1ac7abbd785','a2dcfc67-79c5-4537-9945-4aa69588b870', 6);

insert into `expected_clicked_coordinate_coordinates` (`expected_clicked_coordinate_id`, `x`, `y`)
values ('31272ad9-5503-4714-87ac-600d70a44dc7', 4, 8),
       ('aab664d2-9720-4b57-9434-a1ac7abbd785', 4, 8);

insert into `hint_expected_user_interaction` (`hint_id`, `expected_user_interaction`, `expected_user_interaction_key`)
values ('a2dcfc67-79c5-4537-9945-4aa69588b870', 0, 5),
       ('a2dcfc67-79c5-4537-9945-4aa69588b870', 1, 6),
       ('a2dcfc67-79c5-4537-9945-4aa69588b870', 2, 7);

insert into `hint_expected_portal_js_code` (`hint_id`, `expected_portal_js_code`, `expected_portal_js_code_key`)
values ('a2dcfc67-79c5-4537-9945-4aa69588b870', 'if ((this.variable_count) !== 1) {\n\tthis._killCritter(x, y, (this.variable_count), 1);\n}\n', 6);

-- Start solution portals of level 6:

insert into `portal_solution_hint` (`id`, `name`, `level_id`)
values ('f53119db-4237-48be-a8be-fdb6a5deb00b', 'portal_1', '2e2dfb4e-c5b7-4f1d-b531-9fd2e1ebe35b'),
       ('c4d05211-e638-4fdf-9772-8d3a7b0e1363', 'portal_2', '2e2dfb4e-c5b7-4f1d-b531-9fd2e1ebe35b');


insert into `portal_solution_hint_possible_coordinates` (`portal_solution_hint_id`, `x`, `y`)
values ('f53119db-4237-48be-a8be-fdb6a5deb00b', 3, 8),
       ('c4d05211-e638-4fdf-9772-8d3a7b0e1363', 4, 8),
       ('c4d05211-e638-4fdf-9772-8d3a7b0e1363', 5, 8),
       ('c4d05211-e638-4fdf-9772-8d3a7b0e1363', 6, 8),
       ('c4d05211-e638-4fdf-9772-8d3a7b0e1363', 7, 8),
       ('c4d05211-e638-4fdf-9772-8d3a7b0e1363', 8, 8),
       ('c4d05211-e638-4fdf-9772-8d3a7b0e1363', 9, 8),
       ('c4d05211-e638-4fdf-9772-8d3a7b0e1363', 10, 8),
       ('c4d05211-e638-4fdf-9772-8d3a7b0e1363', 11, 8),
       ('c4d05211-e638-4fdf-9772-8d3a7b0e1363', 12, 8),
       ('c4d05211-e638-4fdf-9772-8d3a7b0e1363', 13, 8);

insert into `portal_solution_xmls` (`portal_solution_hint_id`, `portal_solution_xml`)
values ('f53119db-4237-48be-a8be-fdb6a5deb00b', '<xml xmlns="https://developers.google.com/blockly/xml"><block type="assert" id="bey|2W?6wQEq[JKuz[JB" x="-243" y="-33"><value name="target"><block type="variable" id="eKFwaKp-G1yVvY5wvQmH"><field name="NAME">count</field></block></value><value name="value"></value></block></xml>'),
       ('c4d05211-e638-4fdf-9772-8d3a7b0e1363', '<xml xmlns="https://developers.google.com/blockly/xml"><block type="assert" id="bey|2W?6wQEq[JKuz[JB" x="-243" y="-33"><value name="target"><block type="variable" id="eKFwaKp-G1yVvY5wvQmH"><field name="NAME">count</field></block></value><value name="value"></value></block></xml>');


insert into `portal_solution_hint_associated_component_ids` (`portal_solution_hint_id`, `associated_component_ids`)
values ('f53119db-4237-48be-a8be-fdb6a5deb00b', 'blockly_cut_div'),
       ('c4d05211-e638-4fdf-9772-8d3a7b0e1363', 'blockly_cut_div');


insert into `portal_solution_hint_code_block_to_be_tested` (`portal_solution_hint_id`, `code_block_to_be_tested`)
values ('f53119db-4237-48be-a8be-fdb6a5deb00b', 'init_head'),
       ('f53119db-4237-48be-a8be-fdb6a5deb00b', 'OLQ=1JUp%13WuB`CCNRp'),
       ('c4d05211-e638-4fdf-9772-8d3a7b0e1363', 'cut_head'),
       ('c4d05211-e638-4fdf-9772-8d3a7b0e1363', 'kVNiRl]o~mYZv@6Bwr(|');

insert into `portal_solution_hint_key_code_blocks` (`portal_solution_hint_id`, `key_code_blocks`)
values ('c4d05211-e638-4fdf-9772-8d3a7b0e1363', 'OLQ=1JUp%13WuB`CCNRp'),
       ('c4d05211-e638-4fdf-9772-8d3a7b0e1363', 'kVNiRl]o~mYZv@6Bwr(|'),
       ('c4d05211-e638-4fdf-9772-8d3a7b0e1363', 'Updh4`dmqWOl8d}M;g8y');


-- Level 7 Hints

insert into `hint` (`id`, `hint_situation`, `level_id`)
values ('9bbcdc60-3d0b-4d7c-989f-30f91562ba06', 1, 'ada0d9e2-e58b-49ac-86c2-aa7da1203242');

insert into `hint_hint_texts` (`hint_id`, `hint_texts`, `hint_texts_key`)
values ('9bbcdc60-3d0b-4d7c-989f-30f91562ba06', 'hint_level_7_first_0', 0),
       ('9bbcdc60-3d0b-4d7c-989f-30f91562ba06', 'hint_level_7_first_1', 1),
       ('9bbcdc60-3d0b-4d7c-989f-30f91562ba06', 'hint_level_7_first_2', 2),
       ('9bbcdc60-3d0b-4d7c-989f-30f91562ba06', 'hint_level_7_first_3', 3),
       ('9bbcdc60-3d0b-4d7c-989f-30f91562ba06', 'hint_level_7_first_4', 4),
       ('9bbcdc60-3d0b-4d7c-989f-30f91562ba06', 'hint_level_7_first_5', 5),
       ('9bbcdc60-3d0b-4d7c-989f-30f91562ba06', 'hint_level_7_first_6', 6),
       ('9bbcdc60-3d0b-4d7c-989f-30f91562ba06', 'hint_level_7_first_7', 7);


insert into `associated_coordinates` (`hint_id`, `x`, `y`, `associated_coordinates_key`)
values ('9bbcdc60-3d0b-4d7c-989f-30f91562ba06', 14, 1, 0),
       ('9bbcdc60-3d0b-4d7c-989f-30f91562ba06', 12, 4, 4),
       ('9bbcdc60-3d0b-4d7c-989f-30f91562ba06', 3, 8, 7);


insert into `associated_cut_blocks` (`id`, `hint_id`, `associated_cut_blocks_key`)
values ('8eb70675-238b-4b4f-bfd1-53ef3a25d399', '9bbcdc60-3d0b-4d7c-989f-30f91562ba06', 1),
       ('63ac598c-49f6-49dd-9de3-39bf5627092d', '9bbcdc60-3d0b-4d7c-989f-30f91562ba06', 2),
       ('94de8506-5e3d-4ba5-9dbf-dd65be4c0287', '9bbcdc60-3d0b-4d7c-989f-30f91562ba06', 3),
       ('3f474800-f029-4393-b038-40f4e88e2eed', '9bbcdc60-3d0b-4d7c-989f-30f91562ba06', 4),
       ('92989138-4eca-4037-bfe3-e9ea61e0f695', '9bbcdc60-3d0b-4d7c-989f-30f91562ba06', 5),
       ('d70e9d0e-f22b-4b57-ad93-b5c9af13818c', '9bbcdc60-3d0b-4d7c-989f-30f91562ba06', 7);

insert into `associated_cut_blocks_block_ids` (`associated_cut_blocks_id`, `block_ids`)
values ('8eb70675-238b-4b4f-bfd1-53ef3a25d399', 'init_head'),
       ('8eb70675-238b-4b4f-bfd1-53ef3a25d399', ']7^BXIh2izW$t~-{~]jA'),
       ('63ac598c-49f6-49dd-9de3-39bf5627092d', 'cut_head'),
       ('94de8506-5e3d-4ba5-9dbf-dd65be4c0287', 'Aj,MsEN*%wQN=u*A#L%6'),
       ('94de8506-5e3d-4ba5-9dbf-dd65be4c0287', 'Updh4`dmqWOl8d}M;g8y'),
       ('94de8506-5e3d-4ba5-9dbf-dd65be4c0287', 'srBwD#*wF4g)vs!8lp80'),
       ('3f474800-f029-4393-b038-40f4e88e2eed', 'Aj,MsEN*%wQN=u*A#L%6'),
       ('3f474800-f029-4393-b038-40f4e88e2eed', 'Updh4`dmqWOl8d}M;g8y'),
       ('3f474800-f029-4393-b038-40f4e88e2eed', '545N`]E(Seaxry(^U9KZ'),
       ('92989138-4eca-4037-bfe3-e9ea61e0f695', 'Updh4`dmqWOl8d}M;g8y'),
       ('92989138-4eca-4037-bfe3-e9ea61e0f695', '545N`]E(Seaxry(^U9KZ'),
       ('d70e9d0e-f22b-4b57-ad93-b5c9af13818c', 'Aj,MsEN*%wQN=u*A#L%6'),
       ('d70e9d0e-f22b-4b57-ad93-b5c9af13818c', 'srBwD#*wF4g)vs!8lp80'),
       ('d70e9d0e-f22b-4b57-ad93-b5c9af13818c', 'Moi)J~?Qv#d_sXFYO}6z');

insert into `associated_component_ids` (`id`, `hint_id`, `associated_component_ids_key`)
values ('2acbecc9-97f1-47d7-8e7d-d5678abaecae', '9bbcdc60-3d0b-4d7c-989f-30f91562ba06', 1),
       ('6e9ddd3d-d48c-48a6-8c94-dc6241d195bb', '9bbcdc60-3d0b-4d7c-989f-30f91562ba06', 2),
       ('1432418c-f696-49c3-a0e1-a0bf384358d5', '9bbcdc60-3d0b-4d7c-989f-30f91562ba06', 3),
       ('62d50a76-8ecd-4c51-a9e0-bc3e0c98b49a', '9bbcdc60-3d0b-4d7c-989f-30f91562ba06', 4),
       ('8e864e60-d56d-4d01-a813-40547cd2b96f', '9bbcdc60-3d0b-4d7c-989f-30f91562ba06', 5),
       ('ec04f2a5-a808-496d-bc39-5a5afa1db11a', '9bbcdc60-3d0b-4d7c-989f-30f91562ba06', 6);

insert into `associated_component_ids_component_ids` (`associated_component_ids_id`, `component_ids`)
values ('2acbecc9-97f1-47d7-8e7d-d5678abaecae', 'blockly_cut_div'),
       ('6e9ddd3d-d48c-48a6-8c94-dc6241d195bb', 'blockly_cut_div'),
       ('1432418c-f696-49c3-a0e1-a0bf384358d5', 'blockly_cut_div'),
       ('62d50a76-8ecd-4c51-a9e0-bc3e0c98b49a', 'blockly_cut_div'),
       ('8e864e60-d56d-4d01-a813-40547cd2b96f', 'blockly_cut_div'),
       ('ec04f2a5-a808-496d-bc39-5a5afa1db11a', 'save_button');

insert into `portal_xmls` (`hint_id`, `portal_xml`, `portal_xml_key`)
values ('9bbcdc60-3d0b-4d7c-989f-30f91562ba06', '<xml xmlns="https://developers.google.com/blockly/xml"><block type="assert" id="%t)pLCtl+XEaCfYxBUiI" x="180" y="138"><value name="target"><block type="properties" id="Vu?}Z@_EnR.(,NN+Ejbu"><field name="properties">HATCOLOR</field></block></value></block></xml>', 5);

insert into `expected_clicked_coordinate` (`id`, `hint_id`, `expected_clicked_coordinates_key`)
values ('e8ac764d-bdda-4966-aabf-bb5bd6207e7d','9bbcdc60-3d0b-4d7c-989f-30f91562ba06', 4),
       ('e1e0c84a-ea5f-4cdb-95cf-920a2b13fcd1','9bbcdc60-3d0b-4d7c-989f-30f91562ba06', 5);

insert into `expected_clicked_coordinate_coordinates` (`expected_clicked_coordinate_id`, `x`, `y`)
values ('e8ac764d-bdda-4966-aabf-bb5bd6207e7d', 12, 4),
       ('e1e0c84a-ea5f-4cdb-95cf-920a2b13fcd1', 12, 4);

insert into `hint_expected_user_interaction` (`hint_id`, `expected_user_interaction`, `expected_user_interaction_key`)
values ('9bbcdc60-3d0b-4d7c-989f-30f91562ba06', 0, 4),
       ('9bbcdc60-3d0b-4d7c-989f-30f91562ba06', 1, 5),
       ('9bbcdc60-3d0b-4d7c-989f-30f91562ba06', 2, 6);

insert into `hint_expected_portal_js_code` (`hint_id`, `expected_portal_js_code`, `expected_portal_js_code_key`)
values ('9bbcdc60-3d0b-4d7c-989f-30f91562ba06', 'if ((this.hair) !== (\"blond\")) {\n\tthis._killCritter(x, y, (this.hair), (\"blond\"));\n}\n', 5);


-- Start solution portals of level 7:

insert into `portal_solution_hint` (`id`, `name`, `level_id`)
values ('f3d64619-1dfe-49a1-9482-c76933e5a59b', 'portal_1', 'ada0d9e2-e58b-49ac-86c2-aa7da1203242'),
       ('6fcc1c62-ab35-4688-afd9-cf1fa78205bb', 'portal_2', 'ada0d9e2-e58b-49ac-86c2-aa7da1203242'),
       ('dc99c555-a472-403f-8b1b-67338478b326', 'portal_3', 'ada0d9e2-e58b-49ac-86c2-aa7da1203242');

insert into `portal_solution_hint_possible_coordinates` (`portal_solution_hint_id`, `x`, `y`)
values ('f3d64619-1dfe-49a1-9482-c76933e5a59b', 12, 3),
       ('6fcc1c62-ab35-4688-afd9-cf1fa78205bb', 12, 4),
       ('6fcc1c62-ab35-4688-afd9-cf1fa78205bb', 12, 5),
       ('6fcc1c62-ab35-4688-afd9-cf1fa78205bb', 12, 6),
       ('6fcc1c62-ab35-4688-afd9-cf1fa78205bb', 12, 7),
       ('6fcc1c62-ab35-4688-afd9-cf1fa78205bb', 12, 8),
       ('6fcc1c62-ab35-4688-afd9-cf1fa78205bb', 11, 8),
       ('6fcc1c62-ab35-4688-afd9-cf1fa78205bb', 10, 8),
       ('6fcc1c62-ab35-4688-afd9-cf1fa78205bb', 9, 8),
       ('6fcc1c62-ab35-4688-afd9-cf1fa78205bb', 8, 8),
       ('6fcc1c62-ab35-4688-afd9-cf1fa78205bb', 7, 8),
       ('6fcc1c62-ab35-4688-afd9-cf1fa78205bb', 6, 8),
       ('6fcc1c62-ab35-4688-afd9-cf1fa78205bb', 5, 8),
       ('6fcc1c62-ab35-4688-afd9-cf1fa78205bb', 4, 8),
       ('dc99c555-a472-403f-8b1b-67338478b326', 3, 8);


insert into `portal_solution_xmls` (`portal_solution_hint_id`, `portal_solution_xml`)
values ('f3d64619-1dfe-49a1-9482-c76933e5a59b', '<xml xmlns="https://developers.google.com/blockly/xml"><block type="assert" id="%t)pLCtl+XEaCfYxBUiI" x="180" y="138"><value name="target"><block type="properties" id="Vu?}Z@_EnR.(,NN+Ejbu"><field name="properties">HATCOLOR</field></block></value></block></xml>'),
       ('6fcc1c62-ab35-4688-afd9-cf1fa78205bb', '<xml xmlns="https://developers.google.com/blockly/xml"><block type="assert" id="%t)pLCtl+XEaCfYxBUiI" x="180" y="138"><value name="target"><block type="properties" id="Vu?}Z@_EnR.(,NN+Ejbu"><field name="properties">HATCOLOR</field></block></value></block></xml>'),
       ('dc99c555-a472-403f-8b1b-67338478b326', '<xml xmlns="https://developers.google.com/blockly/xml"><block type="assert" id="%t)pLCtl+XEaCfYxBUiI" x="180" y="138"><value name="target"><block type="properties" id="Vu?}Z@_EnR.(,NN+Ejbu"><field name="properties">HATCOLOR</field></block></value></block></xml>');

insert into `portal_solution_hint_associated_component_ids` (`portal_solution_hint_id`, `associated_component_ids`)
values ('f3d64619-1dfe-49a1-9482-c76933e5a59b', 'blockly_cut_div'),
       ('6fcc1c62-ab35-4688-afd9-cf1fa78205bb', 'blockly_cut_div'),
       ('dc99c555-a472-403f-8b1b-67338478b326', 'blockly_cut_div');

insert into `portal_solution_hint_code_block_to_be_tested` (`portal_solution_hint_id`, `code_block_to_be_tested`)
values ('f3d64619-1dfe-49a1-9482-c76933e5a59b', 'init_head'),
       ('f3d64619-1dfe-49a1-9482-c76933e5a59b', ']7^BXIh2izW$t~-{~]jA'),
       ('6fcc1c62-ab35-4688-afd9-cf1fa78205bb', 'Updh4`dmqWOl8d}M;g8y'),
       ('6fcc1c62-ab35-4688-afd9-cf1fa78205bb', 'Aj,MsEN*%wQN=u*A#L%6'),
       ('6fcc1c62-ab35-4688-afd9-cf1fa78205bb', '545N`]E(Seaxry(^U9KZ'),
       ('dc99c555-a472-403f-8b1b-67338478b326', 'Aj,MsEN*%wQN=u*A#L%6'),
       ('dc99c555-a472-403f-8b1b-67338478b326', 'srBwD#*wF4g)vs!8lp80'),
       ('dc99c555-a472-403f-8b1b-67338478b326', 'Moi)J~?Qv#d_sXFYO}6z');

insert into `portal_solution_hint_key_code_blocks` (`portal_solution_hint_id`, `key_code_blocks`)
values ('f3d64619-1dfe-49a1-9482-c76933e5a59b', 'Updh4`dmqWOl8d}M;g8y'),
       ('f3d64619-1dfe-49a1-9482-c76933e5a59b', 'srBwD#*wF4g)vs!8lp80'),
       ('f3d64619-1dfe-49a1-9482-c76933e5a59b', 'Aj,MsEN*%wQN=u*A#L%6');


-- Level 8 Hints

insert into `hint` (`id`, `hint_situation`, `level_id`)
values ('16ee0701-1ebe-42e1-ba24-3dd3db336927', 1, 'e58109b2-a6fc-481c-901b-8659ae5595f0');

insert into `hint_hint_texts` (`hint_id`, `hint_texts`, `hint_texts_key`)
values ('16ee0701-1ebe-42e1-ba24-3dd3db336927', 'hint_level_8_first_0', 0),
       ('16ee0701-1ebe-42e1-ba24-3dd3db336927', 'hint_level_8_first_1', 1),
       ('16ee0701-1ebe-42e1-ba24-3dd3db336927', 'hint_level_8_first_2', 2),
       ('16ee0701-1ebe-42e1-ba24-3dd3db336927', 'hint_level_8_first_3', 3),
       ('16ee0701-1ebe-42e1-ba24-3dd3db336927', 'hint_level_8_first_4', 4),
       ('16ee0701-1ebe-42e1-ba24-3dd3db336927', 'hint_level_8_first_5', 5),
       ('16ee0701-1ebe-42e1-ba24-3dd3db336927', 'hint_level_8_first_6', 6),
       ('16ee0701-1ebe-42e1-ba24-3dd3db336927', 'hint_level_8_first_7', 7);


insert into `associated_coordinates` (`hint_id`, `x`, `y`, `associated_coordinates_key`)
values ('16ee0701-1ebe-42e1-ba24-3dd3db336927', 4, 2, 0),
       ('16ee0701-1ebe-42e1-ba24-3dd3db336927', 6, 1, 6);


insert into `associated_cut_blocks` (`id`, `hint_id`, `associated_cut_blocks_key`)
values ('7bd93d5c-cae4-4360-80a6-8aa88eb83f38', '16ee0701-1ebe-42e1-ba24-3dd3db336927', 0),
       ('ac298b7e-b8f7-41a9-aa01-7ff28896a3b2', '16ee0701-1ebe-42e1-ba24-3dd3db336927', 1),
       ('3dbab865-b4e3-44d3-8555-56e82f8c8e81', '16ee0701-1ebe-42e1-ba24-3dd3db336927', 2),
       ('bb107602-9efc-4e56-8d52-2542d6dcf1b2', '16ee0701-1ebe-42e1-ba24-3dd3db336927', 3),
       ('c64f05e6-1834-46d2-bcb8-bfa081c52e8f', '16ee0701-1ebe-42e1-ba24-3dd3db336927', 4),
       ('d67cc6a0-6a34-42d6-91ab-83a6e4312b54', '16ee0701-1ebe-42e1-ba24-3dd3db336927', 5),
       ('6c1f3abf-9448-4298-b464-17be42638760', '16ee0701-1ebe-42e1-ba24-3dd3db336927', 7);

insert into `associated_cut_blocks_block_ids` (`associated_cut_blocks_id`, `block_ids`)
values ('7bd93d5c-cae4-4360-80a6-8aa88eb83f38', 'init_head'),
       ('ac298b7e-b8f7-41a9-aa01-7ff28896a3b2', ';-ph;z589g?9jHL@E}{g'),
       ('ac298b7e-b8f7-41a9-aa01-7ff28896a3b2', 'MCl(?ZC0G|V1a=_zHjKu'),
       ('3dbab865-b4e3-44d3-8555-56e82f8c8e81', 'SpiZ:3XmUhQ~8Qy{n(?@'),
       ('3dbab865-b4e3-44d3-8555-56e82f8c8e81', '*`p%s~,OU^5?%ewaU^_@'),
       ('3dbab865-b4e3-44d3-8555-56e82f8c8e81', 'M@Y]kBu@*[}s=rh[2%l)'),
       ('3dbab865-b4e3-44d3-8555-56e82f8c8e81', 'Ql[X%g53ieYgrFE)iQnc'),
       ('bb107602-9efc-4e56-8d52-2542d6dcf1b2', '7x8FHP02j}R1Wg@`%qy_'),
       ('bb107602-9efc-4e56-8d52-2542d6dcf1b2', 'Updh4`dmqWOl8d}M;g8y'),
       ('bb107602-9efc-4e56-8d52-2542d6dcf1b2', 'x7sp^_mSPHQ/{m#x}Em-'),
       ('c64f05e6-1834-46d2-bcb8-bfa081c52e8f', 'O@liJ79}:}@pdV(DQAqa'),
       ('c64f05e6-1834-46d2-bcb8-bfa081c52e8f', 'pa)FbpBCr92Iv7n~PK,,'),
       ('c64f05e6-1834-46d2-bcb8-bfa081c52e8f', '?iS[Tstt^Ggz`|(yLsCZ'),
       ('d67cc6a0-6a34-42d6-91ab-83a6e4312b54', 'init_head'),
       ('6c1f3abf-9448-4298-b464-17be42638760', ';-ph;z589g?9jHL@E}{g'),
       ('6c1f3abf-9448-4298-b464-17be42638760', 'MCl(?ZC0G|V1a=_zHjKu');

insert into `associated_component_ids` (`id`, `hint_id`, `associated_component_ids_key`)
values ('e9191161-63f7-4c41-8add-f852f6257b71', '16ee0701-1ebe-42e1-ba24-3dd3db336927', 0),
       ('7ea5d85a-0c64-4493-88ef-ae012ab2690e', '16ee0701-1ebe-42e1-ba24-3dd3db336927', 1),
       ('ea74ebf6-9f82-45d4-9b65-ba2f9519aa46', '16ee0701-1ebe-42e1-ba24-3dd3db336927', 2),
       ('b019e00b-d5bb-42be-bad2-b75ac321c605', '16ee0701-1ebe-42e1-ba24-3dd3db336927', 3),
       ('f3867905-078e-484a-959a-ecf9a61a3274', '16ee0701-1ebe-42e1-ba24-3dd3db336927', 4),
       ('0932e0a8-a63c-4750-92a4-c48ef9238aea', '16ee0701-1ebe-42e1-ba24-3dd3db336927', 5);

insert into `associated_component_ids_component_ids` (`associated_component_ids_id`, `component_ids`)
values ('e9191161-63f7-4c41-8add-f852f6257b71', 'blockly_cut_div'),
       ('7ea5d85a-0c64-4493-88ef-ae012ab2690e', 'blockly_cut_div'),
       ('ea74ebf6-9f82-45d4-9b65-ba2f9519aa46', 'blockly_cut_div'),
       ('b019e00b-d5bb-42be-bad2-b75ac321c605', 'blockly_cut_div'),
       ('f3867905-078e-484a-959a-ecf9a61a3274', 'blockly_cut_div'),
       ('0932e0a8-a63c-4750-92a4-c48ef9238aea', 'blockly_cut_div');

insert into `portal_xmls` (`hint_id`, `portal_xml`, `portal_xml_key`)
values ('16ee0701-1ebe-42e1-ba24-3dd3db336927', '<xml xmlns="https://developers.google.com/blockly/xml"><block type="assert" id="}#+%0fk,!8M:m+G$+w:v" x="20" y="82"><value name="target"><block type="variable" id="VjGFId(3nm#F?6p?#Q7$"><field name="NAME">count</field></block></value><next><block type="assert" id="_nJ.|Me(0Q2T*P*XVJTG"><value name="target"><block type="properties_user" id="XqOa3dFO*OO+A-~U*eq4"><field name="properties">BODYCOLOR</field></block></value></block></next></block></xml>', 7);

insert into `expected_clicked_coordinate` (`id`, `hint_id`, `expected_clicked_coordinates_key`)
values ('4ffdb0a2-81d5-4dd2-bacf-fc2f4bfdad48','16ee0701-1ebe-42e1-ba24-3dd3db336927', 6),
       ('2be736a4-40b8-4611-8a13-e914f9bd133d','16ee0701-1ebe-42e1-ba24-3dd3db336927', 7);

insert into `expected_clicked_coordinate_coordinates` (`expected_clicked_coordinate_id`, `x`, `y`)
values ('4ffdb0a2-81d5-4dd2-bacf-fc2f4bfdad48', 6, 1),
       ('2be736a4-40b8-4611-8a13-e914f9bd133d', 6, 1);

insert into `hint_expected_user_interaction` (`hint_id`, `expected_user_interaction`, `expected_user_interaction_key`)
values ('16ee0701-1ebe-42e1-ba24-3dd3db336927', 0, 6);


-- Start solution portals of level 8:

insert into `portal_solution_hint` (`id`, `name`, `level_id`)
values ('27eeabc4-e7c3-4a7c-ad80-b75f90cf50cd', 'portal_1', 'e58109b2-a6fc-481c-901b-8659ae5595f0'),
       ('8863ea4a-6492-4d9a-9500-f861c03d42b9', 'portal_2', 'e58109b2-a6fc-481c-901b-8659ae5595f0');


insert into `portal_solution_hint_possible_coordinates` (`portal_solution_hint_id`, `x`, `y`)
values ('27eeabc4-e7c3-4a7c-ad80-b75f90cf50cd', 6, 1),
       ('8863ea4a-6492-4d9a-9500-f861c03d42b9', 7, 1),
       ('8863ea4a-6492-4d9a-9500-f861c03d42b9', 8, 1),
       ('8863ea4a-6492-4d9a-9500-f861c03d42b9', 9, 1),
       ('8863ea4a-6492-4d9a-9500-f861c03d42b9', 10, 1),
       ('8863ea4a-6492-4d9a-9500-f861c03d42b9', 11, 1);


insert into `portal_solution_xmls` (`portal_solution_hint_id`, `portal_solution_xml`)
values ('27eeabc4-e7c3-4a7c-ad80-b75f90cf50cd', '<xml xmlns="https://developers.google.com/blockly/xml"><block type="assert" id="}#+%0fk,!8M:m+G$+w:v" x="20" y="82"><value name="target"><block type="variable" id="VjGFId(3nm#F?6p?#Q7$"><field name="NAME">count</field></block></value><next><block type="assert" id="_nJ.|Me(0Q2T*P*XVJTG"><value name="target"><block type="properties_user" id="XqOa3dFO*OO+A-~U*eq4"><field name="properties">BODYCOLOR</field></block></value></block></next></block></xml>'),
       ('8863ea4a-6492-4d9a-9500-f861c03d42b9', '<xml xmlns="https://developers.google.com/blockly/xml"><block type="assert" id="}#+%0fk,!8M:m+G$+w:v" x="20" y="82"><value name="target"><block type="variable" id="VjGFId(3nm#F?6p?#Q7$"><field name="NAME">count</field></block></value><next><block type="assert" id="_nJ.|Me(0Q2T*P*XVJTG"><value name="target"><block type="properties_user" id="XqOa3dFO*OO+A-~U*eq4"><field name="properties">BODYCOLOR</field></block></value></block></next></block></xml>');

insert into `portal_solution_hint_associated_component_ids` (`portal_solution_hint_id`, `associated_component_ids`)
values ('27eeabc4-e7c3-4a7c-ad80-b75f90cf50cd', 'blockly_cut_div'),
       ('8863ea4a-6492-4d9a-9500-f861c03d42b9', 'blockly_cut_div');

insert into `portal_solution_hint_code_block_to_be_tested` (`portal_solution_hint_id`, `code_block_to_be_tested`)
values ('27eeabc4-e7c3-4a7c-ad80-b75f90cf50cd', 'init_head'),
       ('27eeabc4-e7c3-4a7c-ad80-b75f90cf50cd', ';-ph;z589g?9jHL@E}{g'),
       ('27eeabc4-e7c3-4a7c-ad80-b75f90cf50cd', 'MCl(?ZC0G|V1a=_zHjKu'),
       ('8863ea4a-6492-4d9a-9500-f861c03d42b9', 'x7sp^_mSPHQ/{m#x}Em-'),
       ('8863ea4a-6492-4d9a-9500-f861c03d42b9', 'Updh4`dmqWOl8d}M;g8y'),
       ('8863ea4a-6492-4d9a-9500-f861c03d42b9', 'pa)FbpBCr92Iv7n~PK,,'),
       ('8863ea4a-6492-4d9a-9500-f861c03d42b9', '?iS[Tstt^Ggz`|(yLsCZ');

insert into `portal_solution_hint_key_code_blocks` (`portal_solution_hint_id`, `key_code_blocks`)
values ('27eeabc4-e7c3-4a7c-ad80-b75f90cf50cd', 'Updh4`dmqWOl8d}M;g8y'),
       ('27eeabc4-e7c3-4a7c-ad80-b75f90cf50cd', 'pa)FbpBCr92Iv7n~PK,,');


-- Level 9 Hints

insert into `hint` (`id`, `hint_situation`, `level_id`)
values ('6852adaa-7e81-4f03-8811-d3934a8eec7c', 1, 'cfa39e59-dee4-491e-88c2-8f4cd43f4d86');

insert into `hint_hint_texts` (`hint_id`, `hint_texts`, `hint_texts_key`)
values ('6852adaa-7e81-4f03-8811-d3934a8eec7c', 'hint_level_9_first_0', 0),
       ('6852adaa-7e81-4f03-8811-d3934a8eec7c', 'hint_level_9_first_1', 1),
       ('6852adaa-7e81-4f03-8811-d3934a8eec7c', 'hint_level_9_first_2', 2),
       ('6852adaa-7e81-4f03-8811-d3934a8eec7c', 'hint_level_9_first_3', 3),
       ('6852adaa-7e81-4f03-8811-d3934a8eec7c', 'hint_level_9_first_4', 4),
       ('6852adaa-7e81-4f03-8811-d3934a8eec7c', 'hint_level_9_first_5', 5),
       ('6852adaa-7e81-4f03-8811-d3934a8eec7c', 'hint_level_9_first_6', 6),
       ('6852adaa-7e81-4f03-8811-d3934a8eec7c', 'hint_level_9_first_7', 7),
       ('6852adaa-7e81-4f03-8811-d3934a8eec7c', 'hint_level_9_first_8', 8);

insert into `associated_coordinates` (`hint_id`, `x`, `y`, `associated_coordinates_key`)
values ('6852adaa-7e81-4f03-8811-d3934a8eec7c', 3, 6, 5),
       ('6852adaa-7e81-4f03-8811-d3934a8eec7c', 4, 3, 8);

insert into `associated_cut_blocks` (`id`, `hint_id`, `associated_cut_blocks_key`)
values ('0b98ff59-4e5c-4b03-8d40-e070b198dc2a', '6852adaa-7e81-4f03-8811-d3934a8eec7c', 0),
       ('500ace55-6b21-4652-a2cd-9bbe84da4ec8', '6852adaa-7e81-4f03-8811-d3934a8eec7c', 1),
       ('d95d5a11-21fa-464f-ade1-1c660bdc781b', '6852adaa-7e81-4f03-8811-d3934a8eec7c', 2),
       ('ad3183fb-1fc1-4c01-8eab-c756f07a5c5c', '6852adaa-7e81-4f03-8811-d3934a8eec7c', 3),
       ('c527911e-be57-4142-ae88-c223a28559fa', '6852adaa-7e81-4f03-8811-d3934a8eec7c', 4),
       ('053136d8-c533-4281-9125-000556c50129', '6852adaa-7e81-4f03-8811-d3934a8eec7c', 5),
       ('7760732d-db0c-4801-8daf-bb72b723062a', '6852adaa-7e81-4f03-8811-d3934a8eec7c', 6);

insert into `associated_cut_blocks_block_ids` (`associated_cut_blocks_id`, `block_ids`)
values ('0b98ff59-4e5c-4b03-8d40-e070b198dc2a', ':c,!/vmFIi,{-#m8y=1B'),
       ('0b98ff59-4e5c-4b03-8d40-e070b198dc2a', '(o[;#:?MXt7EXE{L_[Va'),
       ('0b98ff59-4e5c-4b03-8d40-e070b198dc2a', 'yX;HGT7Z~:gspo975`*5'),
       ('0b98ff59-4e5c-4b03-8d40-e070b198dc2a', '3!ITZN.8F#Yk-ws7,1qu'),
       ('0b98ff59-4e5c-4b03-8d40-e070b198dc2a', '377jwb_%DuSlNI|5=q)`'),
       ('0b98ff59-4e5c-4b03-8d40-e070b198dc2a', 'CjStQOk)J5C96uHN9uCD'),
       ('500ace55-6b21-4652-a2cd-9bbe84da4ec8', 'init_head'),
       ('500ace55-6b21-4652-a2cd-9bbe84da4ec8', '(1[7$curntaCojJ0K7wo'),
       ('d95d5a11-21fa-464f-ade1-1c660bdc781b', 'cut_head'),
       ('d95d5a11-21fa-464f-ade1-1c660bdc781b', 'G#?S[UaN7LdY/j-s{yrs'),
       ('d95d5a11-21fa-464f-ade1-1c660bdc781b', 'o+*c^pqk3|-5^3*hq~`L'),
       ('ad3183fb-1fc1-4c01-8eab-c756f07a5c5c', 'cut_head'),
       ('ad3183fb-1fc1-4c01-8eab-c756f07a5c5c', 'xxsAK_G.4m#,6/]h{S++'),
       ('c527911e-be57-4142-ae88-c223a28559fa', 'Updh4`dmqWOl8d}M;g8y'),
       ('c527911e-be57-4142-ae88-c223a28559fa', 'x-mtB1!Dcy2NS`u@{EaY'),
       ('c527911e-be57-4142-ae88-c223a28559fa', '+9e,8)2Crvc8Mvat/eOl'),
       ('053136d8-c533-4281-9125-000556c50129', 'Updh4`dmqWOl8d}M;g8y'),
       ('053136d8-c533-4281-9125-000556c50129', '+9e,8)2Crvc8Mvat/eOl'),
       ('053136d8-c533-4281-9125-000556c50129', 'G#?S[UaN7LdY/j-s{yrs'),
       ('053136d8-c533-4281-9125-000556c50129', 'o+*c^pqk3|-5^3*hq~`L'),
       ('7760732d-db0c-4801-8daf-bb72b723062a', '+9e,8)2Crvc8Mvat/eOl'),
       ('7760732d-db0c-4801-8daf-bb72b723062a', 'o+*c^pqk3|-5^3*hq~`L');


insert into `associated_component_ids` (`id`, `hint_id`, `associated_component_ids_key`)
values ('b1298e7d-bf16-4de3-90b1-f0e1c8209300', '6852adaa-7e81-4f03-8811-d3934a8eec7c', 0),
       ('9b33c84f-db00-456a-a9e3-9c17120599ba', '6852adaa-7e81-4f03-8811-d3934a8eec7c', 1),
       ('1c709b0a-0907-436d-b8a3-8aba04ec7713', '6852adaa-7e81-4f03-8811-d3934a8eec7c', 2),
       ('aa04fc57-dc4e-49b4-b3e0-7d9b67d97344', '6852adaa-7e81-4f03-8811-d3934a8eec7c', 3),
       ('2a2edc23-0013-44f1-aa21-8d1192b55d89', '6852adaa-7e81-4f03-8811-d3934a8eec7c', 4),
       ('ee62110e-f0c9-4292-a83b-6bc87a161ac7', '6852adaa-7e81-4f03-8811-d3934a8eec7c', 7);


insert into `associated_component_ids_component_ids` (`associated_component_ids_id`, `component_ids`)
values ('b1298e7d-bf16-4de3-90b1-f0e1c8209300', 'blockly_cut_div'),
       ('9b33c84f-db00-456a-a9e3-9c17120599ba', 'blockly_cut_div'),
       ('1c709b0a-0907-436d-b8a3-8aba04ec7713', 'blockly_cut_div'),
       ('aa04fc57-dc4e-49b4-b3e0-7d9b67d97344', 'blockly_cut_div'),
       ('2a2edc23-0013-44f1-aa21-8d1192b55d89', 'blockly_cut_div'),
       ('ee62110e-f0c9-4292-a83b-6bc87a161ac7', 'save_button');

insert into `portal_xmls` (`hint_id`, `portal_xml`, `portal_xml_key`)
values ('6852adaa-7e81-4f03-8811-d3934a8eec7c', '<xml xmlns="https://developers.google.com/blockly/xml"><block type="assert" id="bey|2W?6wQEq[JKuz[JB" x="-243" y="-33"><value name="target"><block type="variable" id="eKFwaKp-G1yVvY5wvQmH"><field name="NAME">count</field></block></value><value name="value"></value></block></xml>', 6);

insert into `expected_clicked_coordinate` (`id`, `hint_id`, `expected_clicked_coordinates_key`)
values ('c32cad3f-f1a9-4984-8f04-a48cfde1bb8e','6852adaa-7e81-4f03-8811-d3934a8eec7c', 5),
       ('4d7e0fcf-e47d-4091-a79b-1e6764aa1b8f', '6852adaa-7e81-4f03-8811-d3934a8eec7c', 6);

insert into `expected_clicked_coordinate_coordinates` (`expected_clicked_coordinate_id`, `x`, `y`)
values ('c32cad3f-f1a9-4984-8f04-a48cfde1bb8e', 3, 6),
       ('4d7e0fcf-e47d-4091-a79b-1e6764aa1b8f', 3, 6);

insert into `hint_expected_user_interaction` (`hint_id`, `expected_user_interaction`, `expected_user_interaction_key`)
values ('6852adaa-7e81-4f03-8811-d3934a8eec7c', 0, 5),
       ('6852adaa-7e81-4f03-8811-d3934a8eec7c', 1, 6),
       ('6852adaa-7e81-4f03-8811-d3934a8eec7c', 2, 7);

insert into `hint_expected_portal_js_code` (`hint_id`, `expected_portal_js_code`, `expected_portal_js_code_key`)
values ('6852adaa-7e81-4f03-8811-d3934a8eec7c', 'if ((this.variable_count) !== 1) {\n\tthis._killCritter(x, y, (this.variable_count), 1);\n}\n', 6);


-- Start solution portals of level 9:

insert into `portal_solution_hint` (`id`, `name`, `level_id`)
values ('16b18f2a-fd45-4dbf-ad65-e9de3aefa91a', 'portal_1', 'cfa39e59-dee4-491e-88c2-8f4cd43f4d86'),
       ('277830e6-2501-4a65-b3a6-8f303d4cfc86', 'portal_2', 'cfa39e59-dee4-491e-88c2-8f4cd43f4d86'),
       ('d93d0e98-66e5-46e4-8cba-be93b4687a0b', 'portal_3', 'cfa39e59-dee4-491e-88c2-8f4cd43f4d86');


insert into `portal_solution_hint_possible_coordinates` (`portal_solution_hint_id`, `x`, `y`)
values ('16b18f2a-fd45-4dbf-ad65-e9de3aefa91a', 2, 6),
       ('277830e6-2501-4a65-b3a6-8f303d4cfc86', 3, 6),
       ('277830e6-2501-4a65-b3a6-8f303d4cfc86', 4, 6),
       ('277830e6-2501-4a65-b3a6-8f303d4cfc86', 4, 5),
       ('277830e6-2501-4a65-b3a6-8f303d4cfc86', 4, 4),
       ('d93d0e98-66e5-46e4-8cba-be93b4687a0b', 4, 3),
       ('d93d0e98-66e5-46e4-8cba-be93b4687a0b', 5, 3),
       ('d93d0e98-66e5-46e4-8cba-be93b4687a0b', 6, 3),
       ('d93d0e98-66e5-46e4-8cba-be93b4687a0b', 7, 3),
       ('d93d0e98-66e5-46e4-8cba-be93b4687a0b', 8, 3),
       ('d93d0e98-66e5-46e4-8cba-be93b4687a0b', 9, 3),
       ('d93d0e98-66e5-46e4-8cba-be93b4687a0b', 10, 3),
       ('d93d0e98-66e5-46e4-8cba-be93b4687a0b', 11, 3),
       ('d93d0e98-66e5-46e4-8cba-be93b4687a0b', 12, 3),
       ('d93d0e98-66e5-46e4-8cba-be93b4687a0b', 13, 3);


insert into `portal_solution_xmls` (`portal_solution_hint_id`, `portal_solution_xml`)
values ('16b18f2a-fd45-4dbf-ad65-e9de3aefa91a', '<xml xmlns="https://developers.google.com/blockly/xml"><block type="assert" id="bey|2W?6wQEq[JKuz[JB" x="-243" y="-33"><value name="target"><block type="variable" id="eKFwaKp-G1yVvY5wvQmH"><field name="NAME">count</field></block></value><value name="value"></value></block></xml>'),
       ('277830e6-2501-4a65-b3a6-8f303d4cfc86', '<xml xmlns="https://developers.google.com/blockly/xml"><block type="assert" id="bey|2W?6wQEq[JKuz[JB" x="-243" y="-33"><value name="target"><block type="variable" id="eKFwaKp-G1yVvY5wvQmH"><field name="NAME">count</field></block></value><value name="value"></value></block></xml>'),
       ('d93d0e98-66e5-46e4-8cba-be93b4687a0b', '<xml xmlns="https://developers.google.com/blockly/xml"><block type="assert" id="bey|2W?6wQEq[JKuz[JB" x="-243" y="-33"><value name="target"><block type="variable" id="eKFwaKp-G1yVvY5wvQmH"><field name="NAME">count</field></block></value><value name="value"></value></block></xml>');



insert into `portal_solution_hint_associated_component_ids` (`portal_solution_hint_id`, `associated_component_ids`)
values ('16b18f2a-fd45-4dbf-ad65-e9de3aefa91a', 'blockly_cut_div'),
       ('277830e6-2501-4a65-b3a6-8f303d4cfc86', 'blockly_cut_div'),
       ('d93d0e98-66e5-46e4-8cba-be93b4687a0b', 'blockly_cut_div');


insert into `portal_solution_hint_code_block_to_be_tested` (`portal_solution_hint_id`, `code_block_to_be_tested`)
values ('16b18f2a-fd45-4dbf-ad65-e9de3aefa91a', 'init_head'),
       ('16b18f2a-fd45-4dbf-ad65-e9de3aefa91a', '(1[7$curntaCojJ0K7wo'),
       ('277830e6-2501-4a65-b3a6-8f303d4cfc86', '+9e,8)2Crvc8Mvat/eOl'),
       ('277830e6-2501-4a65-b3a6-8f303d4cfc86', 'o+*c^pqk3|-5^3*hq~`L'),
       ('d93d0e98-66e5-46e4-8cba-be93b4687a0b', 'Updh4`dmqWOl8d}M;g8y'),
       ('d93d0e98-66e5-46e4-8cba-be93b4687a0b', 'x-mtB1!Dcy2NS`u@{EaY'),
       ('d93d0e98-66e5-46e4-8cba-be93b4687a0b', 'G#?S[UaN7LdY/j-s{yrs');

insert into `portal_solution_hint_key_code_blocks` (`portal_solution_hint_id`, `key_code_blocks`)
values ('277830e6-2501-4a65-b3a6-8f303d4cfc86', 'Updh4`dmqWOl8d}M;g8y'),
       ('277830e6-2501-4a65-b3a6-8f303d4cfc86', 'x-mtB1!Dcy2NS`u@{EaY'),
       ('277830e6-2501-4a65-b3a6-8f303d4cfc86', '+9e,8)2Crvc8Mvat/eOl');


-- Level 10 Hints

insert into `hint` (`id`, `hint_situation`, `level_id`)
values ('a6dce564-4b2e-45bb-91a7-979f24f6c81b', 1, '370bde4b-94cd-4189-a0bb-d131049dc7e3');

insert into `hint_hint_texts` (`hint_id`, `hint_texts`, `hint_texts_key`)
values ('a6dce564-4b2e-45bb-91a7-979f24f6c81b', 'hint_level_10_first_0', 0),
       ('a6dce564-4b2e-45bb-91a7-979f24f6c81b', 'hint_level_10_first_1', 1),
       ('a6dce564-4b2e-45bb-91a7-979f24f6c81b', 'hint_level_10_first_2', 2),
       ('a6dce564-4b2e-45bb-91a7-979f24f6c81b', 'hint_level_10_first_3', 3),
       ('a6dce564-4b2e-45bb-91a7-979f24f6c81b', 'hint_level_10_first_4', 4),
       ('a6dce564-4b2e-45bb-91a7-979f24f6c81b', 'hint_level_10_first_5', 5),
       ('a6dce564-4b2e-45bb-91a7-979f24f6c81b', 'hint_level_10_first_6', 6),
       ('a6dce564-4b2e-45bb-91a7-979f24f6c81b', 'hint_level_10_first_7', 7);

insert into `associated_coordinates` (`hint_id`, `x`, `y`, `associated_coordinates_key`)
values ('a6dce564-4b2e-45bb-91a7-979f24f6c81b', 3, 8, 4);

insert into `associated_cut_blocks` (`id`, `hint_id`, `associated_cut_blocks_key`)
values ('e5b52f43-53ea-4611-a260-0636cc113959', 'a6dce564-4b2e-45bb-91a7-979f24f6c81b', 0),
       ('3e58c48f-9e73-4a6b-af80-186d32cd873c', 'a6dce564-4b2e-45bb-91a7-979f24f6c81b', 1),
       ('6b51191f-358d-4077-9a57-c79795c9174e', 'a6dce564-4b2e-45bb-91a7-979f24f6c81b', 2),
       ('e2d4dc04-6630-4867-bd82-06bae1c5d170', 'a6dce564-4b2e-45bb-91a7-979f24f6c81b', 3),
       ('d4bed7a8-3a06-42a7-bbdf-9d0cfc2cfe42', 'a6dce564-4b2e-45bb-91a7-979f24f6c81b', 5),
       ('ba524e3b-ff46-491b-ad37-f112f01d87cf', 'a6dce564-4b2e-45bb-91a7-979f24f6c81b', 7);

insert into `associated_cut_blocks_block_ids` (`associated_cut_blocks_id`, `block_ids`)
values ('e5b52f43-53ea-4611-a260-0636cc113959', 'init_head'),
       ('e5b52f43-53ea-4611-a260-0636cc113959', 'XttT9BDUb_RraZ9)8~nl'),
       ('3e58c48f-9e73-4a6b-af80-186d32cd873c', 'cut_head'),
       ('3e58c48f-9e73-4a6b-af80-186d32cd873c', 'oXfTpv-pIs^-F:%JsV5b'),
       ('3e58c48f-9e73-4a6b-af80-186d32cd873c', 'Q]dfA^Sbq5NK=Eb9,S3Q'),
       ('6b51191f-358d-4077-9a57-c79795c9174e', 'Updh4`dmqWOl8d}M;g8y'),
       ('6b51191f-358d-4077-9a57-c79795c9174e', ':nond/RnR(Fh8X_gzz[L'),
       ('6b51191f-358d-4077-9a57-c79795c9174e', 'oXfTpv-pIs^-F:%JsV5b'),
       ('e2d4dc04-6630-4867-bd82-06bae1c5d170', 'M_Y#9S^2BO%A%C~=)`r('),
       ('e2d4dc04-6630-4867-bd82-06bae1c5d170', 'Q]dfA^Sbq5NK=Eb9,S3Q'),
       ('d4bed7a8-3a06-42a7-bbdf-9d0cfc2cfe42', '.N#$huRFJ^mEn.eXEy/N'),
       ('d4bed7a8-3a06-42a7-bbdf-9d0cfc2cfe42', 'oXfTpv-pIs^-F:%JsV5b'),
       ('ba524e3b-ff46-491b-ad37-f112f01d87cf', 'oXfTpv-pIs^-F:%JsV5b'),
       ('ba524e3b-ff46-491b-ad37-f112f01d87cf', 'Q]dfA^Sbq5NK=Eb9,S3Q'),
       ('ba524e3b-ff46-491b-ad37-f112f01d87cf', 'XttT9BDUb_RraZ9)8~nl');

insert into `associated_component_ids` (`id`, `hint_id`, `associated_component_ids_key`)
values ('6d080b92-5d05-4fb9-a8b4-82b15ade4bc1', 'a6dce564-4b2e-45bb-91a7-979f24f6c81b', 0),
       ('4d66ea35-0a7e-404c-8988-0bb0efe7e23b', 'a6dce564-4b2e-45bb-91a7-979f24f6c81b', 1),
       ('326f6178-729d-4cae-bcd1-b593d80bd576', 'a6dce564-4b2e-45bb-91a7-979f24f6c81b', 2),
       ('2e923a83-63d4-40f3-bf59-0f2be493420c', 'a6dce564-4b2e-45bb-91a7-979f24f6c81b', 3),
       ('3f3db753-ed9b-4466-8900-f18cf8ce47b9', 'a6dce564-4b2e-45bb-91a7-979f24f6c81b', 6);


insert into `associated_component_ids_component_ids` (`associated_component_ids_id`, `component_ids`)
values ('6d080b92-5d05-4fb9-a8b4-82b15ade4bc1', 'blockly_cut_div'),
       ('4d66ea35-0a7e-404c-8988-0bb0efe7e23b', 'blockly_cut_div'),
       ('326f6178-729d-4cae-bcd1-b593d80bd576', 'blockly_cut_div'),
       ('2e923a83-63d4-40f3-bf59-0f2be493420c', 'blockly_cut_div'),
       ('2a2edc23-0013-44f1-aa21-8d1192b55d89', 'blockly_cut_div'),
       ('3f3db753-ed9b-4466-8900-f18cf8ce47b9', 'save_button');

insert into `portal_xmls` (`hint_id`, `portal_xml`, `portal_xml_key`)
values ('a6dce564-4b2e-45bb-91a7-979f24f6c81b', '<xml xmlns="https://developers.google.com/blockly/xml"><block type="assert" id="%t)pLCtl+XEaCfYxBUiI" x="180" y="138"><value name="target"><block type="properties" id="Vu?}Z@_EnR.(,NN+Ejbu"><field name="properties">BODYCOLOR</field></block></value></block></xml>', 5);

insert into `expected_clicked_coordinate` (`id`, `hint_id`, `expected_clicked_coordinates_key`)
values ('b6b867ec-2185-45c9-a0e6-971932c9920c','a6dce564-4b2e-45bb-91a7-979f24f6c81b', 4),
       ('d4ed7846-e766-4b99-a636-cb062c32bc65', 'a6dce564-4b2e-45bb-91a7-979f24f6c81b', 5);

insert into `expected_clicked_coordinate_coordinates` (`expected_clicked_coordinate_id`, `x`, `y`)
values ('b6b867ec-2185-45c9-a0e6-971932c9920c', 3, 8),
       ('d4ed7846-e766-4b99-a636-cb062c32bc65', 3, 8);

insert into `hint_expected_user_interaction` (`hint_id`, `expected_user_interaction`, `expected_user_interaction_key`)
values ('a6dce564-4b2e-45bb-91a7-979f24f6c81b', 0, 4),
       ('a6dce564-4b2e-45bb-91a7-979f24f6c81b', 1, 5),
       ('a6dce564-4b2e-45bb-91a7-979f24f6c81b', 2, 6);

insert into `hint_expected_portal_js_code` (`hint_id`, `expected_portal_js_code`, `expected_portal_js_code_key`)
values ('a6dce564-4b2e-45bb-91a7-979f24f6c81b', 'if ((this.color) !== (\"red\")) {\n\tthis._killCritter(x, y, (this.color), (\"red\"));\n}\n', 5);

-- Start solution portals of level 10:

insert into `portal_solution_hint` (`id`, `name`, `level_id`)
values ('88932224-b762-4577-a84d-e5c12a578a62', 'portal_1', '370bde4b-94cd-4189-a0bb-d131049dc7e3'),
       ('0c763f55-d8be-46cc-8a63-c10a241d93eb', 'portal_2', '370bde4b-94cd-4189-a0bb-d131049dc7e3'),
       ('a2d84edf-2cb4-4cfc-ad78-2985a2afbed5', 'portal_3', '370bde4b-94cd-4189-a0bb-d131049dc7e3');

insert into `portal_solution_hint_possible_coordinates` (`portal_solution_hint_id`, `x`, `y`)
values ('88932224-b762-4577-a84d-e5c12a578a62', 2, 8),
       ('0c763f55-d8be-46cc-8a63-c10a241d93eb', 3, 8),
       ('0c763f55-d8be-46cc-8a63-c10a241d93eb', 4, 8),
       ('0c763f55-d8be-46cc-8a63-c10a241d93eb', 5, 8),
       ('0c763f55-d8be-46cc-8a63-c10a241d93eb', 6, 8),
       ('0c763f55-d8be-46cc-8a63-c10a241d93eb', 7, 8),
       ('0c763f55-d8be-46cc-8a63-c10a241d93eb', 10, 3),
       ('0c763f55-d8be-46cc-8a63-c10a241d93eb', 11, 3),
       ('0c763f55-d8be-46cc-8a63-c10a241d93eb', 12, 3),
       ('0c763f55-d8be-46cc-8a63-c10a241d93eb', 13, 3),
       ('0c763f55-d8be-46cc-8a63-c10a241d93eb', 13, 3),
       ('0c763f55-d8be-46cc-8a63-c10a241d93eb', 14, 3),
       ('0c763f55-d8be-46cc-8a63-c10a241d93eb', 14, 4),
       ('a2d84edf-2cb4-4cfc-ad78-2985a2afbed5', 6, 2),
       ('a2d84edf-2cb4-4cfc-ad78-2985a2afbed5', 6, 3),
       ('a2d84edf-2cb4-4cfc-ad78-2985a2afbed5', 6, 4),
       ('a2d84edf-2cb4-4cfc-ad78-2985a2afbed5', 6, 5),
       ('a2d84edf-2cb4-4cfc-ad78-2985a2afbed5', 6, 6);


insert into `portal_solution_xmls` (`portal_solution_hint_id`, `portal_solution_xml`)
values ('88932224-b762-4577-a84d-e5c12a578a62', '<xml xmlns="https://developers.google.com/blockly/xml"><block type="assert" id="%t)pLCtl+XEaCfYxBUiI" x="180" y="138"><value name="target"><block type="properties" id="Vu?}Z@_EnR.(,NN+Ejbu"><field name="properties">BODYCOLOR</field></block></value></block></xml>'),
       ('0c763f55-d8be-46cc-8a63-c10a241d93eb', '<xml xmlns="https://developers.google.com/blockly/xml"><block type="assert" id="%t)pLCtl+XEaCfYxBUiI" x="180" y="138"><value name="target"><block type="properties" id="Vu?}Z@_EnR.(,NN+Ejbu"><field name="properties">BODYCOLOR</field></block></value></block></xml>'),
       ('a2d84edf-2cb4-4cfc-ad78-2985a2afbed5', '<xml xmlns="https://developers.google.com/blockly/xml"><block type="assert" id="%t)pLCtl+XEaCfYxBUiI" x="180" y="138"><value name="target"><block type="properties" id="Vu?}Z@_EnR.(,NN+Ejbu"><field name="properties">BODYCOLOR</field></block></value></block></xml>');


insert into `portal_solution_hint_associated_component_ids` (`portal_solution_hint_id`, `associated_component_ids`)
values ('88932224-b762-4577-a84d-e5c12a578a62', 'blockly_cut_div'),
       ('0c763f55-d8be-46cc-8a63-c10a241d93eb', 'blockly_cut_div'),
       ('a2d84edf-2cb4-4cfc-ad78-2985a2afbed5', 'blockly_cut_div');


insert into `portal_solution_hint_code_block_to_be_tested` (`portal_solution_hint_id`, `code_block_to_be_tested`)
values ('88932224-b762-4577-a84d-e5c12a578a62', 'init_head'),
       ('88932224-b762-4577-a84d-e5c12a578a62', 'XttT9BDUb_RraZ9)8~nl'),
       ('0c763f55-d8be-46cc-8a63-c10a241d93eb', '.N#$huRFJ^mEn.eXEy/N'),
       ('0c763f55-d8be-46cc-8a63-c10a241d93eb', 'oXfTpv-pIs^-F:%JsV5b'),
       ('a2d84edf-2cb4-4cfc-ad78-2985a2afbed5', 'M_Y#9S^2BO%A%C~=)`r('),
       ('a2d84edf-2cb4-4cfc-ad78-2985a2afbed5', 'Q]dfA^Sbq5NK=Eb9,S3Q');

insert into `portal_solution_hint_key_code_blocks` (`portal_solution_hint_id`, `key_code_blocks`)
values ('0c763f55-d8be-46cc-8a63-c10a241d93eb', '.N#$huRFJ^mEn.eXEy/N'),
       ('0c763f55-d8be-46cc-8a63-c10a241d93eb', 'M_Y#9S^2BO%A%C~=)`r(');
