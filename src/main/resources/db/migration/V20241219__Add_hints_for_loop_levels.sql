-- Level 1 Hints

-- Intro level 1
insert into `hint` (`id`, `hint_situation`, `heal_level_id`)
values ('81999d99-cc58-4b3e-a3a5-dfce2b888b04', 0, '0d4d7178-8e67-4969-9b36-1adc3d0b5a0c');

insert into `hint_hint_texts` (`hint_id`, `hint_texts`, `hint_texts_key`)
values ('81999d99-cc58-4b3e-a3a5-dfce2b888b04', 'hint_loop_level_intro_0', 0),
       ('81999d99-cc58-4b3e-a3a5-dfce2b888b04', 'hint_loop_level_intro_1', 1),
       ('81999d99-cc58-4b3e-a3a5-dfce2b888b04', 'hint_loop_level_intro_2', 2),
       ('81999d99-cc58-4b3e-a3a5-dfce2b888b04', 'hint_loop_level_intro_3', 3),
       ('81999d99-cc58-4b3e-a3a5-dfce2b888b04', 'hint_loop_level_intro_4', 4),
       ('81999d99-cc58-4b3e-a3a5-dfce2b888b04', 'hint_loop_level_intro_5', 5),
       ('81999d99-cc58-4b3e-a3a5-dfce2b888b04', 'hint_loop_level_intro_6', 6),
       ('81999d99-cc58-4b3e-a3a5-dfce2b888b04', 'hint_loop_level_intro_7', 7),
       ('81999d99-cc58-4b3e-a3a5-dfce2b888b04', 'hint_loop_level_intro_8', 8),
       ('81999d99-cc58-4b3e-a3a5-dfce2b888b04', 'hint_loop_level_intro_9', 9),
       ('81999d99-cc58-4b3e-a3a5-dfce2b888b04', 'hint_loop_level_intro_10', 10),
       ('81999d99-cc58-4b3e-a3a5-dfce2b888b04', 'hint_loop_level_intro_11', 11);


insert into `associated_coordinates` (`hint_id`, `x`, `y`, `associated_coordinates_key`)
values ('81999d99-cc58-4b3e-a3a5-dfce2b888b04', 3, 0, 1),
       ('81999d99-cc58-4b3e-a3a5-dfce2b888b04', 4, 6, 2),
       ('81999d99-cc58-4b3e-a3a5-dfce2b888b04', 3, 6, 6);

insert into `associated_cut_blocks` (`id`, `hint_id`, `associated_cut_blocks_key`)
values ('f46d49fc-e0f2-4f81-86f2-c5ca8f649493', '81999d99-cc58-4b3e-a3a5-dfce2b888b04', 1),
       ('1dd3147a-fc1d-4db5-8f1d-33f142179903', '81999d99-cc58-4b3e-a3a5-dfce2b888b04', 2),
       ('1f654ec9-19d9-499a-a3e6-c982f535acb7', '81999d99-cc58-4b3e-a3a5-dfce2b888b04', 9),
       ('a179c9a8-a5f6-41f8-a80a-36f77bdea5d4', '81999d99-cc58-4b3e-a3a5-dfce2b888b04', 10);

insert into `associated_cut_blocks_block_ids` (`associated_cut_blocks_id`, `block_ids`)
values ('f46d49fc-e0f2-4f81-86f2-c5ca8f649493', 'logic_compare_1'),
       ('1dd3147a-fc1d-4db5-8f1d-33f142179903', 'set_berries_1'),
       ('1f654ec9-19d9-499a-a3e6-c982f535acb7', 'set_berries_1'),
       ('a179c9a8-a5f6-41f8-a80a-36f77bdea5d4', 'recipe_start_while');

insert into `associated_component_ids` (`id`, `hint_id`, `associated_component_ids_key`)
values ('9fb319a3-f47e-49f8-b8c2-48854c2c4824', '81999d99-cc58-4b3e-a3a5-dfce2b888b04', 1),
       ('cd0a5f7a-c1e0-4433-8f3a-b6f6f3e670b8', '81999d99-cc58-4b3e-a3a5-dfce2b888b04', 2),
       ('2561a193-22c1-434e-a9ca-a1e65e66f94f', '81999d99-cc58-4b3e-a3a5-dfce2b888b04', 3),
       ('3311db27-35de-4c2c-9ba0-945444f5df74', '81999d99-cc58-4b3e-a3a5-dfce2b888b04', 4),
       ('32ffe70a-05df-4a37-9538-411a1daa0958', '81999d99-cc58-4b3e-a3a5-dfce2b888b04', 7),
       ('2646edc9-a809-4b61-895f-03838682b539', '81999d99-cc58-4b3e-a3a5-dfce2b888b04', 8),
       ('543317db-6a4c-4548-8545-de9a8941850c', '81999d99-cc58-4b3e-a3a5-dfce2b888b04', 9),
       ('34661efc-2cdd-4eec-bfcb-3dd061485f5b', '81999d99-cc58-4b3e-a3a5-dfce2b888b04', 10);


insert into `associated_component_ids_component_ids` (`associated_component_ids_id`, `component_ids`)
values ('9fb319a3-f47e-49f8-b8c2-48854c2c4824', 'gameboard'),
       ('cd0a5f7a-c1e0-4433-8f3a-b6f6f3e670b8', 'blockly_cut_div'),
       ('2561a193-22c1-434e-a9ca-a1e65e66f94f', 'critter_container_all_collectors'),
       ('3311db27-35de-4c2c-9ba0-945444f5df74', 'critter_container_all_collectors'),
       ('32ffe70a-05df-4a37-9538-411a1daa0958', 'test_popup_container'),
       ('2646edc9-a809-4b61-895f-03838682b539', 'test_popup_container'),
       ('543317db-6a4c-4548-8545-de9a8941850c', 'test_popup_container'),
       ('34661efc-2cdd-4eec-bfcb-3dd061485f5b', 'blockly_cut_div');

insert into `expected_clicked_coordinate` (`id`, `hint_id`, `expected_clicked_coordinates_key`)
values ('4f8b31ec-e5f3-47d9-b0bd-f56929b9636a', '81999d99-cc58-4b3e-a3a5-dfce2b888b04', 6),
       ('839d30ed-09eb-4ad9-b1fd-06669af7881c','81999d99-cc58-4b3e-a3a5-dfce2b888b04', 7);

insert into `expected_clicked_coordinate_coordinates` (`expected_clicked_coordinate_id`, `x`, `y`)
values ('4f8b31ec-e5f3-47d9-b0bd-f56929b9636a', 3, 6),
       ('839d30ed-09eb-4ad9-b1fd-06669af7881c', 3, 6);

insert into `hint_expected_user_interaction` (`hint_id`, `expected_user_interaction`, `expected_user_interaction_key`)
values ('81999d99-cc58-4b3e-a3a5-dfce2b888b04', 0, 6);

insert into `portal_xmls` (`hint_id`, `portal_xml`, `portal_xml_key`)
values ('81999d99-cc58-4b3e-a3a5-dfce2b888b04', '<xml xmlns="http://www.w3.org/1999/xhtml"></xml>', 7),
       ('81999d99-cc58-4b3e-a3a5-dfce2b888b04',
        '<xml xmlns=\"https://developers.google.com/blockly/xml\"><block type=\"assert_loop_free\" id=\":_j|[D8OsEN7^7y7xUZ?\" x=\"-307\" y=\"-87\"><value name=\"value\"></value></block> <block type=\"assert_loop\" id=\",l:RPr)AXBwKb7te0?*C\" x=\"-483\" y=\"-130\"><value name=\"target\"></value><value name=\"value\"></value></block></xml>', 8),
       ('81999d99-cc58-4b3e-a3a5-dfce2b888b04',
        '<xml xmlns=\"https://developers.google.com/blockly/xml\"><block type=\"properties_user_healing\" id=\"Kh;yp*$J:~^C1::C9s7Y\" x=\"212\" y=\"136\"><field name=\"properties\">REDBERRIES</field></block></xml>', 9);


-- Code Explanation level 1
insert into `hint` (`id`, `hint_situation`, `heal_level_id`)
values ('dc618394-ca5a-4fed-9b06-d3597da967b0', 2, '0d4d7178-8e67-4969-9b36-1adc3d0b5a0c');

insert into `hint_hint_texts` (`hint_id`, `hint_texts`, `hint_texts_key`)
values ('dc618394-ca5a-4fed-9b06-d3597da967b0', 'hint_loop_level_1_code_0', 0),
       ('dc618394-ca5a-4fed-9b06-d3597da967b0', 'hint_loop_level_1_code_1', 1),
       ('dc618394-ca5a-4fed-9b06-d3597da967b0', 'hint_loop_level_1_code_2', 2),
       ('dc618394-ca5a-4fed-9b06-d3597da967b0', 'hint_loop_level_1_code_3', 3),
       ('dc618394-ca5a-4fed-9b06-d3597da967b0', 'hint_loop_level_1_code_4', 4),
       ('dc618394-ca5a-4fed-9b06-d3597da967b0', 'hint_loop_level_1_code_5', 5),
       ('dc618394-ca5a-4fed-9b06-d3597da967b0', 'hint_loop_level_1_code_6', 6),
       ('dc618394-ca5a-4fed-9b06-d3597da967b0', 'hint_loop_level_1_code_7', 7),
       ('dc618394-ca5a-4fed-9b06-d3597da967b0', 'hint_loop_level_1_code_8', 8),
       ('dc618394-ca5a-4fed-9b06-d3597da967b0', 'hint_loop_level_1_code_9', 9),
       ('dc618394-ca5a-4fed-9b06-d3597da967b0', 'hint_loop_level_1_code_10', 10),
       ('dc618394-ca5a-4fed-9b06-d3597da967b0', 'hint_loop_level_1_code_11', 11),
       ('dc618394-ca5a-4fed-9b06-d3597da967b0', 'hint_loop_level_1_code_12', 12);


insert into `associated_component_ids` (`id`, `hint_id`, `associated_component_ids_key`)
values ('b82982cf-ec59-491d-b3b8-6dc785054876', 'dc618394-ca5a-4fed-9b06-d3597da967b0', 0),
       ('39ae662c-3b42-43dd-aa2f-6c6c1d16e0d7', 'dc618394-ca5a-4fed-9b06-d3597da967b0', 1),
       ('c8b1ffbd-c191-458f-ba47-45d0bdc7f401', 'dc618394-ca5a-4fed-9b06-d3597da967b0', 2),
       ('1c97b3cd-3c92-49ba-9b46-cb1c53163b58', 'dc618394-ca5a-4fed-9b06-d3597da967b0', 3),
       ('4ba16899-0af4-4816-b0a9-f30fdd9e2777', 'dc618394-ca5a-4fed-9b06-d3597da967b0', 4),
       ('45ee2c6b-713e-466b-9356-e526098bf056', 'dc618394-ca5a-4fed-9b06-d3597da967b0', 5),
       ('2d5a3cfe-23d6-4d7c-8518-9e4158949c06', 'dc618394-ca5a-4fed-9b06-d3597da967b0', 6),
       ('beb404fc-41a5-475f-a8a7-fd401795fb2a', 'dc618394-ca5a-4fed-9b06-d3597da967b0', 7),
       ('815757fb-9e21-49e4-965b-128c460cc6c5', 'dc618394-ca5a-4fed-9b06-d3597da967b0', 8),
       ('27dfc4c8-8a2c-4120-b8e2-98bc6a7a0b2f', 'dc618394-ca5a-4fed-9b06-d3597da967b0', 9),
       ('4072b9cf-11ae-4e7d-8082-60a9078ebabf', 'dc618394-ca5a-4fed-9b06-d3597da967b0', 10),
       ('c92f83f0-bc98-4d27-812b-2dc088495f63', 'dc618394-ca5a-4fed-9b06-d3597da967b0', 11);


insert into `associated_component_ids_component_ids` (`associated_component_ids_id`, `component_ids`)
values ('b82982cf-ec59-491d-b3b8-6dc785054876', 'blockly_cut_div'),
       ('39ae662c-3b42-43dd-aa2f-6c6c1d16e0d7', 'blockly_cut_div'),
       ('c8b1ffbd-c191-458f-ba47-45d0bdc7f401', 'blockly_cut_div'),
       ('1c97b3cd-3c92-49ba-9b46-cb1c53163b58', 'blockly_cut_div'),
       ('4ba16899-0af4-4816-b0a9-f30fdd9e2777', 'blockly_cut_div'),
       ('45ee2c6b-713e-466b-9356-e526098bf056', 'blockly_cut_div'),
       ('2d5a3cfe-23d6-4d7c-8518-9e4158949c06', 'blockly_cut_div'),
       ('beb404fc-41a5-475f-a8a7-fd401795fb2a', 'blockly_cut_div'),
       ('815757fb-9e21-49e4-965b-128c460cc6c5', 'blockly_cut_div'),
       ('27dfc4c8-8a2c-4120-b8e2-98bc6a7a0b2f', 'blockly_cut_div'),
       ('4072b9cf-11ae-4e7d-8082-60a9078ebabf', 'blockly_cut_div'),
       ('c92f83f0-bc98-4d27-812b-2dc088495f63', 'blockly_cut_div');

insert into `associated_cut_blocks` (`id`, `hint_id`, `associated_cut_blocks_key`)
values ('2b156b08-e40a-4927-b60f-1c3cf731fa3d', 'dc618394-ca5a-4fed-9b06-d3597da967b0', 1),
       ('d11c2af3-9940-4815-bb6b-795ac21175ee', 'dc618394-ca5a-4fed-9b06-d3597da967b0', 2),
       ('4c7a9acc-8e5e-44b1-8895-ba39c36a6fe8', 'dc618394-ca5a-4fed-9b06-d3597da967b0', 3),
       ('558b6609-97d8-45e0-9a83-b35107e12293', 'dc618394-ca5a-4fed-9b06-d3597da967b0', 4),
       ('93c19d33-cde5-4714-809f-fe21be31b892', 'dc618394-ca5a-4fed-9b06-d3597da967b0', 5),
       ('934256cd-b372-4d20-8bdd-9e1d0572bf72', 'dc618394-ca5a-4fed-9b06-d3597da967b0', 6),
       ('21ebd29e-48c3-4dd0-bb31-0347687889cf', 'dc618394-ca5a-4fed-9b06-d3597da967b0', 7),
       ('c37cf1d0-0b61-4b7f-ad01-f4acc33547e4', 'dc618394-ca5a-4fed-9b06-d3597da967b0', 8),
       ('d1decdbc-6505-4956-8bdd-947cff7e2a09', 'dc618394-ca5a-4fed-9b06-d3597da967b0', 9),
       ('6299cd1e-fc04-4197-8393-2fe9464ca710', 'dc618394-ca5a-4fed-9b06-d3597da967b0', 10),
       ('c1f1b7d1-066b-4bdd-ac0d-a841e7a43d87', 'dc618394-ca5a-4fed-9b06-d3597da967b0', 11);

insert into `associated_cut_blocks_block_ids` (`associated_cut_blocks_id`, `block_ids`)
values ('2b156b08-e40a-4927-b60f-1c3cf731fa3d', 'recipe_start_while'),
       ('d11c2af3-9940-4815-bb6b-795ac21175ee', 'logic_compare_1'),
       ('4c7a9acc-8e5e-44b1-8895-ba39c36a6fe8', 'logic_compare_1'),
       ('558b6609-97d8-45e0-9a83-b35107e12293', 'set_berries_1'),
       ('93c19d33-cde5-4714-809f-fe21be31b892', 'set_berries_1'),
       ('934256cd-b372-4d20-8bdd-9e1d0572bf72', 'set_berries_1'),
       ('21ebd29e-48c3-4dd0-bb31-0347687889cf', 'set_berries_1'),
       ('c37cf1d0-0b61-4b7f-ad01-f4acc33547e4', 'recipe_start_while'),
       ('c37cf1d0-0b61-4b7f-ad01-f4acc33547e4', 'logic_compare_1'),
       ('d1decdbc-6505-4956-8bdd-947cff7e2a09', 'set_berries_1'),
       ('6299cd1e-fc04-4197-8393-2fe9464ca710', 'recipe_start_while'),
       ('6299cd1e-fc04-4197-8393-2fe9464ca710', 'logic_compare_1'),
       ('c1f1b7d1-066b-4bdd-ac0d-a841e7a43d87', 'logic_compare_1');

insert into `hint_expected_user_interaction` (`hint_id`, `expected_user_interaction`, `expected_user_interaction_key`)
values ('dc618394-ca5a-4fed-9b06-d3597da967b0', 3, 3),
       ('dc618394-ca5a-4fed-9b06-d3597da967b0', 3, 6),
       ('dc618394-ca5a-4fed-9b06-d3597da967b0', 3, 9);

insert into `answer_options_list` (`id`, `hint_id`, `answer_options_list_key`)
values ('13e8323a-afd0-4797-8868-f389d19d5c34', 'dc618394-ca5a-4fed-9b06-d3597da967b0', 3),
       ('824744c6-1b48-42d1-811c-cbada6e76f76', 'dc618394-ca5a-4fed-9b06-d3597da967b0', 6),
       ('e1f85365-9ee0-43c5-a40e-9a75e21367da', 'dc618394-ca5a-4fed-9b06-d3597da967b0', 9);

insert into `answer_options_list_answer_options` (`answer_options_list_id`, `answer_options`)
values ('13e8323a-afd0-4797-8868-f389d19d5c34', '2'),
       ('13e8323a-afd0-4797-8868-f389d19d5c34', '3'),
       ('13e8323a-afd0-4797-8868-f389d19d5c34', '4'),
       ('824744c6-1b48-42d1-811c-cbada6e76f76', '1'),
       ('824744c6-1b48-42d1-811c-cbada6e76f76', '2'),
       ('824744c6-1b48-42d1-811c-cbada6e76f76', '0'),
       ('e1f85365-9ee0-43c5-a40e-9a75e21367da', '1'),
       ('e1f85365-9ee0-43c5-a40e-9a75e21367da', '2'),
       ('e1f85365-9ee0-43c5-a40e-9a75e21367da', '3');


insert into `hint_solution_answer` (hint_id, solution_answer, solution_answer_key)
values ('dc618394-ca5a-4fed-9b06-d3597da967b0', '3', 3),
       ('dc618394-ca5a-4fed-9b06-d3597da967b0', '1', 6),
       ('dc618394-ca5a-4fed-9b06-d3597da967b0', '2', 9);

insert into `associated_coordinates` (`hint_id`, `x`, `y`, `associated_coordinates_key`)
values ('dc618394-ca5a-4fed-9b06-d3597da967b0', 4, 6, 5),
       ('dc618394-ca5a-4fed-9b06-d3597da967b0', 4, 6, 6),
       ('dc618394-ca5a-4fed-9b06-d3597da967b0', 3, 1, 7),
       ('dc618394-ca5a-4fed-9b06-d3597da967b0', 4, 6, 8),
       ('dc618394-ca5a-4fed-9b06-d3597da967b0', 4, 6, 9);

-- Portal together level 1
insert into `hint` (`id`, `hint_situation`, `heal_level_id`)
values ('7ad2a354-fa19-420c-8fb6-04ef2536d917', 3, '0d4d7178-8e67-4969-9b36-1adc3d0b5a0c');

insert into `hint_hint_texts` (`hint_id`, `hint_texts`, `hint_texts_key`)
values ('7ad2a354-fa19-420c-8fb6-04ef2536d917', 'hint_loop_level_1_complete_0', 0),
       ('7ad2a354-fa19-420c-8fb6-04ef2536d917', 'hint_loop_level_1_complete_1', 1),
       ('7ad2a354-fa19-420c-8fb6-04ef2536d917', 'hint_loop_level_1_complete_2', 2),
       ('7ad2a354-fa19-420c-8fb6-04ef2536d917', 'hint_loop_level_1_complete_3', 3),
       ('7ad2a354-fa19-420c-8fb6-04ef2536d917', 'hint_loop_level_1_complete_4', 4),
       ('7ad2a354-fa19-420c-8fb6-04ef2536d917', 'hint_loop_level_1_complete_5', 5),
       ('7ad2a354-fa19-420c-8fb6-04ef2536d917', 'hint_loop_level_1_complete_6', 6),
       ('7ad2a354-fa19-420c-8fb6-04ef2536d917', 'hint_loop_level_1_complete_7', 7),
       ('7ad2a354-fa19-420c-8fb6-04ef2536d917', 'hint_loop_level_1_complete_8', 8),
       ('7ad2a354-fa19-420c-8fb6-04ef2536d917', 'hint_loop_level_1_complete_9', 9);


insert into `associated_coordinates` (`hint_id`, `x`, `y`, `associated_coordinates_key`)
values ('7ad2a354-fa19-420c-8fb6-04ef2536d917', 3, 6, 2);

insert into `associated_cut_blocks` (`id`, `hint_id`, `associated_cut_blocks_key`)
values ('9209358d-68d4-4a4f-84b2-46dd2aba012e', '7ad2a354-fa19-420c-8fb6-04ef2536d917', 3),
       ('9367a282-92fc-46c5-ab04-9bf1ef463f32', '7ad2a354-fa19-420c-8fb6-04ef2536d917', 4),
       ('315e532f-6b4c-4242-ba8b-e213a98b5ab4', '7ad2a354-fa19-420c-8fb6-04ef2536d917', 5);

insert into `associated_cut_blocks_block_ids` (`associated_cut_blocks_id`, `block_ids`)
values ('9209358d-68d4-4a4f-84b2-46dd2aba012e', 'logic_compare_1'),
       ('9209358d-68d4-4a4f-84b2-46dd2aba012e', 'set_berries_1'),
       ('9367a282-92fc-46c5-ab04-9bf1ef463f32', 'set_berries_1'),
       ('315e532f-6b4c-4242-ba8b-e213a98b5ab4', 'set_berries_1');

insert into `associated_component_ids` (`id`, `hint_id`, `associated_component_ids_key`)
values ('5a33df26-6f1a-40ec-9d39-6726fb090513', '7ad2a354-fa19-420c-8fb6-04ef2536d917', 1),
       ('c939bac9-a928-4b28-8589-dc64c0c3ffc7', '7ad2a354-fa19-420c-8fb6-04ef2536d917', 2),
       ('a5c4b05d-90d5-4194-b372-eaf449910aca', '7ad2a354-fa19-420c-8fb6-04ef2536d917', 3),
       ('2e83b268-d3dc-4444-9e79-6a55f80171f4', '7ad2a354-fa19-420c-8fb6-04ef2536d917', 4),
       ('8c36e0b4-0de1-465f-af2b-6f81b491dd57', '7ad2a354-fa19-420c-8fb6-04ef2536d917', 5),
       ('6e58e8b5-2f4f-4f2f-9dfd-ea6139d2260d', '7ad2a354-fa19-420c-8fb6-04ef2536d917', 6),
       ('9a5f2963-5583-44ce-aa7f-d8e9e893c503', '7ad2a354-fa19-420c-8fb6-04ef2536d917', 7),
       ('27aa76d5-6e48-4d61-850c-14a64cfc5502', '7ad2a354-fa19-420c-8fb6-04ef2536d917', 8),
       ('8da165ef-4759-4832-a49d-73df1e9ec199', '7ad2a354-fa19-420c-8fb6-04ef2536d917', 9);

insert into `associated_component_ids_component_ids` (`associated_component_ids_id`, `component_ids`)
values ('5a33df26-6f1a-40ec-9d39-6726fb090513', 'critter_container_all_collectors'),
       ('5a33df26-6f1a-40ec-9d39-6726fb090513', 'gameboard'),
       ('c939bac9-a928-4b28-8589-dc64c0c3ffc7', 'gameboard'),
       ('a5c4b05d-90d5-4194-b372-eaf449910aca', 'blockly_cut_div'),
       ('2e83b268-d3dc-4444-9e79-6a55f80171f4', 'test_popup_container'),
       ('8c36e0b4-0de1-465f-af2b-6f81b491dd57', 'test_popup_container'),
       ('6e58e8b5-2f4f-4f2f-9dfd-ea6139d2260d', 'test_popup_container'),
       ('9a5f2963-5583-44ce-aa7f-d8e9e893c503', 'test_popup_container'),
       ('27aa76d5-6e48-4d61-850c-14a64cfc5502', 'test_popup_container'),
       ('8da165ef-4759-4832-a49d-73df1e9ec199', 'save_button');

insert into `portal_xmls` (`hint_id`, `portal_xml`, `portal_xml_key`)
values ('7ad2a354-fa19-420c-8fb6-04ef2536d917',
        '<xml xmlns="https://developers.google.com/blockly/xml"><block type="controls_if" id="::!^BcR6UX-OdiGVHZf(" x="32" y="76"><value name="IF0"><block type="logic_compare" id="Updh4`dmqWOl8d}M;g8y"><field name="OP">EQ</field><value name="A"><block type="properties_user_healing" id="#!#JQdy3hPl]z@%(NN9j"><field name="properties">ROUNDS</field></block></value><value name="B"><block type="math_number" id="Eem[Vxht-;;+ILj@@lxp"><field name="NUM">1</field></block></value></block></value><statement name="DO0"><block type="assert_loop" id="-Zt):]R/WKU2D.`/xxfq"><value name="target"><block type="properties_user_healing" id="-.(foiqrYckHMM+m$+|U"><field name="properties">REDBERRIES</field></block></value><value name="value"></value></block></statement></block></xml>', 4),
       ('7ad2a354-fa19-420c-8fb6-04ef2536d917',
        '<xml xmlns="https://developers.google.com/blockly/xml"><block type="controls_if" id="::!^BcR6UX-OdiGVHZf(" x="28" y="-35"><value name="IF0"><block type="logic_compare" id="Updh4`dmqWOl8d}M;g8y"><field name="OP">EQ</field><value name="A"><block type="properties_user_healing" id="#!#JQdy3hPl]z@%(NN9j"><field name="properties">ROUNDS</field></block></value><value name="B"><block type="math_number" id="Eem[Vxht-;;+ILj@@lxp"><field name="NUM">1</field></block></value></block></value><statement name="DO0"><block type="assert_loop" id="-Zt):]R/WKU2D.`/xxfq"><value name="target"><block type="properties_user_healing" id="-.(foiqrYckHMM+m$+|U"><field name="properties">REDBERRIES</field></block></value><value name="value"><block type="math_number" id="us^eBP4Z?M#Cj^AiWEeQ"><field name="NUM">1</field></block></value></block></statement><next><block type="controls_if" id="J}CgriI{SPZ%n$R2PwsQ"><value name="IF0"><block type="logic_compare" id="?)yhH7Hp]O?JBQpoCsQ0"><field name="OP">EQ</field><value name="A"><block type="properties_user_healing" id=";,(),vpck5r%u7e{s6ZT"><field name="properties">ROUNDS</field></block></value><value name="B"><block type="math_number" id="-o17@[|WM@Engu:.A:/W"><field name="NUM">2</field></block></value></block></value><statement name="DO0"><block type="assert_loop" id="H?t%_ya2lbTKr~aV)KKS"><value name="target"><block type="properties_user_healing" id="QWDuGkuMLi-a7P8FI*-B"><field name="properties">REDBERRIES</field></block></value><value name="value"></value></block></statement></block></next></block></xml>', 5),
       ('7ad2a354-fa19-420c-8fb6-04ef2536d917',
        '<xml xmlns="https://developers.google.com/blockly/xml"><block type="controls_if" id="::!^BcR6UX-OdiGVHZf(" x="28" y="-35"><value name="IF0"><block type="logic_compare" id="Updh4`dmqWOl8d}M;g8y"><field name="OP">EQ</field><value name="A"><block type="properties_user_healing" id="#!#JQdy3hPl]z@%(NN9j"><field name="properties">ROUNDS</field></block></value><value name="B"><block type="math_number" id="Eem[Vxht-;;+ILj@@lxp"><field name="NUM">1</field></block></value></block></value><statement name="DO0"><block type="assert_loop" id="-Zt):]R/WKU2D.`/xxfq"><value name="target"><block type="properties_user_healing" id="-.(foiqrYckHMM+m$+|U"><field name="properties">REDBERRIES</field></block></value><value name="value"><block type="math_number" id="us^eBP4Z?M#Cj^AiWEeQ"><field name="NUM">1</field></block></value></block></statement><next><block type="controls_if" id="J}CgriI{SPZ%n$R2PwsQ"><value name="IF0"><block type="logic_compare" id="?)yhH7Hp]O?JBQpoCsQ0"><field name="OP">EQ</field><value name="A"><block type="properties_user_healing" id=";,(),vpck5r%u7e{s6ZT"><field name="properties">ROUNDS</field></block></value><value name="B"><block type="math_number" id="-o17@[|WM@Engu:.A:/W"><field name="NUM">2</field></block></value></block></value><statement name="DO0"><block type="assert_loop" id="H?t%_ya2lbTKr~aV)KKS"><value name="target"><block type="properties_user_healing" id="QWDuGkuMLi-a7P8FI*-B"><field name="properties">REDBERRIES</field></block></value><value name="value"><block type="math_number" id="n8|C`4tVE),VL(-O)Il+"><field name="NUM">2</field></block></value></block></statement><next><block type="controls_if" id="9YmyIl_7c%*e^HwLgBoQ"><value name="IF0"><block type="logic_compare" id="ylu+/|exdWfUY?Y#`f;."><field name="OP">EQ</field><value name="A"><block type="properties_user_healing" id="buuCmj]BxmSqoS|jg*hH"><field name="properties">ROUNDS</field></block></value><value name="B"><block type="math_number" id="w@Ij}.h{zW/J_FV%Xn=G"><field name="NUM">3</field></block></value></block></value><statement name="DO0"><block type="assert_loop" id="5qw?L:H5Dz9E1?#Jyh+^"><value name="target"><block type="properties_user_healing" id="RY7M_]_eHc~Q_+w=zGF,"><field name="properties">REDBERRIES</field></block></value><value name="value"><block type="math_number" id="`gUrc,+F+^j~()Fm,?h/"><field name="NUM">3</field></block></value></block></statement></block></next></block></next></block></xml>', 6),
       ('7ad2a354-fa19-420c-8fb6-04ef2536d917',
        '<xml xmlns="https://developers.google.com/blockly/xml"><block type="assert_loop" id="^43,N~Gb,=(^#-IVFACQ" x="-279" y="-112"><value name="target"><block type="properties_user_healing" id="O`B$@2gV*#t4FCIT|B%}"><field name="properties">REDBERRIES</field></block></value><value name="value"></value></block></xml>', 8),
       ('7ad2a354-fa19-420c-8fb6-04ef2536d917',
        '<xml xmlns="https://developers.google.com/blockly/xml"><block type="assert_loop" id="A98{I-AizCR[`@^~AKZF" x="185" y="110"><value name="target"><block type="properties_user_healing" id="E^)BMtqr?aG]1(/zyG=l"><field name="properties">REDBERRIES</field></block></value><value name="value"><block type="properties_user_healing" id="Zf~uze9x!]EF:R2(OJ.s"><field name="properties">ROUNDS</field></block></value></block></xml>', 9);

insert into `expected_clicked_coordinate` (`id`, `hint_id`, `expected_clicked_coordinates_key`)
values ('6a4c788f-6ad9-41fe-96f9-03906cf40774', '7ad2a354-fa19-420c-8fb6-04ef2536d917', 2),
       ('57c4cea4-39b4-4f98-80cb-d2bd54e169cd', '7ad2a354-fa19-420c-8fb6-04ef2536d917', 3);

insert into `expected_clicked_coordinate_coordinates` (`expected_clicked_coordinate_id`, `x`, `y`)
values ('6a4c788f-6ad9-41fe-96f9-03906cf40774', 3, 6),
       ('57c4cea4-39b4-4f98-80cb-d2bd54e169cd', 3, 6);

insert into `hint_expected_user_interaction` (`hint_id`, `expected_user_interaction`, `expected_user_interaction_key`)
values ('7ad2a354-fa19-420c-8fb6-04ef2536d917', 0, 2),
       ('7ad2a354-fa19-420c-8fb6-04ef2536d917', 1, 4),
       ('7ad2a354-fa19-420c-8fb6-04ef2536d917', 1, 5),
       ('7ad2a354-fa19-420c-8fb6-04ef2536d917', 1, 8),
       ('7ad2a354-fa19-420c-8fb6-04ef2536d917', 2, 9);

insert into `hint_expected_portal_js_code` (`hint_id`, `expected_portal_js_code`, `expected_portal_js_code_key`)
values ('7ad2a354-fa19-420c-8fb6-04ef2536d917', 'if ((this.roundsCount) == 1) {\n  if ((this.redBerryCount) !== 1) {\n  \tthis._killCritter(x, y, (this.redBerryCount), 1);\n  \tthis.mustWalkOut = true;\n  \treturn true;\n  }\n}\n', 4),
       ('7ad2a354-fa19-420c-8fb6-04ef2536d917', 'if ((this.roundsCount) == 1) {\n  if ((this.redBerryCount) !== 1) {\n  \tthis._killCritter(x, y, (this.redBerryCount), 1);\n  \tthis.mustWalkOut = true;\n  \treturn true;\n  }\n}\nif ((this.roundsCount) == 2) {\n  if ((this.redBerryCount) !== 2) {\n  \tthis._killCritter(x, y, (this.redBerryCount), 2);\n  \tthis.mustWalkOut = true;\n  \treturn true;\n  }\n}\n', 5),
       ('7ad2a354-fa19-420c-8fb6-04ef2536d917', 'if ((this.redBerryCount) !== (this.roundsCount)) {\n\tthis._killCritter(x, y, (this.redBerryCount), (this.roundsCount));\n\tthis.mustWalkOut = true;\n\treturn true;\n}\n', 8);


-- Level 2 Hints

-- Intro level 2
insert into `hint` (`id`, `hint_situation`, `heal_level_id`)
values ('531f8a22-398e-40b6-b243-375929434ecd', 0, '827429bf-72ad-48df-ba1f-e9dba34d342b');

insert into `hint_hint_texts` (`hint_id`, `hint_texts`, `hint_texts_key`)
values ('531f8a22-398e-40b6-b243-375929434ecd', 'hint_loop_level_intro_0', 0),
       ('531f8a22-398e-40b6-b243-375929434ecd', 'hint_loop_level_intro_1', 1),
       ('531f8a22-398e-40b6-b243-375929434ecd', 'hint_loop_level_intro_2', 2),
       ('531f8a22-398e-40b6-b243-375929434ecd', 'hint_loop_level_intro_3', 3),
       ('531f8a22-398e-40b6-b243-375929434ecd', 'hint_loop_level_intro_4', 4),
       ('531f8a22-398e-40b6-b243-375929434ecd', 'hint_loop_level_intro_5', 5),
       ('531f8a22-398e-40b6-b243-375929434ecd', 'hint_loop_level_intro_6', 6),
       ('531f8a22-398e-40b6-b243-375929434ecd', 'hint_loop_level_intro_7', 7),
       ('531f8a22-398e-40b6-b243-375929434ecd', 'hint_loop_level_intro_8', 8),
       ('531f8a22-398e-40b6-b243-375929434ecd', 'hint_loop_level_intro_9', 9),
       ('531f8a22-398e-40b6-b243-375929434ecd', 'hint_loop_level_intro_10', 10),
       ('531f8a22-398e-40b6-b243-375929434ecd', 'hint_loop_level_intro_11', 11);


insert into `associated_coordinates` (`hint_id`, `x`, `y`, `associated_coordinates_key`)
values ('531f8a22-398e-40b6-b243-375929434ecd', 3, 0, 1),
       ('531f8a22-398e-40b6-b243-375929434ecd', 5, 6, 2),
       ('531f8a22-398e-40b6-b243-375929434ecd', 3, 6, 6);

insert into `associated_cut_blocks` (`id`, `hint_id`, `associated_cut_blocks_key`)
values ('88241727-a771-4f48-bdc9-48f902d7491f', '531f8a22-398e-40b6-b243-375929434ecd', 1),
       ('270655fb-0ada-410c-8acb-82b0b81931a7', '531f8a22-398e-40b6-b243-375929434ecd', 2),
       ('efaade0f-bddb-40de-b539-626f9187beca', '531f8a22-398e-40b6-b243-375929434ecd', 9),
       ('da7e0103-f10e-4e02-bc18-a2cbd3c99ca9', '531f8a22-398e-40b6-b243-375929434ecd', 10);

insert into `associated_cut_blocks_block_ids` (`associated_cut_blocks_id`, `block_ids`)
values ('88241727-a771-4f48-bdc9-48f902d7491f', 'logic_compare_1'),
       ('270655fb-0ada-410c-8acb-82b0b81931a7', 'set_berries_1'),
       ('efaade0f-bddb-40de-b539-626f9187beca', 'set_berries_1'),
       ('da7e0103-f10e-4e02-bc18-a2cbd3c99ca9', 'recipe_start_while');

insert into `associated_component_ids` (`id`, `hint_id`, `associated_component_ids_key`)
values ('4e10fb7e-0294-4357-897d-c3e8b6b98f30', '531f8a22-398e-40b6-b243-375929434ecd', 1),
       ('daa73324-d7a3-4040-9773-9b27586edf4a', '531f8a22-398e-40b6-b243-375929434ecd', 2),
       ('49a5e635-5ee4-4caf-bc75-837c93e3f05a', '531f8a22-398e-40b6-b243-375929434ecd', 3),
       ('6929deae-3846-421f-8092-1a4d323f2443', '531f8a22-398e-40b6-b243-375929434ecd', 4),
       ('eda5cff0-53cb-4c27-883e-285874a951ac', '531f8a22-398e-40b6-b243-375929434ecd', 7),
       ('3fdcc481-0e64-4cce-ab1d-322f2786b32a', '531f8a22-398e-40b6-b243-375929434ecd', 8),
       ('955fa69a-97bc-4eb2-a543-2a7a84bedc8c', '531f8a22-398e-40b6-b243-375929434ecd', 9),
       ('c7740392-f124-4064-a8f4-860eb86e15ab', '531f8a22-398e-40b6-b243-375929434ecd', 10);

insert into `associated_component_ids_component_ids` (`associated_component_ids_id`, `component_ids`)
values ('4e10fb7e-0294-4357-897d-c3e8b6b98f30', 'gameboard'),
       ('daa73324-d7a3-4040-9773-9b27586edf4a', 'blockly_cut_div'),
       ('49a5e635-5ee4-4caf-bc75-837c93e3f05a', 'critter_container_all_collectors'),
       ('6929deae-3846-421f-8092-1a4d323f2443', 'critter_container_all_collectors'),
       ('eda5cff0-53cb-4c27-883e-285874a951ac', 'test_popup_container'),
       ('3fdcc481-0e64-4cce-ab1d-322f2786b32a', 'test_popup_container'),
       ('955fa69a-97bc-4eb2-a543-2a7a84bedc8c', 'test_popup_container'),
       ('c7740392-f124-4064-a8f4-860eb86e15ab', 'blockly_cut_div');

insert into `expected_clicked_coordinate` (`id`, `hint_id`, `expected_clicked_coordinates_key`)
values ('b58f9be4-7371-412d-8ace-0984db0de92c', '531f8a22-398e-40b6-b243-375929434ecd', 6),
       ('3564b33c-c9d4-4629-bc29-632483e2bdc6','531f8a22-398e-40b6-b243-375929434ecd', 7);

insert into `expected_clicked_coordinate_coordinates` (`expected_clicked_coordinate_id`, `x`, `y`)
values ('b58f9be4-7371-412d-8ace-0984db0de92c', 3, 6),
       ('3564b33c-c9d4-4629-bc29-632483e2bdc6', 3, 6);

insert into `hint_expected_user_interaction` (`hint_id`, `expected_user_interaction`, `expected_user_interaction_key`)
values ('531f8a22-398e-40b6-b243-375929434ecd', 0, 6);

insert into `portal_xmls` (`hint_id`, `portal_xml`, `portal_xml_key`)
values ('531f8a22-398e-40b6-b243-375929434ecd', '<xml xmlns="http://www.w3.org/1999/xhtml"></xml>', 7),
       ('531f8a22-398e-40b6-b243-375929434ecd',
        '<xml xmlns=\"https://developers.google.com/blockly/xml\"><block type=\"assert_loop_free\" id=\":_j|[D8OsEN7^7y7xUZ?\" x=\"-307\" y=\"-87\"><value name=\"value\"></value></block> <block type=\"assert_loop\" id=\",l:RPr)AXBwKb7te0?*C\" x=\"-483\" y=\"-130\"><value name=\"target\"></value><value name=\"value\"></value></block></xml>', 8),
       ('531f8a22-398e-40b6-b243-375929434ecd',
        '<xml xmlns=\"https://developers.google.com/blockly/xml\"><block type=\"properties_user_healing\" id=\"Kh;yp*$J:~^C1::C9s7Y\" x=\"212\" y=\"136\"><field name=\"properties\">PURPLEBERRIES</field></block></xml>', 9);


-- Code Explanation level 2
insert into `hint` (`id`, `hint_situation`, `heal_level_id`)
values ('cf07974c-554c-44e1-8f90-52def8160ac8', 2, '827429bf-72ad-48df-ba1f-e9dba34d342b');

insert into `hint_hint_texts` (`hint_id`, `hint_texts`, `hint_texts_key`)
values ('cf07974c-554c-44e1-8f90-52def8160ac8', 'hint_loop_level_2_code_0', 0),
       ('cf07974c-554c-44e1-8f90-52def8160ac8', 'hint_loop_level_2_code_1', 1),
       ('cf07974c-554c-44e1-8f90-52def8160ac8', 'hint_loop_level_2_code_2', 2),
       ('cf07974c-554c-44e1-8f90-52def8160ac8', 'hint_loop_level_2_code_3', 3),
       ('cf07974c-554c-44e1-8f90-52def8160ac8', 'hint_loop_level_2_code_4', 4),
       ('cf07974c-554c-44e1-8f90-52def8160ac8', 'hint_loop_level_2_code_5', 5),
       ('cf07974c-554c-44e1-8f90-52def8160ac8', 'hint_loop_level_2_code_6', 6),
       ('cf07974c-554c-44e1-8f90-52def8160ac8', 'hint_loop_level_2_code_7', 7),
       ('cf07974c-554c-44e1-8f90-52def8160ac8', 'hint_loop_level_2_code_8', 8),
       ('cf07974c-554c-44e1-8f90-52def8160ac8', 'hint_loop_level_2_code_9', 9),
       ('cf07974c-554c-44e1-8f90-52def8160ac8', 'hint_loop_level_2_code_10', 10),
       ('cf07974c-554c-44e1-8f90-52def8160ac8', 'hint_loop_level_2_code_11', 11),
       ('cf07974c-554c-44e1-8f90-52def8160ac8', 'hint_loop_level_2_code_12', 12);

insert into associated_component_ids (id, hint_id, associated_component_ids_key)
values ('f1a2b3c4-d5e6-47f8-9g0h-1i2j3k4l5m6n', 'cf07974c-554c-44e1-8f90-52def8160ac8', 0),
       ('a7b8c9d0-e1f2-43g4-5h6i-7j8k9l0m1n2o', 'cf07974c-554c-44e1-8f90-52def8160ac8', 1),
       ('b3c4d5e6-f7g8-49h0-1i2j-3k4l5m6n7o8p', 'cf07974c-554c-44e1-8f90-52def8160ac8', 2),
       ('c9d0e1f2-g3h4-45i6-7j8k-9l0m1n2o3p4q', 'cf07974c-554c-44e1-8f90-52def8160ac8', 3),
       ('d5e6f7g8-h9i0-41j2-3k4l-5m6n7o8p9q0r', 'cf07974c-554c-44e1-8f90-52def8160ac8', 4),
       ('e1f2g3h4-i5j6-47k8-9l0m-1n2o3p4q5r6s', 'cf07974c-554c-44e1-8f90-52def8160ac8', 5),
       ('f7g8h9i0-j1k2-43l4-5m6n-7o8p9q0r1s2t', 'cf07974c-554c-44e1-8f90-52def8160ac8', 6),
       ('g3h4i5j6-k7l8-49m0-1n2o-3p4q5r6s7t8u', 'cf07974c-554c-44e1-8f90-52def8160ac8', 7),
       ('h9i0j1k2-l3m4-45n6-7o8p-9q0r1s2t3u4v', 'cf07974c-554c-44e1-8f90-52def8160ac8', 8),
       ('i5j6k7l8-m9n0-41o2-3p4q-5r6s7t8u9v0w', 'cf07974c-554c-44e1-8f90-52def8160ac8', 9),
       ('j1k2l3m4-n5o6-47p8-9q0r-1s2t3u4v5w6x', 'cf07974c-554c-44e1-8f90-52def8160ac8', 10),
       ('k7l8m9n0-o1p2-43q4-5r6s-7t8u9v0w1x2y', 'cf07974c-554c-44e1-8f90-52def8160ac8', 11);

insert into associated_component_ids_component_ids (associated_component_ids_id, component_ids)
values ('f1a2b3c4-d5e6-47f8-9g0h-1i2j3k4l5m6n', 'blockly_cut_div'),
       ('a7b8c9d0-e1f2-43g4-5h6i-7j8k9l0m1n2o', 'blockly_cut_div'),
       ('b3c4d5e6-f7g8-49h0-1i2j-3k4l5m6n7o8p', 'blockly_cut_div'),
       ('c9d0e1f2-g3h4-45i6-7j8k-9l0m1n2o3p4q', 'blockly_cut_div'),
       ('d5e6f7g8-h9i0-41j2-3k4l-5m6n7o8p9q0r', 'blockly_cut_div'),
       ('e1f2g3h4-i5j6-47k8-9l0m-1n2o3p4q5r6s', 'blockly_cut_div'),
       ('f7g8h9i0-j1k2-43l4-5m6n-7o8p9q0r1s2t', 'blockly_cut_div'),
       ('g3h4i5j6-k7l8-49m0-1n2o-3p4q5r6s7t8u', 'blockly_cut_div'),
       ('h9i0j1k2-l3m4-45n6-7o8p-9q0r1s2t3u4v', 'blockly_cut_div'),
       ('i5j6k7l8-m9n0-41o2-3p4q-5r6s7t8u9v0w', 'blockly_cut_div'),
       ('j1k2l3m4-n5o6-47p8-9q0r-1s2t3u4v5w6x', 'blockly_cut_div'),
       ('k7l8m9n0-o1p2-43q4-5r6s-7t8u9v0w1x2y', 'blockly_cut_div');

insert into `associated_cut_blocks` (`id`, `hint_id`, `associated_cut_blocks_key`)
values ('a1b2c3d4-e5f6-47g8-9h0i-1j2k3l4m5n6o', 'cf07974c-554c-44e1-8f90-52def8160ac8', 1),
       ('b2c3d4e5-f6g7-48h9-0i1j-2k3l4m5n6o7p', 'cf07974c-554c-44e1-8f90-52def8160ac8', 2),
       ('c3d4e5f6-g7h8-49i0-1j2k-3l4m5n6o7p8q', 'cf07974c-554c-44e1-8f90-52def8160ac8', 3),
       ('d4e5f6g7-h8i9-40j1-2k3l-4m5n6o7p8q9r', 'cf07974c-554c-44e1-8f90-52def8160ac8', 4),
       ('e5f6g7h8-i9j0-41k2-3l4m-5n6o7p8q9r0s', 'cf07974c-554c-44e1-8f90-52def8160ac8', 5),
       ('f6g7h8i9-j0k1-42l3-4m5n-6o7p8q9r0s1t', 'cf07974c-554c-44e1-8f90-52def8160ac8', 6),
       ('g7h8i9j0-k1l2-43m4-5n6o-7p8q9r0s1t2u', 'cf07974c-554c-44e1-8f90-52def8160ac8', 7),
       ('h8i9j0k1-l2m3-44n5-6o7p-8q9r0s1t2u3v', 'cf07974c-554c-44e1-8f90-52def8160ac8', 8),
       ('b6d61f54-4b4f-4034-9e63-7c7ccc0e8c9f', 'cf07974c-554c-44e1-8f90-52def8160ac8', 9),
       ('i9j0k1l2-m3n4-45o6-7p8q-9r0s1t2u3v4w', 'cf07974c-554c-44e1-8f90-52def8160ac8', 10),
       ('j0k1l2m3-n4o5-46p7-8q9r-0s1t2u3v4w5x', 'cf07974c-554c-44e1-8f90-52def8160ac8', 11);

insert into `associated_cut_blocks_block_ids` (`associated_cut_blocks_id`, `block_ids`)
values ('a1b2c3d4-e5f6-47g8-9h0i-1j2k3l4m5n6o', 'recipe_start_while_1'),
       ('b2c3d4e5-f6g7-48h9-0i1j-2k3l4m5n6o7p', 'logic_compare_1'),
       ('c3d4e5f6-g7h8-49i0-1j2k-3l4m5n6o7p8q', 'logic_compare_1'),
       ('d4e5f6g7-h8i9-40j1-2k3l-4m5n6o7p8q9r', 'set_berries_1'),
       ('e5f6g7h8-i9j0-41k2-3l4m-5n6o7p8q9r0s', 'set_berries_1'),
       ('f6g7h8i9-j0k1-42l3-4m5n-6o7p8q9r0s1t', 'set_berries_1'),
       ('g7h8i9j0-k1l2-43m4-5n6o-7p8q9r0s1t2u', 'set_berries_1'),
       ('h8i9j0k1-l2m3-44n5-6o7p-8q9r0s1t2u3v', 'recipe_start_while_1'),
       ('h8i9j0k1-l2m3-44n5-6o7p-8q9r0s1t2u3v', 'logic_compare_1'),
       ('b6d61f54-4b4f-4034-9e63-7c7ccc0e8c9f', 'set_berries_1'),
       ('i9j0k1l2-m3n4-45o6-7p8q-9r0s1t2u3v4w', 'recipe_start_while_1'),
       ('i9j0k1l2-m3n4-45o6-7p8q-9r0s1t2u3v4w', 'logic_compare_1'),
       ('j0k1l2m3-n4o5-46p7-8q9r-0s1t2u3v4w5x', 'logic_compare_1');

insert into `hint_expected_user_interaction` (`hint_id`, `expected_user_interaction`, `expected_user_interaction_key`)
values ('cf07974c-554c-44e1-8f90-52def8160ac8', 3, 3),
       ('cf07974c-554c-44e1-8f90-52def8160ac8', 3, 6),
       ('cf07974c-554c-44e1-8f90-52def8160ac8', 3, 9);

insert into `answer_options_list` (`id`, `hint_id`, `answer_options_list_key`)
values ('6ae34f58-61db-47e6-b7da-a2983d52eda6', 'cf07974c-554c-44e1-8f90-52def8160ac8', 3),
       ('b2c3d4e5-f6g7-48h9-0i1j-2k3l4m5n6o7p', 'cf07974c-554c-44e1-8f90-52def8160ac8', 6),
       ('c3d4e5f6-g7h8-49i0-1j2k-3l4m5n6o7p8q', 'cf07974c-554c-44e1-8f90-52def8160ac8', 9);

insert into `answer_options_list_answer_options` (`answer_options_list_id`, `answer_options`)
values ('6ae34f58-61db-47e6-b7da-a2983d52eda6', '1'),
       ('6ae34f58-61db-47e6-b7da-a2983d52eda6', '2'),
       ('6ae34f58-61db-47e6-b7da-a2983d52eda6', '3'),
       ('b2c3d4e5-f6g7-48h9-0i1j-2k3l4m5n6o7p', '1'),
       ('b2c3d4e5-f6g7-48h9-0i1j-2k3l4m5n6o7p', '3'),
       ('b2c3d4e5-f6g7-48h9-0i1j-2k3l4m5n6o7p', '6'),
       ('c3d4e5f6-g7h8-49i0-1j2k-3l4m5n6o7p8q', '3'),
       ('c3d4e5f6-g7h8-49i0-1j2k-3l4m5n6o7p8q', '6'),
       ('c3d4e5f6-g7h8-49i0-1j2k-3l4m5n6o7p8q', '9');

insert into `hint_solution_answer` (hint_id, solution_answer, solution_answer_key)
values ('cf07974c-554c-44e1-8f90-52def8160ac8', '3', 3),
       ('cf07974c-554c-44e1-8f90-52def8160ac8', '3', 6),
       ('cf07974c-554c-44e1-8f90-52def8160ac8', '6', 9);

insert into `associated_coordinates` (`hint_id`, `x`, `y`, `associated_coordinates_key`)
values ('cf07974c-554c-44e1-8f90-52def8160ac8', 5, 6, 5),
       ('cf07974c-554c-44e1-8f90-52def8160ac8', 5, 6, 6),
       ('cf07974c-554c-44e1-8f90-52def8160ac8', 3, 1, 7),
       ('cf07974c-554c-44e1-8f90-52def8160ac8', 5, 6, 9);


-- Portal together level 2
insert into `hint` (`id`, `hint_situation`, `heal_level_id`)
values ('ce2703e6-e6a8-44fa-a11f-ad6e90367e1a', 3, '827429bf-72ad-48df-ba1f-e9dba34d342b');

insert into `hint_hint_texts` (`hint_id`, `hint_texts`, `hint_texts_key`)
values ('ce2703e6-e6a8-44fa-a11f-ad6e90367e1a', 'hint_loop_level_2_complete_0', 0),
       ('ce2703e6-e6a8-44fa-a11f-ad6e90367e1a', 'hint_loop_level_2_complete_1', 1),
       ('ce2703e6-e6a8-44fa-a11f-ad6e90367e1a', 'hint_loop_level_2_complete_2', 2),
       ('ce2703e6-e6a8-44fa-a11f-ad6e90367e1a', 'hint_loop_level_2_complete_3', 3),
       ('ce2703e6-e6a8-44fa-a11f-ad6e90367e1a', 'hint_loop_level_2_complete_4', 4),
       ('ce2703e6-e6a8-44fa-a11f-ad6e90367e1a', 'hint_loop_level_2_complete_5', 5),
       ('ce2703e6-e6a8-44fa-a11f-ad6e90367e1a', 'hint_loop_level_2_complete_6', 6),
       ('ce2703e6-e6a8-44fa-a11f-ad6e90367e1a', 'hint_loop_level_2_complete_7', 7),
       ('ce2703e6-e6a8-44fa-a11f-ad6e90367e1a', 'hint_loop_level_2_complete_8', 8),
       ('ce2703e6-e6a8-44fa-a11f-ad6e90367e1a', 'hint_loop_level_2_complete_9', 9),
       ('ce2703e6-e6a8-44fa-a11f-ad6e90367e1a', 'hint_loop_level_2_complete_10', 10),
       ('ce2703e6-e6a8-44fa-a11f-ad6e90367e1a', 'hint_loop_level_2_complete_11', 11);


insert into `associated_coordinates` (`hint_id`, `x`, `y`, `associated_coordinates_key`)
values ('ce2703e6-e6a8-44fa-a11f-ad6e90367e1a', 3, 6, 2),
       ('ce2703e6-e6a8-44fa-a11f-ad6e90367e1a', 5, 1, 9);

insert into `associated_cut_blocks` (`id`, `hint_id`, `associated_cut_blocks_key`)
values ('f1g2h3i4-j5k6-47l7-m8n9-o0p1q2r3s4t5', 'ce2703e6-e6a8-44fa-a11f-ad6e90367e1a', 3),
       ('u6v7w8x9-y0z1-48a2-b3c4-d5e6f7g8h9i0', 'ce2703e6-e6a8-44fa-a11f-ad6e90367e1a', 4),
       ('ada65a7c-2960-45d6-9298-719f70580ea7', 'ce2703e6-e6a8-44fa-a11f-ad6e90367e1a', 7),
       ('j1k2l3m4-n5o6-49p7-q8r9-s0t1u2v3w4x5', 'ce2703e6-e6a8-44fa-a11f-ad6e90367e1a', 8),
       ('aa91abad-ab9e-48d8-89d4-1c2200e1bdbc', 'ce2703e6-e6a8-44fa-a11f-ad6e90367e1a', 10);

insert into `associated_cut_blocks_block_ids` (`associated_cut_blocks_id`, `block_ids`)
values ('f1g2h3i4-j5k6-47l7-m8n9-o0p1q2r3s4t5', 'set_berries_1'),
       ('u6v7w8x9-y0z1-48a2-b3c4-d5e6f7g8h9i0', 'set_berries_1'),
       ('ada65a7c-2960-45d6-9298-719f70580ea7', 'logic_compare_1'),
       ('j1k2l3m4-n5o6-49p7-q8r9-s0t1u2v3w4x5', 'logic_compare_1'),
       ('aa91abad-ab9e-48d8-89d4-1c2200e1bdbc', 'logic_compare_1');

insert into `associated_component_ids` (`id`, `hint_id`, `associated_component_ids_key`)
values ('7f9e8d7c-6b5a-4321-9876-543210fedcba', 'ce2703e6-e6a8-44fa-a11f-ad6e90367e1a', 1),
       ('1a2b3c4d-5e6f-7890-abcd-ef1234567890', 'ce2703e6-e6a8-44fa-a11f-ad6e90367e1a', 2),
       ('abcdef12-3456-7890-1234-567890abcdef', 'ce2703e6-e6a8-44fa-a11f-ad6e90367e1a', 3),
       ('11223344-5566-7788-99aa-bbccddeeff00', 'ce2703e6-e6a8-44fa-a11f-ad6e90367e1a', 4),
       ('aabbccdd-eeff-0011-2233-445566778899', 'ce2703e6-e6a8-44fa-a11f-ad6e90367e1a', 5),
       ('99887766-5544-3322-1100-aabbccddeeff', 'ce2703e6-e6a8-44fa-a11f-ad6e90367e1a', 6),
       ('12345678-9abc-def0-1234-56789abcdef0', 'ce2703e6-e6a8-44fa-a11f-ad6e90367e1a', 7),
       ('fedcba98-7654-3210-fedc-ba9876543210', 'ce2703e6-e6a8-44fa-a11f-ad6e90367e1a', 8),
       ('0f1e2d3c-4b5a-6978-8796-a5b4c3d2e1f0', 'ce2703e6-e6a8-44fa-a11f-ad6e90367e1a', 9),
       ('868908ae-1eee-4a4d-9521-98d88da0ef3f', 'ce2703e6-e6a8-44fa-a11f-ad6e90367e1a', 10),
       ('3ce6acef-f857-4b47-a1d9-7ec2fd1e9d31', 'ce2703e6-e6a8-44fa-a11f-ad6e90367e1a', 11);

insert into `associated_component_ids_component_ids` (`associated_component_ids_id`, `component_ids`)
values ('7f9e8d7c-6b5a-4321-9876-543210fedcba', 'critter_container_all_collectors'),
       ('7f9e8d7c-6b5a-4321-9876-543210fedcba', 'gameboard'),
       ('1a2b3c4d-5e6f-7890-abcd-ef1234567890', 'gameboard'),
       ('abcdef12-3456-7890-1234-567890abcdef', 'blockly_cut_div'),
       ('11223344-5566-7788-99aa-bbccddeeff00', 'blockly_cut_div'),
       ('aabbccdd-eeff-0011-2233-445566778899', 'test_popup_container'),
       ('99887766-5544-3322-1100-aabbccddeeff', 'save_button'),
       ('12345678-9abc-def0-1234-56789abcdef0', 'blockly_cut_div'),
       ('fedcba98-7654-3210-fedc-ba9876543210', 'blockly_cut_div'),
       ('0f1e2d3c-4b5a-6978-8796-a5b4c3d2e1f0', 'gameboard'),
       ('868908ae-1eee-4a4d-9521-98d88da0ef3f', 'test_popup_container'),
       ('3ce6acef-f857-4b47-a1d9-7ec2fd1e9d31', 'save_button');

insert into `portal_xmls` (`hint_id`, `portal_xml`, `portal_xml_key`)
values ('ce2703e6-e6a8-44fa-a11f-ad6e90367e1a',
        '<xml xmlns="https://developers.google.com/blockly/xml"><block type="properties_user_healing" id="2y3aK*ouC%Vc2_,-SI.!" x="61" y="90"><field name="properties">PURPLEBERRIES</field></block><block type="math_arithmetic" id="M]Qfng[KcxW;Qdz%;CdX" x="348" y="84"><field name="OP">MULTIPLY</field><value name="A"><block type="properties_user_healing" id="LR?C?:Rba%!bTGb?N8SP"><field name="properties">ROUNDS</field></block></value><value name="B"><block type="math_number" id="Eem[Vxht-;;+ILj@@lxp"><field name="NUM">3</field></block></value></block></xml>', 4),
       ('ce2703e6-e6a8-44fa-a11f-ad6e90367e1a',
        '<xml xmlns="https://developers.google.com/blockly/xml"><block type="assert_loop" id="G^1fh~1knO*vR%W5#4zQ" x="-110" y="60"><value name="target"><block type="properties_user_healing" id="?!S63,_wO{71-7]gd-5q"><field name="properties">PURPLEBERRIES</field></block></value><value name="value"></value></block><block type="math_arithmetic" id="s:bIW^FnoXboK6^eBgh{" x="194" y="184"><field name="OP">MULTIPLY</field><value name="A"><block type="properties_user_healing" id="PV=nKY,F;HVhy0rHAiA["><field name="properties">ROUNDS</field></block></value><value name="B"><block type="math_number" id="xj7otKGNi5z85?E8KBGi"><field name="NUM">3</field></block></value></block></xml>', 5),
       ('ce2703e6-e6a8-44fa-a11f-ad6e90367e1a',
        '<xml xmlns="https://developers.google.com/blockly/xml"><block type="assert_loop_free" id="Opw-gW5,wHsjo%rVVkm]" x="-295" y="-133"><value name="value"><block type="logic_compare" id="Updh4`dmqWOl8d}M;g8y"><field name="OP">LTE</field><value name="A"><block type="properties_user_healing" id="b@|}ai;JP@:~rVR@L`5V"><field name="properties">ROUNDS</field></block></value></block></value></block></xml>', 10),
       ('ce2703e6-e6a8-44fa-a11f-ad6e90367e1a',
        '<xml xmlns="https://developers.google.com/blockly/xml"><block type="assert_loop_free" id="Opw-gW5,wHsjo%rVVkm]" x="-295" y="-133"><value name="value"><block type="logic_compare" id="Updh4`dmqWOl8d}M;g8y"><field name="OP">LTE</field><value name="A"><block type="properties_user_healing" id="b@|}ai;JP@:~rVR@L`5V"><field name="properties">ROUNDS</field></block></value><value name="B"><block type="math_number" id="S2UM`G/KR!B#Z:h*HSJh"><field name="NUM">3</field></block></value></block></value></block></xml>', 11);

insert into `expected_clicked_coordinate` (`id`, `hint_id`, `expected_clicked_coordinates_key`)
values ('e1f2g3h4-i5j6-47k7-l8m9-n0o1p2q3r4s5', 'ce2703e6-e6a8-44fa-a11f-ad6e90367e1a', 2),
       ('t6u7v8w9-x0y1-48z2-a3b4-c5d6e7f8g9h0', 'ce2703e6-e6a8-44fa-a11f-ad6e90367e1a', 3),
       ('93993c26-940d-45ba-9927-f9607b4cf8c5', 'ce2703e6-e6a8-44fa-a11f-ad6e90367e1a', 9),
       ('6b41539d-3593-4bf5-9a5d-24b4ab39a0fe', 'ce2703e6-e6a8-44fa-a11f-ad6e90367e1a', 10);


insert into `expected_clicked_coordinate_coordinates` (`expected_clicked_coordinate_id`, `x`, `y`)
values ('e1f2g3h4-i5j6-47k7-l8m9-n0o1p2q3r4s5', 3, 6),
       ('t6u7v8w9-x0y1-48z2-a3b4-c5d6e7f8g9h0', 3, 6),
       ('93993c26-940d-45ba-9927-f9607b4cf8c5', 5, 1),
       ('6b41539d-3593-4bf5-9a5d-24b4ab39a0fe', 5, 1);


insert into `hint_expected_user_interaction` (`hint_id`, `expected_user_interaction`, `expected_user_interaction_key`)
values ('ce2703e6-e6a8-44fa-a11f-ad6e90367e1a', 0, 2),
       ('ce2703e6-e6a8-44fa-a11f-ad6e90367e1a', 1, 5),
       ('ce2703e6-e6a8-44fa-a11f-ad6e90367e1a', 2, 6),
       ('ce2703e6-e6a8-44fa-a11f-ad6e90367e1a', 0, 9),
       ('ce2703e6-e6a8-44fa-a11f-ad6e90367e1a', 1, 10),
       ('ce2703e6-e6a8-44fa-a11f-ad6e90367e1a', 2, 11);

insert into `hint_expected_portal_js_code` (`hint_id`, `expected_portal_js_code`, `expected_portal_js_code_key`)
values ('ce2703e6-e6a8-44fa-a11f-ad6e90367e1a', 'if ((this.purpleBerryCount) !== ((this.roundsCount) * 3)) {\n\tthis._killCritter(x, y, (this.purpleBerryCount), ((this.roundsCount) * 3));\n\tthis.mustWalkOut = true;\n\treturn true;\n}\n', 5),
       ('ce2703e6-e6a8-44fa-a11f-ad6e90367e1a', 'if (!(((this.roundsCount) <= 3))) {\n\tthis._killCritter(x, y, ((this.roundsCount) <= 3), ((this.roundsCount) <= 3));\n\tthis.mustWalkOut = true;\n\treturn true;\n}\n', 10);


-- Level 3 Hints

-- Intro level 3
insert into `hint` (`id`, `hint_situation`, `heal_level_id`)
values ('407ea61e-1d6b-4546-b801-6a1ae2383963', 0, '050f7bee-c3f7-4dd4-8c1e-c8598842d787');

insert into `hint_hint_texts` (`hint_id`, `hint_texts`, `hint_texts_key`)
values ('407ea61e-1d6b-4546-b801-6a1ae2383963', 'hint_loop_level_intro_0', 0),
       ('407ea61e-1d6b-4546-b801-6a1ae2383963', 'hint_loop_level_intro_1', 1),
       ('407ea61e-1d6b-4546-b801-6a1ae2383963', 'hint_loop_level_intro_2', 2),
       ('407ea61e-1d6b-4546-b801-6a1ae2383963', 'hint_loop_level_intro_3', 3),
       ('407ea61e-1d6b-4546-b801-6a1ae2383963', 'hint_loop_level_intro_4', 4),
       ('407ea61e-1d6b-4546-b801-6a1ae2383963', 'hint_loop_level_intro_5', 5),
       ('407ea61e-1d6b-4546-b801-6a1ae2383963', 'hint_loop_level_intro_6', 6),
       ('407ea61e-1d6b-4546-b801-6a1ae2383963', 'hint_loop_level_intro_7', 7),
       ('407ea61e-1d6b-4546-b801-6a1ae2383963', 'hint_loop_level_intro_8', 8),
       ('407ea61e-1d6b-4546-b801-6a1ae2383963', 'hint_loop_level_intro_9', 9),
       ('407ea61e-1d6b-4546-b801-6a1ae2383963', 'hint_loop_level_intro_10', 10),
       ('407ea61e-1d6b-4546-b801-6a1ae2383963', 'hint_loop_level_intro_11', 11);

insert into `associated_coordinates` (`hint_id`, `x`, `y`, `associated_coordinates_key`)
values ('407ea61e-1d6b-4546-b801-6a1ae2383963', 0, 1, 1),
       ('407ea61e-1d6b-4546-b801-6a1ae2383963', 5, 6, 2),
       ('407ea61e-1d6b-4546-b801-6a1ae2383963', 3, 6, 6);

insert into `associated_cut_blocks` (`id`, `hint_id`, `associated_cut_blocks_key`)
values ('f47ac10b-58cc-4372-a567-0e02b2c3d479', '407ea61e-1d6b-4546-b801-6a1ae2383963', 1),
       ('550e8400-e29b-41d4-a716-446655440000', '407ea61e-1d6b-4546-b801-6a1ae2383963', 2),
       ('6ba7b810-9dad-11d1-80b4-00c04fd430c8', '407ea61e-1d6b-4546-b801-6a1ae2383963', 9),
       ('8e5d7160-9723-11d1-b93c-0060089002ff', '407ea61e-1d6b-4546-b801-6a1ae2383963', 10);

insert into `associated_cut_blocks_block_ids` (`associated_cut_blocks_id`, `block_ids`)
values ('f47ac10b-58cc-4372-a567-0e02b2c3d479', 'logic_compare_1'),
       ('550e8400-e29b-41d4-a716-446655440000', 'set_berries_1'),
       ('550e8400-e29b-41d4-a716-446655440000', 'set_berries_2'),
       ('6ba7b810-9dad-11d1-80b4-00c04fd430c8', 'set_berries_1'),
       ('6ba7b810-9dad-11d1-80b4-00c04fd430c8', 'set_berries_2'),
       ('8e5d7160-9723-11d1-b93c-0060089002ff', 'recipe_start_while_1');

insert into `associated_component_ids` (`id`, `hint_id`, `associated_component_ids_key`)
values ('a1b2c3d4-e5f6-4a7b-8c9d-0e1f2a3b4c5d', '407ea61e-1d6b-4546-b801-6a1ae2383963', 1),
       ('b2c3d4e5-f6a7-4b8c-9d0e-1f2a3b4c5d6e', '407ea61e-1d6b-4546-b801-6a1ae2383963', 2),
       ('c3d4e5f6-a7b8-4c9d-0e1f-2a3b4c5d6e7f', '407ea61e-1d6b-4546-b801-6a1ae2383963', 3),
       ('d4e5f6a7-b8c9-4d0e-1f2a-3b4c5d6e7f8a', '407ea61e-1d6b-4546-b801-6a1ae2383963', 4),
       ('e5f6a7b8-c9d0-4e1f-2a3b-4c5d6e7f8a9b', '407ea61e-1d6b-4546-b801-6a1ae2383963', 7),
       ('f6a7b8c9-d0e1-4f2a-3b4c-5d6e7f8a9b0c', '407ea61e-1d6b-4546-b801-6a1ae2383963', 8),
       ('a7b8c9d0-e1f2-4a3b-4c5d-6e7f8a9b0c1d', '407ea61e-1d6b-4546-b801-6a1ae2383963', 9),
       ('b8c9d0e1-f2a3-4b4c-5d6e-7f8a9b0c1d2e', '407ea61e-1d6b-4546-b801-6a1ae2383963', 10);

insert into `associated_component_ids_component_ids` (`associated_component_ids_id`, `component_ids`)
values ('a1b2c3d4-e5f6-4a7b-8c9d-0e1f2a3b4c5d', 'gameboard'),
       ('b2c3d4e5-f6a7-4b8c-9d0e-1f2a3b4c5d6e', 'blockly_cut_div'),
       ('c3d4e5f6-a7b8-4c9d-0e1f-2a3b4c5d6e7f', 'critter_container_all_collectors'),
       ('d4e5f6a7-b8c9-4d0e-1f2a-3b4c5d6e7f8a', 'critter_container_all_collectors'),
       ('e5f6a7b8-c9d0-4e1f-2a3b-4c5d6e7f8a9b', 'test_popup_container'),
       ('f6a7b8c9-d0e1-4f2a-3b4c-5d6e7f8a9b0c', 'test_popup_container'),
       ('a7b8c9d0-e1f2-4a3b-4c5d-6e7f8a9b0c1d', 'test_popup_container'),
       ('b8c9d0e1-f2a3-4b4c-5d6e-7f8a9b0c1d2e', 'blockly_cut_div');

insert into `expected_clicked_coordinate` (`id`, `hint_id`, `expected_clicked_coordinates_key`)
values ('a5289d39-a13f-42f0-a96c-1d10b8cdfdb9', '407ea61e-1d6b-4546-b801-6a1ae2383963', 6),
       ('6c2b3578-0e49-4a5e-a3a7-d1f1664f90e7','407ea61e-1d6b-4546-b801-6a1ae2383963', 7);

insert into `expected_clicked_coordinate_coordinates` (`expected_clicked_coordinate_id`, `x`, `y`)
values ('a5289d39-a13f-42f0-a96c-1d10b8cdfdb9', 3, 6),
       ('6c2b3578-0e49-4a5e-a3a7-d1f1664f90e7', 3, 6);

insert into `hint_expected_user_interaction` (`hint_id`, `expected_user_interaction`, `expected_user_interaction_key`)
values ('407ea61e-1d6b-4546-b801-6a1ae2383963', 0, 6);

insert into `portal_xmls` (`hint_id`, `portal_xml`, `portal_xml_key`)
values ('407ea61e-1d6b-4546-b801-6a1ae2383963', '<xml xmlns="http://www.w3.org/1999/xhtml"></xml>', 7),
       ('407ea61e-1d6b-4546-b801-6a1ae2383963',
        '<xml xmlns=\"https://developers.google.com/blockly/xml\"><block type=\"assert_loop_free\" id=\":_j|[D8OsEN7^7y7xUZ?\" x=\"-307\" y=\"-87\"><value name=\"value\"></value></block> <block type=\"assert_loop\" id=\",l:RPr)AXBwKb7te0?*C\" x=\"-483\" y=\"-130\"><value name=\"target\"></value><value name=\"value\"></value></block></xml>', 8),
       ('407ea61e-1d6b-4546-b801-6a1ae2383963',
        '<xml xmlns=\"https://developers.google.com/blockly/xml\"><block type=\"properties_user_healing\" id=\"Kh;yp*$J:~^C1::C9s7Y\" x=\"212\" y=\"136\"><field name=\"properties\">ORANGEBERRIES</field></block></xml>', 9);


-- Code Explanation level 3
insert into `hint` (`id`, `hint_situation`, `heal_level_id`)
values ('837b78fd-8066-4abb-a24b-77157fcc67b1', 2, '050f7bee-c3f7-4dd4-8c1e-c8598842d787');

insert into `hint_hint_texts` (`hint_id`, `hint_texts`, `hint_texts_key`)
values ('837b78fd-8066-4abb-a24b-77157fcc67b1', 'hint_loop_level_3_code_0', 0),
       ('837b78fd-8066-4abb-a24b-77157fcc67b1', 'hint_loop_level_3_code_1', 1),
       ('837b78fd-8066-4abb-a24b-77157fcc67b1', 'hint_loop_level_3_code_2', 2),
       ('837b78fd-8066-4abb-a24b-77157fcc67b1', 'hint_loop_level_3_code_3', 3),
       ('837b78fd-8066-4abb-a24b-77157fcc67b1', 'hint_loop_level_3_code_4', 4),
       ('837b78fd-8066-4abb-a24b-77157fcc67b1', 'hint_loop_level_3_code_5', 5),
       ('837b78fd-8066-4abb-a24b-77157fcc67b1', 'hint_loop_level_3_code_6', 6),
       ('837b78fd-8066-4abb-a24b-77157fcc67b1', 'hint_loop_level_3_code_7', 7),
       ('837b78fd-8066-4abb-a24b-77157fcc67b1', 'hint_loop_level_3_code_8', 8),
       ('837b78fd-8066-4abb-a24b-77157fcc67b1', 'hint_loop_level_3_code_9', 9),
       ('837b78fd-8066-4abb-a24b-77157fcc67b1', 'hint_loop_level_3_code_10', 10);

insert into associated_component_ids (id, hint_id, associated_component_ids_key)
values ('1a2b3c4d-5e6f-47g8-9h0i-1j2k3l4m5n6o', '837b78fd-8066-4abb-a24b-77157fcc67b1', 0),
       ('2b3c4d5e-6f7g-48h9-0i1j-2k3l4m5n6o7p', '837b78fd-8066-4abb-a24b-77157fcc67b1', 1),
       ('3c4d5e6f-7g8h-49i0-1j2k-3l4m5n6o7p8q', '837b78fd-8066-4abb-a24b-77157fcc67b1', 2),
       ('4d5e6f7g-8h9i-40j1-2k3l-4m5n6o7p8q9r', '837b78fd-8066-4abb-a24b-77157fcc67b1', 3),
       ('5e6f7g8h-9i0j-41k2-3l4m-5n6o7p8q9r0s', '837b78fd-8066-4abb-a24b-77157fcc67b1', 4),
       ('6f7g8h9i-0j1k-42l3-4m5n-6o7p8q9r0s1t', '837b78fd-8066-4abb-a24b-77157fcc67b1', 5),
       ('7g8h9i0j-1k2l-43m4-5n6o-7p8q9r0s1t2u', '837b78fd-8066-4abb-a24b-77157fcc67b1', 6),
       ('8h9i0j1k-2l3m-44n5-6o7p-8q9r0s1t2u3v', '837b78fd-8066-4abb-a24b-77157fcc67b1', 7),
       ('9i0j1k2l-3m4n-45o6-7p8q-9r0s1t2u3v4w', '837b78fd-8066-4abb-a24b-77157fcc67b1', 8),
       ('0j1k2l3m-4n5o-46p7-8q9r-0s1t2u3v4w5x', '837b78fd-8066-4abb-a24b-77157fcc67b1', 9),
       ('1k2l3m4n-5o6p-47q8-9r0s-1t2u3v4w5x6y', '837b78fd-8066-4abb-a24b-77157fcc67b1', 10);

insert into associated_component_ids_component_ids (associated_component_ids_id, component_ids)
values ('1a2b3c4d-5e6f-47g8-9h0i-1j2k3l4m5n6o', 'blockly_cut_div'),
       ('2b3c4d5e-6f7g-48h9-0i1j-2k3l4m5n6o7p', 'blockly_cut_div'),
       ('3c4d5e6f-7g8h-49i0-1j2k-3l4m5n6o7p8q', 'blockly_cut_div'),
       ('4d5e6f7g-8h9i-40j1-2k3l-4m5n6o7p8q9r', 'blockly_cut_div'),
       ('5e6f7g8h-9i0j-41k2-3l4m-5n6o7p8q9r0s', 'blockly_cut_div'),
       ('6f7g8h9i-0j1k-42l3-4m5n-6o7p8q9r0s1t', 'blockly_cut_div'),
       ('7g8h9i0j-1k2l-43m4-5n6o-7p8q9r0s1t2u', 'blockly_cut_div'),
       ('8h9i0j1k-2l3m-44n5-6o7p-8q9r0s1t2u3v', 'blockly_cut_div'),
       ('9i0j1k2l-3m4n-45o6-7p8q-9r0s1t2u3v4w', 'blockly_cut_div'),
       ('0j1k2l3m-4n5o-46p7-8q9r-0s1t2u3v4w5x', 'blockly_cut_div'),
       ('1k2l3m4n-5o6p-47q8-9r0s-1t2u3v4w5x6y', 'blockly_cut_div');

insert into `associated_cut_blocks` (`id`, `hint_id`, `associated_cut_blocks_key`)
values ('c7e56bd1-9a2f-4c3e-b8d7-a6f5e4c3b2a1', '837b78fd-8066-4abb-a24b-77157fcc67b1', 1),
       ('d8f67ce2-0b3g-5d4f-c9e8-b7g6f5e4d3c2', '837b78fd-8066-4abb-a24b-77157fcc67b1', 2),
       ('e9g78df3-1c4h-6e5g-d0f9-c8h7g6f5e4d3', '837b78fd-8066-4abb-a24b-77157fcc67b1', 3),
       ('f0h89eg4-2d5i-7f6h-e1g0-d9i8h7g6f5e4', '837b78fd-8066-4abb-a24b-77157fcc67b1', 4),
       ('g1i90fh5-3e6j-8g7i-f2h1-e0j9i8h7g6f5', '837b78fd-8066-4abb-a24b-77157fcc67b1', 5),
       ('h2j01gi6-4f7k-9h8j-g3i2-f1k0j9i8h7g6', '837b78fd-8066-4abb-a24b-77157fcc67b1', 6),
       ('i3k12hj7-5g8l-0i9k-h4j3-g2l1k0j9i8h7', '837b78fd-8066-4abb-a24b-77157fcc67b1', 7),
       ('j4l23ik8-6h9m-1j0l-i5k4-h3m2l1k0j9i8', '837b78fd-8066-4abb-a24b-77157fcc67b1', 8),
       ('k5m34jl9-7i0n-2k1m-j6l5-i4n3m2l1k0j9', '837b78fd-8066-4abb-a24b-77157fcc67b1', 9),
       ('l6n45km0-8j1o-3l2n-k7m6-j5o4n3m2l1k0', '837b78fd-8066-4abb-a24b-77157fcc67b1', 10);

insert into `associated_cut_blocks_block_ids` (`associated_cut_blocks_id`, `block_ids`)
values ('c7e56bd1-9a2f-4c3e-b8d7-a6f5e4c3b2a1', 'recipe_start_while'),
       ('d8f67ce2-0b3g-5d4f-c9e8-b7g6f5e4d3c2', 'logic_compare_1'),
       ('e9g78df3-1c4h-6e5g-d0f9-c8h7g6f5e4d3', 'logic_compare_1'),
       ('f0h89eg4-2d5i-7f6h-e1g0-d9i8h7g6f5e4', 'controls_if_1'),
       ('f0h89eg4-2d5i-7f6h-e1g0-d9i8h7g6f5e4', 'logic_compare_2'),
       ('f0h89eg4-2d5i-7f6h-e1g0-d9i8h7g6f5e4', 'math_number_3'),
       ('f0h89eg4-2d5i-7f6h-e1g0-d9i8h7g6f5e4', 'math_number_4'),
       ('g1i90fh5-3e6j-8g7i-f2h1-e0j9i8h7g6f5', 'controls_if_1'),
       ('g1i90fh5-3e6j-8g7i-f2h1-e0j9i8h7g6f5', 'logic_compare_2'),
       ('g1i90fh5-3e6j-8g7i-f2h1-e0j9i8h7g6f5', 'set_berries_1'),
       ('h2j01gi6-4f7k-9h8j-g3i2-f1k0j9i8h7g6', 'set_berries_1'),
       ('i3k12hj7-5g8l-0i9k-h4j3-g2l1k0j9i8h7', 'controls_if_1'),
       ('i3k12hj7-5g8l-0i9k-h4j3-g2l1k0j9i8h7', 'logic_compare_2'),
       ('i3k12hj7-5g8l-0i9k-h4j3-g2l1k0j9i8h7', 'set_berries_2'),
       ('j4l23ik8-6h9m-1j0l-i5k4-h3m2l1k0j9i8', 'set_berries_2'),
       ('k5m34jl9-7i0n-2k1m-j6l5-i4n3m2l1k0j9', 'recipe_start_while'),
       ('k5m34jl9-7i0n-2k1m-j6l5-i4n3m2l1k0j9', 'logic_compare_1'),
       ('l6n45km0-8j1o-3l2n-k7m6-j5o4n3m2l1k0', 'logic_compare_1'),
       ('l6n45km0-8j1o-3l2n-k7m6-j5o4n3m2l1k0', 'set_berries_1'),
       ('l6n45km0-8j1o-3l2n-k7m6-j5o4n3m2l1k0', 'set_berries_2');

insert into `hint_expected_user_interaction` (`hint_id`, `expected_user_interaction`, `expected_user_interaction_key`)
values ('837b78fd-8066-4abb-a24b-77157fcc67b1', 3, 3),
       ('837b78fd-8066-4abb-a24b-77157fcc67b1', 3, 5),
       ('837b78fd-8066-4abb-a24b-77157fcc67b1', 3, 7);

insert into `answer_options_list` (`id`, `hint_id`, `answer_options_list_key`)
values ('4437d8b5-d183-4468-840e-759b8185cef9', '837b78fd-8066-4abb-a24b-77157fcc67b1', 3),
       ('006632a7-d31b-433b-81b1-20a47dd4256d', '837b78fd-8066-4abb-a24b-77157fcc67b1', 5),
       ('8c30a072-8828-4840-a14f-53127859049a', '837b78fd-8066-4abb-a24b-77157fcc67b1', 7);

insert into `answer_options_list_answer_options` (`answer_options_list_id`, `answer_options`)
values ('4437d8b5-d183-4468-840e-759b8185cef9', '2'),
       ('4437d8b5-d183-4468-840e-759b8185cef9', '3'),
       ('4437d8b5-d183-4468-840e-759b8185cef9', '4'),
       ('006632a7-d31b-433b-81b1-20a47dd4256d', '1'),
       ('006632a7-d31b-433b-81b1-20a47dd4256d', '2'),
       ('006632a7-d31b-433b-81b1-20a47dd4256d', '0'),
       ('8c30a072-8828-4840-a14f-53127859049a', '2'),
       ('8c30a072-8828-4840-a14f-53127859049a', '3'),
       ('8c30a072-8828-4840-a14f-53127859049a', '4');

insert into `hint_solution_answer` (hint_id, solution_answer, solution_answer_key)
values ('837b78fd-8066-4abb-a24b-77157fcc67b1', '3', 3),
       ('837b78fd-8066-4abb-a24b-77157fcc67b1', '1', 5),
       ('837b78fd-8066-4abb-a24b-77157fcc67b1', '3', 7);

insert into `associated_coordinates` (`hint_id`, `x`, `y`, `associated_coordinates_key`)
values ('837b78fd-8066-4abb-a24b-77157fcc67b1', 5, 6, 4),
       ('837b78fd-8066-4abb-a24b-77157fcc67b1', 5, 6, 5),
       ('837b78fd-8066-4abb-a24b-77157fcc67b1', 2, 1, 6),
       ('837b78fd-8066-4abb-a24b-77157fcc67b1', 5, 6, 7);


-- Portal together level 3
insert into `hint` (`id`, `hint_situation`, `heal_level_id`)
values ('1a2bbae3-26a5-4c01-83e9-75e8052697c2', 3, '050f7bee-c3f7-4dd4-8c1e-c8598842d787');

insert into `hint_hint_texts` (`hint_id`, `hint_texts`, `hint_texts_key`)
values ('1a2bbae3-26a5-4c01-83e9-75e8052697c2', 'hint_loop_level_3_complete_0', 0),
       ('1a2bbae3-26a5-4c01-83e9-75e8052697c2', 'hint_loop_level_3_complete_1', 1),
       ('1a2bbae3-26a5-4c01-83e9-75e8052697c2', 'hint_loop_level_3_complete_2', 2),
       ('1a2bbae3-26a5-4c01-83e9-75e8052697c2', 'hint_loop_level_3_complete_3', 3),
       ('1a2bbae3-26a5-4c01-83e9-75e8052697c2', 'hint_loop_level_3_complete_4', 4),
       ('1a2bbae3-26a5-4c01-83e9-75e8052697c2', 'hint_loop_level_3_complete_5', 5),
       ('1a2bbae3-26a5-4c01-83e9-75e8052697c2', 'hint_loop_level_3_complete_6', 6),
       ('1a2bbae3-26a5-4c01-83e9-75e8052697c2', 'hint_loop_level_3_complete_7', 7),
       ('1a2bbae3-26a5-4c01-83e9-75e8052697c2', 'hint_loop_level_3_complete_8', 8),
       ('1a2bbae3-26a5-4c01-83e9-75e8052697c2', 'hint_loop_level_3_complete_9', 9),
       ('1a2bbae3-26a5-4c01-83e9-75e8052697c2', 'hint_loop_level_3_complete_10', 10),
       ('1a2bbae3-26a5-4c01-83e9-75e8052697c2', 'hint_loop_level_3_complete_11', 11);

insert into `associated_coordinates` (`hint_id`, `x`, `y`, `associated_coordinates_key`)
values ('1a2bbae3-26a5-4c01-83e9-75e8052697c2', 5, 1, 3),
       ('1a2bbae3-26a5-4c01-83e9-75e8052697c2', 4, 6, 6);

insert into `associated_cut_blocks` (`id`, `hint_id`, `associated_cut_blocks_key`)
values ('72ce2b5b-c9fd-4156-b39b-6f1b0f196bce', '1a2bbae3-26a5-4c01-83e9-75e8052697c2', 2),
       ('2d4f6h8j-0l1n-3p5r-7t9v-1x3z5b7d9f1h', '1a2bbae3-26a5-4c01-83e9-75e8052697c2', 4),
       ('834c318c-a886-47e5-b9e5-7f581ed831ea', '1a2bbae3-26a5-4c01-83e9-75e8052697c2', 6),
       ('3g5i7k9m-1o3q-5s7u-9w1y-2a4c6e8g0i2k', '1a2bbae3-26a5-4c01-83e9-75e8052697c2', 7),
       ('4j6l8n0p-2r4t-6v8x-0z2b-3d5f7h9j1l3n', '1a2bbae3-26a5-4c01-83e9-75e8052697c2', 8),
       ('ec50bb9a-8e87-42bf-8933-c7db6d360659', '1a2bbae3-26a5-4c01-83e9-75e8052697c2', 9),
       ('5m7o9q1s-3u5w-7y9a-1c3e-4g6i8k0m2o4q', '1a2bbae3-26a5-4c01-83e9-75e8052697c2', 10);

insert into `associated_cut_blocks_block_ids` (`associated_cut_blocks_id`, `block_ids`)
values ('72ce2b5b-c9fd-4156-b39b-6f1b0f196bce', 'logic_compare_1'),
       ('72ce2b5b-c9fd-4156-b39b-6f1b0f196bce', 'set_berries_1'),
       ('72ce2b5b-c9fd-4156-b39b-6f1b0f196bce', 'set_berries_2'),
       ('2d4f6h8j-0l1n-3p5r-7t9v-1x3z5b7d9f1h', 'logic_compare_1'),
       ('834c318c-a886-47e5-b9e5-7f581ed831ea', 'set_berries_2'),
       ('834c318c-a886-47e5-b9e5-7f581ed831ea', 'set_berries_1'),
       ('3g5i7k9m-1o3q-5s7u-9w1y-2a4c6e8g0i2k', 'controls_if_1'),
       ('3g5i7k9m-1o3q-5s7u-9w1y-2a4c6e8g0i2k', 'logic_compare_2'),
       ('3g5i7k9m-1o3q-5s7u-9w1y-2a4c6e8g0i2k', 'set_berries_1'),
       ('4j6l8n0p-2r4t-6v8x-0z2b-3d5f7h9j1l3n', 'controls_if_1'),
       ('4j6l8n0p-2r4t-6v8x-0z2b-3d5f7h9j1l3n', 'logic_compare_2'),
       ('4j6l8n0p-2r4t-6v8x-0z2b-3d5f7h9j1l3n', 'set_berries_2'),
       ('ec50bb9a-8e87-42bf-8933-c7db6d360659', 'controls_if_1'),
       ('ec50bb9a-8e87-42bf-8933-c7db6d360659', 'set_berries_1'),
       ('ec50bb9a-8e87-42bf-8933-c7db6d360659', 'set_berries_2'),
       ('5m7o9q1s-3u5w-7y9a-1c3e-4g6i8k0m2o4q', 'controls_if_1'),
       ('5m7o9q1s-3u5w-7y9a-1c3e-4g6i8k0m2o4q', 'set_berries_1'),
       ('5m7o9q1s-3u5w-7y9a-1c3e-4g6i8k0m2o4q', 'set_berries_2');

insert into `associated_component_ids` (`id`, `hint_id`, `associated_component_ids_key`)
values ('a1b2c3d4-e5f6-47g8-9h0i-1j2k3l4m5n6o', '1a2bbae3-26a5-4c01-83e9-75e8052697c2', 1),
       ('b2c3d4e5-f6g7-48h9-0i1j-2k3l4m5n6o7p', '1a2bbae3-26a5-4c01-83e9-75e8052697c2', 2),
       ('c3d4e5f6-g7h8-49i0-1j2k-3l4m5n6o7p8q', '1a2bbae3-26a5-4c01-83e9-75e8052697c2', 3),
       ('d4e5f6g7-h8i9-40j1-2k3l-4m5n6o7p8q9r', '1a2bbae3-26a5-4c01-83e9-75e8052697c2', 4),
       ('e5f6g7h8-i9j0-41k2-3l4m-5n6o7p8q9r0s', '1a2bbae3-26a5-4c01-83e9-75e8052697c2', 5),
       ('f6g7h8i9-j0k1-42l3-4m5n-6o7p8q9r0s1t', '1a2bbae3-26a5-4c01-83e9-75e8052697c2', 6),
       ('g7h8i9j0-k1l2-43m4-5n6o-7p8q9r0s1t2u', '1a2bbae3-26a5-4c01-83e9-75e8052697c2', 7),
       ('h8i9j0k1-l2m3-44n5-6o7p-8q9r0s1t2u3v', '1a2bbae3-26a5-4c01-83e9-75e8052697c2', 8),
       ('i9j0k1l2-m3n4-45o6-7p8q-9r0s1t2u3v4w', '1a2bbae3-26a5-4c01-83e9-75e8052697c2', 9),
       ('j0k1l2m3-n4o5-46p7-8q9r-0s1t2u3v4w5x', '1a2bbae3-26a5-4c01-83e9-75e8052697c2', 10),
       ('k1l2m3n4-o5p6-47q8-9r0s-1t2u3v4w5x6y', '1a2bbae3-26a5-4c01-83e9-75e8052697c2', 11);

insert into `associated_component_ids_component_ids` (`associated_component_ids_id`, `component_ids`)
values ('a1b2c3d4-e5f6-47g8-9h0i-1j2k3l4m5n6o', 'critter_container_all_collectors'),
       ('a1b2c3d4-e5f6-47g8-9h0i-1j2k3l4m5n6o', 'gameboard'),
       ('b2c3d4e5-f6g7-48h9-0i1j-2k3l4m5n6o7p', 'blockly_cut_div'),
       ('c3d4e5f6-g7h8-49i0-1j2k-3l4m5n6o7p8q', 'gameboard'),
       ('d4e5f6g7-h8i9-40j1-2k3l-4m5n6o7p8q9r', 'blockly_cut_div'),
       ('e5f6g7h8-i9j0-41k2-3l4m-5n6o7p8q9r0s', 'save_button'),
       ('f6g7h8i9-j0k1-42l3-4m5n-6o7p8q9r0s1t', 'blockly_cut_div'),
       ('f6g7h8i9-j0k1-42l3-4m5n-6o7p8q9r0s1t', 'gameboard'),
       ('g7h8i9j0-k1l2-43m4-5n6o-7p8q9r0s1t2u', 'test_popup_container'),
       ('h8i9j0k1-l2m3-44n5-6o7p-8q9r0s1t2u3v', 'blockly_cut_div'),
       ('i9j0k1l2-m3n4-45o6-7p8q-9r0s1t2u3v4w', 'test_popup_container'),
       ('j0k1l2m3-n4o5-46p7-8q9r-0s1t2u3v4w5x', 'test_popup_container'),
       ('k1l2m3n4-o5p6-47q8-9r0s-1t2u3v4w5x6y', 'save_button');


insert into `portal_xmls` (`hint_id`, `portal_xml`, `portal_xml_key`)
values ('1a2bbae3-26a5-4c01-83e9-75e8052697c2',
        '<xml xmlns="https://developers.google.com/blockly/xml"><block type="assert_loop_free" id="Opw-gW5,wHsjo%rVVkm]" x="-295" y="-133"><value name="value"><block type="logic_compare" id="Updh4`dmqWOl8d}M;g8y"><field name="OP">LTE</field><value name="A"><block type="properties_user_healing" id="b@|}ai;JP@:~rVR@L`5V"><field name="properties">ROUNDS</field></block></value><value name="B"></value></block></value></block></xml>',
        4),
       ('1a2bbae3-26a5-4c01-83e9-75e8052697c2',
        '<xml xmlns="https://developers.google.com/blockly/xml"><block type="assert_loop_free" id="Opw-gW5,wHsjo%rVVkm]" x="-295" y="-133"><value name="value"><block type="logic_compare" id="Updh4`dmqWOl8d}M;g8y"><field name="OP">LTE</field><value name="A"><block type="properties_user_healing" id="b@|}ai;JP@:~rVR@L`5V"><field name="properties">ROUNDS</field></block></value><value name="B"><block type="math_number" id="S2UM`G/KR!B#Z:h*HSJh"><field name="NUM">3</field></block></value></block></value></block></xml>',
        5),
       ('1a2bbae3-26a5-4c01-83e9-75e8052697c2',
        '<xml xmlns="https://developers.google.com/blockly/xml"><block type="controls_if" id="YcWESIyO.]^SDHM*]1zK" x="114" y="69"><value name="IF0"><block type="logic_compare" id="Updh4`dmqWOl8d}M;g8y"><field name="OP">EQ</field><value name="A"><block type="properties_user_healing" id="gRey@Nq1z^x67)4%KkO;"><field name="properties">ROUNDS</field></block></value><value name="B"><block type="math_number" id="Eem[Vxht-;;+ILj@@lxp"><field name="NUM">1</field></block></value></block></value><statement name="DO0"><block type="assert_loop" id="7Q[e~lXQS`_TrRi6KQ*H"><value name="target"><block type="properties_user_healing" id="UxJ#2De^AqLq4==DpAR_"><field name="properties">ORANGEBERRIES</field></block></value><value name="value"></value></block></statement></block></xml>',
        7),
       ('1a2bbae3-26a5-4c01-83e9-75e8052697c2',
        '<xml xmlns="https://developers.google.com/blockly/xml"><block type="controls_if" id="YcWESIyO.]^SDHM*]1zK" x="125" y="15"><mutation elseif="1"></mutation><value name="IF0"><block type="logic_compare" id="Updh4`dmqWOl8d}M;g8y"><field name="OP">EQ</field><value name="A"><block type="properties_user_healing" id="gRey@Nq1z^x67)4%KkO;"><field name="properties">ROUNDS</field></block></value><value name="B"><block type="math_number" id="Eem[Vxht-;;+ILj@@lxp"><field name="NUM">1</field></block></value></block></value><statement name="DO0"><block type="assert_loop" id="7Q[e~lXQS`_TrRi6KQ*H"><value name="target"><block type="properties_user_healing" id="UxJ#2De^AqLq4==DpAR_"><field name="properties">ORANGEBERRIES</field></block></value><value name="value"><block type="math_number" id="Bm@pw[ww.]xLO}7vM$rp"><field name="NUM">1</field></block></value></block></statement><value name="IF1"><block type="logic_compare" id="|,e$)@7ta8x1wJ^]*tXx"><field name="OP">EQ</field><value name="A"><block type="properties_user_healing" id="|!,=;m1kcilBlJo3)F)N"><field name="properties">ROUNDS</field></block></value><value name="B"><block type="math_number" id="TPl!MD[TbC|P=~^KDws="><field name="NUM">2</field></block></value></block></value></block></xml>',
        8),
       ('1a2bbae3-26a5-4c01-83e9-75e8052697c2',
        '<xml xmlns="https://developers.google.com/blockly/xml"><block type="controls_if" id="YcWESIyO.]^SDHM*]1zK" x="114" y="69"><mutation elseif="1"></mutation><value name="IF0"><block type="logic_compare" id="Updh4`dmqWOl8d}M;g8y"><field name="OP">EQ</field><value name="A"><block type="properties_user_healing" id="gRey@Nq1z^x67)4%KkO;"><field name="properties">ROUNDS</field></block></value><value name="B"><block type="math_number" id="Eem[Vxht-;;+ILj@@lxp"><field name="NUM">1</field></block></value></block></value><statement name="DO0"><block type="assert_loop" id="7Q[e~lXQS`_TrRi6KQ*H"><value name="target"><block type="properties_user_healing" id="UxJ#2De^AqLq4==DpAR_"><field name="properties">ORANGEBERRIES</field></block></value><value name="value"><block type="math_number" id="Bm@pw[ww.]xLO}7vM$rp"><field name="NUM">1</field></block></value></block></statement><value name="IF1"><block type="logic_compare" id="|,e$)@7ta8x1wJ^]*tXx"><field name="OP">EQ</field><value name="A"><block type="properties_user_healing" id="|!,=;m1kcilBlJo3)F)N"><field name="properties">ROUNDS</field></block></value><value name="B"><block type="math_number" id="TPl!MD[TbC|P=~^KDws="><field name="NUM">2</field></block></value></block></value><statement name="DO1"><block type="assert_loop" id="d].TZE`n!:pD)bmMCKUV"><value name="target"><block type="properties_user_healing" id="%,7D?,/pRaKAw}acJy2W"><field name="properties">ORANGEBERRIES</field></block></value><value name="value"></value></block></statement></block></xml>',
        9),
       ('1a2bbae3-26a5-4c01-83e9-75e8052697c2',
        '<xml xmlns="https://developers.google.com/blockly/xml"><block type="controls_if" id="YcWESIyO.]^SDHM*]1zK" x="125" y="15"><mutation elseif="2"></mutation><value name="IF0"><block type="logic_compare" id="Updh4`dmqWOl8d}M;g8y"><field name="OP">EQ</field><value name="A"><block type="properties_user_healing" id="gRey@Nq1z^x67)4%KkO;"><field name="properties">ROUNDS</field></block></value><value name="B"><block type="math_number" id="Eem[Vxht-;;+ILj@@lxp"><field name="NUM">1</field></block></value></block></value><statement name="DO0"><block type="assert_loop" id="7Q[e~lXQS`_TrRi6KQ*H"><value name="target"><block type="properties_user_healing" id="UxJ#2De^AqLq4==DpAR_"><field name="properties">ORANGEBERRIES</field></block></value><value name="value"><block type="math_number" id="Bm@pw[ww.]xLO}7vM$rp"><field name="NUM">1</field></block></value></block></statement><value name="IF1"><block type="logic_compare" id="|,e$)@7ta8x1wJ^]*tXx"><field name="OP">EQ</field><value name="A"><block type="properties_user_healing" id="|!,=;m1kcilBlJo3)F)N"><field name="properties">ROUNDS</field></block></value><value name="B"><block type="math_number" id="TPl!MD[TbC|P=~^KDws="><field name="NUM">2</field></block></value></block></value><statement name="DO1"><block type="assert_loop" id="d].TZE`n!:pD)bmMCKUV"><value name="target"><block type="properties_user_healing" id="%,7D?,/pRaKAw}acJy2W"><field name="properties">ORANGEBERRIES</field></block></value><value name="value"><block type="math_number" id="KZr)=~k-iE3XS59xRTNY"><field name="NUM">3</field></block></value></block></statement><value name="IF2"><block type="logic_compare" id="9[V0):yg9~vq0|78[2P,"><field name="OP">EQ</field><value name="A"><block type="properties_user_healing" id="j^*:-2l@,*UBx|nF!7W+"><field name="properties">ROUNDS</field></block></value><value name="B"><block type="math_number" id="BbZd#[tEb9D#bH]I~TJP"><field name="NUM">3</field></block></value></block></value><statement name="DO2"><block type="assert_loop" id="NI2.*=bsXNe5UX_H4Xcy"><value name="target"><block type="properties_user_healing" id="5lTfef@h.n;*GtYRc3jg"><field name="properties">ORANGEBERRIES</field></block></value><value name="value"></value></block></statement></block></xml>',
        10),
       ('1a2bbae3-26a5-4c01-83e9-75e8052697c2',
        '<xml xmlns="https://developers.google.com/blockly/xml"><block type="controls_if" id="YcWESIyO.]^SDHM*]1zK" x="125" y="15"><mutation elseif="2"></mutation><value name="IF0"><block type="logic_compare" id="Updh4`dmqWOl8d}M;g8y"><field name="OP">EQ</field><value name="A"><block type="properties_user_healing" id="gRey@Nq1z^x67)4%KkO;"><field name="properties">ROUNDS</field></block></value><value name="B"><block type="math_number" id="Eem[Vxht-;;+ILj@@lxp"><field name="NUM">1</field></block></value></block></value><statement name="DO0"><block type="assert_loop" id="7Q[e~lXQS`_TrRi6KQ*H"><value name="target"><block type="properties_user_healing" id="UxJ#2De^AqLq4==DpAR_"><field name="properties">ORANGEBERRIES</field></block></value><value name="value"><block type="math_number" id="Bm@pw[ww.]xLO}7vM$rp"><field name="NUM">1</field></block></value></block></statement><value name="IF1"><block type="logic_compare" id="|,e$)@7ta8x1wJ^]*tXx"><field name="OP">EQ</field><value name="A"><block type="properties_user_healing" id="|!,=;m1kcilBlJo3)F)N"><field name="properties">ROUNDS</field></block></value><value name="B"><block type="math_number" id="TPl!MD[TbC|P=~^KDws="><field name="NUM">2</field></block></value></block></value><statement name="DO1"><block type="assert_loop" id="d].TZE`n!:pD)bmMCKUV"><value name="target"><block type="properties_user_healing" id="%,7D?,/pRaKAw}acJy2W"><field name="properties">ORANGEBERRIES</field></block></value><value name="value"><block type="math_number" id="KZr)=~k-iE3XS59xRTNY"><field name="NUM">3</field></block></value></block></statement><value name="IF2"><block type="logic_compare" id="9[V0):yg9~vq0|78[2P,"><field name="OP">EQ</field><value name="A"><block type="properties_user_healing" id="j^*:-2l@,*UBx|nF!7W+"><field name="properties">ROUNDS</field></block></value><value name="B"><block type="math_number" id="BbZd#[tEb9D#bH]I~TJP"><field name="NUM">3</field></block></value></block></value><statement name="DO2"><block type="assert_loop" id="NI2.*=bsXNe5UX_H4Xcy"><value name="target"><block type="properties_user_healing" id="5lTfef@h.n;*GtYRc3jg"><field name="properties">ORANGEBERRIES</field></block></value><value name="value"><block type="math_number" id="MZ*HeF9AS@HxpwsU!HmN"><field name="NUM">5</field></block></value></block></statement></block></xml>',
        11);


insert into `expected_clicked_coordinate` (`id`, `hint_id`, `expected_clicked_coordinates_key`)
values ('a1b2c3d4-e5f6-47g8-h9i0-j1k2l3m4n5o6', '1a2bbae3-26a5-4c01-83e9-75e8052697c2', 3),
       ('p7q8r9s0-t1u2-48v3-w4x5-y6z7a8b9c0d1', '1a2bbae3-26a5-4c01-83e9-75e8052697c2', 4),
       ('e2f3g4h5-i6j7-49k8-l9m0-n1o2p3q4r5s6', '1a2bbae3-26a5-4c01-83e9-75e8052697c2', 6),
       ('t7u8v9w0-x1y2-40z3-a4b5-c6d7e8f9g0h1', '1a2bbae3-26a5-4c01-83e9-75e8052697c2', 7);

insert into `expected_clicked_coordinate_coordinates` (`expected_clicked_coordinate_id`, `x`, `y`)
values ('a1b2c3d4-e5f6-47g8-h9i0-j1k2l3m4n5o6', 5, 1),
       ('p7q8r9s0-t1u2-48v3-w4x5-y6z7a8b9c0d1', 5, 1),
       ('e2f3g4h5-i6j7-49k8-l9m0-n1o2p3q4r5s6', 4, 6),
       ('t7u8v9w0-x1y2-40z3-a4b5-c6d7e8f9g0h1', 4, 6);

insert into `hint_expected_user_interaction` (`hint_id`, `expected_user_interaction`, `expected_user_interaction_key`)
values ('1a2bbae3-26a5-4c01-83e9-75e8052697c2', 0, 3),
       ('1a2bbae3-26a5-4c01-83e9-75e8052697c2', 1, 4),
       ('1a2bbae3-26a5-4c01-83e9-75e8052697c2', 2, 5),
       ('1a2bbae3-26a5-4c01-83e9-75e8052697c2', 0, 6),
       ('1a2bbae3-26a5-4c01-83e9-75e8052697c2', 1, 7),
       ('1a2bbae3-26a5-4c01-83e9-75e8052697c2', 1, 9),
       ('1a2bbae3-26a5-4c01-83e9-75e8052697c2', 1, 10),
       ('1a2bbae3-26a5-4c01-83e9-75e8052697c2', 2, 11);

insert into `hint_expected_portal_js_code` (`hint_id`, `expected_portal_js_code`, `expected_portal_js_code_key`)
values ('1a2bbae3-26a5-4c01-83e9-75e8052697c2', 'if (!(((this.roundsCount) <= 3))) {\n\tthis._killCritter(x, y, ((this.roundsCount) <= 3), ((this.roundsCount) <= 3));\n\tthis.mustWalkOut = true;\n\treturn true;\n}\n', 4),
       ('1a2bbae3-26a5-4c01-83e9-75e8052697c2', 'if ((this.roundsCount) == 1) {\n  if ((this.orangeBerryCount) !== 1) {\n  \tthis._killCritter(x, y, (this.orangeBerryCount), 1);\n  \tthis.mustWalkOut = true;\n  \treturn true;\n  }\n}\n', 7),
       ('1a2bbae3-26a5-4c01-83e9-75e8052697c2', 'if ((this.roundsCount) == 1) {\n  if ((this.orangeBerryCount) !== 1) {\n  \tthis._killCritter(x, y, (this.orangeBerryCount), 1);\n  \tthis.mustWalkOut = true;\n  \treturn true;\n  }\n} else if ((this.roundsCount) == 2) {\n  if ((this.orangeBerryCount) !== 3) {\n  \tthis._killCritter(x, y, (this.orangeBerryCount), 3);\n  \tthis.mustWalkOut = true;\n  \treturn true;\n  }\n}\n', 9),
       ('1a2bbae3-26a5-4c01-83e9-75e8052697c2', 'if ((this.roundsCount) == 1) {\n  if ((this.orangeBerryCount) !== 1) {\n  \tthis._killCritter(x, y, (this.orangeBerryCount), 1);\n  \tthis.mustWalkOut = true;\n  \treturn true;\n  }\n} else if ((this.roundsCount) == 2) {\n  if ((this.orangeBerryCount) !== 3) {\n  \tthis._killCritter(x, y, (this.orangeBerryCount), 3);\n  \tthis.mustWalkOut = true;\n  \treturn true;\n  }\n} else if ((this.roundsCount) == 3) {\n  if ((this.orangeBerryCount) !== 5) {\n  \tthis._killCritter(x, y, (this.orangeBerryCount), 5);\n  \tthis.mustWalkOut = true;\n  \treturn true;\n  }\n}\n', 10);


-- Level 4 hints:

-- Code Explanation level 4
insert into `hint` (`id`, `hint_situation`, `heal_level_id`)
values ('fd3297de-170f-4393-9917-3b913331586a', 2, '00efaabe-cf73-423a-aa26-69c0377d7c23');

insert into `hint_hint_texts` (`hint_id`, `hint_texts`, `hint_texts_key`)
values ('fd3297de-170f-4393-9917-3b913331586a', 'hint_loop_level_4_code_0', 0),
       ('fd3297de-170f-4393-9917-3b913331586a', 'hint_loop_level_4_code_1', 1),
       ('fd3297de-170f-4393-9917-3b913331586a', 'hint_loop_level_4_code_2', 2),
       ('fd3297de-170f-4393-9917-3b913331586a', 'hint_loop_level_4_code_3', 3),
       ('fd3297de-170f-4393-9917-3b913331586a', 'hint_loop_level_4_code_4', 4),
       ('fd3297de-170f-4393-9917-3b913331586a', 'hint_loop_level_4_code_5', 5),
       ('fd3297de-170f-4393-9917-3b913331586a', 'hint_loop_level_4_code_6', 6),
       ('fd3297de-170f-4393-9917-3b913331586a', 'hint_loop_level_4_code_7', 7),
       ('fd3297de-170f-4393-9917-3b913331586a', 'hint_loop_level_4_code_8', 8),
       ('fd3297de-170f-4393-9917-3b913331586a', 'hint_loop_level_4_code_9', 9),
       ('fd3297de-170f-4393-9917-3b913331586a', 'hint_loop_level_4_code_10', 10),
       ('fd3297de-170f-4393-9917-3b913331586a', 'hint_loop_level_4_code_11', 11);

insert into associated_component_ids (id, hint_id, associated_component_ids_key)
values ('64306a86-0d19-4dc5-a501-271e933c688e', 'fd3297de-170f-4393-9917-3b913331586a', 0),
       ('678b790f-b7b6-4c70-88e7-0e843e09055a', 'fd3297de-170f-4393-9917-3b913331586a', 1),
       ('d601f345-1c37-4516-bf7b-0bc6e0d864c1', 'fd3297de-170f-4393-9917-3b913331586a', 2),
       ('7001d820-7e93-45f1-a98f-de2bec4c4119', 'fd3297de-170f-4393-9917-3b913331586a', 3),
       ('a0b53c2b-c4e7-4c81-b02b-eca0f3d92142', 'fd3297de-170f-4393-9917-3b913331586a', 4),
       ('504d632f-ffd5-4a81-ac7e-45d092a142d6', 'fd3297de-170f-4393-9917-3b913331586a', 5),
       ('a0c6cace-81cc-4f10-bd41-1fbba347b8fb', 'fd3297de-170f-4393-9917-3b913331586a', 6),
       ('404cd0a7-613c-41a7-9a81-35d98383d424', 'fd3297de-170f-4393-9917-3b913331586a', 7),
       ('65e0deb8-87ee-410e-8433-184f753a9726', 'fd3297de-170f-4393-9917-3b913331586a', 8),
       ('449423e2-b09c-48af-b920-35f9c0b86bbe', 'fd3297de-170f-4393-9917-3b913331586a', 9),
       ('7d18af3b-3f93-470f-b8d9-4f122ccdb63e', 'fd3297de-170f-4393-9917-3b913331586a', 10),
       ('75f5891c-b0ca-492d-a027-1fb2cd99ca32', 'fd3297de-170f-4393-9917-3b913331586a', 11);

insert into associated_component_ids_component_ids (associated_component_ids_id, component_ids)
values ('64306a86-0d19-4dc5-a501-271e933c688e', 'blockly_cut_div'),
       ('678b790f-b7b6-4c70-88e7-0e843e09055a', 'blockly_cut_div'),
       ('d601f345-1c37-4516-bf7b-0bc6e0d864c1', 'blockly_cut_div'),
       ('7001d820-7e93-45f1-a98f-de2bec4c4119', 'blockly_cut_div'),
       ('a0b53c2b-c4e7-4c81-b02b-eca0f3d92142', 'blockly_cut_div'),
       ('504d632f-ffd5-4a81-ac7e-45d092a142d6', 'blockly_cut_div'),
       ('504d632f-ffd5-4a81-ac7e-45d092a142d6', '7c5e8abb-7092-4d16-91d9-64fdca569e6a'),
       ('504d632f-ffd5-4a81-ac7e-45d092a142d6', '0487242c-3bc0-4770-bbed-f58159fb74ea'),
       ('504d632f-ffd5-4a81-ac7e-45d092a142d6', '02585967-1a47-453b-8fba-e5437790a056'),
       ('504d632f-ffd5-4a81-ac7e-45d092a142d6', '42a4b23e-4652-4df9-b561-14f7462078cf'),
       ('504d632f-ffd5-4a81-ac7e-45d092a142d6', '21461edc-0838-451a-ba02-3f78ef8b4122'),
       ('a0c6cace-81cc-4f10-bd41-1fbba347b8fb', 'blockly_cut_div'),
       ('a0c6cace-81cc-4f10-bd41-1fbba347b8fb', '7c5e8abb-7092-4d16-91d9-64fdca569e6a'),
       ('a0c6cace-81cc-4f10-bd41-1fbba347b8fb', '0487242c-3bc0-4770-bbed-f58159fb74ea'),
       ('a0c6cace-81cc-4f10-bd41-1fbba347b8fb', '02585967-1a47-453b-8fba-e5437790a056'),
       ('a0c6cace-81cc-4f10-bd41-1fbba347b8fb', '42a4b23e-4652-4df9-b561-14f7462078cf'),
       ('a0c6cace-81cc-4f10-bd41-1fbba347b8fb', '21461edc-0838-451a-ba02-3f78ef8b4122'),
       ('404cd0a7-613c-41a7-9a81-35d98383d424', 'blockly_cut_div'),
       ('404cd0a7-613c-41a7-9a81-35d98383d424', '7c5e8abb-7092-4d16-91d9-64fdca569e6a'),
       ('404cd0a7-613c-41a7-9a81-35d98383d424', '0487242c-3bc0-4770-bbed-f58159fb74ea'),
       ('404cd0a7-613c-41a7-9a81-35d98383d424', '02585967-1a47-453b-8fba-e5437790a056'),
       ('404cd0a7-613c-41a7-9a81-35d98383d424', '42a4b23e-4652-4df9-b561-14f7462078cf'),
       ('404cd0a7-613c-41a7-9a81-35d98383d424', '21461edc-0838-451a-ba02-3f78ef8b4122'),
       ('65e0deb8-87ee-410e-8433-184f753a9726', 'blockly_cut_div'),
       ('449423e2-b09c-48af-b920-35f9c0b86bbe', 'blockly_cut_div'),
       ('449423e2-b09c-48af-b920-35f9c0b86bbe', 'f6aea05e-2222-4250-9428-48c4f9e76662'),
       ('7d18af3b-3f93-470f-b8d9-4f122ccdb63e', 'blockly_cut_div'),
       ('75f5891c-b0ca-492d-a027-1fb2cd99ca32', 'blockly_cut_div');

insert into `associated_cut_blocks` (`id`, `hint_id`, `associated_cut_blocks_key`)
values ('dccfbbb3-8d3a-4273-9710-38e2b1dd635a', 'fd3297de-170f-4393-9917-3b913331586a', 1),
       ('a21b1234-d993-4087-9df3-3753d4216da8', 'fd3297de-170f-4393-9917-3b913331586a', 2),
       ('04983f70-1b5f-4732-a16f-6e48e3df1554', 'fd3297de-170f-4393-9917-3b913331586a', 3),
       ('85acc857-eb41-461b-ad67-817fcb1a67aa', 'fd3297de-170f-4393-9917-3b913331586a', 4),
       ('9a9095b7-d2a0-490a-8adb-41e6e2ba7de1', 'fd3297de-170f-4393-9917-3b913331586a', 5),
       ('4c704021-20e4-4755-a569-26f3c9dbd685', 'fd3297de-170f-4393-9917-3b913331586a', 6),
       ('7ffe8b11-3ed4-4f57-9d57-dae7560ac9b6', 'fd3297de-170f-4393-9917-3b913331586a', 7),
       ('721e64db-8cb3-486b-8357-a46186187998', 'fd3297de-170f-4393-9917-3b913331586a', 8),
       ('f0ecd91a-6f7f-41aa-815b-7955b90a5f81', 'fd3297de-170f-4393-9917-3b913331586a', 9),
       ('1e4dd630-41c6-4601-bf23-6e8805c8b24c', 'fd3297de-170f-4393-9917-3b913331586a', 10),
       ('9ea0a3ff-db65-433a-bacf-63342b0275e6', 'fd3297de-170f-4393-9917-3b913331586a', 11);

insert into `associated_cut_blocks_block_ids` (`associated_cut_blocks_id`, `block_ids`)
values ('dccfbbb3-8d3a-4273-9710-38e2b1dd635a', 'recipe_start_while'),
       ('a21b1234-d993-4087-9df3-3753d4216da8', 'logic_compare_1'),
       ('04983f70-1b5f-4732-a16f-6e48e3df1554', 'logic_compare_1'),
       ('04983f70-1b5f-4732-a16f-6e48e3df1554', 'bush_properties_1'),
       ('04983f70-1b5f-4732-a16f-6e48e3df1554', 'bush_properties_2'),
       ('85acc857-eb41-461b-ad67-817fcb1a67aa', 'controls_if_1'),
       ('85acc857-eb41-461b-ad67-817fcb1a67aa', 'logic_compare_2'),
       ('9a9095b7-d2a0-490a-8adb-41e6e2ba7de1', 'logic_compare_2'),
       ('9a9095b7-d2a0-490a-8adb-41e6e2ba7de1', 'set_berries_1'),
       ('4c704021-20e4-4755-a569-26f3c9dbd685', 'set_berries_1'),
       ('7ffe8b11-3ed4-4f57-9d57-dae7560ac9b6', 'logic_compare_1'),
       ('7ffe8b11-3ed4-4f57-9d57-dae7560ac9b6', 'set_berries_1'),
       ('721e64db-8cb3-486b-8357-a46186187998', 'controls_if_1'),
       ('721e64db-8cb3-486b-8357-a46186187998', 'set_berries_2'),
       ('f0ecd91a-6f7f-41aa-815b-7955b90a5f81', 'logic_compare_1'),
       ('f0ecd91a-6f7f-41aa-815b-7955b90a5f81', 'set_berries_2'),
       ('1e4dd630-41c6-4601-bf23-6e8805c8b24c', 'logic_compare_1'),
       ('1e4dd630-41c6-4601-bf23-6e8805c8b24c', 'math_number_3'),
       ('9ea0a3ff-db65-433a-bacf-63342b0275e6', 'recipe_start_while');

insert into `hint_expected_user_interaction` (`hint_id`, `expected_user_interaction`, `expected_user_interaction_key`)
values ('fd3297de-170f-4393-9917-3b913331586a', 3, 5),
       ('fd3297de-170f-4393-9917-3b913331586a', 3, 6),
       ('fd3297de-170f-4393-9917-3b913331586a', 3, 9);

insert into `answer_options_list` (`id`, `hint_id`, `answer_options_list_key`)
values ('25be9067-fc8f-4f78-9e06-f1a0106abe04', 'fd3297de-170f-4393-9917-3b913331586a', 5),
       ('d8396fb8-dad4-4474-baf6-afa193fdd2e4', 'fd3297de-170f-4393-9917-3b913331586a', 6),
       ('0dd90f1c-0752-4915-8e64-569ac420aa1a', 'fd3297de-170f-4393-9917-3b913331586a', 9);

insert into `answer_options_list_answer_options` (`answer_options_list_id`, `answer_options`)
values ('25be9067-fc8f-4f78-9e06-f1a0106abe04', 'red'),
       ('25be9067-fc8f-4f78-9e06-f1a0106abe04', 'pink'),
       ('d8396fb8-dad4-4474-baf6-afa193fdd2e4', '1'),
       ('d8396fb8-dad4-4474-baf6-afa193fdd2e4', '2'),
       ('d8396fb8-dad4-4474-baf6-afa193fdd2e4', '3'),
       ('0dd90f1c-0752-4915-8e64-569ac420aa1a', '1'),
       ('0dd90f1c-0752-4915-8e64-569ac420aa1a', '2'),
       ('0dd90f1c-0752-4915-8e64-569ac420aa1a', '6');

insert into `hint_solution_answer` (hint_id, solution_answer, solution_answer_key)
values ('fd3297de-170f-4393-9917-3b913331586a', 'red', 5),
       ('fd3297de-170f-4393-9917-3b913331586a', '1', 6),
       ('fd3297de-170f-4393-9917-3b913331586a', '6', 9);

insert into `associated_coordinates` (`hint_id`, `x`, `y`, `associated_coordinates_key`)
values ('fd3297de-170f-4393-9917-3b913331586a', 3, 6, 6),
       ('fd3297de-170f-4393-9917-3b913331586a', 3, 4, 8);


-- Portal together level 4
insert into `hint` (`id`, `hint_situation`, `heal_level_id`)
values ('a677aaa5-aade-423c-8ee6-f2efab7d7291', 3, '00efaabe-cf73-423a-aa26-69c0377d7c23');

insert into `hint_hint_texts` (`hint_id`, `hint_texts`, `hint_texts_key`)
values ('a677aaa5-aade-423c-8ee6-f2efab7d7291', 'hint_loop_level_4_complete_0', 0),
       ('a677aaa5-aade-423c-8ee6-f2efab7d7291', 'hint_loop_level_4_complete_1', 1),
       ('a677aaa5-aade-423c-8ee6-f2efab7d7291', 'hint_loop_level_4_complete_2', 2),
       ('a677aaa5-aade-423c-8ee6-f2efab7d7291', 'hint_loop_level_4_complete_3', 3),
       ('a677aaa5-aade-423c-8ee6-f2efab7d7291', 'hint_loop_level_4_complete_4', 4),
       ('a677aaa5-aade-423c-8ee6-f2efab7d7291', 'hint_loop_level_4_complete_5', 5),
       ('a677aaa5-aade-423c-8ee6-f2efab7d7291', 'hint_loop_level_4_complete_6', 6),
       ('a677aaa5-aade-423c-8ee6-f2efab7d7291', 'hint_loop_level_4_complete_7', 7),
       ('a677aaa5-aade-423c-8ee6-f2efab7d7291', 'hint_loop_level_4_complete_8', 8),
       ('a677aaa5-aade-423c-8ee6-f2efab7d7291', 'hint_loop_level_4_complete_9', 9),
       ('a677aaa5-aade-423c-8ee6-f2efab7d7291', 'hint_loop_level_4_complete_10', 10),
       ('a677aaa5-aade-423c-8ee6-f2efab7d7291', 'hint_loop_level_4_complete_11', 11),
       ('a677aaa5-aade-423c-8ee6-f2efab7d7291', 'hint_loop_level_4_complete_12', 12);

insert into `associated_coordinates` (`hint_id`, `x`, `y`, `associated_coordinates_key`)
values ('a677aaa5-aade-423c-8ee6-f2efab7d7291', 5, 2, 3),
       ('a677aaa5-aade-423c-8ee6-f2efab7d7291', 1, 6, 6);

insert into `associated_cut_blocks` (`id`, `hint_id`, `associated_cut_blocks_key`)
values ('8769a324-ecf5-4ef8-a7e6-9c292c9a6824', 'a677aaa5-aade-423c-8ee6-f2efab7d7291', 2),
       ('32ec1e3f-61dd-47fa-b759-6805e84fc204', 'a677aaa5-aade-423c-8ee6-f2efab7d7291', 3),
       ('a7acd85c-08c6-470d-b0f9-16317523ddeb', 'a677aaa5-aade-423c-8ee6-f2efab7d7291', 4),
       ('d3460d56-5b6f-4ee5-a829-42313739611c', 'a677aaa5-aade-423c-8ee6-f2efab7d7291', 6),
       ('1520a76c-071c-4fee-b680-291b4b6f797f', 'a677aaa5-aade-423c-8ee6-f2efab7d7291', 7),
       ('0b3ad9c1-8efb-45a0-9446-0ebd432533bd', 'a677aaa5-aade-423c-8ee6-f2efab7d7291', 8),
       ('5d998396-10e7-4a25-94a1-1196335fd731', 'a677aaa5-aade-423c-8ee6-f2efab7d7291', 9),
       ('8bc1833c-a31f-47d4-b3d6-15e58bede31f', 'a677aaa5-aade-423c-8ee6-f2efab7d7291', 10),
       ('bb7c5d4e-ca91-4ee2-9c99-914c5599f82a', 'a677aaa5-aade-423c-8ee6-f2efab7d7291', 11);

insert into `associated_cut_blocks_block_ids` (`associated_cut_blocks_id`, `block_ids`)
values ('8769a324-ecf5-4ef8-a7e6-9c292c9a6824', 'logic_compare_1'),
       ('8769a324-ecf5-4ef8-a7e6-9c292c9a6824', 'set_berries_1'),
       ('8769a324-ecf5-4ef8-a7e6-9c292c9a6824', 'set_berries_2'),
       ('32ec1e3f-61dd-47fa-b759-6805e84fc204', 'logic_compare_1'),
       ('a7acd85c-08c6-470d-b0f9-16317523ddeb', 'logic_compare_1'),
       ('d3460d56-5b6f-4ee5-a829-42313739611c', 'set_berries_1'),
       ('d3460d56-5b6f-4ee5-a829-42313739611c', 'set_berries_2'),
       ('1520a76c-071c-4fee-b680-291b4b6f797f', 'logic_compare_2'),
       ('1520a76c-071c-4fee-b680-291b4b6f797f', 'set_berries_1'),
       ('0b3ad9c1-8efb-45a0-9446-0ebd432533bd', 'logic_compare_2'),
       ('0b3ad9c1-8efb-45a0-9446-0ebd432533bd', 'set_berries_1'),
       ('5d998396-10e7-4a25-94a1-1196335fd731', 'controls_if_1'),
       ('5d998396-10e7-4a25-94a1-1196335fd731', 'set_berries_1'),
       ('8bc1833c-a31f-47d4-b3d6-15e58bede31f', 'controls_if_1'),
       ('8bc1833c-a31f-47d4-b3d6-15e58bede31f', 'set_berries_2'),
       ('bb7c5d4e-ca91-4ee2-9c99-914c5599f82a', 'logic_compare_1'),
       ('bb7c5d4e-ca91-4ee2-9c99-914c5599f82a', 'set_berries_2');

insert into `associated_component_ids` (`id`, `hint_id`, `associated_component_ids_key`)
values ('d02df78e-683f-45b7-ba7c-d6f9c5affd3d', 'a677aaa5-aade-423c-8ee6-f2efab7d7291', 1),
       ('03a5db29-d27f-465a-9ae8-6c0c817b06c5', 'a677aaa5-aade-423c-8ee6-f2efab7d7291', 2),
       ('fb005316-4b4d-40db-a7b7-8c19feac7d03', 'a677aaa5-aade-423c-8ee6-f2efab7d7291', 3),
       ('d61bae0f-c894-4ca9-b2df-8d2b76caeed1', 'a677aaa5-aade-423c-8ee6-f2efab7d7291', 4),
       ('e943b9ba-94f7-4dda-95c9-0e8b85e85988', 'a677aaa5-aade-423c-8ee6-f2efab7d7291', 5),
       ('d1f6dc74-9743-474d-a295-f924bedcc375', 'a677aaa5-aade-423c-8ee6-f2efab7d7291', 6),
       ('07cf49b8-b75a-4a6f-9187-363a7f2d80db', 'a677aaa5-aade-423c-8ee6-f2efab7d7291', 7),
       ('65ba507f-9216-4b05-9d3d-3be79b3270ba', 'a677aaa5-aade-423c-8ee6-f2efab7d7291', 8),
       ('ef42ad5d-e399-49a6-a04e-2a619776ba57', 'a677aaa5-aade-423c-8ee6-f2efab7d7291', 9),
       ('37721c9f-2445-4001-a98a-8b9a56e46649', 'a677aaa5-aade-423c-8ee6-f2efab7d7291', 10),
       ('12e60d73-c202-4b33-a663-863b2e0b68ae', 'a677aaa5-aade-423c-8ee6-f2efab7d7291', 11),
       ('47d60752-1bbf-4de5-9906-2c8281f61f35', 'a677aaa5-aade-423c-8ee6-f2efab7d7291', 12);

insert into `associated_component_ids_component_ids` (`associated_component_ids_id`, `component_ids`)
values ('d02df78e-683f-45b7-ba7c-d6f9c5affd3d', 'critter_container_all_collectors'),
       ('d02df78e-683f-45b7-ba7c-d6f9c5affd3d', 'gameboard'),
       ('03a5db29-d27f-465a-9ae8-6c0c817b06c5', 'blockly_cut_div'),
       ('fb005316-4b4d-40db-a7b7-8c19feac7d03', 'gameboard'),
       ('d61bae0f-c894-4ca9-b2df-8d2b76caeed1', 'blockly_cut_div'),
       ('d61bae0f-c894-4ca9-b2df-8d2b76caeed1', 'test_popup_container'),
       ('e943b9ba-94f7-4dda-95c9-0e8b85e85988', 'save_button'),
       ('d1f6dc74-9743-474d-a295-f924bedcc375', 'blockly_cut_div'),
       ('d1f6dc74-9743-474d-a295-f924bedcc375', 'gameboard'),
       ('07cf49b8-b75a-4a6f-9187-363a7f2d80db', 'blockly_cut_div'),
       ('07cf49b8-b75a-4a6f-9187-363a7f2d80db', '7c5e8abb-7092-4d16-91d9-64fdca569e6a'),
       ('07cf49b8-b75a-4a6f-9187-363a7f2d80db', '0487242c-3bc0-4770-bbed-f58159fb74ea'),
       ('07cf49b8-b75a-4a6f-9187-363a7f2d80db', '02585967-1a47-453b-8fba-e5437790a056'),
       ('07cf49b8-b75a-4a6f-9187-363a7f2d80db', '42a4b23e-4652-4df9-b561-14f7462078cf'),
       ('07cf49b8-b75a-4a6f-9187-363a7f2d80db', '21461edc-0838-451a-ba02-3f78ef8b4122'),
       ('65ba507f-9216-4b05-9d3d-3be79b3270ba', 'test_popup_container'),
       ('65ba507f-9216-4b05-9d3d-3be79b3270ba', '7c5e8abb-7092-4d16-91d9-64fdca569e6a'),
       ('65ba507f-9216-4b05-9d3d-3be79b3270ba', '0487242c-3bc0-4770-bbed-f58159fb74ea'),
       ('65ba507f-9216-4b05-9d3d-3be79b3270ba', '02585967-1a47-453b-8fba-e5437790a056'),
       ('65ba507f-9216-4b05-9d3d-3be79b3270ba', '42a4b23e-4652-4df9-b561-14f7462078cf'),
       ('65ba507f-9216-4b05-9d3d-3be79b3270ba', '21461edc-0838-451a-ba02-3f78ef8b4122'),
       ('ef42ad5d-e399-49a6-a04e-2a619776ba57', 'test_popup_container'),
       ('37721c9f-2445-4001-a98a-8b9a56e46649', 'blockly_cut_div'),
       ('12e60d73-c202-4b33-a663-863b2e0b68ae', 'test_popup_container'),
       ('47d60752-1bbf-4de5-9906-2c8281f61f35', 'save_button');

insert into `portal_xmls` (`hint_id`, `portal_xml`, `portal_xml_key`)
values ('a677aaa5-aade-423c-8ee6-f2efab7d7291',
        '<xml xmlns="https://developers.google.com/blockly/xml"><block type="assert_loop_free" id="Opw-gW5,wHsjo%rVVkm]" x="-295" y="-133"><value name="value"><block type="logic_compare" id="Updh4`dmqWOl8d}M;g8y"><field name="OP">LTE</field><value name="A"><block type="properties_user_healing" id="b@|}ai;JP@:~rVR@L`5V"><field name="properties">ROUNDS</field></block></value><value name="B"></value></block></value></block></xml>',
        4),
       ('a677aaa5-aade-423c-8ee6-f2efab7d7291',
        '<xml xmlns="https://developers.google.com/blockly/xml"><block type="assert_loop_free" id="Opw-gW5,wHsjo%rVVkm]" x="-295" y="-133"><value name="value"><block type="logic_compare" id="Updh4`dmqWOl8d}M;g8y"><field name="OP">LTE</field><value name="A"><block type="properties_user_healing" id="b@|}ai;JP@:~rVR@L`5V"><field name="properties">ROUNDS</field></block></value><value name="B"><block type="math_number" id="S2UM`G/KR!B#Z:h*HSJh"><field name="NUM">3</field></block></value></block></value></block></xml>',
        5),
       ('a677aaa5-aade-423c-8ee6-f2efab7d7291',
        '<xml xmlns="https://developers.google.com/blockly/xml"><block type="controls_if" id="jco!yx`n0M.zjT~YuK4h" x="-133" y="-256"><value name="IF0"><block type="logic_compare" id="Updh4`dmqWOl8d}M;g8y"><field name="OP">EQ</field><value name="A"><block type="properties_user_healing" id="PihFr:f(7BDZVXE#2UFc"><field name="properties">BODYCOLOR</field></block></value><value name="B"><block type="shirt_picker" id="h_5n]z`mb(c6`/@CdM;|"><field name="color">red</field></block></value></block></value></block></xml>',
        7),
       ('a677aaa5-aade-423c-8ee6-f2efab7d7291',
        '<xml xmlns="https://developers.google.com/blockly/xml"><block type="controls_if" id="XTmo`Z7L%o#hD:Y.$7N+" x="47" y="58"><value name="IF0"><block type="logic_compare" id="Updh4`dmqWOl8d}M;g8y"><field name="OP">EQ</field><value name="A"><block type="properties_user_healing" id="ch64M%.u;#5bAPM5n[)%"><field name="properties">BODYCOLOR</field></block></value><value name="B"><block type="shirt_picker" id="Ic=!pN[wKv7s;:M24UGo"><field name="color">red</field></block></value></block></value><statement name="DO0"><block type="assert_loop" id="Nx+60%~Wci5.8m.B]}6V"><value name="target"><block type="properties_user_healing" id="pJ~KfiN*Kx((q7,lB+%r"><field name="properties">REDBERRIES</field></block></value><value name="value"></value></block></statement></block></xml>',
        8),
       ('a677aaa5-aade-423c-8ee6-f2efab7d7291',
        '<xml xmlns="https://developers.google.com/blockly/xml"><block type="controls_if" id="XTmo`Z7L%o#hD:Y.$7N+" x="47" y="58"><value name="IF0"><block type="logic_compare" id="Updh4`dmqWOl8d}M;g8y"><field name="OP">EQ</field><value name="A"><block type="properties_user_healing" id="ch64M%.u;#5bAPM5n[)%"><field name="properties">BODYCOLOR</field></block></value><value name="B"><block type="shirt_picker" id="Ic=!pN[wKv7s;:M24UGo"><field name="color">red</field></block></value></block></value><statement name="DO0"><block type="assert_loop" id="Nx+60%~Wci5.8m.B]}6V"><value name="target"><block type="properties_user_healing" id="pJ~KfiN*Kx((q7,lB+%r"><field name="properties">REDBERRIES</field></block></value><value name="value"><block type="properties_user_healing" id=".Gg9Hzyt?sxBN_i!;yhq"><field name="properties">ROUNDS</field></block></value></block></statement></block></xml>',
        9),
       ('a677aaa5-aade-423c-8ee6-f2efab7d7291',
        '<xml xmlns="https://developers.google.com/blockly/xml"><block type="controls_if" id="#nBH0UbV1VcQjx6+$Lf`" x="-357" y="-133"><mutation else="1"></mutation><value name="IF0"><block type="logic_compare" id="Updh4`dmqWOl8d}M;g8y"><field name="OP">EQ</field><value name="A"><block type="properties_user_healing" id="l3#JS/7l=M$S^l{ZBiXE"><field name="properties">BODYCOLOR</field></block></value><value name="B"><block type="shirt_picker" id="!d9Q+ZK.p?}(CZqvE9TS"><field name="color">red</field></block></value></block></value><statement name="DO0"><block type="assert_loop" id="Yj8=yNimzT^D{Q[4nU=("><value name="target"><block type="properties_user_healing" id="}:nG}wFX43CIniye/aJa"><field name="properties">REDBERRIES</field></block></value><value name="value"><block type="properties_user_healing" id="0(5]yJLt5CLoIZ3M,pBQ"><field name="properties">ROUNDS</field></block></value></block></statement><statement name="ELSE"><block type="assert_loop" id=":f[4ZSqq;`0gJ_7QVtaL"><value name="target"><block type="properties_user_healing" id="J)|[,JG])S+]@*OUX$8{"><field name="properties">PINKBERRIES</field></block></value><value name="value"></value></block></statement></block></xml>',
        10),
       ('a677aaa5-aade-423c-8ee6-f2efab7d7291',
        '<xml xmlns="https://developers.google.com/blockly/xml"><block type="controls_if" id="#nBH0UbV1VcQjx6+$Lf`" x="-347" y="-176"><mutation else="1"></mutation><value name="IF0"><block type="logic_compare" id="Updh4`dmqWOl8d}M;g8y"><field name="OP">EQ</field><value name="A"><block type="properties_user_healing" id="l3#JS/7l=M$S^l{ZBiXE"><field name="properties">BODYCOLOR</field></block></value><value name="B"><block type="shirt_picker" id="!d9Q+ZK.p?}(CZqvE9TS"><field name="color">red</field></block></value></block></value><statement name="DO0"><block type="assert_loop" id="Yj8=yNimzT^D{Q[4nU=("><value name="target"><block type="properties_user_healing" id="}:nG}wFX43CIniye/aJa"><field name="properties">REDBERRIES</field></block></value><value name="value"><block type="properties_user_healing" id="0(5]yJLt5CLoIZ3M,pBQ"><field name="properties">ROUNDS</field></block></value></block></statement><statement name="ELSE"><block type="assert_loop" id=":f[4ZSqq;`0gJ_7QVtaL"><value name="target"><block type="properties_user_healing" id="J)|[,JG])S+]@*OUX$8{"><field name="properties">PINKBERRIES</field></block></value><value name="value"></value></block></statement></block><block type="math_arithmetic" id="M]Qfng[KcxW;Qdz%;CdX" x="-196" y="29"><field name="OP">MULTIPLY</field><value name="A"><block type="properties_user_healing" id="c@fE=8#UWkeYcs7eVh,I"><field name="properties">ROUNDS</field></block></value><value name="B"><block type="math_number" id="uDiIh`SirAT?c*1dAt{)"><field name="NUM">2</field></block></value></block></xml>',
        11),
       ('a677aaa5-aade-423c-8ee6-f2efab7d7291',
        '<xml xmlns="https://developers.google.com/blockly/xml"><block type="controls_if" id="#nBH0UbV1VcQjx6+$Lf`" x="-347" y="-176"><mutation else="1"></mutation><value name="IF0"><block type="logic_compare" id="Updh4`dmqWOl8d}M;g8y"><field name="OP">EQ</field><value name="A"><block type="properties_user_healing" id="l3#JS/7l=M$S^l{ZBiXE"><field name="properties">BODYCOLOR</field></block></value><value name="B"><block type="shirt_picker" id="!d9Q+ZK.p?}(CZqvE9TS"><field name="color">red</field></block></value></block></value><statement name="DO0"><block type="assert_loop" id="Yj8=yNimzT^D{Q[4nU=("><value name="target"><block type="properties_user_healing" id="}:nG}wFX43CIniye/aJa"><field name="properties">REDBERRIES</field></block></value><value name="value"><block type="properties_user_healing" id="0(5]yJLt5CLoIZ3M,pBQ"><field name="properties">ROUNDS</field></block></value></block></statement><statement name="ELSE"><block type="assert_loop" id=":f[4ZSqq;`0gJ_7QVtaL"><value name="target"><block type="properties_user_healing" id="J)|[,JG])S+]@*OUX$8{"><field name="properties">PINKBERRIES</field></block></value><value name="value"><block type="math_arithmetic" id="M]Qfng[KcxW;Qdz%;CdX" x="-196" y="29"><field name="OP">MULTIPLY</field><value name="A"><block type="properties_user_healing" id="c@fE=8#UWkeYcs7eVh,I"><field name="properties">ROUNDS</field></block></value><value name="B"><block type="math_number" id="uDiIh`SirAT?c*1dAt{)"><field name="NUM">2</field></block></value></block></value></block></statement></block></xml>',
        12);

insert into `expected_clicked_coordinate` (`id`, `hint_id`, `expected_clicked_coordinates_key`)
values ('77bc54e3-9238-46ca-935b-5e1f74aee2e3', 'a677aaa5-aade-423c-8ee6-f2efab7d7291', 3),
       ('4cacb4ee-30c9-454d-9d94-bffb0e634786', 'a677aaa5-aade-423c-8ee6-f2efab7d7291', 4),
       ('d915a491-e3ec-4aff-9771-259ddd014e28', 'a677aaa5-aade-423c-8ee6-f2efab7d7291', 6),
       ('3e1a1510-9e25-478d-b26b-47b7229837ff', 'a677aaa5-aade-423c-8ee6-f2efab7d7291', 7);

insert into `expected_clicked_coordinate_coordinates` (`expected_clicked_coordinate_id`, `x`, `y`)
values ('77bc54e3-9238-46ca-935b-5e1f74aee2e3', 5, 2),
       ('4cacb4ee-30c9-454d-9d94-bffb0e634786', 5, 2),
       ('d915a491-e3ec-4aff-9771-259ddd014e28', 1, 6),
       ('3e1a1510-9e25-478d-b26b-47b7229837ff', 1, 6);

insert into `hint_expected_user_interaction` (`hint_id`, `expected_user_interaction`, `expected_user_interaction_key`)
values ('a677aaa5-aade-423c-8ee6-f2efab7d7291', 0, 3),
       ('a677aaa5-aade-423c-8ee6-f2efab7d7291', 1, 4),
       ('a677aaa5-aade-423c-8ee6-f2efab7d7291', 2, 5),
       ('a677aaa5-aade-423c-8ee6-f2efab7d7291', 0, 6),
       ('a677aaa5-aade-423c-8ee6-f2efab7d7291', 1, 8),
       ('a677aaa5-aade-423c-8ee6-f2efab7d7291', 1, 11),
       ('a677aaa5-aade-423c-8ee6-f2efab7d7291', 2, 12);

insert into `hint_expected_portal_js_code` (`hint_id`, `expected_portal_js_code`, `expected_portal_js_code_key`)
values ('a677aaa5-aade-423c-8ee6-f2efab7d7291', 'if (!(((this.roundsCount) <= 3))) {\n\tthis._killCritter(x, y, ((this.roundsCount) <= 3), ((this.roundsCount) <= 3));\n\tthis.mustWalkOut = true;\n\treturn true;\n}\n', 4),
       ('a677aaa5-aade-423c-8ee6-f2efab7d7291', 'if ((this.color) == (\"red\")) {\n  if ((this.redBerryCount) !== (this.roundsCount)) {\n  \tthis._killCritter(x, y, (this.redBerryCount), (this.roundsCount));\n  \tthis.mustWalkOut = true;\n  \treturn true;\n  }\n}\n', 8),
       ('a677aaa5-aade-423c-8ee6-f2efab7d7291', 'if ((this.color) == (\"red\")) {\n  if ((this.redBerryCount) !== (this.roundsCount)) {\n  \tthis._killCritter(x, y, (this.redBerryCount), (this.roundsCount));\n  \tthis.mustWalkOut = true;\n  \treturn true;\n  }\n} else {\n  if ((this.pinkBerryCount) !== ((this.roundsCount) * 2)) {\n  \tthis._killCritter(x, y, (this.pinkBerryCount), ((this.roundsCount) * 2));\n  \tthis.mustWalkOut = true;\n  \treturn true;\n  }\n}\n', 11);


-- Level 5 hints:

-- Code Explanation level 5
insert into `hint` (`id`, `hint_situation`, `heal_level_id`)
values ('115d6d12-e10f-4ac3-b898-9103d1a3feb8', 2, 'a920c5b9-e9c4-4f77-8e95-08f570d0c013');

insert into `hint_hint_texts` (`hint_id`, `hint_texts`, `hint_texts_key`)
values ('115d6d12-e10f-4ac3-b898-9103d1a3feb8', 'hint_loop_level_5_code_0', 0),
       ('115d6d12-e10f-4ac3-b898-9103d1a3feb8', 'hint_loop_level_5_code_1', 1),
       ('115d6d12-e10f-4ac3-b898-9103d1a3feb8', 'hint_loop_level_5_code_2', 2),
       ('115d6d12-e10f-4ac3-b898-9103d1a3feb8', 'hint_loop_level_5_code_3', 3),
       ('115d6d12-e10f-4ac3-b898-9103d1a3feb8', 'hint_loop_level_5_code_4', 4),
       ('115d6d12-e10f-4ac3-b898-9103d1a3feb8', 'hint_loop_level_5_code_5', 5),
       ('115d6d12-e10f-4ac3-b898-9103d1a3feb8', 'hint_loop_level_5_code_6', 6),
       ('115d6d12-e10f-4ac3-b898-9103d1a3feb8', 'hint_loop_level_5_code_7', 7),
       ('115d6d12-e10f-4ac3-b898-9103d1a3feb8', 'hint_loop_level_5_code_8', 8),
       ('115d6d12-e10f-4ac3-b898-9103d1a3feb8', 'hint_loop_level_5_code_9', 9),
       ('115d6d12-e10f-4ac3-b898-9103d1a3feb8', 'hint_loop_level_5_code_10', 10);

insert into associated_component_ids (id, hint_id, associated_component_ids_key)
values ('cd62c370-d726-4332-86a7-f238637f867e', '115d6d12-e10f-4ac3-b898-9103d1a3feb8', 0),
       ('ffbfa136-84e9-430a-adf5-53f97b0d2214', '115d6d12-e10f-4ac3-b898-9103d1a3feb8', 1),
       ('1d776722-fcd0-49b6-a5e6-48f3244e0f0f', '115d6d12-e10f-4ac3-b898-9103d1a3feb8', 2),
       ('b410ecb7-848b-4cf9-912b-54500c57b696', '115d6d12-e10f-4ac3-b898-9103d1a3feb8', 3),
       ('4a9590a6-1444-41f6-a36a-09138b84b917', '115d6d12-e10f-4ac3-b898-9103d1a3feb8', 4),
       ('32068417-add9-4f8a-8000-c521631cde7b', '115d6d12-e10f-4ac3-b898-9103d1a3feb8', 5),
       ('adc63e95-0957-4aa8-9328-1d8705e5f42a', '115d6d12-e10f-4ac3-b898-9103d1a3feb8', 6),
       ('c806f9de-ef27-47b6-b331-6a2233d81ee4', '115d6d12-e10f-4ac3-b898-9103d1a3feb8', 7),
       ('5aa2588b-df06-42c5-b84e-5c8d0f24f1f9', '115d6d12-e10f-4ac3-b898-9103d1a3feb8', 8),
       ('8f948281-eba4-427d-9322-26b34543abbc', '115d6d12-e10f-4ac3-b898-9103d1a3feb8', 9),
       ('48df68b5-9117-4594-9106-65eaa107481d', '115d6d12-e10f-4ac3-b898-9103d1a3feb8', 10);

insert into associated_component_ids_component_ids (associated_component_ids_id, component_ids)
values ('cd62c370-d726-4332-86a7-f238637f867e', 'blockly_cut_div'),
       ('ffbfa136-84e9-430a-adf5-53f97b0d2214', 'blockly_cut_div'),
       ('1d776722-fcd0-49b6-a5e6-48f3244e0f0f', 'blockly_cut_div'),
       ('b410ecb7-848b-4cf9-912b-54500c57b696', 'blockly_cut_div'),
       ('4a9590a6-1444-41f6-a36a-09138b84b917', 'blockly_cut_div'),
       ('32068417-add9-4f8a-8000-c521631cde7b', 'blockly_cut_div'),
       ('adc63e95-0957-4aa8-9328-1d8705e5f42a', 'blockly_cut_div'),
       ('c806f9de-ef27-47b6-b331-6a2233d81ee4', 'blockly_cut_div'),
       ('5aa2588b-df06-42c5-b84e-5c8d0f24f1f9', 'blockly_cut_div'),
       ('8f948281-eba4-427d-9322-26b34543abbc', 'blockly_cut_div'),
       ('48df68b5-9117-4594-9106-65eaa107481d', 'blockly_cut_div');

insert into `associated_cut_blocks` (`id`, `hint_id`, `associated_cut_blocks_key`)
values ('932c9b02-b84c-4730-87c4-2d70ebb62789', '115d6d12-e10f-4ac3-b898-9103d1a3feb8', 1),
       ('89df124f-de32-46a2-bcfc-0458cca3edc1', '115d6d12-e10f-4ac3-b898-9103d1a3feb8', 2),
       ('a4239d1a-8a3b-4651-94af-0aca4b70a78e', '115d6d12-e10f-4ac3-b898-9103d1a3feb8', 3),
       ('1b8fac2c-f4d3-4537-8c2f-e39058357d98', '115d6d12-e10f-4ac3-b898-9103d1a3feb8', 4),
       ('f21fccc9-1cc6-4e13-837d-74f9a41dfc02', '115d6d12-e10f-4ac3-b898-9103d1a3feb8', 5),
       ('917a8f9b-956d-42d1-bcbd-b639a4b98bd0', '115d6d12-e10f-4ac3-b898-9103d1a3feb8', 6),
       ('156970a4-9576-4945-9211-801c58c1f96e', '115d6d12-e10f-4ac3-b898-9103d1a3feb8', 7),
       ('544700d9-a9fd-44d3-9546-f5b3c72f8cfe', '115d6d12-e10f-4ac3-b898-9103d1a3feb8', 8),
       ('4c2e324a-05a3-4508-82e9-ede522397077', '115d6d12-e10f-4ac3-b898-9103d1a3feb8', 9),
       ('5917720d-6e40-440f-8b40-99317dc02cc4', '115d6d12-e10f-4ac3-b898-9103d1a3feb8', 10);

insert into `associated_cut_blocks_block_ids` (`associated_cut_blocks_id`, `block_ids`)
values ('932c9b02-b84c-4730-87c4-2d70ebb62789', 'recipe_start_while'),
       ('89df124f-de32-46a2-bcfc-0458cca3edc1', 'logic_compare_1'),
       ('a4239d1a-8a3b-4651-94af-0aca4b70a78e', 'logic_compare_1'),
       ('a4239d1a-8a3b-4651-94af-0aca4b70a78e', 'bush_properties_1'),
       ('a4239d1a-8a3b-4651-94af-0aca4b70a78e', 'bush_properties_2'),
       ('1b8fac2c-f4d3-4537-8c2f-e39058357d98', 'controls_if_1'),
       ('1b8fac2c-f4d3-4537-8c2f-e39058357d98', 'logic_compare_2'),
       ('f21fccc9-1cc6-4e13-837d-74f9a41dfc02', 'logic_compare_2'),
       ('f21fccc9-1cc6-4e13-837d-74f9a41dfc02', 'bush_properties_1'),
       ('917a8f9b-956d-42d1-bcbd-b639a4b98bd0', 'math_number_2'),
       ('917a8f9b-956d-42d1-bcbd-b639a4b98bd0', 'set_berries_1'),
       ('156970a4-9576-4945-9211-801c58c1f96e', 'controls_if_1'),
       ('156970a4-9576-4945-9211-801c58c1f96e', 'set_berries_2'),
       ('544700d9-a9fd-44d3-9546-f5b3c72f8cfe', 'controls_if_1'),
       ('544700d9-a9fd-44d3-9546-f5b3c72f8cfe', 'bush_properties_2'),
       ('544700d9-a9fd-44d3-9546-f5b3c72f8cfe', 'properties_user_healing_3'),
       ('4c2e324a-05a3-4508-82e9-ede522397077', 'logic_compare_1'),
       ('4c2e324a-05a3-4508-82e9-ede522397077', 'set_berries_1'),
       ('4c2e324a-05a3-4508-82e9-ede522397077', 'set_berries_2'),
       ('5917720d-6e40-440f-8b40-99317dc02cc4', 'recipe_start_while');

insert into `hint_expected_user_interaction` (`hint_id`, `expected_user_interaction`, `expected_user_interaction_key`)
values ('115d6d12-e10f-4ac3-b898-9103d1a3feb8', 3, 5),
       ('115d6d12-e10f-4ac3-b898-9103d1a3feb8', 3, 8);

insert into `answer_options_list` (`id`, `hint_id`, `answer_options_list_key`)
values ('f8588d31-2bea-485a-9926-2602f1ba63be', '115d6d12-e10f-4ac3-b898-9103d1a3feb8', 5),
       ('4cf7c860-2e55-4455-9f32-c21bec190148', '115d6d12-e10f-4ac3-b898-9103d1a3feb8', 8);

insert into `answer_options_list_answer_options` (`answer_options_list_id`, `answer_options`)
values ('f8588d31-2bea-485a-9926-2602f1ba63be', 'round_1'),
       ('f8588d31-2bea-485a-9926-2602f1ba63be', 'round_2'),
       ('f8588d31-2bea-485a-9926-2602f1ba63be', 'round_3'),
       ('4cf7c860-2e55-4455-9f32-c21bec190148', '2'),
       ('4cf7c860-2e55-4455-9f32-c21bec190148', '3'),
       ('4cf7c860-2e55-4455-9f32-c21bec190148', '6');

insert into `hint_solution_answer` (hint_id, solution_answer, solution_answer_key)
values ('115d6d12-e10f-4ac3-b898-9103d1a3feb8', 'round_3', 5),
       ('115d6d12-e10f-4ac3-b898-9103d1a3feb8', '3', 8);

insert into `associated_coordinates` (`hint_id`, `x`, `y`, `associated_coordinates_key`)
values ('115d6d12-e10f-4ac3-b898-9103d1a3feb8', 4, 6, 5),
       ('115d6d12-e10f-4ac3-b898-9103d1a3feb8', 4, 6, 6),
       ('115d6d12-e10f-4ac3-b898-9103d1a3feb8', 3, 3, 7),
       ('115d6d12-e10f-4ac3-b898-9103d1a3feb8', 3, 3, 8);


-- Portal together level 5
insert into `hint` (`id`, `hint_situation`, `heal_level_id`)
values ('654b9166-e2e5-4794-87a7-cb729c57a38b', 3, 'a920c5b9-e9c4-4f77-8e95-08f570d0c013');

insert into `hint_hint_texts` (`hint_id`, `hint_texts`, `hint_texts_key`)
values ('654b9166-e2e5-4794-87a7-cb729c57a38b', 'hint_loop_level_5_complete_0', 0),
       ('654b9166-e2e5-4794-87a7-cb729c57a38b', 'hint_loop_level_5_complete_1', 1),
       ('654b9166-e2e5-4794-87a7-cb729c57a38b', 'hint_loop_level_5_complete_2', 2),
       ('654b9166-e2e5-4794-87a7-cb729c57a38b', 'hint_loop_level_5_complete_3', 3),
       ('654b9166-e2e5-4794-87a7-cb729c57a38b', 'hint_loop_level_5_complete_4', 4),
       ('654b9166-e2e5-4794-87a7-cb729c57a38b', 'hint_loop_level_5_complete_5', 5),
       ('654b9166-e2e5-4794-87a7-cb729c57a38b', 'hint_loop_level_5_complete_6', 6),
       ('654b9166-e2e5-4794-87a7-cb729c57a38b', 'hint_loop_level_5_complete_7', 7),
       ('654b9166-e2e5-4794-87a7-cb729c57a38b', 'hint_loop_level_5_complete_8', 8),
       ('654b9166-e2e5-4794-87a7-cb729c57a38b', 'hint_loop_level_5_complete_9', 9),
       ('654b9166-e2e5-4794-87a7-cb729c57a38b', 'hint_loop_level_5_complete_10', 10),
       ('654b9166-e2e5-4794-87a7-cb729c57a38b', 'hint_loop_level_5_complete_11', 11),
       ('654b9166-e2e5-4794-87a7-cb729c57a38b', 'hint_loop_level_5_complete_12', 12);

insert into `associated_coordinates` (`hint_id`, `x`, `y`, `associated_coordinates_key`)
values ('654b9166-e2e5-4794-87a7-cb729c57a38b', 2, 3, 4);

insert into `associated_cut_blocks` (`id`, `hint_id`, `associated_cut_blocks_key`)
values ('c5f248e9-fb45-45bd-a813-6f01fdb6d6f2', '654b9166-e2e5-4794-87a7-cb729c57a38b', 2),
       ('4366ad2c-0907-47c6-8d81-6cf7aa151e03', '654b9166-e2e5-4794-87a7-cb729c57a38b', 3),
       ('eef7bdc5-f66b-4666-8ce2-3116ad5a83ff', '654b9166-e2e5-4794-87a7-cb729c57a38b', 4),
       ('7c6110dc-f0f3-4ad8-b03a-f96af0c7218b', '654b9166-e2e5-4794-87a7-cb729c57a38b', 6),
       ('11e2677b-15c5-4ef2-9e4f-df5e543e1cd1', '654b9166-e2e5-4794-87a7-cb729c57a38b', 7),
       ('d35de8b6-fdac-48ea-b7aa-cfbebd2c252a', '654b9166-e2e5-4794-87a7-cb729c57a38b', 8),
       ('66e2a95e-277d-4be2-a11c-16c6724c47f8', '654b9166-e2e5-4794-87a7-cb729c57a38b', 9),
       ('952722b4-36fc-4f2a-afe1-c111dec9bdf2', '654b9166-e2e5-4794-87a7-cb729c57a38b', 10),
       ('795619d4-b1c0-433b-bf26-56d162e59da1', '654b9166-e2e5-4794-87a7-cb729c57a38b', 11);

insert into `associated_cut_blocks_block_ids` (`associated_cut_blocks_id`, `block_ids`)
values ('c5f248e9-fb45-45bd-a813-6f01fdb6d6f2', 'logic_compare_1'),
       ('c5f248e9-fb45-45bd-a813-6f01fdb6d6f2', 'set_berries_1'),
       ('c5f248e9-fb45-45bd-a813-6f01fdb6d6f2', 'set_berries_2'),
       ('4366ad2c-0907-47c6-8d81-6cf7aa151e03', 'controls_if_1'),
       ('4366ad2c-0907-47c6-8d81-6cf7aa151e03', 'logic_compare_2'),
       ('eef7bdc5-f66b-4666-8ce2-3116ad5a83ff', 'recipe_start_while'),
       ('7c6110dc-f0f3-4ad8-b03a-f96af0c7218b', 'logic_compare_2'),
       ('7c6110dc-f0f3-4ad8-b03a-f96af0c7218b', 'set_berries_2'),
       ('11e2677b-15c5-4ef2-9e4f-df5e543e1cd1', 'logic_compare_2'),
       ('11e2677b-15c5-4ef2-9e4f-df5e543e1cd1', 'set_berries_2'),
       ('d35de8b6-fdac-48ea-b7aa-cfbebd2c252a', 'logic_compare_2'),
       ('d35de8b6-fdac-48ea-b7aa-cfbebd2c252a', 'set_berries_1'),
       ('66e2a95e-277d-4be2-a11c-16c6724c47f8', 'logic_compare_2'),
       ('66e2a95e-277d-4be2-a11c-16c6724c47f8', 'set_berries_1'),
       ('952722b4-36fc-4f2a-afe1-c111dec9bdf2', 'logic_compare_1'),
       ('795619d4-b1c0-433b-bf26-56d162e59da1', 'logic_compare_1');

insert into `associated_component_ids` (`id`, `hint_id`, `associated_component_ids_key`)
values ('e541ec58-2d92-4e56-9ff1-2e505aef9a6f', '654b9166-e2e5-4794-87a7-cb729c57a38b', 1),
       ('c3a837c2-4d35-4110-a685-71f11a6baae1', '654b9166-e2e5-4794-87a7-cb729c57a38b', 2),
       ('ffefa064-7341-4665-941f-acf4292f2ec5', '654b9166-e2e5-4794-87a7-cb729c57a38b', 3),
       ('2a020006-2e8f-4d75-b011-7c76a9555974', '654b9166-e2e5-4794-87a7-cb729c57a38b', 4),
       ('5fe205d9-9c2a-48e7-95de-afc2eed3c312', '654b9166-e2e5-4794-87a7-cb729c57a38b', 5),
       ('3694fe37-51ad-498d-ab54-9e84a3122f83', '654b9166-e2e5-4794-87a7-cb729c57a38b', 6),
       ('1cea6e83-c08f-4980-b293-6ffc0b7f5828', '654b9166-e2e5-4794-87a7-cb729c57a38b', 7),
       ('676df309-21df-4c3b-a730-119c237be2aa', '654b9166-e2e5-4794-87a7-cb729c57a38b', 8),
       ('82e98a6e-529b-413e-bd43-05f1b4de5042', '654b9166-e2e5-4794-87a7-cb729c57a38b', 9),
       ('0622ad95-778a-482b-8acf-35193d2a8592', '654b9166-e2e5-4794-87a7-cb729c57a38b', 10),
       ('1bdcb2d3-ecf3-4726-a35d-11f0702df9c4', '654b9166-e2e5-4794-87a7-cb729c57a38b', 11),
       ('286f3be2-578d-48b7-bc10-a69628fe6533', '654b9166-e2e5-4794-87a7-cb729c57a38b', 12);

insert into `associated_component_ids_component_ids` (`associated_component_ids_id`, `component_ids`)
values ('e541ec58-2d92-4e56-9ff1-2e505aef9a6f', 'critter_container_all_collectors'),
       ('e541ec58-2d92-4e56-9ff1-2e505aef9a6f', 'gameboard'),
       ('c3a837c2-4d35-4110-a685-71f11a6baae1', 'blockly_cut_div'),
       ('ffefa064-7341-4665-941f-acf4292f2ec5', 'blockly_cut_div'),
       ('2a020006-2e8f-4d75-b011-7c76a9555974', 'gameboard'),
       ('5fe205d9-9c2a-48e7-95de-afc2eed3c312', 'test_popup_container'),
       ('3694fe37-51ad-498d-ab54-9e84a3122f83', 'blockly_cut_div'),
       ('3694fe37-51ad-498d-ab54-9e84a3122f83', 'test_popup_container'),
       ('1cea6e83-c08f-4980-b293-6ffc0b7f5828', 'blockly_cut_div'),
       ('1cea6e83-c08f-4980-b293-6ffc0b7f5828', 'test_popup_container'),
       ('676df309-21df-4c3b-a730-119c237be2aa', 'blockly_cut_div'),
       ('82e98a6e-529b-413e-bd43-05f1b4de5042', 'test_popup_container'),
       ('0622ad95-778a-482b-8acf-35193d2a8592', 'blockly_cut_div'),
       ('1bdcb2d3-ecf3-4726-a35d-11f0702df9c4', 'test_popup_container'),
       ('286f3be2-578d-48b7-bc10-a69628fe6533', 'save_button');

insert into `portal_xmls` (`hint_id`, `portal_xml`, `portal_xml_key`)
values ('654b9166-e2e5-4794-87a7-cb729c57a38b',
        '<xml xmlns="https://developers.google.com/blockly/xml"><block type="controls_if" id="m,0hi2B%hY2Fp|;15)Fd" x="183" y="46"><mutation elseif="2"></mutation><value name="IF0"><block type="logic_compare" id="Updh4`dmqWOl8d}M;g8y"><field name="OP">EQ</field><value name="A"><block type="properties_user_healing" id="G#5U6NE26F(KIms61o%c"><field name="properties">ROUNDS</field></block></value><value name="B"><block type="math_number" id="Eem[Vxht-;;+ILj@@lxp"><field name="NUM">1</field></block></value></block></value><value name="IF1"><block type="logic_compare" id="^!Ytjlj}|Cd,zL-+k`NG"><field name="OP">EQ</field><value name="A"><block type="properties_user_healing" id="rK#jL_4]f@hGL}mUZ=@:"><field name="properties">ROUNDS</field></block></value><value name="B"><block type="math_number" id="A0k#Xd/J,%MrMIbtmc+}"><field name="NUM">2</field></block></value></block></value><value name="IF2"><block type="logic_compare" id="1M3%Rc_*98hi@IKt^zN7"><field name="OP">EQ</field><value name="A"><block type="properties_user_healing" id="}|Zm~s[c^^c^IwAsab:c"><field name="properties">ROUNDS</field></block></value><value name="B"><block type="math_number" id="UmJ@xqLx;mw+(]g2XH{S"><field name="NUM">3</field></block></value></block></value></block></xml>',
        5),
       ('654b9166-e2e5-4794-87a7-cb729c57a38b',
        '<xml xmlns="https://developers.google.com/blockly/xml"><block type="controls_if" id="m,0hi2B%hY2Fp|;15)Fd" x="183" y="46"><mutation elseif="2"></mutation><value name="IF0"><block type="logic_compare" id="Updh4`dmqWOl8d}M;g8y"><field name="OP">EQ</field><value name="A"><block type="properties_user_healing" id="G#5U6NE26F(KIms61o%c"><field name="properties">ROUNDS</field></block></value><value name="B"><block type="math_number" id="Eem[Vxht-;;+ILj@@lxp"><field name="NUM">1</field></block></value></block></value><statement name="DO0"><block type="assert_loop" id="-PQfnW-x(5`~`r*K7,@H"><value name="target"><block type="properties_user_healing" id="i(?F8ef;=8pgy_vk@FtI"><field name="properties">WHITEBERRIES</field></block></value><value name="value"></value></block></statement><value name="IF1"><block type="logic_compare" id="^!Ytjlj}|Cd,zL-+k`NG"><field name="OP">EQ</field><value name="A"><block type="properties_user_healing" id="rK#jL_4]f@hGL}mUZ=@:"><field name="properties">ROUNDS</field></block></value><value name="B"><block type="math_number" id="A0k#Xd/J,%MrMIbtmc+}"><field name="NUM">2</field></block></value></block></value><value name="IF2"><block type="logic_compare" id="1M3%Rc_*98hi@IKt^zN7"><field name="OP">EQ</field><value name="A"><block type="properties_user_healing" id="}|Zm~s[c^^c^IwAsab:c"><field name="properties">ROUNDS</field></block></value><value name="B"><block type="math_number" id="UmJ@xqLx;mw+(]g2XH{S"><field name="NUM">3</field></block></value></block></value></block></xml>',
        6),
       ('654b9166-e2e5-4794-87a7-cb729c57a38b',
        '<xml xmlns="https://developers.google.com/blockly/xml"><block type="controls_if" id="m,0hi2B%hY2Fp|;15)Fd" x="183" y="46"><mutation elseif="2"></mutation><value name="IF0"><block type="logic_compare" id="Updh4`dmqWOl8d}M;g8y"><field name="OP">EQ</field><value name="A"><block type="properties_user_healing" id="G#5U6NE26F(KIms61o%c"><field name="properties">ROUNDS</field></block></value><value name="B"><block type="math_number" id="Eem[Vxht-;;+ILj@@lxp"><field name="NUM">1</field></block></value></block></value><statement name="DO0"><block type="assert_loop" id="-PQfnW-x(5`~`r*K7,@H"><value name="target"><block type="properties_user_healing" id="i(?F8ef;=8pgy_vk@FtI"><field name="properties">WHITEBERRIES</field></block></value><value name="value"><block type="math_number" id="zi0Wh%|8_N)dj|}$RYg~"><field name="NUM">1</field></block></value></block></statement><value name="IF1"><block type="logic_compare" id="^!Ytjlj}|Cd,zL-+k`NG"><field name="OP">EQ</field><value name="A"><block type="properties_user_healing" id="rK#jL_4]f@hGL}mUZ=@:"><field name="properties">ROUNDS</field></block></value><value name="B"><block type="math_number" id="A0k#Xd/J,%MrMIbtmc+}"><field name="NUM">2</field></block></value></block></value><statement name="DO1"><block type="assert_loop" id="iwIEE4RD.f9xA5QPJWl_"><value name="target"><block type="properties_user_healing" id="7wQO[e#Y~2[-H+MXuWJ1"><field name="properties">WHITEBERRIES</field></block></value><value name="value"></value></block></statement><value name="IF2"><block type="logic_compare" id="1M3%Rc_*98hi@IKt^zN7"><field name="OP">EQ</field><value name="A"><block type="properties_user_healing" id="}|Zm~s[c^^c^IwAsab:c"><field name="properties">ROUNDS</field></block></value><value name="B"><block type="math_number" id="UmJ@xqLx;mw+(]g2XH{S"><field name="NUM">3</field></block></value></block></value></block></xml>',
        7),
       ('654b9166-e2e5-4794-87a7-cb729c57a38b',
        '<xml xmlns="https://developers.google.com/blockly/xml"><block type="controls_if" id="m,0hi2B%hY2Fp|;15)Fd" x="183" y="46"><mutation elseif="2"></mutation><value name="IF0"><block type="logic_compare" id="Updh4`dmqWOl8d}M;g8y"><field name="OP">EQ</field><value name="A"><block type="properties_user_healing" id="G#5U6NE26F(KIms61o%c"><field name="properties">ROUNDS</field></block></value><value name="B"><block type="math_number" id="Eem[Vxht-;;+ILj@@lxp"><field name="NUM">1</field></block></value></block></value><statement name="DO0"><block type="assert_loop" id="-PQfnW-x(5`~`r*K7,@H"><value name="target"><block type="properties_user_healing" id="i(?F8ef;=8pgy_vk@FtI"><field name="properties">WHITEBERRIES</field></block></value><value name="value"><block type="math_number" id="zi0Wh%|8_N)dj|}$RYg~"><field name="NUM">1</field></block></value></block></statement><value name="IF1"><block type="logic_compare" id="^!Ytjlj}|Cd,zL-+k`NG"><field name="OP">EQ</field><value name="A"><block type="properties_user_healing" id="rK#jL_4]f@hGL}mUZ=@:"><field name="properties">ROUNDS</field></block></value><value name="B"><block type="math_number" id="A0k#Xd/J,%MrMIbtmc+}"><field name="NUM">2</field></block></value></block></value><statement name="DO1"><block type="assert_loop" id="iwIEE4RD.f9xA5QPJWl_"><value name="target"><block type="properties_user_healing" id="7wQO[e#Y~2[-H+MXuWJ1"><field name="properties">WHITEBERRIES</field></block></value><value name="value"><block type="math_number" id="pLxlz_/@/oJ=?2DbTUr!"><field name="NUM">3</field></block></value></block></statement><value name="IF2"><block type="logic_compare" id="1M3%Rc_*98hi@IKt^zN7"><field name="OP">EQ</field><value name="A"><block type="properties_user_healing" id="}|Zm~s[c^^c^IwAsab:c"><field name="properties">ROUNDS</field></block></value><value name="B"><block type="math_number" id="UmJ@xqLx;mw+(]g2XH{S"><field name="NUM">3</field></block></value></block></value></block></xml>',
        8),
       ('654b9166-e2e5-4794-87a7-cb729c57a38b',
        '<xml xmlns="https://developers.google.com/blockly/xml"><block type="controls_if" id="m,0hi2B%hY2Fp|;15)Fd" x="183" y="46"><mutation elseif="2"></mutation><value name="IF0"><block type="logic_compare" id="Updh4`dmqWOl8d}M;g8y"><field name="OP">EQ</field><value name="A"><block type="properties_user_healing" id="G#5U6NE26F(KIms61o%c"><field name="properties">ROUNDS</field></block></value><value name="B"><block type="math_number" id="Eem[Vxht-;;+ILj@@lxp"><field name="NUM">1</field></block></value></block></value><statement name="DO0"><block type="assert_loop" id="-PQfnW-x(5`~`r*K7,@H"><value name="target"><block type="properties_user_healing" id="i(?F8ef;=8pgy_vk@FtI"><field name="properties">WHITEBERRIES</field></block></value><value name="value"><block type="math_number" id="zi0Wh%|8_N)dj|}$RYg~"><field name="NUM">1</field></block></value></block></statement><value name="IF1"><block type="logic_compare" id="^!Ytjlj}|Cd,zL-+k`NG"><field name="OP">EQ</field><value name="A"><block type="properties_user_healing" id="rK#jL_4]f@hGL}mUZ=@:"><field name="properties">ROUNDS</field></block></value><value name="B"><block type="math_number" id="A0k#Xd/J,%MrMIbtmc+}"><field name="NUM">2</field></block></value></block></value><statement name="DO1"><block type="assert_loop" id="iwIEE4RD.f9xA5QPJWl_"><value name="target"><block type="properties_user_healing" id="7wQO[e#Y~2[-H+MXuWJ1"><field name="properties">WHITEBERRIES</field></block></value><value name="value"><block type="math_number" id="pLxlz_/@/oJ=?2DbTUr!"><field name="NUM">3</field></block></value></block></statement><value name="IF2"><block type="logic_compare" id="1M3%Rc_*98hi@IKt^zN7"><field name="OP">EQ</field><value name="A"><block type="properties_user_healing" id="}|Zm~s[c^^c^IwAsab:c"><field name="properties">ROUNDS</field></block></value><value name="B"><block type="math_number" id="UmJ@xqLx;mw+(]g2XH{S"><field name="NUM">3</field></block></value></block></value><statement name="DO2"><block type="assert_loop" id="`+.59KR9FIBeh]%bq)O="><value name="target"><block type="properties_user_healing" id="?i6H%2?`WK.8N~Q=15E:"><field name="properties">BLACKBERRIES</field></block></value><value name="value"></value></block></statement></block></xml>',
        9),
       ('654b9166-e2e5-4794-87a7-cb729c57a38b',
        '<xml xmlns="https://developers.google.com/blockly/xml"><block type="controls_if" id="m,0hi2B%hY2Fp|;15)Fd" x="183" y="46"><mutation elseif="2"></mutation><value name="IF0"><block type="logic_compare" id="Updh4`dmqWOl8d}M;g8y"><field name="OP">EQ</field><value name="A"><block type="properties_user_healing" id="G#5U6NE26F(KIms61o%c"><field name="properties">ROUNDS</field></block></value><value name="B"><block type="math_number" id="Eem[Vxht-;;+ILj@@lxp"><field name="NUM">1</field></block></value></block></value><statement name="DO0"><block type="assert_loop" id="-PQfnW-x(5`~`r*K7,@H"><value name="target"><block type="properties_user_healing" id="i(?F8ef;=8pgy_vk@FtI"><field name="properties">WHITEBERRIES</field></block></value><value name="value"><block type="math_number" id="zi0Wh%|8_N)dj|}$RYg~"><field name="NUM">1</field></block></value></block></statement><value name="IF1"><block type="logic_compare" id="^!Ytjlj}|Cd,zL-+k`NG"><field name="OP">EQ</field><value name="A"><block type="properties_user_healing" id="rK#jL_4]f@hGL}mUZ=@:"><field name="properties">ROUNDS</field></block></value><value name="B"><block type="math_number" id="A0k#Xd/J,%MrMIbtmc+}"><field name="NUM">2</field></block></value></block></value><statement name="DO1"><block type="assert_loop" id="iwIEE4RD.f9xA5QPJWl_"><value name="target"><block type="properties_user_healing" id="7wQO[e#Y~2[-H+MXuWJ1"><field name="properties">WHITEBERRIES</field></block></value><value name="value"><block type="math_number" id="pLxlz_/@/oJ=?2DbTUr!"><field name="NUM">3</field></block></value></block></statement><value name="IF2"><block type="logic_compare" id="1M3%Rc_*98hi@IKt^zN7"><field name="OP">EQ</field><value name="A"><block type="properties_user_healing" id="}|Zm~s[c^^c^IwAsab:c"><field name="properties">ROUNDS</field></block></value><value name="B"><block type="math_number" id="UmJ@xqLx;mw+(]g2XH{S"><field name="NUM">3</field></block></value></block></value><statement name="DO2"><block type="assert_loop" id="`+.59KR9FIBeh]%bq)O="><value name="target"><block type="properties_user_healing" id="?i6H%2?`WK.8N~Q=15E:"><field name="properties">BLACKBERRIES</field></block></value><value name="value"><block type="math_number" id="3pc`i5H.kwpVi_I`!VF`"><field name="NUM">1</field></block></value></block></statement></block></xml>',
        10),
       ('654b9166-e2e5-4794-87a7-cb729c57a38b',
        '<xml xmlns="https://developers.google.com/blockly/xml"><block type="controls_if" id="m,0hi2B%hY2Fp|;15)Fd" x="179" y="-8"><mutation elseif="2"></mutation><value name="IF0"><block type="logic_compare" id="Updh4`dmqWOl8d}M;g8y"><field name="OP">EQ</field><value name="A"><block type="properties_user_healing" id="G#5U6NE26F(KIms61o%c"><field name="properties">ROUNDS</field></block></value><value name="B"><block type="math_number" id="Eem[Vxht-;;+ILj@@lxp"><field name="NUM">1</field></block></value></block></value><statement name="DO0"><block type="assert_loop" id="-PQfnW-x(5`~`r*K7,@H"><value name="target"><block type="properties_user_healing" id="i(?F8ef;=8pgy_vk@FtI"><field name="properties">WHITEBERRIES</field></block></value><value name="value"><block type="math_number" id="zi0Wh%|8_N)dj|}$RYg~"><field name="NUM">1</field></block></value></block></statement><value name="IF1"><block type="logic_compare" id="^!Ytjlj}|Cd,zL-+k`NG"><field name="OP">EQ</field><value name="A"><block type="properties_user_healing" id="rK#jL_4]f@hGL}mUZ=@:"><field name="properties">ROUNDS</field></block></value><value name="B"><block type="math_number" id="A0k#Xd/J,%MrMIbtmc+}"><field name="NUM">2</field></block></value></block></value><statement name="DO1"><block type="assert_loop" id="iwIEE4RD.f9xA5QPJWl_"><value name="target"><block type="properties_user_healing" id="7wQO[e#Y~2[-H+MXuWJ1"><field name="properties">WHITEBERRIES</field></block></value><value name="value"><block type="math_number" id="pLxlz_/@/oJ=?2DbTUr!"><field name="NUM">3</field></block></value></block></statement><value name="IF2"><block type="logic_compare" id="1M3%Rc_*98hi@IKt^zN7"><field name="OP">EQ</field><value name="A"><block type="properties_user_healing" id="}|Zm~s[c^^c^IwAsab:c"><field name="properties">ROUNDS</field></block></value><value name="B"><block type="math_number" id="UmJ@xqLx;mw+(]g2XH{S"><field name="NUM">3</field></block></value></block></value><statement name="DO2"><block type="assert_loop" id="`+.59KR9FIBeh]%bq)O="><value name="target"><block type="properties_user_healing" id="?i6H%2?`WK.8N~Q=15E:"><field name="properties">BLACKBERRIES</field></block></value><value name="value"><block type="math_number" id="3pc`i5H.kwpVi_I`!VF`"><field name="NUM">1</field></block></value></block></statement></block><block type="assert_loop_free" id="nSqkAp4+uWk+yKOhuxTC" x="198" y="258"><value name="value"><block type="logic_compare" id="E`u|5VDS8C2@:3bg_R%N"><field name="OP">LTE</field><value name="A"><block type="properties_user_healing" id="#+IqTy:lts`iPZsa.qV8"><field name="properties">ROUNDS</field></block></value></block></value></block></xml>',
        11);

insert into `expected_clicked_coordinate` (`id`, `hint_id`, `expected_clicked_coordinates_key`)
values ('58ccd729-bd66-41d5-82ee-7ed2994d0e4c', '654b9166-e2e5-4794-87a7-cb729c57a38b', 4),
       ('fadff2f9-202b-4a8d-ae3a-290269955da2', '654b9166-e2e5-4794-87a7-cb729c57a38b', 5);

insert into `expected_clicked_coordinate_coordinates` (`expected_clicked_coordinate_id`, `x`, `y`)
values ('58ccd729-bd66-41d5-82ee-7ed2994d0e4c', 2, 3),
       ('fadff2f9-202b-4a8d-ae3a-290269955da2', 2, 3);

insert into `hint_expected_user_interaction` (`hint_id`, `expected_user_interaction`, `expected_user_interaction_key`)
values ('654b9166-e2e5-4794-87a7-cb729c57a38b', 0, 4),
       ('654b9166-e2e5-4794-87a7-cb729c57a38b', 1, 6),
       ('654b9166-e2e5-4794-87a7-cb729c57a38b', 1, 7),
       ('654b9166-e2e5-4794-87a7-cb729c57a38b', 1, 9),
       ('654b9166-e2e5-4794-87a7-cb729c57a38b', 1, 11),
       ('654b9166-e2e5-4794-87a7-cb729c57a38b', 2, 12);

insert into `hint_expected_portal_js_code` (`hint_id`, `expected_portal_js_code`, `expected_portal_js_code_key`)
values ('654b9166-e2e5-4794-87a7-cb729c57a38b', 'if ((this.roundsCount) == 1) {\n  if ((this.whiteBerryCount) !== 1) {\n  \tthis._killCritter(x, y, (this.whiteBerryCount), 1);\n  \tthis.mustWalkOut = true;\n  \treturn true;\n  }\n} else if ((this.roundsCount) == 2) {\n} else if ((this.roundsCount) == 3) {\n}\n', 6),
       ('654b9166-e2e5-4794-87a7-cb729c57a38b', 'if ((this.roundsCount) == 1) {\n  if ((this.whiteBerryCount) !== 1) {\n  \tthis._killCritter(x, y, (this.whiteBerryCount), 1);\n  \tthis.mustWalkOut = true;\n  \treturn true;\n  }\n} else if ((this.roundsCount) == 2) {\n  if ((this.whiteBerryCount) !== 3) {\n  \tthis._killCritter(x, y, (this.whiteBerryCount), 3);\n  \tthis.mustWalkOut = true;\n  \treturn true;\n  }\n} else if ((this.roundsCount) == 3) {\n}\n', 7),
       ('654b9166-e2e5-4794-87a7-cb729c57a38b', 'if ((this.roundsCount) == 1) {\n  if ((this.whiteBerryCount) !== 1) {\n  \tthis._killCritter(x, y, (this.whiteBerryCount), 1);\n  \tthis.mustWalkOut = true;\n  \treturn true;\n  }\n} else if ((this.roundsCount) == 2) {\n  if ((this.whiteBerryCount) !== 3) {\n  \tthis._killCritter(x, y, (this.whiteBerryCount), 3);\n  \tthis.mustWalkOut = true;\n  \treturn true;\n  }\n} else if ((this.roundsCount) == 3) {\n  if ((this.blackBerryCount) !== 1) {\n  \tthis._killCritter(x, y, (this.blackBerryCount), 1);\n  \tthis.mustWalkOut = true;\n  \treturn true;\n  }\n}\n', 9),
       ('654b9166-e2e5-4794-87a7-cb729c57a38b', 'if ((this.roundsCount) == 1) {\n  if ((this.whiteBerryCount) !== 1) {\n  \tthis._killCritter(x, y, (this.whiteBerryCount), 1);\n  \tthis.mustWalkOut = true;\n  \treturn true;\n  }\n} else if ((this.roundsCount) == 2) {\n  if ((this.whiteBerryCount) !== 3) {\n  \tthis._killCritter(x, y, (this.whiteBerryCount), 3);\n  \tthis.mustWalkOut = true;\n  \treturn true;\n  }\n} else if ((this.roundsCount) == 3) {\n  if ((this.blackBerryCount) !== 1) {\n  \tthis._killCritter(x, y, (this.blackBerryCount), 1);\n  \tthis.mustWalkOut = true;\n  \treturn true;\n  }\n}\n\nif (!(((this.roundsCount) <= 3))) {\n\tthis._killCritter(x, y, ((this.roundsCount) <= 3), ((this.roundsCount) <= 3));\n\tthis.mustWalkOut = true;\n\treturn true;\n}\n', 11);


-- Level 6 hints:

-- Code Explanation level 6
insert into `hint` (`id`, `hint_situation`, `heal_level_id`)
values ('9983f763-942d-45c1-8fe0-b7755e496f41', 2, 'ef594c76-0544-465f-ac72-f6293d73910d');

insert into `hint_hint_texts` (`hint_id`, `hint_texts`, `hint_texts_key`)
values ('9983f763-942d-45c1-8fe0-b7755e496f41', 'hint_loop_level_6_code_0', 0),
       ('9983f763-942d-45c1-8fe0-b7755e496f41', 'hint_loop_level_6_code_1', 1),
       ('9983f763-942d-45c1-8fe0-b7755e496f41', 'hint_loop_level_6_code_2', 2),
       ('9983f763-942d-45c1-8fe0-b7755e496f41', 'hint_loop_level_6_code_3', 3),
       ('9983f763-942d-45c1-8fe0-b7755e496f41', 'hint_loop_level_6_code_4', 4),
       ('9983f763-942d-45c1-8fe0-b7755e496f41', 'hint_loop_level_6_code_5', 5),
       ('9983f763-942d-45c1-8fe0-b7755e496f41', 'hint_loop_level_6_code_6', 6),
       ('9983f763-942d-45c1-8fe0-b7755e496f41', 'hint_loop_level_6_code_7', 7),
       ('9983f763-942d-45c1-8fe0-b7755e496f41', 'hint_loop_level_6_code_8', 8),
       ('9983f763-942d-45c1-8fe0-b7755e496f41', 'hint_loop_level_6_code_9', 9),
       ('9983f763-942d-45c1-8fe0-b7755e496f41', 'hint_loop_level_6_code_10', 10);

insert into associated_component_ids (id, hint_id, associated_component_ids_key)
values ('bb1ed9a5-941b-4b77-b9be-13e4fb6fa1b2', '9983f763-942d-45c1-8fe0-b7755e496f41', 0),
       ('38eb8111-c1e1-4a44-9654-8945641a78d9', '9983f763-942d-45c1-8fe0-b7755e496f41', 1),
       ('ffe7c1a2-bc88-4b89-9938-b39b76be69ba', '9983f763-942d-45c1-8fe0-b7755e496f41', 2),
       ('a52a7b0f-a8d0-42ac-bcfc-693a785cb56c', '9983f763-942d-45c1-8fe0-b7755e496f41', 3),
       ('88062dc9-943c-4351-b218-302aded21fc8', '9983f763-942d-45c1-8fe0-b7755e496f41', 4),
       ('b07c5cea-3d29-4c8d-9a7b-a0863283eff0', '9983f763-942d-45c1-8fe0-b7755e496f41', 5),
       ('ae1be611-471b-4de8-996d-3d6560cad5cd', '9983f763-942d-45c1-8fe0-b7755e496f41', 6),
       ('0650bb6b-da6f-494b-a98e-fb1c1e1cc781', '9983f763-942d-45c1-8fe0-b7755e496f41', 7),
       ('9b7b94d7-388a-4adf-8c84-10b286340d82', '9983f763-942d-45c1-8fe0-b7755e496f41', 8),
       ('d99a9b31-4444-41be-8c45-d9a958309714', '9983f763-942d-45c1-8fe0-b7755e496f41', 9),
       ('a136fd30-c828-4aad-afd9-7a342038c91d', '9983f763-942d-45c1-8fe0-b7755e496f41', 10);

insert into associated_component_ids_component_ids (associated_component_ids_id, component_ids)
values ('bb1ed9a5-941b-4b77-b9be-13e4fb6fa1b2', 'blockly_cut_div'),
       ('38eb8111-c1e1-4a44-9654-8945641a78d9', 'blockly_cut_div'),
       ('ffe7c1a2-bc88-4b89-9938-b39b76be69ba', 'blockly_cut_div'),
       ('a52a7b0f-a8d0-42ac-bcfc-693a785cb56c', 'blockly_cut_div'),
       ('88062dc9-943c-4351-b218-302aded21fc8', 'blockly_cut_div'),
       ('b07c5cea-3d29-4c8d-9a7b-a0863283eff0', 'blockly_cut_div'),
       ('ae1be611-471b-4de8-996d-3d6560cad5cd', 'blockly_cut_div'),
       ('0650bb6b-da6f-494b-a98e-fb1c1e1cc781', 'blockly_cut_div'),
       ('9b7b94d7-388a-4adf-8c84-10b286340d82', 'blockly_cut_div'),
       ('d99a9b31-4444-41be-8c45-d9a958309714', 'blockly_cut_div'),
       ('a136fd30-c828-4aad-afd9-7a342038c91d', 'blockly_cut_div');

insert into `associated_cut_blocks` (`id`, `hint_id`, `associated_cut_blocks_key`)
values ('67f7f459-35c7-4efe-a75d-2020182d4f50', '9983f763-942d-45c1-8fe0-b7755e496f41', 1),
       ('ef2c2fad-d133-4a02-adee-c986043d895e', '9983f763-942d-45c1-8fe0-b7755e496f41', 2),
       ('b25e13bb-4822-4158-8587-ac723a53c91d', '9983f763-942d-45c1-8fe0-b7755e496f41', 3),
       ('e92961d8-38fc-4952-8e3b-99deee8b812b', '9983f763-942d-45c1-8fe0-b7755e496f41', 4),
       ('c8a238ce-dd7e-48c7-a655-f3304e4ad96c', '9983f763-942d-45c1-8fe0-b7755e496f41', 5),
       ('aa52071b-cafa-4bf2-9229-5121d98a2df3', '9983f763-942d-45c1-8fe0-b7755e496f41', 6),
       ('9f94b064-a088-4839-bea2-34d333d12743', '9983f763-942d-45c1-8fe0-b7755e496f41', 7),
       ('b693cb11-820d-498a-bd10-9a775870e0bf', '9983f763-942d-45c1-8fe0-b7755e496f41', 8),
       ('e873dc87-a021-4d30-9fa4-d4a2cce172b7', '9983f763-942d-45c1-8fe0-b7755e496f41', 9),
       ('169a19bc-6f00-4da1-b173-41530ec69f18', '9983f763-942d-45c1-8fe0-b7755e496f41', 10);

insert into `associated_cut_blocks_block_ids` (`associated_cut_blocks_id`, `block_ids`)
values ('67f7f459-35c7-4efe-a75d-2020182d4f50', 'recipe_start_while'),
       ('ef2c2fad-d133-4a02-adee-c986043d895e', 'logic_compare_1'),
       ('b25e13bb-4822-4158-8587-ac723a53c91d', 'logic_compare_1'),
       ('b25e13bb-4822-4158-8587-ac723a53c91d', 'bush_properties_1'),
       ('b25e13bb-4822-4158-8587-ac723a53c91d', 'bush_properties_2'),
       ('b25e13bb-4822-4158-8587-ac723a53c91d', 'bush_properties_3'),
       ('e92961d8-38fc-4952-8e3b-99deee8b812b', 'controls_if_1'),
       ('e92961d8-38fc-4952-8e3b-99deee8b812b', 'logic_compare_2'),
       ('e92961d8-38fc-4952-8e3b-99deee8b812b', 'logic_compare_3'),
       ('c8a238ce-dd7e-48c7-a655-f3304e4ad96c', 'logic_compare_2'),
       ('c8a238ce-dd7e-48c7-a655-f3304e4ad96c', 'bush_properties_1'),
       ('aa52071b-cafa-4bf2-9229-5121d98a2df3', 'controls_if_1'),
       ('aa52071b-cafa-4bf2-9229-5121d98a2df3', 'math_number_2'),
       ('aa52071b-cafa-4bf2-9229-5121d98a2df3', 'set_berries_1'),
       ('9f94b064-a088-4839-bea2-34d333d12743', 'controls_if_1'),
       ('9f94b064-a088-4839-bea2-34d333d12743', 'logic_compare_3'),
       ('9f94b064-a088-4839-bea2-34d333d12743', 'set_berries_2'),
       ('b693cb11-820d-498a-bd10-9a775870e0bf', 'controls_if_1'),
       ('b693cb11-820d-498a-bd10-9a775870e0bf', 'set_berries_3'),
       ('e873dc87-a021-4d30-9fa4-d4a2cce172b7', 'logic_compare_1'),
       ('e873dc87-a021-4d30-9fa4-d4a2cce172b7', 'set_berries_1'),
       ('e873dc87-a021-4d30-9fa4-d4a2cce172b7', 'set_berries_2'),
       ('e873dc87-a021-4d30-9fa4-d4a2cce172b7', 'set_berries_3'),
       ('169a19bc-6f00-4da1-b173-41530ec69f18', 'recipe_start_while');

insert into `hint_expected_user_interaction` (`hint_id`, `expected_user_interaction`, `expected_user_interaction_key`)
values ('9983f763-942d-45c1-8fe0-b7755e496f41', 3, 5),
       ('9983f763-942d-45c1-8fe0-b7755e496f41', 3, 7);

insert into `answer_options_list` (`id`, `hint_id`, `answer_options_list_key`)
values ('7143ecb4-40e7-4d07-a2a1-b9c3c1580236', '9983f763-942d-45c1-8fe0-b7755e496f41', 5),
       ('7d7c0822-3d4d-4ffd-87e5-943221a13fe8', '9983f763-942d-45c1-8fe0-b7755e496f41', 7);

insert into `answer_options_list_answer_options` (`answer_options_list_id`, `answer_options`)
values ('7143ecb4-40e7-4d07-a2a1-b9c3c1580236', 'round_1'),
       ('7143ecb4-40e7-4d07-a2a1-b9c3c1580236', 'round_2'),
       ('7143ecb4-40e7-4d07-a2a1-b9c3c1580236', 'round_3'),
       ('7d7c0822-3d4d-4ffd-87e5-943221a13fe8', 'pink'),
       ('7d7c0822-3d4d-4ffd-87e5-943221a13fe8', 'black'),
       ('7d7c0822-3d4d-4ffd-87e5-943221a13fe8', 'red');

insert into `hint_solution_answer` (hint_id, solution_answer, solution_answer_key)
values ('9983f763-942d-45c1-8fe0-b7755e496f41', 'round_1', 5),
       ('9983f763-942d-45c1-8fe0-b7755e496f41', 'pink', 7);

insert into `associated_coordinates` (`hint_id`, `x`, `y`, `associated_coordinates_key`)
values ('9983f763-942d-45c1-8fe0-b7755e496f41', 7, 5, 5),
       ('9983f763-942d-45c1-8fe0-b7755e496f41', 7, 5, 6),
       ('9983f763-942d-45c1-8fe0-b7755e496f41', 5, 5, 8);


-- Portal together level 6
insert into `hint` (`id`, `hint_situation`, `heal_level_id`)
values ('de6ca41d-6342-4cac-bd5b-90d19750e5be', 3, 'ef594c76-0544-465f-ac72-f6293d73910d');

insert into `hint_hint_texts` (`hint_id`, `hint_texts`, `hint_texts_key`)
values ('de6ca41d-6342-4cac-bd5b-90d19750e5be', 'hint_loop_level_6_complete_0', 0),
       ('de6ca41d-6342-4cac-bd5b-90d19750e5be', 'hint_loop_level_6_complete_1', 1),
       ('de6ca41d-6342-4cac-bd5b-90d19750e5be', 'hint_loop_level_6_complete_2', 2),
       ('de6ca41d-6342-4cac-bd5b-90d19750e5be', 'hint_loop_level_6_complete_3', 3),
       ('de6ca41d-6342-4cac-bd5b-90d19750e5be', 'hint_loop_level_6_complete_4', 4),
       ('de6ca41d-6342-4cac-bd5b-90d19750e5be', 'hint_loop_level_6_complete_5', 5),
       ('de6ca41d-6342-4cac-bd5b-90d19750e5be', 'hint_loop_level_6_complete_6', 6),
       ('de6ca41d-6342-4cac-bd5b-90d19750e5be', 'hint_loop_level_6_complete_7', 7);

insert into `associated_coordinates` (`hint_id`, `x`, `y`, `associated_coordinates_key`)
values ('de6ca41d-6342-4cac-bd5b-90d19750e5be', 2, 6, 3);

insert into `associated_cut_blocks` (`id`, `hint_id`, `associated_cut_blocks_key`)
values ('2fee64be-234c-44b9-85a7-0d8b8982b90e', 'de6ca41d-6342-4cac-bd5b-90d19750e5be', 2),
       ('5e122160-8177-499f-90a4-a8f1070a2235', 'de6ca41d-6342-4cac-bd5b-90d19750e5be', 3),
       ('e1cf3bc0-8e1f-4021-9f3b-27bb8b9717d7', 'de6ca41d-6342-4cac-bd5b-90d19750e5be', 4),
       ('f1e09426-1e27-4328-92a4-933978700dbf', 'de6ca41d-6342-4cac-bd5b-90d19750e5be', 5),
       ('6579e848-001d-4165-9e99-cfdb00f1fefc', 'de6ca41d-6342-4cac-bd5b-90d19750e5be', 6),
       ('5bef942f-42ac-4688-a6bb-d37e53165215', 'de6ca41d-6342-4cac-bd5b-90d19750e5be', 7);

insert into `associated_cut_blocks_block_ids` (`associated_cut_blocks_id`, `block_ids`)
values ('2fee64be-234c-44b9-85a7-0d8b8982b90e', 'logic_compare_1'),
       ('2fee64be-234c-44b9-85a7-0d8b8982b90e', 'bush_properties_1'),
       ('2fee64be-234c-44b9-85a7-0d8b8982b90e', 'bush_properties_2'),
       ('2fee64be-234c-44b9-85a7-0d8b8982b90e', 'bush_properties_3'),
       ('5e122160-8177-499f-90a4-a8f1070a2235', 'controls_if_1'),
       ('5e122160-8177-499f-90a4-a8f1070a2235', 'logic_compare_2'),
       ('5e122160-8177-499f-90a4-a8f1070a2235', 'logic_compare_3'),
       ('e1cf3bc0-8e1f-4021-9f3b-27bb8b9717d7', 'logic_compare_2'),
       ('e1cf3bc0-8e1f-4021-9f3b-27bb8b9717d7', 'set_berries_1'),
       ('f1e09426-1e27-4328-92a4-933978700dbf', 'logic_compare_3'),
       ('f1e09426-1e27-4328-92a4-933978700dbf', 'set_berries_2'),
       ('6579e848-001d-4165-9e99-cfdb00f1fefc', 'controls_if_1'),
       ('6579e848-001d-4165-9e99-cfdb00f1fefc', 'set_berries_3'),
       ('5bef942f-42ac-4688-a6bb-d37e53165215', 'logic_compare_1'),
       ('5bef942f-42ac-4688-a6bb-d37e53165215', 'controls_if_1');

insert into `associated_component_ids` (`id`, `hint_id`, `associated_component_ids_key`)
values ('f093758e-f4ce-4fd7-bbe5-b1779922d547', 'de6ca41d-6342-4cac-bd5b-90d19750e5be', 1),
       ('d04f5a1f-cdc9-4aea-a5d6-b22b79d7f6ac', 'de6ca41d-6342-4cac-bd5b-90d19750e5be', 2),
       ('06107d84-8cad-4376-ae6f-032256b315b4', 'de6ca41d-6342-4cac-bd5b-90d19750e5be', 3),
       ('9b0f040f-1066-4237-b3a3-fcb4b29aeb1a', 'de6ca41d-6342-4cac-bd5b-90d19750e5be', 4),
       ('f1f65b4b-a1a8-4fa3-9936-8bcf228ab4ca', 'de6ca41d-6342-4cac-bd5b-90d19750e5be', 5),
       ('a60288cd-e865-4a52-a1cb-6d03c81a1b63', 'de6ca41d-6342-4cac-bd5b-90d19750e5be', 6),
       ('171d99cd-07e4-4f7b-9000-f1a203964856', 'de6ca41d-6342-4cac-bd5b-90d19750e5be', 7);

insert into `associated_component_ids_component_ids` (`associated_component_ids_id`, `component_ids`)
values ('f093758e-f4ce-4fd7-bbe5-b1779922d547', 'critter_container_all_collectors'),
       ('f093758e-f4ce-4fd7-bbe5-b1779922d547', 'gameboard'),
       ('d04f5a1f-cdc9-4aea-a5d6-b22b79d7f6ac', 'blockly_cut_div'),
       ('06107d84-8cad-4376-ae6f-032256b315b4', 'gameboard'),
       ('9b0f040f-1066-4237-b3a3-fcb4b29aeb1a', 'test_popup_container'),
       ('f1f65b4b-a1a8-4fa3-9936-8bcf228ab4ca', 'test_popup_container'),
       ('a60288cd-e865-4a52-a1cb-6d03c81a1b63', 'test_popup_container'),
       ('171d99cd-07e4-4f7b-9000-f1a203964856', 'blockly_cut_div'),
       ('171d99cd-07e4-4f7b-9000-f1a203964856', 'save_button');

insert into `portal_xmls` (`hint_id`, `portal_xml`, `portal_xml_key`)
values ('de6ca41d-6342-4cac-bd5b-90d19750e5be',
        '<xml xmlns="https://developers.google.com/blockly/xml"><block type="controls_if" id="|6suH^+]`TvGjJ]g:oWx" x="147" y="75"><value name="IF0"><block type="logic_compare" id="Updh4`dmqWOl8d}M;g8y"><field name="OP">EQ</field><value name="A"><block type="properties_user_healing" id="i@E;f@Q?r2cOyHfq?Wg,"><field name="properties">ROUNDS</field></block></value><value name="B"><block type="math_number" id="Eem[Vxht-;;+ILj@@lxp"><field name="NUM">1</field></block></value></block></value><statement name="DO0"><block type="assert_loop" id="6:GC:tp*a3v!d_,r.A,Z"><value name="target"><block type="properties_user_healing" id="Fu%?BGqb[_+vd^u%Ai/$"><field name="properties">REDBERRIES</field></block></value><value name="value"></value></block></statement></block></xml>',
        4),
       ('de6ca41d-6342-4cac-bd5b-90d19750e5be',
        '<xml xmlns="https://developers.google.com/blockly/xml"><block type="controls_if" id="|6suH^+]`TvGjJ]g:oWx" x="133" y="-18"><mutation elseif="1"></mutation><value name="IF0"><block type="logic_compare" id="Updh4`dmqWOl8d}M;g8y"><field name="OP">EQ</field><value name="A"><block type="properties_user_healing" id="i@E;f@Q?r2cOyHfq?Wg,"><field name="properties">ROUNDS</field></block></value><value name="B"><block type="math_number" id="Eem[Vxht-;;+ILj@@lxp"><field name="NUM">1</field></block></value></block></value><statement name="DO0"><block type="assert_loop" id="6:GC:tp*a3v!d_,r.A,Z"><value name="target"><block type="properties_user_healing" id="Fu%?BGqb[_+vd^u%Ai/$"><field name="properties">REDBERRIES</field></block></value><value name="value"><block type="math_number" id="=Tp%E6kYiq[W-[};_+im"><field name="NUM">1</field></block></value></block></statement><value name="IF1"><block type="logic_compare" id="mV=12Y]df0L2-iLt=_dI"><field name="OP">EQ</field><value name="A"><block type="properties_user_healing" id="X7xbkE*ukJe/WE9*KcI8"><field name="properties">ROUNDS</field></block></value><value name="B"><block type="math_number" id="Q(/~tx+yjSAb3aLcQeYx"><field name="NUM">2</field></block></value></block></value><statement name="DO1"><block type="assert_loop" id="Hr$d=xet[M=d8@dUElXC"><value name="target"><block type="properties_user_healing" id="1fb[W{E?tlFis_8bF7z|"><field name="properties">PINKBERRIES</field></block></value><value name="value"></value></block></statement></block></xml>',
        5),
       ('de6ca41d-6342-4cac-bd5b-90d19750e5be',
        '<xml xmlns="https://developers.google.com/blockly/xml"><block type="controls_if" id="|6suH^+]`TvGjJ]g:oWx" x="111" y="-101"><mutation elseif="1" else="1"></mutation><value name="IF0"><block type="logic_compare" id="Updh4`dmqWOl8d}M;g8y"><field name="OP">EQ</field><value name="A"><block type="properties_user_healing" id="i@E;f@Q?r2cOyHfq?Wg,"><field name="properties">ROUNDS</field></block></value><value name="B"><block type="math_number" id="Eem[Vxht-;;+ILj@@lxp"><field name="NUM">1</field></block></value></block></value><statement name="DO0"><block type="assert_loop" id="6:GC:tp*a3v!d_,r.A,Z"><value name="target"><block type="properties_user_healing" id="Fu%?BGqb[_+vd^u%Ai/$"><field name="properties">REDBERRIES</field></block></value><value name="value"><block type="math_number" id="=Tp%E6kYiq[W-[};_+im"><field name="NUM">1</field></block></value></block></statement><value name="IF1"><block type="logic_compare" id="mV=12Y]df0L2-iLt=_dI"><field name="OP">EQ</field><value name="A"><block type="properties_user_healing" id="X7xbkE*ukJe/WE9*KcI8"><field name="properties">ROUNDS</field></block></value><value name="B"><block type="math_number" id="Q(/~tx+yjSAb3aLcQeYx"><field name="NUM">2</field></block></value></block></value><statement name="DO1"><block type="assert_loop" id="Hr$d=xet[M=d8@dUElXC"><value name="target"><block type="properties_user_healing" id="1fb[W{E?tlFis_8bF7z|"><field name="properties">PINKBERRIES</field></block></value><value name="value"><block type="math_number" id="p`S[{XxkH,sq5%q9tgV%"><field name="NUM">2</field></block></value></block></statement><statement name="ELSE"><block type="assert_loop" id="t_eged4mSjk~_`b6LsjS"><value name="target"><block type="properties_user_healing" id="4/;hsw(@5qAGQ7#n^9#8"><field name="properties">BLACKBERRIES</field></block></value><value name="value"></value></block></statement></block></xml>',
        6),
       ('de6ca41d-6342-4cac-bd5b-90d19750e5be',
        '<xml xmlns="https://developers.google.com/blockly/xml"><block type="controls_if" id="|6suH^+]`TvGjJ]g:oWx" x="111" y="-101"><mutation elseif="1" else="1"></mutation><value name="IF0"><block type="logic_compare" id="Updh4`dmqWOl8d}M;g8y"><field name="OP">EQ</field><value name="A"><block type="properties_user_healing" id="i@E;f@Q?r2cOyHfq?Wg,"><field name="properties">ROUNDS</field></block></value><value name="B"><block type="math_number" id="Eem[Vxht-;;+ILj@@lxp"><field name="NUM">1</field></block></value></block></value><statement name="DO0"><block type="assert_loop" id="6:GC:tp*a3v!d_,r.A,Z"><value name="target"><block type="properties_user_healing" id="Fu%?BGqb[_+vd^u%Ai/$"><field name="properties">REDBERRIES</field></block></value><value name="value"><block type="math_number" id="=Tp%E6kYiq[W-[};_+im"><field name="NUM">1</field></block></value></block></statement><value name="IF1"><block type="logic_compare" id="mV=12Y]df0L2-iLt=_dI"><field name="OP">EQ</field><value name="A"><block type="properties_user_healing" id="X7xbkE*ukJe/WE9*KcI8"><field name="properties">ROUNDS</field></block></value><value name="B"><block type="math_number" id="Q(/~tx+yjSAb3aLcQeYx"><field name="NUM">2</field></block></value></block></value><statement name="DO1"><block type="assert_loop" id="Hr$d=xet[M=d8@dUElXC"><value name="target"><block type="properties_user_healing" id="1fb[W{E?tlFis_8bF7z|"><field name="properties">PINKBERRIES</field></block></value><value name="value"><block type="math_number" id="p`S[{XxkH,sq5%q9tgV%"><field name="NUM">2</field></block></value></block></statement><statement name="ELSE"><block type="assert_loop" id="t_eged4mSjk~_`b6LsjS"><value name="target"><block type="properties_user_healing" id="4/;hsw(@5qAGQ7#n^9#8"><field name="properties">BLACKBERRIES</field></block></value><value name="value"><block type="math_number" id="wuNNS7{[,oW+6-M#_wq="><field name="NUM">3</field></block></value></block></statement></block></xml>',
        7);

insert into `expected_clicked_coordinate` (`id`, `hint_id`, `expected_clicked_coordinates_key`)
values ('ebaa60d2-b9e0-4bc7-a2d5-08df0d1788f4', 'de6ca41d-6342-4cac-bd5b-90d19750e5be', 3);

insert into `expected_clicked_coordinate_coordinates` (`expected_clicked_coordinate_id`, `x`, `y`)
values ('ebaa60d2-b9e0-4bc7-a2d5-08df0d1788f4', 2, 6);

insert into `hint_expected_user_interaction` (`hint_id`, `expected_user_interaction`, `expected_user_interaction_key`)
values ('de6ca41d-6342-4cac-bd5b-90d19750e5be', 0, 3),
       ('de6ca41d-6342-4cac-bd5b-90d19750e5be', 1, 4),
       ('de6ca41d-6342-4cac-bd5b-90d19750e5be', 1, 5),
       ('de6ca41d-6342-4cac-bd5b-90d19750e5be', 1, 6),
       ('de6ca41d-6342-4cac-bd5b-90d19750e5be', 2, 7);

insert into `hint_expected_portal_js_code` (`hint_id`, `expected_portal_js_code`, `expected_portal_js_code_key`)
values ('de6ca41d-6342-4cac-bd5b-90d19750e5be', 'if ((this.roundsCount) == 1) {\n  if ((this.redBerryCount) !== 1) {\n  \tthis._killCritter(x, y, (this.redBerryCount), 1);\n  \tthis.mustWalkOut = true;\n  \treturn true;\n  }\n}\n', 4),
       ('de6ca41d-6342-4cac-bd5b-90d19750e5be', 'if ((this.roundsCount) == 1) {\n  if ((this.redBerryCount) !== 1) {\n  \tthis._killCritter(x, y, (this.redBerryCount), 1);\n  \tthis.mustWalkOut = true;\n  \treturn true;\n  }\n} else if ((this.roundsCount) == 2) {\n  if ((this.pinkBerryCount) !== 2) {\n  \tthis._killCritter(x, y, (this.pinkBerryCount), 2);\n  \tthis.mustWalkOut = true;\n  \treturn true;\n  }\n}\n', 5),
       ('de6ca41d-6342-4cac-bd5b-90d19750e5be', 'if ((this.roundsCount) == 1) {\n  if ((this.redBerryCount) !== 1) {\n  \tthis._killCritter(x, y, (this.redBerryCount), 1);\n  \tthis.mustWalkOut = true;\n  \treturn true;\n  }\n} else if ((this.roundsCount) == 2) {\n  if ((this.pinkBerryCount) !== 2) {\n  \tthis._killCritter(x, y, (this.pinkBerryCount), 2);\n  \tthis.mustWalkOut = true;\n  \treturn true;\n  }\n} else {\n  if ((this.blackBerryCount) !== 3) {\n  \tthis._killCritter(x, y, (this.blackBerryCount), 3);\n  \tthis.mustWalkOut = true;\n  \treturn true;\n  }\n}\n', 6);


-- Level 7 hints:

-- Code Explanation level 7
insert into `hint` (`id`, `hint_situation`, `heal_level_id`)
values ('2987639a-c90c-420b-b630-18dfce61c421', 2, 'f76c60ed-1ec0-4ffd-9455-e33d0c660182');

insert into `hint_hint_texts` (`hint_id`, `hint_texts`, `hint_texts_key`)
values ('2987639a-c90c-420b-b630-18dfce61c421', 'hint_loop_level_7_code_0', 0),
       ('2987639a-c90c-420b-b630-18dfce61c421', 'hint_loop_level_7_code_1', 1),
       ('2987639a-c90c-420b-b630-18dfce61c421', 'hint_loop_level_7_code_2', 2),
       ('2987639a-c90c-420b-b630-18dfce61c421', 'hint_loop_level_7_code_3', 3),
       ('2987639a-c90c-420b-b630-18dfce61c421', 'hint_loop_level_7_code_4', 4),
       ('2987639a-c90c-420b-b630-18dfce61c421', 'hint_loop_level_7_code_5', 5),
       ('2987639a-c90c-420b-b630-18dfce61c421', 'hint_loop_level_7_code_6', 6),
       ('2987639a-c90c-420b-b630-18dfce61c421', 'hint_loop_level_7_code_7', 7),
       ('2987639a-c90c-420b-b630-18dfce61c421', 'hint_loop_level_7_code_8', 8),
       ('2987639a-c90c-420b-b630-18dfce61c421', 'hint_loop_level_7_code_9', 9),
       ('2987639a-c90c-420b-b630-18dfce61c421', 'hint_loop_level_7_code_10', 10),
       ('2987639a-c90c-420b-b630-18dfce61c421', 'hint_loop_level_7_code_11', 11),
       ('2987639a-c90c-420b-b630-18dfce61c421', 'hint_loop_level_7_code_12', 12);

insert into associated_component_ids (id, hint_id, associated_component_ids_key)
values ('8c2f5547-655a-4876-8288-863b30327f57', '2987639a-c90c-420b-b630-18dfce61c421', 0),
       ('652f90d4-367b-438c-951f-f0b58f58b44a', '2987639a-c90c-420b-b630-18dfce61c421', 1),
       ('28dd63a7-f458-4484-8cc0-9dc19effc289', '2987639a-c90c-420b-b630-18dfce61c421', 2),
       ('0f31d7ae-d2b1-4b8f-860b-b33802047fe1', '2987639a-c90c-420b-b630-18dfce61c421', 3),
       ('74db6851-a772-4076-b8d2-fb7d71d38c99', '2987639a-c90c-420b-b630-18dfce61c421', 4),
       ('a3d1e78a-8053-4506-bf7c-dbea05887373', '2987639a-c90c-420b-b630-18dfce61c421', 5),
       ('8967316e-f1ca-4699-b005-11e48b09c826', '2987639a-c90c-420b-b630-18dfce61c421', 6),
       ('5db1014a-1ecb-4ae4-8705-edd903d26e82', '2987639a-c90c-420b-b630-18dfce61c421', 7),
       ('292751d8-698b-4180-80cf-1216b9ad9bcb', '2987639a-c90c-420b-b630-18dfce61c421', 8),
       ('bdfa2773-e2d8-42cc-8215-7cbc6955f07f', '2987639a-c90c-420b-b630-18dfce61c421', 9),
       ('c434344b-a10e-4898-8108-f0ecd8a80f2d', '2987639a-c90c-420b-b630-18dfce61c421', 10),
       ('45b5a3e4-084b-4087-b3ce-92efe96220a4', '2987639a-c90c-420b-b630-18dfce61c421', 11),
       ('9abdd02a-95ea-4fe2-807f-bdb45c1ce7ca', '2987639a-c90c-420b-b630-18dfce61c421', 12);

insert into associated_component_ids_component_ids (associated_component_ids_id, component_ids)
values ('8c2f5547-655a-4876-8288-863b30327f57', 'blockly_cut_div'),
       ('652f90d4-367b-438c-951f-f0b58f58b44a', 'blockly_cut_div'),
       ('28dd63a7-f458-4484-8cc0-9dc19effc289', 'blockly_cut_div'),
       ('0f31d7ae-d2b1-4b8f-860b-b33802047fe1', 'blockly_cut_div'),
       ('74db6851-a772-4076-b8d2-fb7d71d38c99', 'blockly_cut_div'),
       ('a3d1e78a-8053-4506-bf7c-dbea05887373', 'blockly_cut_div'),
       ('8967316e-f1ca-4699-b005-11e48b09c826', 'blockly_cut_div'),
       ('8967316e-f1ca-4699-b005-11e48b09c826', '7a22cac6-e117-45c1-84e9-d162840a4af8'),
       ('8967316e-f1ca-4699-b005-11e48b09c826', '033e5f74-170a-494b-9efc-83f2283e17f6'),
       ('8967316e-f1ca-4699-b005-11e48b09c826', 'fe855b1c-68b5-413e-9831-5f9d6efada9d'),
       ('8967316e-f1ca-4699-b005-11e48b09c826', '3689963d-f1f9-43cd-b7e4-892a6377e324'),
       ('8967316e-f1ca-4699-b005-11e48b09c826', 'c47ec46e-c6a1-47b1-ae90-94c82bd4b166'),
       ('5db1014a-1ecb-4ae4-8705-edd903d26e82', 'blockly_cut_div'),
       ('5db1014a-1ecb-4ae4-8705-edd903d26e82', '8d8143c4-9403-45c3-8e20-a846d8d71a30'),
       ('5db1014a-1ecb-4ae4-8705-edd903d26e82', '9530f374-05bc-4611-bb2a-80cdd3914a96'),
       ('5db1014a-1ecb-4ae4-8705-edd903d26e82', '2c0c793a-a91f-48bc-8bad-f0a1bb451f29'),
       ('5db1014a-1ecb-4ae4-8705-edd903d26e82', 'ca40595c-47b2-426f-9bb5-3ad4de8bb583'),
       ('5db1014a-1ecb-4ae4-8705-edd903d26e82', 'db6ebcd6-5361-44f8-94c0-79058f1b5190'),
       ('292751d8-698b-4180-80cf-1216b9ad9bcb', 'blockly_cut_div'),
       ('292751d8-698b-4180-80cf-1216b9ad9bcb', '8d8143c4-9403-45c3-8e20-a846d8d71a30'),
       ('292751d8-698b-4180-80cf-1216b9ad9bcb', '9530f374-05bc-4611-bb2a-80cdd3914a96'),
       ('292751d8-698b-4180-80cf-1216b9ad9bcb', '2c0c793a-a91f-48bc-8bad-f0a1bb451f29'),
       ('292751d8-698b-4180-80cf-1216b9ad9bcb', 'ca40595c-47b2-426f-9bb5-3ad4de8bb583'),
       ('292751d8-698b-4180-80cf-1216b9ad9bcb', 'db6ebcd6-5361-44f8-94c0-79058f1b5190'),
       ('bdfa2773-e2d8-42cc-8215-7cbc6955f07f', 'blockly_cut_div'),
       ('bdfa2773-e2d8-42cc-8215-7cbc6955f07f', '7a22cac6-e117-45c1-84e9-d162840a4af8'),
       ('bdfa2773-e2d8-42cc-8215-7cbc6955f07f', '033e5f74-170a-494b-9efc-83f2283e17f6'),
       ('bdfa2773-e2d8-42cc-8215-7cbc6955f07f', 'fe855b1c-68b5-413e-9831-5f9d6efada9d'),
       ('bdfa2773-e2d8-42cc-8215-7cbc6955f07f', '3689963d-f1f9-43cd-b7e4-892a6377e324'),
       ('bdfa2773-e2d8-42cc-8215-7cbc6955f07f', 'c47ec46e-c6a1-47b1-ae90-94c82bd4b166'),
       ('c434344b-a10e-4898-8108-f0ecd8a80f2d', 'blockly_cut_div'),
       ('c434344b-a10e-4898-8108-f0ecd8a80f2d', '7a22cac6-e117-45c1-84e9-d162840a4af8'),
       ('c434344b-a10e-4898-8108-f0ecd8a80f2d', '033e5f74-170a-494b-9efc-83f2283e17f6'),
       ('c434344b-a10e-4898-8108-f0ecd8a80f2d', 'fe855b1c-68b5-413e-9831-5f9d6efada9d'),
       ('c434344b-a10e-4898-8108-f0ecd8a80f2d', '3689963d-f1f9-43cd-b7e4-892a6377e324'),
       ('c434344b-a10e-4898-8108-f0ecd8a80f2d', 'c47ec46e-c6a1-47b1-ae90-94c82bd4b166'),
       ('45b5a3e4-084b-4087-b3ce-92efe96220a4', 'blockly_cut_div'),
       ('45b5a3e4-084b-4087-b3ce-92efe96220a4', 'critter_container_all_collectors'),
       ('9abdd02a-95ea-4fe2-807f-bdb45c1ce7ca', 'blockly_cut_div');

insert into `associated_cut_blocks` (`id`, `hint_id`, `associated_cut_blocks_key`)
values ('b151c068-917d-4ebd-a74b-08d85c436221', '2987639a-c90c-420b-b630-18dfce61c421', 1),
       ('b6e28818-b841-47e0-9129-67863b692c21', '2987639a-c90c-420b-b630-18dfce61c421', 2),
       ('a5cffd94-ee73-4965-9801-fc817465c7c0', '2987639a-c90c-420b-b630-18dfce61c421', 3),
       ('9dcd2da9-1648-48f3-835f-a7599736c3b3', '2987639a-c90c-420b-b630-18dfce61c421', 4),
       ('d147f01c-c64a-4276-bfef-5e7b3b90a1ef', '2987639a-c90c-420b-b630-18dfce61c421', 5),
       ('503bef51-e06c-4892-bb17-378d864f730a', '2987639a-c90c-420b-b630-18dfce61c421', 6),
       ('74e1d305-e385-4034-be71-b3d4abf55e79', '2987639a-c90c-420b-b630-18dfce61c421', 7),
       ('1670dfa6-315d-4a46-a5ce-07a0eace7b43', '2987639a-c90c-420b-b630-18dfce61c421', 8),
       ('7ad5da51-9040-433f-ad87-fc1ef329c6fb', '2987639a-c90c-420b-b630-18dfce61c421', 9),
       ('01a0ad9e-4742-429c-b7fb-678aa46425e7', '2987639a-c90c-420b-b630-18dfce61c421', 10),
       ('556b0655-d081-4e29-b91d-b772f1bb5ff3', '2987639a-c90c-420b-b630-18dfce61c421', 11),
       ('40d7a8c8-f437-4bc3-80c8-7cda21e33cb6', '2987639a-c90c-420b-b630-18dfce61c421', 12);

insert into `associated_cut_blocks_block_ids` (`associated_cut_blocks_id`, `block_ids`)
values ('b151c068-917d-4ebd-a74b-08d85c436221', 'recipe_start_while'),
       ('b6e28818-b841-47e0-9129-67863b692c21', 'logic_compare_1'),
       ('a5cffd94-ee73-4965-9801-fc817465c7c0', 'logic_compare_1'),
       ('a5cffd94-ee73-4965-9801-fc817465c7c0', 'bush_properties_1'),
       ('a5cffd94-ee73-4965-9801-fc817465c7c0', 'bush_properties_2'),
       ('9dcd2da9-1648-48f3-835f-a7599736c3b3', 'controls_if_1'),
       ('9dcd2da9-1648-48f3-835f-a7599736c3b3', 'logic_operation_1'),
       ('d147f01c-c64a-4276-bfef-5e7b3b90a1ef', 'logic_compare_2'),
       ('d147f01c-c64a-4276-bfef-5e7b3b90a1ef', 'math_number_property_1'),
       ('d147f01c-c64a-4276-bfef-5e7b3b90a1ef', 'set_berries_1'),
       ('503bef51-e06c-4892-bb17-378d864f730a', 'logic_compare_2'),
       ('503bef51-e06c-4892-bb17-378d864f730a', 'math_number_property_1'),
       ('503bef51-e06c-4892-bb17-378d864f730a', 'set_berries_1'),
       ('74e1d305-e385-4034-be71-b3d4abf55e79', 'controls_if_1'),
       ('74e1d305-e385-4034-be71-b3d4abf55e79', 'set_berries_2'),
       ('1670dfa6-315d-4a46-a5ce-07a0eace7b43', 'controls_if_1'),
       ('1670dfa6-315d-4a46-a5ce-07a0eace7b43', 'set_berries_2'),
       ('7ad5da51-9040-433f-ad87-fc1ef329c6fb', 'logic_compare_2'),
       ('7ad5da51-9040-433f-ad87-fc1ef329c6fb', 'math_number_property_1'),
       ('7ad5da51-9040-433f-ad87-fc1ef329c6fb', 'bush_properties_1'),
       ('7ad5da51-9040-433f-ad87-fc1ef329c6fb', 'bush_properties_2'),
       ('01a0ad9e-4742-429c-b7fb-678aa46425e7', 'logic_compare_2'),
       ('01a0ad9e-4742-429c-b7fb-678aa46425e7', 'math_number_property_1'),
       ('01a0ad9e-4742-429c-b7fb-678aa46425e7', 'bush_properties_1'),
       ('556b0655-d081-4e29-b91d-b772f1bb5ff3', 'controls_if_1'),
       ('556b0655-d081-4e29-b91d-b772f1bb5ff3', 'bush_properties_1'),
       ('556b0655-d081-4e29-b91d-b772f1bb5ff3', 'bush_properties_2'),
       ('40d7a8c8-f437-4bc3-80c8-7cda21e33cb6', 'recipe_start_while');

insert into `hint_expected_user_interaction` (`hint_id`, `expected_user_interaction`, `expected_user_interaction_key`)
values ('2987639a-c90c-420b-b630-18dfce61c421', 3, 7),
       ('2987639a-c90c-420b-b630-18dfce61c421', 3, 9),
       ('2987639a-c90c-420b-b630-18dfce61c421', 3, 10);

insert into `answer_options_list` (`id`, `hint_id`, `answer_options_list_key`)
values ('40905748-6801-4940-afea-72bae7155659', '2987639a-c90c-420b-b630-18dfce61c421', 7),
       ('cbfa6c24-b5bb-4a6f-908d-d124aae59dec', '2987639a-c90c-420b-b630-18dfce61c421', 9),
       ('6cd378ef-0beb-44a4-8228-abc4fcf5d18e', '2987639a-c90c-420b-b630-18dfce61c421', 10);

insert into `answer_options_list_answer_options` (`answer_options_list_id`, `answer_options`)
values ('40905748-6801-4940-afea-72bae7155659', '2'),
       ('40905748-6801-4940-afea-72bae7155659', '3'),
       ('40905748-6801-4940-afea-72bae7155659', '4'),
       ('cbfa6c24-b5bb-4a6f-908d-d124aae59dec', 'round_1'),
       ('cbfa6c24-b5bb-4a6f-908d-d124aae59dec', 'round_2'),
       ('cbfa6c24-b5bb-4a6f-908d-d124aae59dec', 'round_3'),
       ('6cd378ef-0beb-44a4-8228-abc4fcf5d18e', '2'),
       ('6cd378ef-0beb-44a4-8228-abc4fcf5d18e', '4'),
       ('6cd378ef-0beb-44a4-8228-abc4fcf5d18e', '6');

insert into `hint_solution_answer` (hint_id, solution_answer, solution_answer_key)
values ('2987639a-c90c-420b-b630-18dfce61c421', '2', 7),
       ('2987639a-c90c-420b-b630-18dfce61c421', 'round_2', 9),
       ('2987639a-c90c-420b-b630-18dfce61c421', '4', 10);

insert into `associated_coordinates` (`hint_id`, `x`, `y`, `associated_coordinates_key`)
values ('2987639a-c90c-420b-b630-18dfce61c421', 4, 4, 5),
       ('2987639a-c90c-420b-b630-18dfce61c421', 4, 4, 6),
       ('2987639a-c90c-420b-b630-18dfce61c421', 3, 6, 7),
       ('2987639a-c90c-420b-b630-18dfce61c421', 3, 6, 9);


-- Portal together level 7
insert into `hint` (`id`, `hint_situation`, `heal_level_id`)
values ('5ebaee8e-ccfd-46c2-94a8-77b3cf5115a0', 3, 'f76c60ed-1ec0-4ffd-9455-e33d0c660182');

insert into `hint_hint_texts` (`hint_id`, `hint_texts`, `hint_texts_key`)
values ('5ebaee8e-ccfd-46c2-94a8-77b3cf5115a0', 'hint_loop_level_7_complete_0', 0),
       ('5ebaee8e-ccfd-46c2-94a8-77b3cf5115a0', 'hint_loop_level_7_complete_1', 1),
       ('5ebaee8e-ccfd-46c2-94a8-77b3cf5115a0', 'hint_loop_level_7_complete_2', 2),
       ('5ebaee8e-ccfd-46c2-94a8-77b3cf5115a0', 'hint_loop_level_7_complete_3', 3),
       ('5ebaee8e-ccfd-46c2-94a8-77b3cf5115a0', 'hint_loop_level_7_complete_4', 4),
       ('5ebaee8e-ccfd-46c2-94a8-77b3cf5115a0', 'hint_loop_level_7_complete_5', 5),
       ('5ebaee8e-ccfd-46c2-94a8-77b3cf5115a0', 'hint_loop_level_7_complete_6', 6),
       ('5ebaee8e-ccfd-46c2-94a8-77b3cf5115a0', 'hint_loop_level_7_complete_7', 7),
       ('5ebaee8e-ccfd-46c2-94a8-77b3cf5115a0', 'hint_loop_level_7_complete_8', 8),
       ('5ebaee8e-ccfd-46c2-94a8-77b3cf5115a0', 'hint_loop_level_7_complete_9', 9),
       ('5ebaee8e-ccfd-46c2-94a8-77b3cf5115a0', 'hint_loop_level_7_complete_10', 10),
       ('5ebaee8e-ccfd-46c2-94a8-77b3cf5115a0', 'hint_loop_level_7_complete_11', 11),
       ('5ebaee8e-ccfd-46c2-94a8-77b3cf5115a0', 'hint_loop_level_7_complete_12', 12),
       ('5ebaee8e-ccfd-46c2-94a8-77b3cf5115a0', 'hint_loop_level_7_complete_13', 13),
       ('5ebaee8e-ccfd-46c2-94a8-77b3cf5115a0', 'hint_loop_level_7_complete_14', 14),
       ('5ebaee8e-ccfd-46c2-94a8-77b3cf5115a0', 'hint_loop_level_7_complete_15', 15),
       ('5ebaee8e-ccfd-46c2-94a8-77b3cf5115a0', 'hint_loop_level_7_complete_16', 16);

insert into `associated_coordinates` (`hint_id`, `x`, `y`, `associated_coordinates_key`)
values ('5ebaee8e-ccfd-46c2-94a8-77b3cf5115a0', 5, 1, 3),
       ('5ebaee8e-ccfd-46c2-94a8-77b3cf5115a0', 3, 4, 6),
       ('5ebaee8e-ccfd-46c2-94a8-77b3cf5115a0', 2, 4, 11);

insert into `associated_cut_blocks` (`id`, `hint_id`, `associated_cut_blocks_key`)
values ('453b3a93-6d6e-48f8-902b-a3f4d00002a9', '5ebaee8e-ccfd-46c2-94a8-77b3cf5115a0', 2),
       ('ba72ed35-5076-4038-8692-f2dc4285bf50', '5ebaee8e-ccfd-46c2-94a8-77b3cf5115a0', 3),
       ('35cc1d17-a846-4417-b5a2-a5ae554665b0', '5ebaee8e-ccfd-46c2-94a8-77b3cf5115a0', 4),
       ('f946d835-c651-4b93-be13-c249427e5d39', '5ebaee8e-ccfd-46c2-94a8-77b3cf5115a0', 6),
       ('b9aa15ac-b090-4286-a972-fdb973ef6589', '5ebaee8e-ccfd-46c2-94a8-77b3cf5115a0', 7),
       ('1547349a-e2f9-4271-af54-d4723f227360', '5ebaee8e-ccfd-46c2-94a8-77b3cf5115a0', 8),
       ('fb05afe4-f634-4709-911c-623f58aed62f', '5ebaee8e-ccfd-46c2-94a8-77b3cf5115a0', 9),
       ('26a8bd2e-fba4-4079-bfae-a8015e6889f7', '5ebaee8e-ccfd-46c2-94a8-77b3cf5115a0', 11),
       ('19f70504-04d2-469c-9e13-7aaa671dd77e', '5ebaee8e-ccfd-46c2-94a8-77b3cf5115a0', 12),
       ('65eda6d5-7fbc-4a5b-b9bc-a23162f9ca52', '5ebaee8e-ccfd-46c2-94a8-77b3cf5115a0', 13),
       ('70661643-4286-4a6c-a2a0-a79f1f544b72', '5ebaee8e-ccfd-46c2-94a8-77b3cf5115a0', 14),
       ('a1220a6f-ffce-420c-b93a-67c24646803b', '5ebaee8e-ccfd-46c2-94a8-77b3cf5115a0', 15);

insert into `associated_cut_blocks_block_ids` (`associated_cut_blocks_id`, `block_ids`)
values ('453b3a93-6d6e-48f8-902b-a3f4d00002a9', 'logic_compare_1'),
       ('453b3a93-6d6e-48f8-902b-a3f4d00002a9', 'set_berries_1'),
       ('453b3a93-6d6e-48f8-902b-a3f4d00002a9', 'set_berries_2'),
       ('ba72ed35-5076-4038-8692-f2dc4285bf50', 'logic_compare_1'),
       ('35cc1d17-a846-4417-b5a2-a5ae554665b0', 'logic_compare_1'),
       ('f946d835-c651-4b93-be13-c249427e5d39', 'set_berries_1'),
       ('f946d835-c651-4b93-be13-c249427e5d39', 'set_berries_2'),
       ('b9aa15ac-b090-4286-a972-fdb973ef6589', 'logic_operation_1'),
       ('b9aa15ac-b090-4286-a972-fdb973ef6589', 'bush_properties_1'),
       ('1547349a-e2f9-4271-af54-d4723f227360', 'controls_if_1'),
       ('1547349a-e2f9-4271-af54-d4723f227360', 'bush_properties_2'),
       ('fb05afe4-f634-4709-911c-623f58aed62f', 'controls_if_1'),
       ('fb05afe4-f634-4709-911c-623f58aed62f', 'set_berries_2'),
       ('26a8bd2e-fba4-4079-bfae-a8015e6889f7', 'logic_compare_2'),
       ('19f70504-04d2-469c-9e13-7aaa671dd77e', 'logic_compare_2'),
       ('19f70504-04d2-469c-9e13-7aaa671dd77e', 'logic_operation_1'),
       ('65eda6d5-7fbc-4a5b-b9bc-a23162f9ca52', 'math_number_property_1'),
       ('65eda6d5-7fbc-4a5b-b9bc-a23162f9ca52', 'set_berries_1'),
       ('70661643-4286-4a6c-a2a0-a79f1f544b72', 'math_number_property_1'),
       ('70661643-4286-4a6c-a2a0-a79f1f544b72', 'set_berries_2'),
       ('a1220a6f-ffce-420c-b93a-67c24646803b', 'math_number_property_1'),
       ('a1220a6f-ffce-420c-b93a-67c24646803b', 'set_berries_1');

insert into `associated_component_ids` (`id`, `hint_id`, `associated_component_ids_key`)
values ('2768bacf-ef39-4139-9faf-97463c1fed8a', '5ebaee8e-ccfd-46c2-94a8-77b3cf5115a0', 1),
       ('9cd2cd5c-e0d3-4583-a231-2fac1e7b0505', '5ebaee8e-ccfd-46c2-94a8-77b3cf5115a0', 2),
       ('ee095f74-22b7-4216-b040-5b2ec2da9cef', '5ebaee8e-ccfd-46c2-94a8-77b3cf5115a0', 3),
       ('03147831-55e0-44f9-a0ba-801bf884e688', '5ebaee8e-ccfd-46c2-94a8-77b3cf5115a0', 4),
       ('b5869a0a-e12b-4146-a326-5e633300c57c', '5ebaee8e-ccfd-46c2-94a8-77b3cf5115a0', 5),
       ('f5328e53-918c-4a82-a726-01ab591ca3fa', '5ebaee8e-ccfd-46c2-94a8-77b3cf5115a0', 6),
       ('58f74816-abe6-4c0d-8e25-ca8c4a9ae811', '5ebaee8e-ccfd-46c2-94a8-77b3cf5115a0', 7),
       ('44bf9b08-7aa6-4639-91d8-5c8d3c23c6d9', '5ebaee8e-ccfd-46c2-94a8-77b3cf5115a0', 8),
       ('e5025629-cb12-405a-b4f5-8692bb5a9bfc', '5ebaee8e-ccfd-46c2-94a8-77b3cf5115a0', 9),
       ('4a17aac3-62f0-46d8-8a55-1f9c796aab10', '5ebaee8e-ccfd-46c2-94a8-77b3cf5115a0', 10),
       ('351a06e5-78bd-48ac-9103-069e91593f8a', '5ebaee8e-ccfd-46c2-94a8-77b3cf5115a0', 11),
       ('db4c4a32-a5a9-496f-adcb-4dd876f321ce', '5ebaee8e-ccfd-46c2-94a8-77b3cf5115a0', 12),
       ('8ce8959c-f6a7-467d-8531-8b5943b18bd5', '5ebaee8e-ccfd-46c2-94a8-77b3cf5115a0', 13),
       ('7db91ab7-1f0c-42c6-8ac4-9c4cc4c17254', '5ebaee8e-ccfd-46c2-94a8-77b3cf5115a0', 14),
       ('2343376e-44d7-4ef7-9edb-ef566765b5f2', '5ebaee8e-ccfd-46c2-94a8-77b3cf5115a0', 15),
       ('61b109ba-e14b-4a7d-9f2d-2fd82e15a32f', '5ebaee8e-ccfd-46c2-94a8-77b3cf5115a0', 16);

insert into `associated_component_ids_component_ids` (`associated_component_ids_id`, `component_ids`)
values ('2768bacf-ef39-4139-9faf-97463c1fed8a', 'critter_container_all_collectors'),
       ('2768bacf-ef39-4139-9faf-97463c1fed8a', 'gameboard'),
       ('9cd2cd5c-e0d3-4583-a231-2fac1e7b0505', 'blockly_cut_div'),
       ('ee095f74-22b7-4216-b040-5b2ec2da9cef', 'gameboard'),
       ('03147831-55e0-44f9-a0ba-801bf884e688', 'blockly_cut_div'),
       ('03147831-55e0-44f9-a0ba-801bf884e688', 'test_popup_container'),
       ('b5869a0a-e12b-4146-a326-5e633300c57c', 'save_button'),
       ('f5328e53-918c-4a82-a726-01ab591ca3fa', 'blockly_cut_div'),
       ('f5328e53-918c-4a82-a726-01ab591ca3fa', 'gameboard'),
       ('58f74816-abe6-4c0d-8e25-ca8c4a9ae811', 'blockly_cut_div'),
       ('58f74816-abe6-4c0d-8e25-ca8c4a9ae811', '033e5f74-170a-494b-9efc-83f2283e17f6'),
       ('58f74816-abe6-4c0d-8e25-ca8c4a9ae811', '3689963d-f1f9-43cd-b7e4-892a6377e324'),
       ('58f74816-abe6-4c0d-8e25-ca8c4a9ae811', 'c47ec46e-c6a1-47b1-ae90-94c82bd4b166'),
       ('58f74816-abe6-4c0d-8e25-ca8c4a9ae811', '7a22cac6-e117-45c1-84e9-d162840a4af8'),
       ('58f74816-abe6-4c0d-8e25-ca8c4a9ae811', 'fe855b1c-68b5-413e-9831-5f9d6efada9d'),
       ('44bf9b08-7aa6-4639-91d8-5c8d3c23c6d9', 'blockly_cut_div'),
       ('44bf9b08-7aa6-4639-91d8-5c8d3c23c6d9', '9530f374-05bc-4611-bb2a-80cdd3914a96'),
       ('44bf9b08-7aa6-4639-91d8-5c8d3c23c6d9', '8d8143c4-9403-45c3-8e20-a846d8d71a30'),
       ('44bf9b08-7aa6-4639-91d8-5c8d3c23c6d9', 'ca40595c-47b2-426f-9bb5-3ad4de8bb583'),
       ('44bf9b08-7aa6-4639-91d8-5c8d3c23c6d9', 'db6ebcd6-5361-44f8-94c0-79058f1b5190'),
       ('44bf9b08-7aa6-4639-91d8-5c8d3c23c6d9', '2c0c793a-a91f-48bc-8bad-f0a1bb451f29'),
       ('e5025629-cb12-405a-b4f5-8692bb5a9bfc', 'test_popup_container'),
       ('e5025629-cb12-405a-b4f5-8692bb5a9bfc', '9530f374-05bc-4611-bb2a-80cdd3914a96'),
       ('e5025629-cb12-405a-b4f5-8692bb5a9bfc', '8d8143c4-9403-45c3-8e20-a846d8d71a30'),
       ('e5025629-cb12-405a-b4f5-8692bb5a9bfc', 'ca40595c-47b2-426f-9bb5-3ad4de8bb583'),
       ('e5025629-cb12-405a-b4f5-8692bb5a9bfc', 'db6ebcd6-5361-44f8-94c0-79058f1b5190'),
       ('e5025629-cb12-405a-b4f5-8692bb5a9bfc', '2c0c793a-a91f-48bc-8bad-f0a1bb451f29'),
       ('4a17aac3-62f0-46d8-8a55-1f9c796aab10', 'save_button'),
       ('351a06e5-78bd-48ac-9103-069e91593f8a', 'blockly_cut_div'),
       ('351a06e5-78bd-48ac-9103-069e91593f8a', '033e5f74-170a-494b-9efc-83f2283e17f6'),
       ('351a06e5-78bd-48ac-9103-069e91593f8a', '3689963d-f1f9-43cd-b7e4-892a6377e324'),
       ('351a06e5-78bd-48ac-9103-069e91593f8a', 'c47ec46e-c6a1-47b1-ae90-94c82bd4b166'),
       ('351a06e5-78bd-48ac-9103-069e91593f8a', '7a22cac6-e117-45c1-84e9-d162840a4af8'),
       ('351a06e5-78bd-48ac-9103-069e91593f8a', 'fe855b1c-68b5-413e-9831-5f9d6efada9d'),
       ('351a06e5-78bd-48ac-9103-069e91593f8a', 'gameboard'),
       ('db4c4a32-a5a9-496f-adcb-4dd876f321ce', 'blockly_cut_div'),
       ('db4c4a32-a5a9-496f-adcb-4dd876f321ce', '033e5f74-170a-494b-9efc-83f2283e17f6'),
       ('db4c4a32-a5a9-496f-adcb-4dd876f321ce', '3689963d-f1f9-43cd-b7e4-892a6377e324'),
       ('db4c4a32-a5a9-496f-adcb-4dd876f321ce', 'c47ec46e-c6a1-47b1-ae90-94c82bd4b166'),
       ('db4c4a32-a5a9-496f-adcb-4dd876f321ce', '7a22cac6-e117-45c1-84e9-d162840a4af8'),
       ('db4c4a32-a5a9-496f-adcb-4dd876f321ce', 'fe855b1c-68b5-413e-9831-5f9d6efada9d'),
       ('8ce8959c-f6a7-467d-8531-8b5943b18bd5', 'test_popup_container'),
       ('8ce8959c-f6a7-467d-8531-8b5943b18bd5', '033e5f74-170a-494b-9efc-83f2283e17f6'),
       ('8ce8959c-f6a7-467d-8531-8b5943b18bd5', '3689963d-f1f9-43cd-b7e4-892a6377e324'),
       ('8ce8959c-f6a7-467d-8531-8b5943b18bd5', 'c47ec46e-c6a1-47b1-ae90-94c82bd4b166'),
       ('8ce8959c-f6a7-467d-8531-8b5943b18bd5', '7a22cac6-e117-45c1-84e9-d162840a4af8'),
       ('8ce8959c-f6a7-467d-8531-8b5943b18bd5', 'fe855b1c-68b5-413e-9831-5f9d6efada9d'),
       ('7db91ab7-1f0c-42c6-8ac4-9c4cc4c17254', 'test_popup_container'),
       ('7db91ab7-1f0c-42c6-8ac4-9c4cc4c17254', '033e5f74-170a-494b-9efc-83f2283e17f6'),
       ('7db91ab7-1f0c-42c6-8ac4-9c4cc4c17254', '3689963d-f1f9-43cd-b7e4-892a6377e324'),
       ('7db91ab7-1f0c-42c6-8ac4-9c4cc4c17254', 'c47ec46e-c6a1-47b1-ae90-94c82bd4b166'),
       ('7db91ab7-1f0c-42c6-8ac4-9c4cc4c17254', '7a22cac6-e117-45c1-84e9-d162840a4af8'),
       ('7db91ab7-1f0c-42c6-8ac4-9c4cc4c17254', 'fe855b1c-68b5-413e-9831-5f9d6efada9d'),
       ('2343376e-44d7-4ef7-9edb-ef566765b5f2', 'test_popup_container'),
       ('2343376e-44d7-4ef7-9edb-ef566765b5f2', '033e5f74-170a-494b-9efc-83f2283e17f6'),
       ('2343376e-44d7-4ef7-9edb-ef566765b5f2', '3689963d-f1f9-43cd-b7e4-892a6377e324'),
       ('2343376e-44d7-4ef7-9edb-ef566765b5f2', 'c47ec46e-c6a1-47b1-ae90-94c82bd4b166'),
       ('2343376e-44d7-4ef7-9edb-ef566765b5f2', '7a22cac6-e117-45c1-84e9-d162840a4af8'),
       ('2343376e-44d7-4ef7-9edb-ef566765b5f2', 'fe855b1c-68b5-413e-9831-5f9d6efada9d'),
       ('61b109ba-e14b-4a7d-9f2d-2fd82e15a32f', 'save_button');

insert into `portal_xmls` (`hint_id`, `portal_xml`, `portal_xml_key`)
values ('5ebaee8e-ccfd-46c2-94a8-77b3cf5115a0',
        '<xml xmlns="https://developers.google.com/blockly/xml"><block type="assert_loop_free" id="Opw-gW5,wHsjo%rVVkm]" x="-295" y="-133"><value name="value"><block type="logic_compare" id="Updh4`dmqWOl8d}M;g8y"><field name="OP">LTE</field><value name="A"><block type="properties_user_healing" id="b@|}ai;JP@:~rVR@L`5V"><field name="properties">ROUNDS</field></block></value><value name="B"></value></block></value></block></xml>',
        4),
       ('5ebaee8e-ccfd-46c2-94a8-77b3cf5115a0',
        '<xml xmlns="https://developers.google.com/blockly/xml"><block type="assert_loop_free" id="Opw-gW5,wHsjo%rVVkm]" x="-295" y="-133"><value name="value"><block type="logic_compare" id="Updh4`dmqWOl8d}M;g8y"><field name="OP">LTE</field><value name="A"><block type="properties_user_healing" id="b@|}ai;JP@:~rVR@L`5V"><field name="properties">ROUNDS</field></block></value><value name="B"><block type="math_number" id="S2UM`G/KR!B#Z:h*HSJh"><field name="NUM">3</field></block></value></block></value></block></xml>',
        5),
       ('5ebaee8e-ccfd-46c2-94a8-77b3cf5115a0',
        '<xml xmlns="https://developers.google.com/blockly/xml"><block type="controls_if" id="hP(WkX5d;m)Dd#c1mO@U" x="-293" y="-17"><value name="IF0"><block type="logic_compare" id="Updh4`dmqWOl8d}M;g8y"><field name="OP">NEQ</field><value name="A"><block type="properties_user_healing" id="XQ`4Z@)JS^81Ght@Rk%G"><field name="properties">HATCOLOR</field></block></value><value name="B"><block type="hair_picker" id="_i{?~Rw#(!%big{X%%0/"><field name="color">blond</field></block></value></block></value><statement name="DO0"><block type="assert_loop" id="6L(#@Kj/*SR+naIlF%pA"><value name="target"><block type="properties_user_healing" id="2eN5/Hl{g+ODzpDe#}kg"><field name="properties">BLACKBERRIES</field></block></value><value name="value"></value></block></statement></block></xml>',
        8),
       ('5ebaee8e-ccfd-46c2-94a8-77b3cf5115a0',
        '<xml xmlns="https://developers.google.com/blockly/xml"><block type="controls_if" id="hP(WkX5d;m)Dd#c1mO@U" x="-293" y="-17"><value name="IF0"><block type="logic_compare" id="Updh4`dmqWOl8d}M;g8y"><field name="OP">NEQ</field><value name="A"><block type="properties_user_healing" id="XQ`4Z@)JS^81Ght@Rk%G"><field name="properties">HATCOLOR</field></block></value><value name="B"><block type="hair_picker" id="_i{?~Rw#(!%big{X%%0/"><field name="color">blond</field></block></value></block></value><statement name="DO0"><block type="assert_loop" id="6L(#@Kj/*SR+naIlF%pA"><value name="target"><block type="properties_user_healing" id="2eN5/Hl{g+ODzpDe#}kg"><field name="properties">BLACKBERRIES</field></block></value><value name="value"><block type="math_arithmetic" id="M]Qfng[KcxW;Qdz%;CdX"><field name="OP">MULTIPLY</field><value name="A"><block type="properties_user_healing" id="^_rF-A0T|xqL;4);H(:="><field name="properties">ROUNDS</field></block></value><value name="B"></value></block></value></block></statement></block></xml>',
        9),
       ('5ebaee8e-ccfd-46c2-94a8-77b3cf5115a0',
        '<xml xmlns="https://developers.google.com/blockly/xml"><block type="controls_if" id="hP(WkX5d;m)Dd#c1mO@U" x="-293" y="-17"><value name="IF0"><block type="logic_compare" id="Updh4`dmqWOl8d}M;g8y"><field name="OP">NEQ</field><value name="A"><block type="properties_user_healing" id="XQ`4Z@)JS^81Ght@Rk%G"><field name="properties">HATCOLOR</field></block></value><value name="B"><block type="hair_picker" id="_i{?~Rw#(!%big{X%%0/"><field name="color">blond</field></block></value></block></value><statement name="DO0"><block type="assert_loop" id="6L(#@Kj/*SR+naIlF%pA"><value name="target"><block type="properties_user_healing" id="2eN5/Hl{g+ODzpDe#}kg"><field name="properties">BLACKBERRIES</field></block></value><value name="value"><block type="math_arithmetic" id="M]Qfng[KcxW;Qdz%;CdX"><field name="OP">MULTIPLY</field><value name="A"><block type="properties_user_healing" id="^_rF-A0T|xqL;4);H(:="><field name="properties">ROUNDS</field></block></value><value name="B"><block type="math_number" id="Eem[Vxht-;;+ILj@@lxp"><field name="NUM">2</field></block></value></block></value></block></statement></block></xml>',
        10),
       ('5ebaee8e-ccfd-46c2-94a8-77b3cf5115a0',
        '<xml xmlns="https://developers.google.com/blockly/xml"><block type="controls_if" id="Zz4pdVDEj1iCI(-SLMVs" x="71" y="99"><value name="IF0"><block type="logic_compare" id="Updh4`dmqWOl8d}M;g8y"><field name="OP">EQ</field><value name="A"><block type="properties_user_healing" id="Ji|)e7(K_b^KrpA5y)yz"><field name="properties">HATCOLOR</field></block></value><value name="B"><block type="hair_picker" id="J~a5{]@v!~Uv@)R8X:W:"><field name="color">blond</field></block></value></block></value><statement name="DO0"><block type="controls_if" id="ZbRY}hA~#r+OP:ELg?{Q"><mutation elseif="2"></mutation><value name="IF0"><block type="logic_compare" id="Ys.W7R-dUSUcUWc*fT_6"><field name="OP">EQ</field><value name="A"><block type="properties_user_healing" id="+BN|+9VO`VC:7%ove*s."><field name="properties">ROUNDS</field></block></value><value name="B"><block type="math_number" id="Eem[Vxht-;;+ILj@@lxp"><field name="NUM">1</field></block></value></block></value><value name="IF1"><block type="logic_compare" id="kEcnJcf0qwTI?F)eSi0?"><field name="OP">EQ</field><value name="A"><block type="properties_user_healing" id="hf?3Zq3:|((?:(i#P!%P"><field name="properties">ROUNDS</field></block></value><value name="B"><block type="math_number" id="FwnI:+dBW+NRH-RTO_9^"><field name="NUM">2</field></block></value></block></value><value name="IF2"><block type="logic_compare" id="Rur;)0TkIowgIUZRzCuU"><field name="OP">EQ</field><value name="A"><block type="properties_user_healing" id="F6,^i#p*:mHNSC@LG]:m"><field name="properties">ROUNDS</field></block></value><value name="B"><block type="math_number" id="nTNMO0M,L_f!E3zO}O{g"><field name="NUM">3</field></block></value></block></value></block></statement></block></xml>',
        12),
       ('5ebaee8e-ccfd-46c2-94a8-77b3cf5115a0',
        '<xml xmlns="https://developers.google.com/blockly/xml"><block type="controls_if" id="Zz4pdVDEj1iCI(-SLMVs" x="-40" y="80"><value name="IF0"><block type="logic_compare" id="Updh4`dmqWOl8d}M;g8y"><field name="OP">EQ</field><value name="A"><block type="properties_user_healing" id="Ji|)e7(K_b^KrpA5y)yz"><field name="properties">HATCOLOR</field></block></value><value name="B"><block type="hair_picker" id="J~a5{]@v!~Uv@)R8X:W:"><field name="color">blond</field></block></value></block></value><statement name="DO0"><block type="controls_if" id="ZbRY}hA~#r+OP:ELg?{Q"><mutation elseif="2"></mutation><value name="IF0"><block type="logic_compare" id="Ys.W7R-dUSUcUWc*fT_6"><field name="OP">EQ</field><value name="A"><block type="properties_user_healing" id="+BN|+9VO`VC:7%ove*s."><field name="properties">ROUNDS</field></block></value><value name="B"><block type="math_number" id="Eem[Vxht-;;+ILj@@lxp"><field name="NUM">1</field></block></value></block></value><statement name="DO0"><block type="assert_loop" id="N+7Bxk75=aC=//z7$Y6["><value name="target"><block type="properties_user_healing" id="{B`yy#dZ=yl_UueRicB4"><field name="properties">PURPLEBERRIES</field></block></value><value name="value"></value></block></statement><value name="IF1"><block type="logic_compare" id="kEcnJcf0qwTI?F)eSi0?"><field name="OP">EQ</field><value name="A"><block type="properties_user_healing" id="hf?3Zq3:|((?:(i#P!%P"><field name="properties">ROUNDS</field></block></value><value name="B"><block type="math_number" id="FwnI:+dBW+NRH-RTO_9^"><field name="NUM">2</field></block></value></block></value><value name="IF2"><block type="logic_compare" id="Rur;)0TkIowgIUZRzCuU"><field name="OP">EQ</field><value name="A"><block type="properties_user_healing" id="F6,^i#p*:mHNSC@LG]:m"><field name="properties">ROUNDS</field></block></value><value name="B"><block type="math_number" id="nTNMO0M,L_f!E3zO}O{g"><field name="NUM">3</field></block></value></block></value></block></statement></block></xml>',
        13),
       ('5ebaee8e-ccfd-46c2-94a8-77b3cf5115a0',
        '<xml xmlns="https://developers.google.com/blockly/xml"><block type="controls_if" id="Zz4pdVDEj1iCI(-SLMVs" x="-40" y="80"><value name="IF0"><block type="logic_compare" id="Updh4`dmqWOl8d}M;g8y"><field name="OP">EQ</field><value name="A"><block type="properties_user_healing" id="Ji|)e7(K_b^KrpA5y)yz"><field name="properties">HATCOLOR</field></block></value><value name="B"><block type="hair_picker" id="J~a5{]@v!~Uv@)R8X:W:"><field name="color">blond</field></block></value></block></value><statement name="DO0"><block type="controls_if" id="ZbRY}hA~#r+OP:ELg?{Q"><mutation elseif="2"></mutation><value name="IF0"><block type="logic_compare" id="Ys.W7R-dUSUcUWc*fT_6"><field name="OP">EQ</field><value name="A"><block type="properties_user_healing" id="+BN|+9VO`VC:7%ove*s."><field name="properties">ROUNDS</field></block></value><value name="B"><block type="math_number" id="Eem[Vxht-;;+ILj@@lxp"><field name="NUM">1</field></block></value></block></value><statement name="DO0"><block type="assert_loop" id="N+7Bxk75=aC=//z7$Y6["><value name="target"><block type="properties_user_healing" id="{B`yy#dZ=yl_UueRicB4"><field name="properties">PURPLEBERRIES</field></block></value><value name="value"><block type="math_number" id="c)SfJe;Afa*3Ml7Ok0}t"><field name="NUM">2</field></block></value></block></statement><value name="IF1"><block type="logic_compare" id="kEcnJcf0qwTI?F)eSi0?"><field name="OP">EQ</field><value name="A"><block type="properties_user_healing" id="hf?3Zq3:|((?:(i#P!%P"><field name="properties">ROUNDS</field></block></value><value name="B"><block type="math_number" id="FwnI:+dBW+NRH-RTO_9^"><field name="NUM">2</field></block></value></block></value><statement name="DO1"><block type="assert_loop" id=";7MR{9^{.1lGXuf3z3Q%"><value name="target"></value><value name="value"><block type="math_number" id=",RWaSd?D7V/*cm=T1TpA"><field name="NUM">2</field></block></value></block></statement><value name="IF2"><block type="logic_compare" id="Rur;)0TkIowgIUZRzCuU"><field name="OP">EQ</field><value name="A"><block type="properties_user_healing" id="F6,^i#p*:mHNSC@LG]:m"><field name="properties">ROUNDS</field></block></value><value name="B"><block type="math_number" id="nTNMO0M,L_f!E3zO}O{g"><field name="NUM">3</field></block></value></block></value></block></statement></block></xml>',
        14),
       ('5ebaee8e-ccfd-46c2-94a8-77b3cf5115a0',
        '<xml xmlns="https://developers.google.com/blockly/xml"><block type="controls_if" id="Zz4pdVDEj1iCI(-SLMVs" x="-40" y="80"><value name="IF0"><block type="logic_compare" id="Updh4`dmqWOl8d}M;g8y"><field name="OP">EQ</field><value name="A"><block type="properties_user_healing" id="Ji|)e7(K_b^KrpA5y)yz"><field name="properties">HATCOLOR</field></block></value><value name="B"><block type="hair_picker" id="J~a5{]@v!~Uv@)R8X:W:"><field name="color">blond</field></block></value></block></value><statement name="DO0"><block type="controls_if" id="ZbRY}hA~#r+OP:ELg?{Q"><mutation elseif="2"></mutation><value name="IF0"><block type="logic_compare" id="Ys.W7R-dUSUcUWc*fT_6"><field name="OP">EQ</field><value name="A"><block type="properties_user_healing" id="+BN|+9VO`VC:7%ove*s."><field name="properties">ROUNDS</field></block></value><value name="B"><block type="math_number" id="Eem[Vxht-;;+ILj@@lxp"><field name="NUM">1</field></block></value></block></value><statement name="DO0"><block type="assert_loop" id="N+7Bxk75=aC=//z7$Y6["><value name="target"><block type="properties_user_healing" id="{B`yy#dZ=yl_UueRicB4"><field name="properties">PURPLEBERRIES</field></block></value><value name="value"><block type="math_number" id="c)SfJe;Afa*3Ml7Ok0}t"><field name="NUM">2</field></block></value></block></statement><value name="IF1"><block type="logic_compare" id="kEcnJcf0qwTI?F)eSi0?"><field name="OP">EQ</field><value name="A"><block type="properties_user_healing" id="hf?3Zq3:|((?:(i#P!%P"><field name="properties">ROUNDS</field></block></value><value name="B"><block type="math_number" id="FwnI:+dBW+NRH-RTO_9^"><field name="NUM">2</field></block></value></block></value><statement name="DO1"><block type="assert_loop" id=";7MR{9^{.1lGXuf3z3Q%"><value name="target"><block type="properties_user_healing" id="Xg2%jwJoR;rKu4v1]xJ7"><field name="properties">BLACKBERRIES</field></block></value><value name="value"><block type="math_number" id=",RWaSd?D7V/*cm=T1TpA"><field name="NUM">2</field></block></value></block></statement><value name="IF2"><block type="logic_compare" id="Rur;)0TkIowgIUZRzCuU"><field name="OP">EQ</field><value name="A"><block type="properties_user_healing" id="F6,^i#p*:mHNSC@LG]:m"><field name="properties">ROUNDS</field></block></value><value name="B"><block type="math_number" id="nTNMO0M,L_f!E3zO}O{g"><field name="NUM">3</field></block></value></block></value><statement name="DO2"><block type="assert_loop" id="qeQ4g5B-=V,2m[7T^aOo"><value name="target"><block type="properties_user_healing" id="5U;;bFVkE(}iD|}}B[E."><field name="properties">PURPLEBERRIES</field></block></value><value name="value"></value></block></statement></block></statement></block></xml>',
        15),
       ('5ebaee8e-ccfd-46c2-94a8-77b3cf5115a0',
        '<xml xmlns="https://developers.google.com/blockly/xml"><block type="controls_if" id="Zz4pdVDEj1iCI(-SLMVs" x="-40" y="80"><value name="IF0"><block type="logic_compare" id="Updh4`dmqWOl8d}M;g8y"><field name="OP">EQ</field><value name="A"><block type="properties_user_healing" id="Ji|)e7(K_b^KrpA5y)yz"><field name="properties">HATCOLOR</field></block></value><value name="B"><block type="hair_picker" id="J~a5{]@v!~Uv@)R8X:W:"><field name="color">blond</field></block></value></block></value><statement name="DO0"><block type="controls_if" id="ZbRY}hA~#r+OP:ELg?{Q"><mutation elseif="2"></mutation><value name="IF0"><block type="logic_compare" id="Ys.W7R-dUSUcUWc*fT_6"><field name="OP">EQ</field><value name="A"><block type="properties_user_healing" id="+BN|+9VO`VC:7%ove*s."><field name="properties">ROUNDS</field></block></value><value name="B"><block type="math_number" id="Eem[Vxht-;;+ILj@@lxp"><field name="NUM">1</field></block></value></block></value><statement name="DO0"><block type="assert_loop" id="N+7Bxk75=aC=//z7$Y6["><value name="target"><block type="properties_user_healing" id="{B`yy#dZ=yl_UueRicB4"><field name="properties">PURPLEBERRIES</field></block></value><value name="value"><block type="math_number" id="c)SfJe;Afa*3Ml7Ok0}t"><field name="NUM">2</field></block></value></block></statement><value name="IF1"><block type="logic_compare" id="kEcnJcf0qwTI?F)eSi0?"><field name="OP">EQ</field><value name="A"><block type="properties_user_healing" id="hf?3Zq3:|((?:(i#P!%P"><field name="properties">ROUNDS</field></block></value><value name="B"><block type="math_number" id="FwnI:+dBW+NRH-RTO_9^"><field name="NUM">2</field></block></value></block></value><statement name="DO1"><block type="assert_loop" id=";7MR{9^{.1lGXuf3z3Q%"><value name="target"><block type="properties_user_healing" id="Xg2%jwJoR;rKu4v1]xJ7"><field name="properties">BLACKBERRIES</field></block></value><value name="value"><block type="math_number" id=",RWaSd?D7V/*cm=T1TpA"><field name="NUM">2</field></block></value></block></statement><value name="IF2"><block type="logic_compare" id="Rur;)0TkIowgIUZRzCuU"><field name="OP">EQ</field><value name="A"><block type="properties_user_healing" id="F6,^i#p*:mHNSC@LG]:m"><field name="properties">ROUNDS</field></block></value><value name="B"><block type="math_number" id="nTNMO0M,L_f!E3zO}O{g"><field name="NUM">3</field></block></value></block></value><statement name="DO2"><block type="assert_loop" id="qeQ4g5B-=V,2m[7T^aOo"><value name="target"><block type="properties_user_healing" id="5U;;bFVkE(}iD|}}B[E."><field name="properties">PURPLEBERRIES</field></block></value><value name="value"><block type="math_number" id="PTIgat_}1`xi3ey!(x4W"><field name="NUM">4</field></block></value></block></statement></block></statement></block></xml>',
        16);

insert into `expected_clicked_coordinate` (`id`, `hint_id`, `expected_clicked_coordinates_key`)
values ('7ee32664-27a6-456d-ae7f-1617c6a091bd', '5ebaee8e-ccfd-46c2-94a8-77b3cf5115a0', 3),
       ('ee8cb0af-f4c1-42db-84f8-61777e83d718', '5ebaee8e-ccfd-46c2-94a8-77b3cf5115a0', 4),
       ('bca30155-3628-4892-852c-f671d3a04527', '5ebaee8e-ccfd-46c2-94a8-77b3cf5115a0', 6),
       ('64c34249-65e0-4e28-b826-06f65cc2acaf', '5ebaee8e-ccfd-46c2-94a8-77b3cf5115a0', 7),
       ('a47cbee7-3aa5-4935-b9ea-597de9544f23', '5ebaee8e-ccfd-46c2-94a8-77b3cf5115a0', 11);

insert into `expected_clicked_coordinate_coordinates` (`expected_clicked_coordinate_id`, `x`, `y`)
values ('7ee32664-27a6-456d-ae7f-1617c6a091bd', 5, 1),
       ('ee8cb0af-f4c1-42db-84f8-61777e83d718', 5, 1),
       ('bca30155-3628-4892-852c-f671d3a04527', 3, 4),
       ('64c34249-65e0-4e28-b826-06f65cc2acaf', 3, 4),
       ('a47cbee7-3aa5-4935-b9ea-597de9544f23', 2, 4);


insert into `hint_expected_user_interaction` (`hint_id`, `expected_user_interaction`, `expected_user_interaction_key`)
values ('5ebaee8e-ccfd-46c2-94a8-77b3cf5115a0', 0, 3),
       ('5ebaee8e-ccfd-46c2-94a8-77b3cf5115a0', 1, 4),
       ('5ebaee8e-ccfd-46c2-94a8-77b3cf5115a0', 2, 5),
       ('5ebaee8e-ccfd-46c2-94a8-77b3cf5115a0', 0, 6),
       ('5ebaee8e-ccfd-46c2-94a8-77b3cf5115a0', 1, 9),
       ('5ebaee8e-ccfd-46c2-94a8-77b3cf5115a0', 2, 10),
       ('5ebaee8e-ccfd-46c2-94a8-77b3cf5115a0', 0, 11),
       ('5ebaee8e-ccfd-46c2-94a8-77b3cf5115a0', 1, 13),
       ('5ebaee8e-ccfd-46c2-94a8-77b3cf5115a0', 1, 14),
       ('5ebaee8e-ccfd-46c2-94a8-77b3cf5115a0', 1, 15),
       ('5ebaee8e-ccfd-46c2-94a8-77b3cf5115a0', 2, 16);

insert into `hint_expected_portal_js_code` (`hint_id`, `expected_portal_js_code`, `expected_portal_js_code_key`)
values ('5ebaee8e-ccfd-46c2-94a8-77b3cf5115a0', 'if (!(((this.roundsCount) <= 3))) {\n\tthis._killCritter(x, y, ((this.roundsCount) <= 3), ((this.roundsCount) <= 3));\n\tthis.mustWalkOut = true;\n\treturn true;\n}\n', 4),
       ('5ebaee8e-ccfd-46c2-94a8-77b3cf5115a0', 'if ((this.hair) != (\"blond\")) {\n  if ((this.blackBerryCount) !== ((this.roundsCount) * 2)) {\n  \tthis._killCritter(x, y, (this.blackBerryCount), ((this.roundsCount) * 2));\n  \tthis.mustWalkOut = true;\n  \treturn true;\n  }\n}\n', 9),
       ('5ebaee8e-ccfd-46c2-94a8-77b3cf5115a0', 'if ((this.hair) == (\"blond\")) {\n  if ((this.roundsCount) == 1) {\n    if ((this.purpleBerryCount) !== 2) {\n    \tthis._killCritter(x, y, (this.purpleBerryCount), 2);\n    \tthis.mustWalkOut = true;\n    \treturn true;\n    }\n  } else if ((this.roundsCount) == 2) {\n  } else if ((this.roundsCount) == 3) {\n  }\n}\n', 13),
       ('5ebaee8e-ccfd-46c2-94a8-77b3cf5115a0', 'if ((this.hair) == (\"blond\")) {\n  if ((this.roundsCount) == 1) {\n    if ((this.purpleBerryCount) !== 2) {\n    \tthis._killCritter(x, y, (this.purpleBerryCount), 2);\n    \tthis.mustWalkOut = true;\n    \treturn true;\n    }\n  } else if ((this.roundsCount) == 2) {\n    if ((this.blackBerryCount) !== 2) {\n    \tthis._killCritter(x, y, (this.blackBerryCount), 2);\n    \tthis.mustWalkOut = true;\n    \treturn true;\n    }\n  } else if ((this.roundsCount) == 3) {\n  }\n}\n', 14),
       ('5ebaee8e-ccfd-46c2-94a8-77b3cf5115a0', 'if ((this.hair) == (\"blond\")) {\n  if ((this.roundsCount) == 1) {\n    if ((this.purpleBerryCount) !== 2) {\n    \tthis._killCritter(x, y, (this.purpleBerryCount), 2);\n    \tthis.mustWalkOut = true;\n    \treturn true;\n    }\n  } else if ((this.roundsCount) == 2) {\n    if ((this.blackBerryCount) !== 2) {\n    \tthis._killCritter(x, y, (this.blackBerryCount), 2);\n    \tthis.mustWalkOut = true;\n    \treturn true;\n    }\n  } else if ((this.roundsCount) == 3) {\n    if ((this.purpleBerryCount) !== 4) {\n    \tthis._killCritter(x, y, (this.purpleBerryCount), 4);\n    \tthis.mustWalkOut = true;\n    \treturn true;\n    }\n  }\n}\n', 15);


-- Level 8 hints:

-- Code Explanation level 8
insert into `hint` (`id`, `hint_situation`, `heal_level_id`)
values ('753e9816-ef11-4662-93b1-29f155497c23', 2, '50069dd5-bead-49e8-8936-498e9436d72f');

insert into `hint_hint_texts` (`hint_id`, `hint_texts`, `hint_texts_key`)
values ('753e9816-ef11-4662-93b1-29f155497c23', 'hint_loop_level_8_code_0', 0),
       ('753e9816-ef11-4662-93b1-29f155497c23', 'hint_loop_level_8_code_1', 1),
       ('753e9816-ef11-4662-93b1-29f155497c23', 'hint_loop_level_8_code_2', 2),
       ('753e9816-ef11-4662-93b1-29f155497c23', 'hint_loop_level_8_code_3', 3),
       ('753e9816-ef11-4662-93b1-29f155497c23', 'hint_loop_level_8_code_4', 4),
       ('753e9816-ef11-4662-93b1-29f155497c23', 'hint_loop_level_8_code_5', 5),
       ('753e9816-ef11-4662-93b1-29f155497c23', 'hint_loop_level_8_code_6', 6),
       ('753e9816-ef11-4662-93b1-29f155497c23', 'hint_loop_level_8_code_7', 7),
       ('753e9816-ef11-4662-93b1-29f155497c23', 'hint_loop_level_8_code_8', 8),
       ('753e9816-ef11-4662-93b1-29f155497c23', 'hint_loop_level_8_code_9', 9);

insert into associated_component_ids (id, hint_id, associated_component_ids_key)
values ('868f0b55-d5b8-4e6a-ba92-7622f66d9bf8', '753e9816-ef11-4662-93b1-29f155497c23', 0),
       ('5bb39b34-02fc-4de0-8975-3b13eb0abe32', '753e9816-ef11-4662-93b1-29f155497c23', 1),
       ('789fdf53-c209-4948-a50b-4492b13b6f88', '753e9816-ef11-4662-93b1-29f155497c23', 2),
       ('1f197a96-7884-41c9-91f3-e083f9e28f9b', '753e9816-ef11-4662-93b1-29f155497c23', 3),
       ('58a0d0b3-76bb-4d80-93a1-4fcc141c9311', '753e9816-ef11-4662-93b1-29f155497c23', 4),
       ('704a5c3a-a540-48a5-a77e-e651dd7a8a94', '753e9816-ef11-4662-93b1-29f155497c23', 5),
       ('417eada4-9993-4c97-a83f-8bfad20bd009', '753e9816-ef11-4662-93b1-29f155497c23', 6),
       ('adac6fe5-552b-4877-bf46-6e7dfb3ec30a', '753e9816-ef11-4662-93b1-29f155497c23', 7),
       ('87f59240-be90-4abd-8dfd-ee6650a0e865', '753e9816-ef11-4662-93b1-29f155497c23', 8),
       ('41db4310-3071-4e32-a908-ceb4d38b146a', '753e9816-ef11-4662-93b1-29f155497c23', 9);

insert into associated_component_ids_component_ids (associated_component_ids_id, component_ids)
values ('868f0b55-d5b8-4e6a-ba92-7622f66d9bf8', 'blockly_cut_div'),
       ('5bb39b34-02fc-4de0-8975-3b13eb0abe32', 'blockly_cut_div'),
       ('789fdf53-c209-4948-a50b-4492b13b6f88', 'blockly_cut_div'),
       ('1f197a96-7884-41c9-91f3-e083f9e28f9b', 'blockly_cut_div'),
       ('58a0d0b3-76bb-4d80-93a1-4fcc141c9311', 'blockly_cut_div'),
       ('704a5c3a-a540-48a5-a77e-e651dd7a8a94', 'blockly_cut_div'),
       ('417eada4-9993-4c97-a83f-8bfad20bd009', 'blockly_cut_div'),
       ('adac6fe5-552b-4877-bf46-6e7dfb3ec30a', 'blockly_cut_div'),
       ('87f59240-be90-4abd-8dfd-ee6650a0e865', 'blockly_cut_div'),
       ('87f59240-be90-4abd-8dfd-ee6650a0e865', 'gameboard'),
       ('41db4310-3071-4e32-a908-ceb4d38b146a', 'blockly_cut_div');

insert into `associated_cut_blocks` (`id`, `hint_id`, `associated_cut_blocks_key`)
values ('e1c6771f-9f81-4bff-90d8-4c7cfbdf6c97', '753e9816-ef11-4662-93b1-29f155497c23', 1),
       ('e0c34ec2-81e7-432a-82fb-620201171005', '753e9816-ef11-4662-93b1-29f155497c23', 2),
       ('9304dc61-5c6c-4789-bb29-976dc345c695', '753e9816-ef11-4662-93b1-29f155497c23', 3),
       ('6dec4734-3650-43a4-8d8e-68b1ece237a0', '753e9816-ef11-4662-93b1-29f155497c23', 4),
       ('ed628501-f44a-447a-a2e6-f1703a1e35e8', '753e9816-ef11-4662-93b1-29f155497c23', 5),
       ('a1bec3c2-51c0-402e-b0a8-14e285ea0299', '753e9816-ef11-4662-93b1-29f155497c23', 6),
       ('549cf20e-49e2-4a21-ba78-18855f507a82', '753e9816-ef11-4662-93b1-29f155497c23', 7),
       ('fe0fd0ba-abaf-48ca-9613-9b923afb4a84', '753e9816-ef11-4662-93b1-29f155497c23', 8),
       ('9eb679f8-0056-4eb7-9ce7-68909ffea139', '753e9816-ef11-4662-93b1-29f155497c23', 9);

insert into `associated_cut_blocks_block_ids` (`associated_cut_blocks_id`, `block_ids`)
values ('e1c6771f-9f81-4bff-90d8-4c7cfbdf6c97', 'recipe_start_while'),
       ('e0c34ec2-81e7-432a-82fb-620201171005', 'logic_compare_1'),
       ('9304dc61-5c6c-4789-bb29-976dc345c695', 'logic_compare_1'),
       ('9304dc61-5c6c-4789-bb29-976dc345c695', 'bush_properties_1'),
       ('9304dc61-5c6c-4789-bb29-976dc345c695', 'bush_properties_2'),
       ('6dec4734-3650-43a4-8d8e-68b1ece237a0', 'controls_if_1'),
       ('6dec4734-3650-43a4-8d8e-68b1ece237a0', 'logic_compare_2'),
       ('ed628501-f44a-447a-a2e6-f1703a1e35e8', 'logic_compare_2'),
       ('ed628501-f44a-447a-a2e6-f1703a1e35e8', 'bush_properties_1'),
       ('a1bec3c2-51c0-402e-b0a8-14e285ea0299', 'logic_compare_2'),
       ('a1bec3c2-51c0-402e-b0a8-14e285ea0299', 'bush_properties_2'),
       ('549cf20e-49e2-4a21-ba78-18855f507a82', 'logic_compare_2'),
       ('549cf20e-49e2-4a21-ba78-18855f507a82', 'set_berries_1'),
       ('fe0fd0ba-abaf-48ca-9613-9b923afb4a84', 'recipe_start_while'),
       ('9eb679f8-0056-4eb7-9ce7-68909ffea139', 'recipe_start_while');

insert into `hint_expected_user_interaction` (`hint_id`, `expected_user_interaction`, `expected_user_interaction_key`)
values ('753e9816-ef11-4662-93b1-29f155497c23', 3, 6),
       ('753e9816-ef11-4662-93b1-29f155497c23', 3, 7);

insert into `answer_options_list` (`id`, `hint_id`, `answer_options_list_key`)
values ('ee97eb0d-277a-4e52-82c5-9d14dd3b3232', '753e9816-ef11-4662-93b1-29f155497c23', 6),
       ('d6f0b9fe-3c44-4365-a433-6c4ed63c69fc', '753e9816-ef11-4662-93b1-29f155497c23', 7);

insert into `answer_options_list_answer_options` (`answer_options_list_id`, `answer_options`)
values ('ee97eb0d-277a-4e52-82c5-9d14dd3b3232', 'orange'),
       ('ee97eb0d-277a-4e52-82c5-9d14dd3b3232', 'white'),
       ('d6f0b9fe-3c44-4365-a433-6c4ed63c69fc', '1'),
       ('d6f0b9fe-3c44-4365-a433-6c4ed63c69fc', '2'),
       ('d6f0b9fe-3c44-4365-a433-6c4ed63c69fc', '3');

insert into `hint_solution_answer` (hint_id, solution_answer, solution_answer_key)
values ('753e9816-ef11-4662-93b1-29f155497c23', 'orange', 6),
       ('753e9816-ef11-4662-93b1-29f155497c23', '2', 7);

insert into `associated_coordinates` (`hint_id`, `x`, `y`, `associated_coordinates_key`)
values ('753e9816-ef11-4662-93b1-29f155497c23', 4, 4, 5),
       ('753e9816-ef11-4662-93b1-29f155497c23', 3, 7, 6),
       ('753e9816-ef11-4662-93b1-29f155497c23', 4, 4, 7);


-- Portal together level 8
insert into `hint` (`id`, `hint_situation`, `heal_level_id`)
values ('0fca3679-110d-466c-9356-3f9b55dda7e6', 3, '50069dd5-bead-49e8-8936-498e9436d72f');

insert into `hint_hint_texts` (`hint_id`, `hint_texts`, `hint_texts_key`)
values ('0fca3679-110d-466c-9356-3f9b55dda7e6', 'hint_loop_level_8_complete_0', 0),
       ('0fca3679-110d-466c-9356-3f9b55dda7e6', 'hint_loop_level_8_complete_1', 1),
       ('0fca3679-110d-466c-9356-3f9b55dda7e6', 'hint_loop_level_8_complete_2', 2),
       ('0fca3679-110d-466c-9356-3f9b55dda7e6', 'hint_loop_level_8_complete_3', 3),
       ('0fca3679-110d-466c-9356-3f9b55dda7e6', 'hint_loop_level_8_complete_4', 4),
       ('0fca3679-110d-466c-9356-3f9b55dda7e6', 'hint_loop_level_8_complete_5', 5),
       ('0fca3679-110d-466c-9356-3f9b55dda7e6', 'hint_loop_level_8_complete_6', 6),
       ('0fca3679-110d-466c-9356-3f9b55dda7e6', 'hint_loop_level_8_complete_7', 7),
       ('0fca3679-110d-466c-9356-3f9b55dda7e6', 'hint_loop_level_8_complete_8', 8),
       ('0fca3679-110d-466c-9356-3f9b55dda7e6', 'hint_loop_level_8_complete_9', 9),
       ('0fca3679-110d-466c-9356-3f9b55dda7e6', 'hint_loop_level_8_complete_10', 10),
       ('0fca3679-110d-466c-9356-3f9b55dda7e6', 'hint_loop_level_8_complete_11', 11),
       ('0fca3679-110d-466c-9356-3f9b55dda7e6', 'hint_loop_level_8_complete_12', 12),
       ('0fca3679-110d-466c-9356-3f9b55dda7e6', 'hint_loop_level_8_complete_13', 13);

insert into `associated_coordinates` (`hint_id`, `x`, `y`, `associated_coordinates_key`)
values ('0fca3679-110d-466c-9356-3f9b55dda7e6', 4, 1, 3),
       ('0fca3679-110d-466c-9356-3f9b55dda7e6', 2, 7, 6);

insert into `associated_cut_blocks` (`id`, `hint_id`, `associated_cut_blocks_key`)
values ('43520fc4-0ed0-4672-bad7-4b685c26e94b', '0fca3679-110d-466c-9356-3f9b55dda7e6', 2),
       ('08ba421f-df89-46b0-aed9-3557528f9608', '0fca3679-110d-466c-9356-3f9b55dda7e6', 3),
       ('375f6b90-5c99-4c03-bf35-8866c08a7933', '0fca3679-110d-466c-9356-3f9b55dda7e6', 4),
       ('d03d0a52-50f8-4a07-a1f1-8b3eaf503eb3', '0fca3679-110d-466c-9356-3f9b55dda7e6', 6),
       ('fef09d47-3da4-4ecf-b18a-436dd407d05a', '0fca3679-110d-466c-9356-3f9b55dda7e6', 7),
       ('7366f207-f107-44ec-9514-823a472b6293', '0fca3679-110d-466c-9356-3f9b55dda7e6', 8),
       ('a4a876fb-4bb6-4f85-8f38-0bfe81233fc2', '0fca3679-110d-466c-9356-3f9b55dda7e6', 9),
       ('9e444770-e52d-4fae-b209-290cca19aff2', '0fca3679-110d-466c-9356-3f9b55dda7e6', 10),
       ('e44f42a3-3cd7-46d8-999a-d80261dc5928', '0fca3679-110d-466c-9356-3f9b55dda7e6', 11);

insert into `associated_cut_blocks_block_ids` (`associated_cut_blocks_id`, `block_ids`)
values ('43520fc4-0ed0-4672-bad7-4b685c26e94b', 'logic_compare_1'),
       ('43520fc4-0ed0-4672-bad7-4b685c26e94b', 'bush_properties_1'),
       ('43520fc4-0ed0-4672-bad7-4b685c26e94b', 'bush_properties_2'),
       ('08ba421f-df89-46b0-aed9-3557528f9608', 'logic_compare_1'),
       ('375f6b90-5c99-4c03-bf35-8866c08a7933', 'logic_compare_1'),
       ('d03d0a52-50f8-4a07-a1f1-8b3eaf503eb3', 'set_berries_1'),
       ('d03d0a52-50f8-4a07-a1f1-8b3eaf503eb3', 'set_berries_2'),
       ('fef09d47-3da4-4ecf-b18a-436dd407d05a', 'logic_compare_2'),
       ('fef09d47-3da4-4ecf-b18a-436dd407d05a', 'set_berries_2'),
       ('7366f207-f107-44ec-9514-823a472b6293', 'logic_compare_2'),
       ('7366f207-f107-44ec-9514-823a472b6293', 'set_berries_2'),
       ('a4a876fb-4bb6-4f85-8f38-0bfe81233fc2', 'logic_compare_2'),
       ('a4a876fb-4bb6-4f85-8f38-0bfe81233fc2', 'set_berries_1'),
       ('9e444770-e52d-4fae-b209-290cca19aff2', 'logic_compare_2'),
       ('9e444770-e52d-4fae-b209-290cca19aff2', 'set_berries_1'),
       ('e44f42a3-3cd7-46d8-999a-d80261dc5928', 'logic_compare_2'),
       ('e44f42a3-3cd7-46d8-999a-d80261dc5928', 'set_berries_1');

insert into `associated_component_ids` (`id`, `hint_id`, `associated_component_ids_key`)
values ('24c88424-0c88-4c51-b429-3dc6d6fa3d43', '0fca3679-110d-466c-9356-3f9b55dda7e6', 1),
       ('ec79d38f-b9fc-473a-a38e-e6072260578f', '0fca3679-110d-466c-9356-3f9b55dda7e6', 2),
       ('6e7c1b0f-8fa8-4540-b84d-e0718b35ce15', '0fca3679-110d-466c-9356-3f9b55dda7e6', 3),
       ('dd7e850d-138b-4e6e-a048-eabba5739484', '0fca3679-110d-466c-9356-3f9b55dda7e6', 4),
       ('a1f7cc6c-c7df-491e-82eb-56a3a04d5888', '0fca3679-110d-466c-9356-3f9b55dda7e6', 5),
       ('81c4433c-6ae2-4946-a46e-b4967501f244', '0fca3679-110d-466c-9356-3f9b55dda7e6', 6),
       ('cdc95834-e67d-47dc-b5ba-12bb3f8ca3d1', '0fca3679-110d-466c-9356-3f9b55dda7e6', 7),
       ('5f54f1a2-014d-4a29-bc48-2f45da260851', '0fca3679-110d-466c-9356-3f9b55dda7e6', 8),
       ('b597a8dd-f57d-4e11-9f08-b10a152de053', '0fca3679-110d-466c-9356-3f9b55dda7e6', 9),
       ('b99b0477-1898-41d6-a507-cf7a4b7e5bd9', '0fca3679-110d-466c-9356-3f9b55dda7e6', 10),
       ('33d7e8ca-4bf2-460e-8eaf-b7c3ad9dc4c5', '0fca3679-110d-466c-9356-3f9b55dda7e6', 11),
       ('e89d5bd1-d220-4883-a65e-780985a4ae2c', '0fca3679-110d-466c-9356-3f9b55dda7e6', 12),
       ('a69537aa-8a41-4fc1-b8a7-a1a8166d9a48', '0fca3679-110d-466c-9356-3f9b55dda7e6', 13);

insert into `associated_component_ids_component_ids` (`associated_component_ids_id`, `component_ids`)
values ('24c88424-0c88-4c51-b429-3dc6d6fa3d43', 'critter_container_all_collectors'),
       ('24c88424-0c88-4c51-b429-3dc6d6fa3d43', 'gameboard'),
       ('ec79d38f-b9fc-473a-a38e-e6072260578f', 'blockly_cut_div'),
       ('6e7c1b0f-8fa8-4540-b84d-e0718b35ce15', 'gameboard'),
       ('dd7e850d-138b-4e6e-a048-eabba5739484', 'blockly_cut_div'),
       ('dd7e850d-138b-4e6e-a048-eabba5739484', 'test_popup_container'),
       ('a1f7cc6c-c7df-491e-82eb-56a3a04d5888', 'save_button'),
       ('81c4433c-6ae2-4946-a46e-b4967501f244', 'blockly_cut_div'),
       ('81c4433c-6ae2-4946-a46e-b4967501f244', 'gameboard'),
       ('cdc95834-e67d-47dc-b5ba-12bb3f8ca3d1', 'blockly_cut_div'),
       ('5f54f1a2-014d-4a29-bc48-2f45da260851', 'test_popup_container'),
       ('b597a8dd-f57d-4e11-9f08-b10a152de053', 'blockly_cut_div'),
       ('b597a8dd-f57d-4e11-9f08-b10a152de053', 'test_popup_container'),
       ('b99b0477-1898-41d6-a507-cf7a4b7e5bd9', 'test_popup_container'),
       ('33d7e8ca-4bf2-460e-8eaf-b7c3ad9dc4c5', 'test_popup_container'),
       ('e89d5bd1-d220-4883-a65e-780985a4ae2c', 'test_popup_container'),
       ('a69537aa-8a41-4fc1-b8a7-a1a8166d9a48', 'save_button');

insert into `portal_xmls` (`hint_id`, `portal_xml`, `portal_xml_key`)
values ('0fca3679-110d-466c-9356-3f9b55dda7e6',
        '<xml xmlns="https://developers.google.com/blockly/xml"><block type="assert_loop_free" id="Opw-gW5,wHsjo%rVVkm]" x="-295" y="-133"><value name="value"><block type="logic_compare" id="Updh4`dmqWOl8d}M;g8y"><field name="OP">LTE</field><value name="A"><block type="properties_user_healing" id="b@|}ai;JP@:~rVR@L`5V"><field name="properties">ROUNDS</field></block></value><value name="B"></value></block></value></block></xml>',
        4),
       ('0fca3679-110d-466c-9356-3f9b55dda7e6',
        '<xml xmlns="https://developers.google.com/blockly/xml"><block type="assert_loop_free" id="Opw-gW5,wHsjo%rVVkm]" x="-295" y="-133"><value name="value"><block type="logic_compare" id="Updh4`dmqWOl8d}M;g8y"><field name="OP">LTE</field><value name="A"><block type="properties_user_healing" id="b@|}ai;JP@:~rVR@L`5V"><field name="properties">ROUNDS</field></block></value><value name="B"><block type="math_number" id="S2UM`G/KR!B#Z:h*HSJh"><field name="NUM">3</field></block></value></block></value></block></xml>',
        5),
       ('0fca3679-110d-466c-9356-3f9b55dda7e6',
        '<xml xmlns="https://developers.google.com/blockly/xml"><block type="assert_loop" id="+4Y-gWv*x]_bB#pRmN.K" x="64" y="80"><value name="target"><block type="properties_user_healing" id="i_PV5d`al(*}dDu@,;zJ"><field name="properties">ORANGEBERRIES</field></block></value><value name="value"></value></block></xml>',
        8),
       ('0fca3679-110d-466c-9356-3f9b55dda7e6',
        '<xml xmlns="https://developers.google.com/blockly/xml"><block type="assert_loop" id="+4Y-gWv*x]_bB#pRmN.K" x="41" y="-79"><value name="target"><block type="properties_user_healing" id="i_PV5d`al(*}dDu@,;zJ"><field name="properties">ORANGEBERRIES</field></block></value><value name="value"><block type="math_number" id="Eem[Vxht-;;+ILj@@lxp"><field name="NUM">2</field></block></value></block><block type="controls_if" id="-jpSr`dvS,Y1nbJ4PW*V" x="40" y="3"><value name="IF0"><block type="logic_compare" id="Updh4`dmqWOl8d}M;g8y"><field name="OP">EQ</field><value name="A"><block type="properties_user_healing" id="s.z57H]WHw1o/OQk5=_o"><field name="properties">ROUNDS</field></block></value><value name="B"><block type="math_number" id="hO_w2l+)~T|nQgdVK/3|"><field name="NUM">1</field></block></value></block></value><statement name="DO0"><block type="assert_loop" id=";]T/^lWm=ff,|#E^?BrK"><value name="target"><block type="properties_user_healing" id="8gtm#3BT9xQ^]16gi#pl"><field name="properties">WHITEBERRIES</field></block></value><value name="value"><block type="math_number" id="Esoah!7AS=H2(S]~dicg"><field name="NUM">0</field></block></value></block></statement></block></xml>',
        9),
       ('0fca3679-110d-466c-9356-3f9b55dda7e6',
        '<xml xmlns="https://developers.google.com/blockly/xml"><block type="assert_loop" id="+4Y-gWv*x]_bB#pRmN.K" x="41" y="-79"><value name="target"><block type="properties_user_healing" id="i_PV5d`al(*}dDu@,;zJ"><field name="properties">ORANGEBERRIES</field></block></value><value name="value"><block type="math_number" id="Eem[Vxht-;;+ILj@@lxp"><field name="NUM">2</field></block></value></block><block type="controls_if" id="-jpSr`dvS,Y1nbJ4PW*V" x="40" y="3"><mutation elseif="1"></mutation><value name="IF0"><block type="logic_compare" id="Updh4`dmqWOl8d}M;g8y"><field name="OP">EQ</field><value name="A"><block type="properties_user_healing" id="s.z57H]WHw1o/OQk5=_o"><field name="properties">ROUNDS</field></block></value><value name="B"><block type="math_number" id="hO_w2l+)~T|nQgdVK/3|"><field name="NUM">1</field></block></value></block></value><statement name="DO0"><block type="assert_loop" id=";]T/^lWm=ff,|#E^?BrK"><value name="target"><block type="properties_user_healing" id="8gtm#3BT9xQ^]16gi#pl"><field name="properties">WHITEBERRIES</field></block></value><value name="value"><block type="math_number" id="Esoah!7AS=H2(S]~dicg"><field name="NUM">0</field></block></value></block></statement><value name="IF1"><block type="logic_compare" id="0=wUz%b0kzv2WEcZLvCD"><field name="OP">EQ</field><value name="A"><block type="properties_user_healing" id="0Q+!.GEf_@Iyi,Y1wsa$"><field name="properties">ROUNDS</field></block></value><value name="B"><block type="math_number" id=",RdXVuj_YdeixK037$}t"><field name="NUM">2</field></block></value></block></value><statement name="DO1"><block type="assert_loop" id="MhZQP`_g^ldG%1Or~d~5"><value name="target"><block type="properties_user_healing" id="6DCGIl;X2zV^*L~|8=un"><field name="properties">WHITEBERRIES</field></block></value><value name="value"></value></block></statement></block></xml>',
        10),
       ('0fca3679-110d-466c-9356-3f9b55dda7e6',
        '<xml xmlns="https://developers.google.com/blockly/xml"><block type="assert_loop" id="+4Y-gWv*x]_bB#pRmN.K" x="41" y="-79"><value name="target"><block type="properties_user_healing" id="i_PV5d`al(*}dDu@,;zJ"><field name="properties">ORANGEBERRIES</field></block></value><value name="value"><block type="math_number" id="Eem[Vxht-;;+ILj@@lxp"><field name="NUM">2</field></block></value></block><block type="controls_if" id="-jpSr`dvS,Y1nbJ4PW*V" x="40" y="3"><mutation elseif="2"></mutation><value name="IF0"><block type="logic_compare" id="Updh4`dmqWOl8d}M;g8y"><field name="OP">EQ</field><value name="A"><block type="properties_user_healing" id="s.z57H]WHw1o/OQk5=_o"><field name="properties">ROUNDS</field></block></value><value name="B"><block type="math_number" id="hO_w2l+)~T|nQgdVK/3|"><field name="NUM">1</field></block></value></block></value><statement name="DO0"><block type="assert_loop" id=";]T/^lWm=ff,|#E^?BrK"><value name="target"><block type="properties_user_healing" id="8gtm#3BT9xQ^]16gi#pl"><field name="properties">WHITEBERRIES</field></block></value><value name="value"><block type="math_number" id="Esoah!7AS=H2(S]~dicg"><field name="NUM">0</field></block></value></block></statement><value name="IF1"><block type="logic_compare" id="0=wUz%b0kzv2WEcZLvCD"><field name="OP">EQ</field><value name="A"><block type="properties_user_healing" id="0Q+!.GEf_@Iyi,Y1wsa$"><field name="properties">ROUNDS</field></block></value><value name="B"><block type="math_number" id=",RdXVuj_YdeixK037$}t"><field name="NUM">2</field></block></value></block></value><statement name="DO1"><block type="assert_loop" id="MhZQP`_g^ldG%1Or~d~5"><value name="target"><block type="properties_user_healing" id="6DCGIl;X2zV^*L~|8=un"><field name="properties">WHITEBERRIES</field></block></value><value name="value"><block type="math_number" id="z@_Fdj[]e~`rW=225Zy;"><field name="NUM">1</field></block></value></block></statement><value name="IF2"><block type="logic_compare" id="6bY6iXow;Lp]C!K2^eWp"><field name="OP">EQ</field><value name="A"><block type="properties_user_healing" id="?f1Dd-1$13;W=svOiOS]"><field name="properties">ROUNDS</field></block></value><value name="B"><block type="math_number" id="-0yiC=I+I=d`I]/xh8S]"><field name="NUM">3</field></block></value></block></value><statement name="DO2"><block type="assert_loop" id="qUhTb+/K~0.BC!![uo})"><value name="target"><block type="properties_user_healing" id="G)-ppRf36T$.{UU{Xjx1"><field name="properties">WHITEBERRIES</field></block></value><value name="value"></value></block></statement></block></xml>',
        11),
       ('0fca3679-110d-466c-9356-3f9b55dda7e6',
        '<xml xmlns="https://developers.google.com/blockly/xml"><block type="assert_loop" id="+4Y-gWv*x]_bB#pRmN.K" x="41" y="-79"><value name="target"><block type="properties_user_healing" id="i_PV5d`al(*}dDu@,;zJ"><field name="properties">ORANGEBERRIES</field></block></value><value name="value"><block type="math_number" id="Eem[Vxht-;;+ILj@@lxp"><field name="NUM">2</field></block></value></block><block type="controls_if" id="-jpSr`dvS,Y1nbJ4PW*V" x="40" y="3"><mutation elseif="2"></mutation><value name="IF0"><block type="logic_compare" id="Updh4`dmqWOl8d}M;g8y"><field name="OP">EQ</field><value name="A"><block type="properties_user_healing" id="s.z57H]WHw1o/OQk5=_o"><field name="properties">ROUNDS</field></block></value><value name="B"><block type="math_number" id="hO_w2l+)~T|nQgdVK/3|"><field name="NUM">1</field></block></value></block></value><statement name="DO0"><block type="assert_loop" id=";]T/^lWm=ff,|#E^?BrK"><value name="target"><block type="properties_user_healing" id="8gtm#3BT9xQ^]16gi#pl"><field name="properties">WHITEBERRIES</field></block></value><value name="value"><block type="math_number" id="Esoah!7AS=H2(S]~dicg"><field name="NUM">0</field></block></value></block></statement><value name="IF1"><block type="logic_compare" id="0=wUz%b0kzv2WEcZLvCD"><field name="OP">EQ</field><value name="A"><block type="properties_user_healing" id="0Q+!.GEf_@Iyi,Y1wsa$"><field name="properties">ROUNDS</field></block></value><value name="B"><block type="math_number" id=",RdXVuj_YdeixK037$}t"><field name="NUM">2</field></block></value></block></value><statement name="DO1"><block type="assert_loop" id="MhZQP`_g^ldG%1Or~d~5"><value name="target"><block type="properties_user_healing" id="6DCGIl;X2zV^*L~|8=un"><field name="properties">WHITEBERRIES</field></block></value><value name="value"><block type="math_number" id="z@_Fdj[]e~`rW=225Zy;"><field name="NUM">1</field></block></value></block></statement><value name="IF2"><block type="logic_compare" id="6bY6iXow;Lp]C!K2^eWp"><field name="OP">EQ</field><value name="A"><block type="properties_user_healing" id="?f1Dd-1$13;W=svOiOS]"><field name="properties">ROUNDS</field></block></value><value name="B"><block type="math_number" id="-0yiC=I+I=d`I]/xh8S]"><field name="NUM">3</field></block></value></block></value><statement name="DO2"><block type="assert_loop" id="qUhTb+/K~0.BC!![uo})"><value name="target"><block type="properties_user_healing" id="G)-ppRf36T$.{UU{Xjx1"><field name="properties">WHITEBERRIES</field></block></value><value name="value"><block type="math_number" id="=`3SsXR6[xo3PRKg8iDz"><field name="NUM">2</field></block></value></block></statement></block></xml>',
        12),
       ('0fca3679-110d-466c-9356-3f9b55dda7e6',
        '<xml xmlns="https://developers.google.com/blockly/xml"><block type="assert_loop" id="+4Y-gWv*x]_bB#pRmN.K" x="-62" y="-41"><value name="target"><block type="properties_user_healing" id="i_PV5d`al(*}dDu@,;zJ"><field name="properties">ORANGEBERRIES</field></block></value><value name="value"><block type="math_number" id="Eem[Vxht-;;+ILj@@lxp"><field name="NUM">2</field></block></value></block><block type="assert_loop" id=";]T/^lWm=ff,|#E^?BrK" x="-73" y="50"><value name="target"><block type="properties_user_healing" id="8gtm#3BT9xQ^]16gi#pl"><field name="properties">WHITEBERRIES</field></block></value><value name="value"><block type="math_arithmetic" id="M]Qfng[KcxW;Qdz%;CdX"><field name="OP">MINUS</field><value name="A"><block type="properties_user_healing" id="G9jP)0IzS3UzKmIIfgLY"><field name="properties">ROUNDS</field></block></value><value name="B"><block type="math_number" id="Esoah!7AS=H2(S]~dicg"><field name="NUM">1</field></block></value></block></value></block></xml>',
        13);

insert into `expected_clicked_coordinate` (`id`, `hint_id`, `expected_clicked_coordinates_key`)
values ('ea0ceffc-7468-456a-aad7-6e2538baf29a', '0fca3679-110d-466c-9356-3f9b55dda7e6', 3),
       ('8f7bec60-11ef-4de9-ae26-ecef67fed578', '0fca3679-110d-466c-9356-3f9b55dda7e6', 6);

insert into `expected_clicked_coordinate_coordinates` (`expected_clicked_coordinate_id`, `x`, `y`)
values ('ea0ceffc-7468-456a-aad7-6e2538baf29a', 4, 1),
       ('8f7bec60-11ef-4de9-ae26-ecef67fed578', 2, 7);

insert into `hint_expected_user_interaction` (`hint_id`, `expected_user_interaction`, `expected_user_interaction_key`)
values ('0fca3679-110d-466c-9356-3f9b55dda7e6', 0, 3),
       ('0fca3679-110d-466c-9356-3f9b55dda7e6', 1, 4),
       ('0fca3679-110d-466c-9356-3f9b55dda7e6', 2, 5),
       ('0fca3679-110d-466c-9356-3f9b55dda7e6', 0, 6),
       ('0fca3679-110d-466c-9356-3f9b55dda7e6', 1, 8),
       ('0fca3679-110d-466c-9356-3f9b55dda7e6', 1, 10),
       ('0fca3679-110d-466c-9356-3f9b55dda7e6', 1, 11),
       ('0fca3679-110d-466c-9356-3f9b55dda7e6', 2, 13);

insert into `hint_expected_portal_js_code` (`hint_id`, `expected_portal_js_code`, `expected_portal_js_code_key`)
values ('0fca3679-110d-466c-9356-3f9b55dda7e6', 'if (!(((this.roundsCount) <= 3))) {\n\tthis._killCritter(x, y, ((this.roundsCount) <= 3), ((this.roundsCount) <= 3));\n\tthis.mustWalkOut = true;\n\treturn true;\n}\n', 4),
       ('0fca3679-110d-466c-9356-3f9b55dda7e6', 'if ((this.orangeBerryCount) !== 2) {\n\tthis._killCritter(x, y, (this.orangeBerryCount), 2);\n\tthis.mustWalkOut = true;\n\treturn true;\n}\n', 8),
       ('0fca3679-110d-466c-9356-3f9b55dda7e6', 'if ((this.orangeBerryCount) !== 2) {\n\tthis._killCritter(x, y, (this.orangeBerryCount), 2);\n\tthis.mustWalkOut = true;\n\treturn true;\n}\n\nif ((this.roundsCount) == 1) {\n  if ((this.whiteBerryCount) !== 0) {\n  \tthis._killCritter(x, y, (this.whiteBerryCount), 0);\n  \tthis.mustWalkOut = true;\n  \treturn true;\n  }\n} else if ((this.roundsCount) == 2) {\n  if ((this.whiteBerryCount) !== 1) {\n  \tthis._killCritter(x, y, (this.whiteBerryCount), 1);\n  \tthis.mustWalkOut = true;\n  \treturn true;\n  }\n}\n', 10),
       ('0fca3679-110d-466c-9356-3f9b55dda7e6', 'if ((this.orangeBerryCount) !== 2) {\n\tthis._killCritter(x, y, (this.orangeBerryCount), 2);\n\tthis.mustWalkOut = true;\n\treturn true;\n}\n\nif ((this.roundsCount) == 1) {\n  if ((this.whiteBerryCount) !== 0) {\n  \tthis._killCritter(x, y, (this.whiteBerryCount), 0);\n  \tthis.mustWalkOut = true;\n  \treturn true;\n  }\n} else if ((this.roundsCount) == 2) {\n  if ((this.whiteBerryCount) !== 1) {\n  \tthis._killCritter(x, y, (this.whiteBerryCount), 1);\n  \tthis.mustWalkOut = true;\n  \treturn true;\n  }\n} else if ((this.roundsCount) == 3) {\n  if ((this.whiteBerryCount) !== 2) {\n  \tthis._killCritter(x, y, (this.whiteBerryCount), 2);\n  \tthis.mustWalkOut = true;\n  \treturn true;\n  }\n}\n', 11);


-- Level 9 hints:

-- Code Explanation level 9
insert into `hint` (`id`, `hint_situation`, `heal_level_id`)
values ('072bfc41-81dd-4cc8-abc7-170979fa4cc7', 2, '8fae4dce-20f6-47ea-aea2-dc44a2d148ed');

insert into `hint_hint_texts` (`hint_id`, `hint_texts`, `hint_texts_key`)
values ('072bfc41-81dd-4cc8-abc7-170979fa4cc7', 'hint_loop_level_9_code_0', 0),
       ('072bfc41-81dd-4cc8-abc7-170979fa4cc7', 'hint_loop_level_9_code_1', 1),
       ('072bfc41-81dd-4cc8-abc7-170979fa4cc7', 'hint_loop_level_9_code_2', 2),
       ('072bfc41-81dd-4cc8-abc7-170979fa4cc7', 'hint_loop_level_9_code_3', 3),
       ('072bfc41-81dd-4cc8-abc7-170979fa4cc7', 'hint_loop_level_9_code_4', 4),
       ('072bfc41-81dd-4cc8-abc7-170979fa4cc7', 'hint_loop_level_9_code_5', 5),
       ('072bfc41-81dd-4cc8-abc7-170979fa4cc7', 'hint_loop_level_9_code_6', 6),
       ('072bfc41-81dd-4cc8-abc7-170979fa4cc7', 'hint_loop_level_9_code_7', 7),
       ('072bfc41-81dd-4cc8-abc7-170979fa4cc7', 'hint_loop_level_9_code_8', 8),
       ('072bfc41-81dd-4cc8-abc7-170979fa4cc7', 'hint_loop_level_9_code_9', 9),
       ('072bfc41-81dd-4cc8-abc7-170979fa4cc7', 'hint_loop_level_9_code_10', 10),
       ('072bfc41-81dd-4cc8-abc7-170979fa4cc7', 'hint_loop_level_9_code_11', 11),
       ('072bfc41-81dd-4cc8-abc7-170979fa4cc7', 'hint_loop_level_9_code_12', 12),
       ('072bfc41-81dd-4cc8-abc7-170979fa4cc7', 'hint_loop_level_9_code_13', 13);

insert into associated_component_ids (id, hint_id, associated_component_ids_key)
values ('f1df42c6-669f-4edc-b801-f483e04017d6', '072bfc41-81dd-4cc8-abc7-170979fa4cc7', 0),
       ('3cde346a-8d50-4870-beb5-1f53620a305c', '072bfc41-81dd-4cc8-abc7-170979fa4cc7', 1),
       ('7985a638-730a-49b7-8114-e768934564aa', '072bfc41-81dd-4cc8-abc7-170979fa4cc7', 2),
       ('b798e2f1-4694-430d-8247-c5f102aa8336', '072bfc41-81dd-4cc8-abc7-170979fa4cc7', 3),
       ('30fdf5e6-2149-4778-a815-86c19f95e640', '072bfc41-81dd-4cc8-abc7-170979fa4cc7', 4),
       ('37a89425-8b02-4c28-a874-6f11106b77f3', '072bfc41-81dd-4cc8-abc7-170979fa4cc7', 5),
       ('bb36d07a-7a5f-40f4-8bfd-5ff3d533b467', '072bfc41-81dd-4cc8-abc7-170979fa4cc7', 6),
       ('966a6b62-dfbf-4803-8cd2-e3415b5a116c', '072bfc41-81dd-4cc8-abc7-170979fa4cc7', 7),
       ('5da7554a-e48f-48af-aa63-6eb0e2d22036', '072bfc41-81dd-4cc8-abc7-170979fa4cc7', 8),
       ('0838100e-efdf-424a-8717-c142e04822b0', '072bfc41-81dd-4cc8-abc7-170979fa4cc7', 9),
       ('59052772-0ea3-4196-bb98-eb383f989645', '072bfc41-81dd-4cc8-abc7-170979fa4cc7', 10),
       ('ef469f5c-15b0-43c8-969f-38487be66275', '072bfc41-81dd-4cc8-abc7-170979fa4cc7', 11),
       ('7bd69716-d9b9-40e5-908a-644f3438b949', '072bfc41-81dd-4cc8-abc7-170979fa4cc7', 12),
       ('7e3c5688-8d02-494f-8b1e-63af13d7059e', '072bfc41-81dd-4cc8-abc7-170979fa4cc7', 13);

insert into associated_component_ids_component_ids (associated_component_ids_id, component_ids)
values ('f1df42c6-669f-4edc-b801-f483e04017d6', 'blockly_cut_div'),
       ('3cde346a-8d50-4870-beb5-1f53620a305c', 'blockly_cut_div'),
       ('7985a638-730a-49b7-8114-e768934564aa', 'blockly_cut_div'),
       ('b798e2f1-4694-430d-8247-c5f102aa8336', 'blockly_cut_div'),
       ('30fdf5e6-2149-4778-a815-86c19f95e640', 'blockly_cut_div'),
       ('37a89425-8b02-4c28-a874-6f11106b77f3', 'blockly_cut_div'),
       ('bb36d07a-7a5f-40f4-8bfd-5ff3d533b467', 'blockly_cut_div'),
       ('966a6b62-dfbf-4803-8cd2-e3415b5a116c', 'blockly_cut_div'),
       ('5da7554a-e48f-48af-aa63-6eb0e2d22036', 'blockly_cut_div'),
       ('5da7554a-e48f-48af-aa63-6eb0e2d22036', 'critter_container_all_collectors'),
       ('0838100e-efdf-424a-8717-c142e04822b0', 'blockly_cut_div'),
       ('0838100e-efdf-424a-8717-c142e04822b0', '961608dc-6084-41f1-a2e2-993fea1c3742'),
       ('0838100e-efdf-424a-8717-c142e04822b0', 'acce7b5f-8c8e-4572-8d9c-953dbb815759'),
       ('0838100e-efdf-424a-8717-c142e04822b0', '8f08a53f-e92c-47ec-9b59-cb8e34140871'),
       ('59052772-0ea3-4196-bb98-eb383f989645', 'blockly_cut_div'),
       ('59052772-0ea3-4196-bb98-eb383f989645', '961608dc-6084-41f1-a2e2-993fea1c3742'),
       ('59052772-0ea3-4196-bb98-eb383f989645', 'acce7b5f-8c8e-4572-8d9c-953dbb815759'),
       ('59052772-0ea3-4196-bb98-eb383f989645', '8f08a53f-e92c-47ec-9b59-cb8e34140871'),
       ('ef469f5c-15b0-43c8-969f-38487be66275', 'blockly_cut_div'),
       ('ef469f5c-15b0-43c8-969f-38487be66275', '971b7be5-348f-4fe2-8abd-41bb5b4ba74c'),
       ('ef469f5c-15b0-43c8-969f-38487be66275', '3b4236b7-8550-488d-bad0-b42a6333e791'),
       ('ef469f5c-15b0-43c8-969f-38487be66275', '46628439-8b87-4eda-9c93-496b2bdc1b44'),
       ('ef469f5c-15b0-43c8-969f-38487be66275', '3ccd5f32-4865-408e-a717-e5ef0018892b'),
       ('ef469f5c-15b0-43c8-969f-38487be66275', '9351e977-3f32-4da0-8294-8390822e8519'),
       ('ef469f5c-15b0-43c8-969f-38487be66275', '867900cf-1663-47f0-933f-66a52bf4951b'),
       ('ef469f5c-15b0-43c8-969f-38487be66275', '5d52d205-bbec-4c3d-adfb-9eedeeccc3b0'),
       ('7bd69716-d9b9-40e5-908a-644f3438b949', 'blockly_cut_div'),
       ('7bd69716-d9b9-40e5-908a-644f3438b949', '971b7be5-348f-4fe2-8abd-41bb5b4ba74c'),
       ('7bd69716-d9b9-40e5-908a-644f3438b949', '3b4236b7-8550-488d-bad0-b42a6333e791'),
       ('7bd69716-d9b9-40e5-908a-644f3438b949', '46628439-8b87-4eda-9c93-496b2bdc1b44'),
       ('7bd69716-d9b9-40e5-908a-644f3438b949', '3ccd5f32-4865-408e-a717-e5ef0018892b'),
       ('7bd69716-d9b9-40e5-908a-644f3438b949', '9351e977-3f32-4da0-8294-8390822e8519'),
       ('7bd69716-d9b9-40e5-908a-644f3438b949', '867900cf-1663-47f0-933f-66a52bf4951b'),
       ('7bd69716-d9b9-40e5-908a-644f3438b949', '5d52d205-bbec-4c3d-adfb-9eedeeccc3b0'),
       ('7e3c5688-8d02-494f-8b1e-63af13d7059e', 'blockly_cut_div');

insert into `associated_cut_blocks` (`id`, `hint_id`, `associated_cut_blocks_key`)
values ('b91f4380-5570-4520-9b7d-b0ade39bc755', '072bfc41-81dd-4cc8-abc7-170979fa4cc7', 1),
       ('d46714c0-dc24-44e9-93a2-0a02f547061a', '072bfc41-81dd-4cc8-abc7-170979fa4cc7', 2),
       ('6b1e3324-963b-4b01-bc9d-ae30d304403c', '072bfc41-81dd-4cc8-abc7-170979fa4cc7', 3),
       ('2b28f993-4b5f-4c70-a4ac-1e079204c0c6', '072bfc41-81dd-4cc8-abc7-170979fa4cc7', 4),
       ('ec6733ab-7b7f-48a6-beae-ec3e82fbc138', '072bfc41-81dd-4cc8-abc7-170979fa4cc7', 5),
       ('b1f18bc1-9784-40f4-8995-cf000f458e0b', '072bfc41-81dd-4cc8-abc7-170979fa4cc7', 6),
       ('5283ecb0-d80c-42ba-bad6-6bb4eb90e3e2', '072bfc41-81dd-4cc8-abc7-170979fa4cc7', 7),
       ('e630444e-94c3-4afc-a2d2-b3f26551e01f', '072bfc41-81dd-4cc8-abc7-170979fa4cc7', 8),
       ('d7214aae-a16a-4c88-9bd3-ff2e32043441', '072bfc41-81dd-4cc8-abc7-170979fa4cc7', 9),
       ('d5b1899a-a60b-4cc9-addf-9ed734858922', '072bfc41-81dd-4cc8-abc7-170979fa4cc7', 10),
       ('e2561180-5261-424f-95d4-d3ff7d23d35d', '072bfc41-81dd-4cc8-abc7-170979fa4cc7', 11),
       ('b33e54ae-6c83-4551-92ed-1e198c1bfa04', '072bfc41-81dd-4cc8-abc7-170979fa4cc7', 12),
       ('f8aa11d4-fe8b-406b-8db6-f7c26bad6c6d', '072bfc41-81dd-4cc8-abc7-170979fa4cc7', 13);

insert into `associated_cut_blocks_block_ids` (`associated_cut_blocks_id`, `block_ids`)
values ('b91f4380-5570-4520-9b7d-b0ade39bc755', 'recipe_start_while'),
       ('d46714c0-dc24-44e9-93a2-0a02f547061a', 'logic_compare_1'),
       ('6b1e3324-963b-4b01-bc9d-ae30d304403c', 'logic_compare_1'),
       ('6b1e3324-963b-4b01-bc9d-ae30d304403c', 'bush_properties_1'),
       ('6b1e3324-963b-4b01-bc9d-ae30d304403c', 'bush_properties_2'),
       ('6b1e3324-963b-4b01-bc9d-ae30d304403c', 'bush_properties_3'),
       ('2b28f993-4b5f-4c70-a4ac-1e079204c0c6', 'controls_if_1'),
       ('2b28f993-4b5f-4c70-a4ac-1e079204c0c6', 'logic_operation_1'),
       ('ec6733ab-7b7f-48a6-beae-ec3e82fbc138', 'logic_compare_2'),
       ('ec6733ab-7b7f-48a6-beae-ec3e82fbc138', 'logic_compare_3'),
       ('ec6733ab-7b7f-48a6-beae-ec3e82fbc138', 'set_berries_1'),
       ('ec6733ab-7b7f-48a6-beae-ec3e82fbc138', 'set_berries_2'),
       ('b1f18bc1-9784-40f4-8995-cf000f458e0b', 'logic_compare_2'),
       ('b1f18bc1-9784-40f4-8995-cf000f458e0b', 'logic_compare_3'),
       ('b1f18bc1-9784-40f4-8995-cf000f458e0b', 'set_berries_3'),
       ('5283ecb0-d80c-42ba-bad6-6bb4eb90e3e2', 'controls_if_1'),
       ('5283ecb0-d80c-42ba-bad6-6bb4eb90e3e2', 'logic_compare_2'),
       ('e630444e-94c3-4afc-a2d2-b3f26551e01f', 'logic_compare_3'),
       ('e630444e-94c3-4afc-a2d2-b3f26551e01f', 'set_berries_1'),
       ('e630444e-94c3-4afc-a2d2-b3f26551e01f', 'set_berries_2'),
       ('d7214aae-a16a-4c88-9bd3-ff2e32043441', 'logic_compare_3'),
       ('d7214aae-a16a-4c88-9bd3-ff2e32043441', 'set_berries_1'),
       ('d5b1899a-a60b-4cc9-addf-9ed734858922', 'logic_compare_3'),
       ('d5b1899a-a60b-4cc9-addf-9ed734858922', 'set_berries_2'),
       ('e2561180-5261-424f-95d4-d3ff7d23d35d', 'logic_compare_2'),
       ('e2561180-5261-424f-95d4-d3ff7d23d35d', 'logic_compare_3'),
       ('e2561180-5261-424f-95d4-d3ff7d23d35d', 'set_berries_3'),
       ('b33e54ae-6c83-4551-92ed-1e198c1bfa04', 'controls_if_1'),
       ('b33e54ae-6c83-4551-92ed-1e198c1bfa04', 'bush_properties_2'),
       ('b33e54ae-6c83-4551-92ed-1e198c1bfa04', 'bush_properties_3'),
       ('f8aa11d4-fe8b-406b-8db6-f7c26bad6c6d', 'logic_compare_1');

insert into `hint_expected_user_interaction` (`hint_id`, `expected_user_interaction`, `expected_user_interaction_key`)
values ('072bfc41-81dd-4cc8-abc7-170979fa4cc7', 3, 7),
       ('072bfc41-81dd-4cc8-abc7-170979fa4cc7', 3, 9),
       ('072bfc41-81dd-4cc8-abc7-170979fa4cc7', 3, 12);

insert into `answer_options_list` (`id`, `hint_id`, `answer_options_list_key`)
values ('cecd1ee1-b2f6-4edb-9974-9c1c7aa44b97', '072bfc41-81dd-4cc8-abc7-170979fa4cc7', 7),
       ('001880d7-05ae-4806-8c57-7300320f255b', '072bfc41-81dd-4cc8-abc7-170979fa4cc7', 9),
       ('28a08564-4197-42d5-930f-f6cecd4a9e61', '072bfc41-81dd-4cc8-abc7-170979fa4cc7', 12);

insert into `answer_options_list_answer_options` (`answer_options_list_id`, `answer_options`)
values ('cecd1ee1-b2f6-4edb-9974-9c1c7aa44b97', 'if_do'),
       ('cecd1ee1-b2f6-4edb-9974-9c1c7aa44b97', 'else'),
       ('001880d7-05ae-4806-8c57-7300320f255b', '2'),
       ('001880d7-05ae-4806-8c57-7300320f255b', '4'),
       ('001880d7-05ae-4806-8c57-7300320f255b', '6'),
       ('28a08564-4197-42d5-930f-f6cecd4a9e61', '3'),
       ('28a08564-4197-42d5-930f-f6cecd4a9e61', '4'),
       ('28a08564-4197-42d5-930f-f6cecd4a9e61', '5');

insert into `hint_solution_answer` (hint_id, solution_answer, solution_answer_key)
values ('072bfc41-81dd-4cc8-abc7-170979fa4cc7', 'if_do', 7),
       ('072bfc41-81dd-4cc8-abc7-170979fa4cc7', '6', 9),
       ('072bfc41-81dd-4cc8-abc7-170979fa4cc7', '4', 12);

insert into `associated_coordinates` (`hint_id`, `x`, `y`, `associated_coordinates_key`)
values ('072bfc41-81dd-4cc8-abc7-170979fa4cc7', 6, 4, 9),
       ('072bfc41-81dd-4cc8-abc7-170979fa4cc7', 3, 6, 10),
       ('072bfc41-81dd-4cc8-abc7-170979fa4cc7', 3, 6, 12);


-- Portal together level 9
insert into `hint` (`id`, `hint_situation`, `heal_level_id`)
values ('9e9f613f-8936-43c3-96e2-70351a0852eb', 3, '8fae4dce-20f6-47ea-aea2-dc44a2d148ed');

insert into `hint_hint_texts` (`hint_id`, `hint_texts`, `hint_texts_key`)
values ('9e9f613f-8936-43c3-96e2-70351a0852eb', 'hint_loop_level_9_complete_0', 0),
       ('9e9f613f-8936-43c3-96e2-70351a0852eb', 'hint_loop_level_9_complete_1', 1),
       ('9e9f613f-8936-43c3-96e2-70351a0852eb', 'hint_loop_level_9_complete_2', 2),
       ('9e9f613f-8936-43c3-96e2-70351a0852eb', 'hint_loop_level_9_complete_3', 3),
       ('9e9f613f-8936-43c3-96e2-70351a0852eb', 'hint_loop_level_9_complete_4', 4),
       ('9e9f613f-8936-43c3-96e2-70351a0852eb', 'hint_loop_level_9_complete_5', 5),
       ('9e9f613f-8936-43c3-96e2-70351a0852eb', 'hint_loop_level_9_complete_6', 6),
       ('9e9f613f-8936-43c3-96e2-70351a0852eb', 'hint_loop_level_9_complete_7', 7),
       ('9e9f613f-8936-43c3-96e2-70351a0852eb', 'hint_loop_level_9_complete_8', 8),
       ('9e9f613f-8936-43c3-96e2-70351a0852eb', 'hint_loop_level_9_complete_9', 9),
       ('9e9f613f-8936-43c3-96e2-70351a0852eb', 'hint_loop_level_9_complete_10', 10),
       ('9e9f613f-8936-43c3-96e2-70351a0852eb', 'hint_loop_level_9_complete_11', 11),
       ('9e9f613f-8936-43c3-96e2-70351a0852eb', 'hint_loop_level_9_complete_12', 12),
       ('9e9f613f-8936-43c3-96e2-70351a0852eb', 'hint_loop_level_9_complete_13', 13),
       ('9e9f613f-8936-43c3-96e2-70351a0852eb', 'hint_loop_level_9_complete_14', 14),
       ('9e9f613f-8936-43c3-96e2-70351a0852eb', 'hint_loop_level_9_complete_15', 15),
       ('9e9f613f-8936-43c3-96e2-70351a0852eb', 'hint_loop_level_9_complete_16', 16),
       ('9e9f613f-8936-43c3-96e2-70351a0852eb', 'hint_loop_level_9_complete_17', 17),
       ('9e9f613f-8936-43c3-96e2-70351a0852eb', 'hint_loop_level_9_complete_18', 18),
       ('9e9f613f-8936-43c3-96e2-70351a0852eb', 'hint_loop_level_9_complete_19', 19);

insert into `associated_coordinates` (`hint_id`, `x`, `y`, `associated_coordinates_key`)
values ('9e9f613f-8936-43c3-96e2-70351a0852eb', 5, 2, 3),
       ('9e9f613f-8936-43c3-96e2-70351a0852eb', 1, 3, 7);

insert into `associated_cut_blocks` (`id`, `hint_id`, `associated_cut_blocks_key`)
values ('771c308b-937b-4c8d-90f3-8a3b2c6f4fb0', '9e9f613f-8936-43c3-96e2-70351a0852eb', 2),
       ('f9796b57-6045-46cb-8c13-eccfb4dc80fc', '9e9f613f-8936-43c3-96e2-70351a0852eb', 3),
       ('f342cda6-cf10-499a-8b31-6315cc4c35b7', '9e9f613f-8936-43c3-96e2-70351a0852eb', 4),
       ('30732fa9-913c-4a7b-9d29-4098ce99351a', '9e9f613f-8936-43c3-96e2-70351a0852eb', 6),
       ('e141cb04-a984-46f2-85d8-18512cf15393', '9e9f613f-8936-43c3-96e2-70351a0852eb', 7),
       ('40534196-381f-47d2-a948-86fdb451900f', '9e9f613f-8936-43c3-96e2-70351a0852eb', 8),
       ('602da1d7-ad34-4900-9762-8e412dba5f5b', '9e9f613f-8936-43c3-96e2-70351a0852eb', 9),
       ('37aaec80-bd75-4e9f-b264-a26814be4c38', '9e9f613f-8936-43c3-96e2-70351a0852eb', 10),
       ('bebf4987-5ebf-4686-87f1-a4cc6d57d93c', '9e9f613f-8936-43c3-96e2-70351a0852eb', 11),
       ('176edcdd-5ab2-403e-8f34-014da991adcf', '9e9f613f-8936-43c3-96e2-70351a0852eb', 12),
       ('8c973947-f08b-4824-8bf8-a73e7387541d', '9e9f613f-8936-43c3-96e2-70351a0852eb', 13),
       ('73a47770-9fb2-4deb-bf71-75ed414e4d05', '9e9f613f-8936-43c3-96e2-70351a0852eb', 14),
       ('093f6f67-02b0-4764-a07f-724e0a6269fb', '9e9f613f-8936-43c3-96e2-70351a0852eb', 15),
       ('a887c9cd-2a5f-48a8-8a04-8970c40e6b93', '9e9f613f-8936-43c3-96e2-70351a0852eb', 17),
       ('0fd7b44a-5ae1-4ea7-bd41-7495de7a42e6', '9e9f613f-8936-43c3-96e2-70351a0852eb', 18);

insert into `associated_cut_blocks_block_ids` (`associated_cut_blocks_id`, `block_ids`)
values ('771c308b-937b-4c8d-90f3-8a3b2c6f4fb0', 'logic_compare_1'),
       ('771c308b-937b-4c8d-90f3-8a3b2c6f4fb0', 'bush_properties_1'),
       ('771c308b-937b-4c8d-90f3-8a3b2c6f4fb0', 'bush_properties_2'),
       ('771c308b-937b-4c8d-90f3-8a3b2c6f4fb0', 'bush_properties_3'),
       ('f9796b57-6045-46cb-8c13-eccfb4dc80fc', 'logic_compare_1'),
       ('f342cda6-cf10-499a-8b31-6315cc4c35b7', 'logic_compare_1'),
       ('30732fa9-913c-4a7b-9d29-4098ce99351a', 'logic_compare_2'),
       ('30732fa9-913c-4a7b-9d29-4098ce99351a', 'set_berries_1'),
       ('30732fa9-913c-4a7b-9d29-4098ce99351a', 'set_berries_2'),
       ('e141cb04-a984-46f2-85d8-18512cf15393', 'logic_compare_2'),
       ('e141cb04-a984-46f2-85d8-18512cf15393', 'set_berries_1'),
       ('e141cb04-a984-46f2-85d8-18512cf15393', 'set_berries_2'),
       ('40534196-381f-47d2-a948-86fdb451900f', 'set_berries_1'),
       ('602da1d7-ad34-4900-9762-8e412dba5f5b', 'set_berries_2'),
       ('37aaec80-bd75-4e9f-b264-a26814be4c38', 'logic_operation_1'),
       ('37aaec80-bd75-4e9f-b264-a26814be4c38', 'set_berries_1'),
       ('37aaec80-bd75-4e9f-b264-a26814be4c38', 'set_berries_2'),
       ('bebf4987-5ebf-4686-87f1-a4cc6d57d93c', 'logic_operation_1'),
       ('bebf4987-5ebf-4686-87f1-a4cc6d57d93c', 'set_berries_1'),
       ('bebf4987-5ebf-4686-87f1-a4cc6d57d93c', 'set_berries_2'),
       ('176edcdd-5ab2-403e-8f34-014da991adcf', 'logic_operation_1'),
       ('176edcdd-5ab2-403e-8f34-014da991adcf', 'set_berries_1'),
       ('176edcdd-5ab2-403e-8f34-014da991adcf', 'set_berries_2'),
       ('8c973947-f08b-4824-8bf8-a73e7387541d', 'controls_if_1'),
       ('8c973947-f08b-4824-8bf8-a73e7387541d', 'set_berries_3'),
       ('73a47770-9fb2-4deb-bf71-75ed414e4d05', 'controls_if_1'),
       ('73a47770-9fb2-4deb-bf71-75ed414e4d05', 'bush_properties_2'),
       ('73a47770-9fb2-4deb-bf71-75ed414e4d05', 'bush_properties_3'),
       ('093f6f67-02b0-4764-a07f-724e0a6269fb', 'controls_if_1'),
       ('093f6f67-02b0-4764-a07f-724e0a6269fb', 'bush_properties_2'),
       ('093f6f67-02b0-4764-a07f-724e0a6269fb', 'bush_properties_3'),
       ('a887c9cd-2a5f-48a8-8a04-8970c40e6b93', 'controls_if_1'),
       ('a887c9cd-2a5f-48a8-8a04-8970c40e6b93', 'set_berries_1'),
       ('0fd7b44a-5ae1-4ea7-bd41-7495de7a42e6', 'controls_if_1'),
       ('0fd7b44a-5ae1-4ea7-bd41-7495de7a42e6', 'set_berries_1');

insert into `associated_component_ids` (`id`, `hint_id`, `associated_component_ids_key`)
values ('ef8217dd-cbd5-4ab8-88c4-ae0da98e61bd', '9e9f613f-8936-43c3-96e2-70351a0852eb', 1),
       ('d0f232c8-b34e-448e-b0af-21f49ad31ee2', '9e9f613f-8936-43c3-96e2-70351a0852eb', 2),
       ('cfef2e03-1ab1-44e8-ae0c-b3100492baa4', '9e9f613f-8936-43c3-96e2-70351a0852eb', 3),
       ('aae5dc13-5e2d-446f-82e4-a0afa2c68d44', '9e9f613f-8936-43c3-96e2-70351a0852eb', 4),
       ('09588157-f9a8-4985-82fa-37e1fc7c4d9e', '9e9f613f-8936-43c3-96e2-70351a0852eb', 5),
       ('aed69012-13ef-4b56-9dad-678f9a665a86', '9e9f613f-8936-43c3-96e2-70351a0852eb', 6),
       ('615e9539-1a21-4883-8d1c-5b0dc493b5c4', '9e9f613f-8936-43c3-96e2-70351a0852eb', 7),
       ('a35e6f8d-a587-42c1-ad86-7aac0981a5ed', '9e9f613f-8936-43c3-96e2-70351a0852eb', 8),
       ('58fe95b1-a3d9-499f-9dd5-dbfb4894d36e', '9e9f613f-8936-43c3-96e2-70351a0852eb', 9),
       ('d139c74a-a2cb-4fa1-9afc-bdf8971cc9ac', '9e9f613f-8936-43c3-96e2-70351a0852eb', 10),
       ('117dfa44-2640-4b3e-b8e0-63a126f2426c', '9e9f613f-8936-43c3-96e2-70351a0852eb', 11),
       ('20f7bccc-0909-4f1a-a8a5-d34cd058b244', '9e9f613f-8936-43c3-96e2-70351a0852eb', 12),
       ('d284ce1b-31dd-4fe8-ac9a-c1ab719f33ba', '9e9f613f-8936-43c3-96e2-70351a0852eb', 13),
       ('bab54f73-e3d6-4796-bc7f-a786b7d32d8d', '9e9f613f-8936-43c3-96e2-70351a0852eb', 14),
       ('660a941d-c2cb-474a-9a4e-83477d429bf4', '9e9f613f-8936-43c3-96e2-70351a0852eb', 15),
       ('cefa2d1c-45b0-4958-9a3c-de6433fb6b38', '9e9f613f-8936-43c3-96e2-70351a0852eb', 16),
       ('09655d14-e287-45fa-a477-9b1ebbaf3f34', '9e9f613f-8936-43c3-96e2-70351a0852eb', 17),
       ('1a0d2171-4cc1-409d-8695-f7ffd2a69bea', '9e9f613f-8936-43c3-96e2-70351a0852eb', 18),
       ('b9fe5d65-b66a-488a-b255-71708367c994', '9e9f613f-8936-43c3-96e2-70351a0852eb', 19);

insert into `associated_component_ids_component_ids` (`associated_component_ids_id`, `component_ids`)
values ('ef8217dd-cbd5-4ab8-88c4-ae0da98e61bd', 'critter_container_all_collectors'),
       ('ef8217dd-cbd5-4ab8-88c4-ae0da98e61bd', 'gameboard'),
       ('d0f232c8-b34e-448e-b0af-21f49ad31ee2', 'blockly_cut_div'),
       ('cfef2e03-1ab1-44e8-ae0c-b3100492baa4', 'gameboard'),
       ('aae5dc13-5e2d-446f-82e4-a0afa2c68d44', 'blockly_cut_div'),
       ('aae5dc13-5e2d-446f-82e4-a0afa2c68d44', 'test_popup_container'),
       ('09588157-f9a8-4985-82fa-37e1fc7c4d9e', 'save_button'),
       ('aed69012-13ef-4b56-9dad-678f9a665a86', 'blockly_cut_div'),
       ('aed69012-13ef-4b56-9dad-678f9a665a86', 'critter_container_all_collectors'),
       ('615e9539-1a21-4883-8d1c-5b0dc493b5c4', 'blockly_cut_div'),
       ('615e9539-1a21-4883-8d1c-5b0dc493b5c4', 'gameboard'),
       ('a35e6f8d-a587-42c1-ad86-7aac0981a5ed', 'test_popup_container'),
       ('58fe95b1-a3d9-499f-9dd5-dbfb4894d36e', 'blockly_cut_div'),
       ('58fe95b1-a3d9-499f-9dd5-dbfb4894d36e', 'test_popup_container'),
       ('d139c74a-a2cb-4fa1-9afc-bdf8971cc9ac', 'blockly_cut_div'),
       ('d139c74a-a2cb-4fa1-9afc-bdf8971cc9ac', '961608dc-6084-41f1-a2e2-993fea1c3742'),
       ('d139c74a-a2cb-4fa1-9afc-bdf8971cc9ac', 'acce7b5f-8c8e-4572-8d9c-953dbb815759'),
       ('d139c74a-a2cb-4fa1-9afc-bdf8971cc9ac', '8f08a53f-e92c-47ec-9b59-cb8e34140871'),
       ('117dfa44-2640-4b3e-b8e0-63a126f2426c', 'blockly_cut_div'),
       ('117dfa44-2640-4b3e-b8e0-63a126f2426c', '961608dc-6084-41f1-a2e2-993fea1c3742'),
       ('117dfa44-2640-4b3e-b8e0-63a126f2426c', 'acce7b5f-8c8e-4572-8d9c-953dbb815759'),
       ('117dfa44-2640-4b3e-b8e0-63a126f2426c', '8f08a53f-e92c-47ec-9b59-cb8e34140871'),
       ('20f7bccc-0909-4f1a-a8a5-d34cd058b244', 'test_popup_container'),
       ('20f7bccc-0909-4f1a-a8a5-d34cd058b244', '961608dc-6084-41f1-a2e2-993fea1c3742'),
       ('20f7bccc-0909-4f1a-a8a5-d34cd058b244', 'acce7b5f-8c8e-4572-8d9c-953dbb815759'),
       ('20f7bccc-0909-4f1a-a8a5-d34cd058b244', '8f08a53f-e92c-47ec-9b59-cb8e34140871'),
       ('d284ce1b-31dd-4fe8-ac9a-c1ab719f33ba', 'blockly_cut_div'),
       ('d284ce1b-31dd-4fe8-ac9a-c1ab719f33ba', '971b7be5-348f-4fe2-8abd-41bb5b4ba74c'),
       ('d284ce1b-31dd-4fe8-ac9a-c1ab719f33ba', '3b4236b7-8550-488d-bad0-b42a6333e791'),
       ('d284ce1b-31dd-4fe8-ac9a-c1ab719f33ba', '46628439-8b87-4eda-9c93-496b2bdc1b44'),
       ('d284ce1b-31dd-4fe8-ac9a-c1ab719f33ba', '3ccd5f32-4865-408e-a717-e5ef0018892b'),
       ('d284ce1b-31dd-4fe8-ac9a-c1ab719f33ba', '9351e977-3f32-4da0-8294-8390822e8519'),
       ('d284ce1b-31dd-4fe8-ac9a-c1ab719f33ba', '867900cf-1663-47f0-933f-66a52bf4951b'),
       ('d284ce1b-31dd-4fe8-ac9a-c1ab719f33ba', '5d52d205-bbec-4c3d-adfb-9eedeeccc3b0'),
       ('bab54f73-e3d6-4796-bc7f-a786b7d32d8d', 'test_popup_container'),
       ('bab54f73-e3d6-4796-bc7f-a786b7d32d8d', '971b7be5-348f-4fe2-8abd-41bb5b4ba74c'),
       ('bab54f73-e3d6-4796-bc7f-a786b7d32d8d', '3b4236b7-8550-488d-bad0-b42a6333e791'),
       ('bab54f73-e3d6-4796-bc7f-a786b7d32d8d', '46628439-8b87-4eda-9c93-496b2bdc1b44'),
       ('bab54f73-e3d6-4796-bc7f-a786b7d32d8d', '3ccd5f32-4865-408e-a717-e5ef0018892b'),
       ('bab54f73-e3d6-4796-bc7f-a786b7d32d8d', '9351e977-3f32-4da0-8294-8390822e8519'),
       ('bab54f73-e3d6-4796-bc7f-a786b7d32d8d', '867900cf-1663-47f0-933f-66a52bf4951b'),
       ('bab54f73-e3d6-4796-bc7f-a786b7d32d8d', '5d52d205-bbec-4c3d-adfb-9eedeeccc3b0'),
       ('660a941d-c2cb-474a-9a4e-83477d429bf4', 'test_popup_container'),
       ('660a941d-c2cb-474a-9a4e-83477d429bf4', '971b7be5-348f-4fe2-8abd-41bb5b4ba74c'),
       ('660a941d-c2cb-474a-9a4e-83477d429bf4', '3b4236b7-8550-488d-bad0-b42a6333e791'),
       ('660a941d-c2cb-474a-9a4e-83477d429bf4', '46628439-8b87-4eda-9c93-496b2bdc1b44'),
       ('660a941d-c2cb-474a-9a4e-83477d429bf4', '3ccd5f32-4865-408e-a717-e5ef0018892b'),
       ('660a941d-c2cb-474a-9a4e-83477d429bf4', '9351e977-3f32-4da0-8294-8390822e8519'),
       ('660a941d-c2cb-474a-9a4e-83477d429bf4', '867900cf-1663-47f0-933f-66a52bf4951b'),
       ('660a941d-c2cb-474a-9a4e-83477d429bf4', '5d52d205-bbec-4c3d-adfb-9eedeeccc3b0'),
       ('cefa2d1c-45b0-4958-9a3c-de6433fb6b38', 'test_popup_container'),
       ('cefa2d1c-45b0-4958-9a3c-de6433fb6b38', '971b7be5-348f-4fe2-8abd-41bb5b4ba74c'),
       ('cefa2d1c-45b0-4958-9a3c-de6433fb6b38', '3b4236b7-8550-488d-bad0-b42a6333e791'),
       ('cefa2d1c-45b0-4958-9a3c-de6433fb6b38', '46628439-8b87-4eda-9c93-496b2bdc1b44'),
       ('cefa2d1c-45b0-4958-9a3c-de6433fb6b38', '3ccd5f32-4865-408e-a717-e5ef0018892b'),
       ('cefa2d1c-45b0-4958-9a3c-de6433fb6b38', '9351e977-3f32-4da0-8294-8390822e8519'),
       ('cefa2d1c-45b0-4958-9a3c-de6433fb6b38', '867900cf-1663-47f0-933f-66a52bf4951b'),
       ('cefa2d1c-45b0-4958-9a3c-de6433fb6b38', '5d52d205-bbec-4c3d-adfb-9eedeeccc3b0'),
       ('09655d14-e287-45fa-a477-9b1ebbaf3f34', 'blockly_cut_div'),
       ('09655d14-e287-45fa-a477-9b1ebbaf3f34', '971b7be5-348f-4fe2-8abd-41bb5b4ba74c'),
       ('09655d14-e287-45fa-a477-9b1ebbaf3f34', '3b4236b7-8550-488d-bad0-b42a6333e791'),
       ('09655d14-e287-45fa-a477-9b1ebbaf3f34', '46628439-8b87-4eda-9c93-496b2bdc1b44'),
       ('09655d14-e287-45fa-a477-9b1ebbaf3f34', '3ccd5f32-4865-408e-a717-e5ef0018892b'),
       ('09655d14-e287-45fa-a477-9b1ebbaf3f34', '9351e977-3f32-4da0-8294-8390822e8519'),
       ('09655d14-e287-45fa-a477-9b1ebbaf3f34', '867900cf-1663-47f0-933f-66a52bf4951b'),
       ('09655d14-e287-45fa-a477-9b1ebbaf3f34', '5d52d205-bbec-4c3d-adfb-9eedeeccc3b0'),
       ('1a0d2171-4cc1-409d-8695-f7ffd2a69bea', 'test_popup_container'),
       ('1a0d2171-4cc1-409d-8695-f7ffd2a69bea', '971b7be5-348f-4fe2-8abd-41bb5b4ba74c'),
       ('1a0d2171-4cc1-409d-8695-f7ffd2a69bea', '3b4236b7-8550-488d-bad0-b42a6333e791'),
       ('1a0d2171-4cc1-409d-8695-f7ffd2a69bea', '46628439-8b87-4eda-9c93-496b2bdc1b44'),
       ('1a0d2171-4cc1-409d-8695-f7ffd2a69bea', '3ccd5f32-4865-408e-a717-e5ef0018892b'),
       ('1a0d2171-4cc1-409d-8695-f7ffd2a69bea', '9351e977-3f32-4da0-8294-8390822e8519'),
       ('1a0d2171-4cc1-409d-8695-f7ffd2a69bea', '867900cf-1663-47f0-933f-66a52bf4951b'),
       ('1a0d2171-4cc1-409d-8695-f7ffd2a69bea', '5d52d205-bbec-4c3d-adfb-9eedeeccc3b0'),
       ('b9fe5d65-b66a-488a-b255-71708367c994', 'save_button');

insert into `portal_xmls` (`hint_id`, `portal_xml`, `portal_xml_key`)
values ('9e9f613f-8936-43c3-96e2-70351a0852eb',
        '<xml xmlns="https://developers.google.com/blockly/xml"><block type="assert_loop_free" id="Opw-gW5,wHsjo%rVVkm]" x="-295" y="-133"><value name="value"><block type="logic_compare" id="Updh4`dmqWOl8d}M;g8y"><field name="OP">LTE</field><value name="A"><block type="properties_user_healing" id="b@|}ai;JP@:~rVR@L`5V"><field name="properties">ROUNDS</field></block></value><value name="B"></value></block></value></block></xml>',
        4),
       ('9e9f613f-8936-43c3-96e2-70351a0852eb',
        '<xml xmlns="https://developers.google.com/blockly/xml"><block type="assert_loop_free" id="Opw-gW5,wHsjo%rVVkm]" x="-295" y="-133"><value name="value"><block type="logic_compare" id="Updh4`dmqWOl8d}M;g8y"><field name="OP">LTE</field><value name="A"><block type="properties_user_healing" id="b@|}ai;JP@:~rVR@L`5V"><field name="properties">ROUNDS</field></block></value><value name="B"><block type="math_number" id="S2UM`G/KR!B#Z:h*HSJh"><field name="NUM">3</field></block></value></block></value></block></xml>',
        5),
       ('9e9f613f-8936-43c3-96e2-70351a0852eb',
        '<xml xmlns="https://developers.google.com/blockly/xml"><block type="controls_if" id="k9nS`RjSw!+84wUe:1u#" x="106" y="54"><value name="IF0"><block type="logic_compare" id="Updh4`dmqWOl8d}M;g8y"><field name="OP">EQ</field><value name="A"><block type="properties_user_healing" id="!pUGQ){..iXB8CMTS;$v"><field name="properties">ROUNDS</field></block></value><value name="B"><block type="math_number" id="Eem[Vxht-;;+ILj@@lxp"><field name="NUM">1</field></block></value></block></value><statement name="DO0"><block type="assert_loop" id="aMyXhz@z^U+NL#U@cF?}"><value name="target"><block type="properties_user_healing" id="?q*tSF2K^XLU#$Qw~nGg"><field name="properties">WHITEBERRIES</field></block></value><value name="value"></value></block></statement></block></xml>',
        8),
       ('9e9f613f-8936-43c3-96e2-70351a0852eb',
        '<xml xmlns="https://developers.google.com/blockly/xml"><block type="controls_if" id="k9nS`RjSw!+84wUe:1u#" x="-5" y="-43"><value name="IF0"><block type="logic_compare" id="Updh4`dmqWOl8d}M;g8y"><field name="OP">EQ</field><value name="A"><block type="properties_user_healing" id="!pUGQ){..iXB8CMTS;$v"><field name="properties">ROUNDS</field></block></value><value name="B"><block type="math_number" id="Eem[Vxht-;;+ILj@@lxp"><field name="NUM">1</field></block></value></block></value><statement name="DO0"><block type="assert_loop" id="aMyXhz@z^U+NL#U@cF?}"><value name="target"><block type="properties_user_healing" id="?q*tSF2K^XLU#$Qw~nGg"><field name="properties">WHITEBERRIES</field></block></value><value name="value"><block type="math_number" id="r7jE2$/BR)31P09|Fx}f"><field name="NUM">2</field></block></value><next><block type="assert_loop" id="m0+9-^qxjVggw`Ibgr4]"><value name="target"><block type="properties_user_healing" id="E=ynHqra%Q|w!eVZ|ZWJ"><field name="properties">REDBERRIES</field></block></value><value name="value"></value></block></next></block></statement></block></xml>',
        9),
       ('9e9f613f-8936-43c3-96e2-70351a0852eb',
        '<xml xmlns="https://developers.google.com/blockly/xml"><block type="controls_if" id="k9nS`RjSw!+84wUe:1u#" x="-5" y="-43"><value name="IF0"><block type="logic_compare" id="Updh4`dmqWOl8d}M;g8y"><field name="OP">EQ</field><value name="A"><block type="properties_user_healing" id="!pUGQ){..iXB8CMTS;$v"><field name="properties">ROUNDS</field></block></value><value name="B"><block type="math_number" id="Eem[Vxht-;;+ILj@@lxp"><field name="NUM">1</field></block></value></block></value><statement name="DO0"><block type="assert_loop" id="aMyXhz@z^U+NL#U@cF?}"><value name="target"><block type="properties_user_healing" id="?q*tSF2K^XLU#$Qw~nGg"><field name="properties">WHITEBERRIES</field></block></value><value name="value"><block type="math_number" id="r7jE2$/BR)31P09|Fx}f"><field name="NUM">2</field></block></value><next><block type="assert_loop" id="m0+9-^qxjVggw`Ibgr4]"><value name="target"><block type="properties_user_healing" id="E=ynHqra%Q|w!eVZ|ZWJ"><field name="properties">REDBERRIES</field></block></value><value name="value"><block type="math_number" id="Y|L2rZ$TDe)}NMFq^Cp4"><field name="NUM">2</field></block></value></block></next></block></statement></block></xml>',
        10),
       ('9e9f613f-8936-43c3-96e2-70351a0852eb',
        '<xml xmlns="https://developers.google.com/blockly/xml"><block type="controls_if" id="k9nS`RjSw!+84wUe:1u#" x="-104" y="-130"><value name="IF0"><block type="logic_compare" id="Updh4`dmqWOl8d}M;g8y"><field name="OP">EQ</field><value name="A"><block type="properties_user_healing" id="!pUGQ){..iXB8CMTS;$v"><field name="properties">ROUNDS</field></block></value><value name="B"><block type="math_number" id="Eem[Vxht-;;+ILj@@lxp"><field name="NUM">1</field></block></value></block></value><statement name="DO0"><block type="assert_loop" id="aMyXhz@z^U+NL#U@cF?}"><value name="target"><block type="properties_user_healing" id="?q*tSF2K^XLU#$Qw~nGg"><field name="properties">WHITEBERRIES</field></block></value><value name="value"><block type="math_arithmetic" id="M]Qfng[KcxW;Qdz%;CdX"><field name="OP">MULTIPLY</field><value name="A"><block type="properties_user_healing" id=".qU!TH)e~c]2Y}1ni{nB"><field name="properties">ROUNDS</field></block></value><value name="B"><block type="math_number" id="jFDwR/!|O~SvpF2W(TV}"><field name="NUM">2</field></block></value></block></value><next><block type="assert_loop" id="m0+9-^qxjVggw`Ibgr4]"><value name="target"><block type="properties_user_healing" id="E=ynHqra%Q|w!eVZ|ZWJ"><field name="properties">REDBERRIES</field></block></value><value name="value"><block type="math_arithmetic" id="PY#6qfWtMC3lU:zSk0Pf"><field name="OP">MULTIPLY</field><value name="A"><block type="properties_user_healing" id=";d_O]E68R!O7~YO[A%za"><field name="properties">ROUNDS</field></block></value><value name="B"><block type="math_number" id="A)-//iOU}IOVBLZ5XX_)"><field name="NUM">2</field></block></value></block></value></block></next></block></statement></block></xml>',
        11),
       ('9e9f613f-8936-43c3-96e2-70351a0852eb',
        '<xml xmlns="https://developers.google.com/blockly/xml"><block type="controls_if" id="k9nS`RjSw!+84wUe:1u#" x="-104" y="-130"><value name="IF0"><block type="logic_operation" id=".N#$huRFJ^mEn.eXEy/N"><field name="OP">OR</field><value name="A"><block type="logic_compare" id="Updh4`dmqWOl8d}M;g8y"><field name="OP">EQ</field><value name="A"><block type="properties_user_healing" id="!pUGQ){..iXB8CMTS;$v"><field name="properties">ROUNDS</field></block></value><value name="B"><block type="math_number" id="Eem[Vxht-;;+ILj@@lxp"><field name="NUM">1</field></block></value></block></value><value name="B"><block type="logic_compare" id="nQ4|l`%m7E.e;r5TqJV?"><field name="OP">EQ</field><value name="A"><block type="properties_user_healing" id="v~Em{4#Y~?aQQ:-q~7q9"><field name="properties">BODYCOLOR</field></block></value><value name="B"></value></block></value></block></value><statement name="DO0"><block type="assert_loop" id="aMyXhz@z^U+NL#U@cF?}"><value name="target"><block type="properties_user_healing" id="?q*tSF2K^XLU#$Qw~nGg"><field name="properties">WHITEBERRIES</field></block></value><value name="value"><block type="math_arithmetic" id="M]Qfng[KcxW;Qdz%;CdX"><field name="OP">MULTIPLY</field><value name="A"><block type="properties_user_healing" id=".qU!TH)e~c]2Y}1ni{nB"><field name="properties">ROUNDS</field></block></value><value name="B"><block type="math_number" id="jFDwR/!|O~SvpF2W(TV}"><field name="NUM">2</field></block></value></block></value><next><block type="assert_loop" id="m0+9-^qxjVggw`Ibgr4]"><value name="target"><block type="properties_user_healing" id="E=ynHqra%Q|w!eVZ|ZWJ"><field name="properties">REDBERRIES</field></block></value><value name="value"><block type="math_arithmetic" id="PY#6qfWtMC3lU:zSk0Pf"><field name="OP">MULTIPLY</field><value name="A"><block type="properties_user_healing" id=";d_O]E68R!O7~YO[A%za"><field name="properties">ROUNDS</field></block></value><value name="B"><block type="math_number" id="A)-//iOU}IOVBLZ5XX_)"><field name="NUM">2</field></block></value></block></value></block></next></block></statement></block></xml>',
        12),
       ('9e9f613f-8936-43c3-96e2-70351a0852eb',
        '<xml xmlns="https://developers.google.com/blockly/xml"><block type="controls_if" id="k9nS`RjSw!+84wUe:1u#" x="-109" y="-247"><mutation elseif="2"></mutation><value name="IF0"><block type="logic_operation" id=".N#$huRFJ^mEn.eXEy/N"><field name="OP">OR</field><value name="A"><block type="logic_compare" id="Updh4`dmqWOl8d}M;g8y"><field name="OP">EQ</field><value name="A"><block type="properties_user_healing" id="!pUGQ){..iXB8CMTS;$v"><field name="properties">ROUNDS</field></block></value><value name="B"><block type="math_number" id="Eem[Vxht-;;+ILj@@lxp"><field name="NUM">1</field></block></value></block></value><value name="B"><block type="logic_compare" id="nQ4|l`%m7E.e;r5TqJV?"><field name="OP">EQ</field><value name="A"><block type="properties_user_healing" id="v~Em{4#Y~?aQQ:-q~7q9"><field name="properties">BODYCOLOR</field></block></value><value name="B"><block type="shirt_picker" id="q`6u|/L)7-ZYxEQ-Sy8F"><field name="color">cyan</field></block></value></block></value></block></value><statement name="DO0"><block type="assert_loop" id="aMyXhz@z^U+NL#U@cF?}"><value name="target"><block type="properties_user_healing" id="?q*tSF2K^XLU#$Qw~nGg"><field name="properties">WHITEBERRIES</field></block></value><value name="value"><block type="math_arithmetic" id="M]Qfng[KcxW;Qdz%;CdX"><field name="OP">MULTIPLY</field><value name="A"><block type="properties_user_healing" id=".qU!TH)e~c]2Y}1ni{nB"><field name="properties">ROUNDS</field></block></value><value name="B"><block type="math_number" id="jFDwR/!|O~SvpF2W(TV}"><field name="NUM">2</field></block></value></block></value><next><block type="assert_loop" id="m0+9-^qxjVggw`Ibgr4]"><value name="target"><block type="properties_user_healing" id="E=ynHqra%Q|w!eVZ|ZWJ"><field name="properties">REDBERRIES</field></block></value><value name="value"><block type="math_arithmetic" id="PY#6qfWtMC3lU:zSk0Pf"><field name="OP">MULTIPLY</field><value name="A"><block type="properties_user_healing" id=";d_O]E68R!O7~YO[A%za"><field name="properties">ROUNDS</field></block></value><value name="B"><block type="math_number" id="A)-//iOU}IOVBLZ5XX_)"><field name="NUM">2</field></block></value></block></value></block></next></block></statement><value name="IF1"><block type="logic_compare" id="TMi[OOjQ4FC@x1QB`WjH"><field name="OP">EQ</field><value name="A"><block type="properties_user_healing" id="sxe*[?lPAn+dD{doup,!"><field name="properties">ROUNDS</field></block></value><value name="B"><block type="math_number" id="J4-$nyB3,}x#;s?][h~K"><field name="NUM">2</field></block></value></block></value><value name="IF2"><block type="logic_compare" id="Ro2-h#7a]4jy?Tqkl3.1"><field name="OP">EQ</field><value name="A"><block type="properties_user_healing" id="eMhXFy/m#DE_E;z?HIL]"><field name="properties">ROUNDS</field></block></value><value name="B"><block type="math_number" id="Rw=Omy2HQD;}W_GT!4-_"><field name="NUM">3</field></block></value></block></value></block></xml>',
        13),
       ('9e9f613f-8936-43c3-96e2-70351a0852eb',
        '<xml xmlns="https://developers.google.com/blockly/xml"><block type="controls_if" id="k9nS`RjSw!+84wUe:1u#" x="-109" y="-247"><mutation elseif="2"></mutation><value name="IF0"><block type="logic_operation" id=".N#$huRFJ^mEn.eXEy/N"><field name="OP">OR</field><value name="A"><block type="logic_compare" id="Updh4`dmqWOl8d}M;g8y"><field name="OP">EQ</field><value name="A"><block type="properties_user_healing" id="!pUGQ){..iXB8CMTS;$v"><field name="properties">ROUNDS</field></block></value><value name="B"><block type="math_number" id="Eem[Vxht-;;+ILj@@lxp"><field name="NUM">1</field></block></value></block></value><value name="B"><block type="logic_compare" id="nQ4|l`%m7E.e;r5TqJV?"><field name="OP">EQ</field><value name="A"><block type="properties_user_healing" id="v~Em{4#Y~?aQQ:-q~7q9"><field name="properties">BODYCOLOR</field></block></value><value name="B"><block type="shirt_picker" id="q`6u|/L)7-ZYxEQ-Sy8F"><field name="color">cyan</field></block></value></block></value></block></value><statement name="DO0"><block type="assert_loop" id="aMyXhz@z^U+NL#U@cF?}"><value name="target"><block type="properties_user_healing" id="?q*tSF2K^XLU#$Qw~nGg"><field name="properties">WHITEBERRIES</field></block></value><value name="value"><block type="math_arithmetic" id="M]Qfng[KcxW;Qdz%;CdX"><field name="OP">MULTIPLY</field><value name="A"><block type="properties_user_healing" id=".qU!TH)e~c]2Y}1ni{nB"><field name="properties">ROUNDS</field></block></value><value name="B"><block type="math_number" id="jFDwR/!|O~SvpF2W(TV}"><field name="NUM">2</field></block></value></block></value><next><block type="assert_loop" id="m0+9-^qxjVggw`Ibgr4]"><value name="target"><block type="properties_user_healing" id="E=ynHqra%Q|w!eVZ|ZWJ"><field name="properties">REDBERRIES</field></block></value><value name="value"><block type="math_arithmetic" id="PY#6qfWtMC3lU:zSk0Pf"><field name="OP">MULTIPLY</field><value name="A"><block type="properties_user_healing" id=";d_O]E68R!O7~YO[A%za"><field name="properties">ROUNDS</field></block></value><value name="B"><block type="math_number" id="A)-//iOU}IOVBLZ5XX_)"><field name="NUM">2</field></block></value></block></value></block></next></block></statement><value name="IF1"><block type="logic_compare" id="TMi[OOjQ4FC@x1QB`WjH"><field name="OP">EQ</field><value name="A"><block type="properties_user_healing" id="sxe*[?lPAn+dD{doup,!"><field name="properties">ROUNDS</field></block></value><value name="B"><block type="math_number" id="J4-$nyB3,}x#;s?][h~K"><field name="NUM">2</field></block></value></block></value><statement name="DO1"><block type="assert_loop" id="EmLBtUokQ6|JVkk#x@s#"><value name="target"><block type="properties_user_healing" id="gPMZ9-(#4oh*ETg-lp)s"><field name="properties">REDBERRIES</field></block></value><value name="value"></value></block></statement><value name="IF2"><block type="logic_compare" id="Ro2-h#7a]4jy?Tqkl3.1"><field name="OP">EQ</field><value name="A"><block type="properties_user_healing" id="eMhXFy/m#DE_E;z?HIL]"><field name="properties">ROUNDS</field></block></value><value name="B"><block type="math_number" id="Rw=Omy2HQD;}W_GT!4-_"><field name="NUM">3</field></block></value></block></value></block></xml>',
        14),
       ('9e9f613f-8936-43c3-96e2-70351a0852eb',
        '<xml xmlns="https://developers.google.com/blockly/xml"><block type="controls_if" id="k9nS`RjSw!+84wUe:1u#" x="-109" y="-247"><mutation elseif="2"></mutation><value name="IF0"><block type="logic_operation" id=".N#$huRFJ^mEn.eXEy/N"><field name="OP">OR</field><value name="A"><block type="logic_compare" id="Updh4`dmqWOl8d}M;g8y"><field name="OP">EQ</field><value name="A"><block type="properties_user_healing" id="!pUGQ){..iXB8CMTS;$v"><field name="properties">ROUNDS</field></block></value><value name="B"><block type="math_number" id="Eem[Vxht-;;+ILj@@lxp"><field name="NUM">1</field></block></value></block></value><value name="B"><block type="logic_compare" id="nQ4|l`%m7E.e;r5TqJV?"><field name="OP">EQ</field><value name="A"><block type="properties_user_healing" id="v~Em{4#Y~?aQQ:-q~7q9"><field name="properties">BODYCOLOR</field></block></value><value name="B"><block type="shirt_picker" id="q`6u|/L)7-ZYxEQ-Sy8F"><field name="color">cyan</field></block></value></block></value></block></value><statement name="DO0"><block type="assert_loop" id="aMyXhz@z^U+NL#U@cF?}"><value name="target"><block type="properties_user_healing" id="?q*tSF2K^XLU#$Qw~nGg"><field name="properties">WHITEBERRIES</field></block></value><value name="value"><block type="math_arithmetic" id="M]Qfng[KcxW;Qdz%;CdX"><field name="OP">MULTIPLY</field><value name="A"><block type="properties_user_healing" id=".qU!TH)e~c]2Y}1ni{nB"><field name="properties">ROUNDS</field></block></value><value name="B"><block type="math_number" id="jFDwR/!|O~SvpF2W(TV}"><field name="NUM">2</field></block></value></block></value><next><block type="assert_loop" id="m0+9-^qxjVggw`Ibgr4]"><value name="target"><block type="properties_user_healing" id="E=ynHqra%Q|w!eVZ|ZWJ"><field name="properties">REDBERRIES</field></block></value><value name="value"><block type="math_arithmetic" id="PY#6qfWtMC3lU:zSk0Pf"><field name="OP">MULTIPLY</field><value name="A"><block type="properties_user_healing" id=";d_O]E68R!O7~YO[A%za"><field name="properties">ROUNDS</field></block></value><value name="B"><block type="math_number" id="A)-//iOU}IOVBLZ5XX_)"><field name="NUM">2</field></block></value></block></value></block></next></block></statement><value name="IF1"><block type="logic_compare" id="TMi[OOjQ4FC@x1QB`WjH"><field name="OP">EQ</field><value name="A"><block type="properties_user_healing" id="sxe*[?lPAn+dD{doup,!"><field name="properties">ROUNDS</field></block></value><value name="B"><block type="math_number" id="J4-$nyB3,}x#;s?][h~K"><field name="NUM">2</field></block></value></block></value><statement name="DO1"><block type="assert_loop" id="EmLBtUokQ6|JVkk#x@s#"><value name="target"><block type="properties_user_healing" id="gPMZ9-(#4oh*ETg-lp)s"><field name="properties">REDBERRIES</field></block></value><value name="value"><block type="math_number" id="/KQbbx/M5)qulvyU$k|t"><field name="NUM">3</field></block></value></block></statement><value name="IF2"><block type="logic_compare" id="Ro2-h#7a]4jy?Tqkl3.1"><field name="OP">EQ</field><value name="A"><block type="properties_user_healing" id="eMhXFy/m#DE_E;z?HIL]"><field name="properties">ROUNDS</field></block></value><value name="B"><block type="math_number" id="Rw=Omy2HQD;}W_GT!4-_"><field name="NUM">3</field></block></value></block></value><statement name="DO2"><block type="assert_loop" id="JVLpKhbp:(_t{7f,J_:0"><value name="target"><block type="properties_user_healing" id="v,{efy({7J#eLZNVEEh2"><field name="properties">REDBERRIES</field></block></value><value name="value"></value></block></statement></block></xml>',
        15),
       ('9e9f613f-8936-43c3-96e2-70351a0852eb',
        '<xml xmlns="https://developers.google.com/blockly/xml"><block type="controls_if" id="k9nS`RjSw!+84wUe:1u#" x="-109" y="-247"><mutation elseif="2"></mutation><value name="IF0"><block type="logic_operation" id=".N#$huRFJ^mEn.eXEy/N"><field name="OP">OR</field><value name="A"><block type="logic_compare" id="Updh4`dmqWOl8d}M;g8y"><field name="OP">EQ</field><value name="A"><block type="properties_user_healing" id="!pUGQ){..iXB8CMTS;$v"><field name="properties">ROUNDS</field></block></value><value name="B"><block type="math_number" id="Eem[Vxht-;;+ILj@@lxp"><field name="NUM">1</field></block></value></block></value><value name="B"><block type="logic_compare" id="nQ4|l`%m7E.e;r5TqJV?"><field name="OP">EQ</field><value name="A"><block type="properties_user_healing" id="v~Em{4#Y~?aQQ:-q~7q9"><field name="properties">BODYCOLOR</field></block></value><value name="B"><block type="shirt_picker" id="q`6u|/L)7-ZYxEQ-Sy8F"><field name="color">cyan</field></block></value></block></value></block></value><statement name="DO0"><block type="assert_loop" id="aMyXhz@z^U+NL#U@cF?}"><value name="target"><block type="properties_user_healing" id="?q*tSF2K^XLU#$Qw~nGg"><field name="properties">WHITEBERRIES</field></block></value><value name="value"><block type="math_arithmetic" id="M]Qfng[KcxW;Qdz%;CdX"><field name="OP">MULTIPLY</field><value name="A"><block type="properties_user_healing" id=".qU!TH)e~c]2Y}1ni{nB"><field name="properties">ROUNDS</field></block></value><value name="B"><block type="math_number" id="jFDwR/!|O~SvpF2W(TV}"><field name="NUM">2</field></block></value></block></value><next><block type="assert_loop" id="m0+9-^qxjVggw`Ibgr4]"><value name="target"><block type="properties_user_healing" id="E=ynHqra%Q|w!eVZ|ZWJ"><field name="properties">REDBERRIES</field></block></value><value name="value"><block type="math_arithmetic" id="PY#6qfWtMC3lU:zSk0Pf"><field name="OP">MULTIPLY</field><value name="A"><block type="properties_user_healing" id=";d_O]E68R!O7~YO[A%za"><field name="properties">ROUNDS</field></block></value><value name="B"><block type="math_number" id="A)-//iOU}IOVBLZ5XX_)"><field name="NUM">2</field></block></value></block></value></block></next></block></statement><value name="IF1"><block type="logic_compare" id="TMi[OOjQ4FC@x1QB`WjH"><field name="OP">EQ</field><value name="A"><block type="properties_user_healing" id="sxe*[?lPAn+dD{doup,!"><field name="properties">ROUNDS</field></block></value><value name="B"><block type="math_number" id="J4-$nyB3,}x#;s?][h~K"><field name="NUM">2</field></block></value></block></value><statement name="DO1"><block type="assert_loop" id="EmLBtUokQ6|JVkk#x@s#"><value name="target"><block type="properties_user_healing" id="gPMZ9-(#4oh*ETg-lp)s"><field name="properties">REDBERRIES</field></block></value><value name="value"><block type="math_number" id="/KQbbx/M5)qulvyU$k|t"><field name="NUM">3</field></block></value></block></statement><value name="IF2"><block type="logic_compare" id="Ro2-h#7a]4jy?Tqkl3.1"><field name="OP">EQ</field><value name="A"><block type="properties_user_healing" id="eMhXFy/m#DE_E;z?HIL]"><field name="properties">ROUNDS</field></block></value><value name="B"><block type="math_number" id="Rw=Omy2HQD;}W_GT!4-_"><field name="NUM">3</field></block></value></block></value><statement name="DO2"><block type="assert_loop" id="JVLpKhbp:(_t{7f,J_:0"><value name="target"><block type="properties_user_healing" id="v,{efy({7J#eLZNVEEh2"><field name="properties">REDBERRIES</field></block></value><value name="value"><block type="math_number" id="|;@G@?2:AdSqS#z45t`V"><field name="NUM">4</field></block></value></block></statement></block></xml>',
        16),
       ('9e9f613f-8936-43c3-96e2-70351a0852eb',
        '<xml xmlns="https://developers.google.com/blockly/xml"><block type="controls_if" id="k9nS`RjSw!+84wUe:1u#" x="-168" y="-273"><mutation else="1"></mutation><value name="IF0"><block type="logic_operation" id=".N#$huRFJ^mEn.eXEy/N"><field name="OP">OR</field><value name="A"><block type="logic_compare" id="Updh4`dmqWOl8d}M;g8y"><field name="OP">EQ</field><value name="A"><block type="properties_user_healing" id="!pUGQ){..iXB8CMTS;$v"><field name="properties">ROUNDS</field></block></value><value name="B"><block type="math_number" id="Eem[Vxht-;;+ILj@@lxp"><field name="NUM">1</field></block></value></block></value><value name="B"><block type="logic_compare" id="nQ4|l`%m7E.e;r5TqJV?"><field name="OP">EQ</field><value name="A"><block type="properties_user_healing" id="v~Em{4#Y~?aQQ:-q~7q9"><field name="properties">BODYCOLOR</field></block></value><value name="B"><block type="shirt_picker" id="q`6u|/L)7-ZYxEQ-Sy8F"><field name="color">cyan</field></block></value></block></value></block></value><statement name="DO0"><block type="assert_loop" id="aMyXhz@z^U+NL#U@cF?}"><value name="target"><block type="properties_user_healing" id="?q*tSF2K^XLU#$Qw~nGg"><field name="properties">WHITEBERRIES</field></block></value><value name="value"><block type="math_arithmetic" id="M]Qfng[KcxW;Qdz%;CdX"><field name="OP">MULTIPLY</field><value name="A"><block type="properties_user_healing" id=".qU!TH)e~c]2Y}1ni{nB"><field name="properties">ROUNDS</field></block></value><value name="B"><block type="math_number" id="jFDwR/!|O~SvpF2W(TV}"><field name="NUM">2</field></block></value></block></value><next><block type="assert_loop" id="m0+9-^qxjVggw`Ibgr4]"><value name="target"><block type="properties_user_healing" id="E=ynHqra%Q|w!eVZ|ZWJ"><field name="properties">REDBERRIES</field></block></value><value name="value"><block type="math_arithmetic" id="PY#6qfWtMC3lU:zSk0Pf"><field name="OP">MULTIPLY</field><value name="A"><block type="properties_user_healing" id=";d_O]E68R!O7~YO[A%za"><field name="properties">ROUNDS</field></block></value><value name="B"><block type="math_number" id="A)-//iOU}IOVBLZ5XX_)"><field name="NUM">2</field></block></value></block></value></block></next></block></statement><statement name="ELSE"><block type="assert_loop" id="EmLBtUokQ6|JVkk#x@s#"><value name="target"><block type="properties_user_healing" id="gPMZ9-(#4oh*ETg-lp)s"><field name="properties">REDBERRIES</field></block></value><value name="value"><block type="math_arithmetic" id="d2shHkG@^V4F}cn3`EzX"><field name="OP">ADD</field><value name="A"><block type="properties_user_healing" id="PAZ-sti^E1%ckN%5CSIn"><field name="properties">ROUNDS</field></block></value><value name="B"><block type="math_number" id="[$yb5?y[iw[4Yz;1}y=D"><field name="NUM">1</field></block></value></block></value></block></statement></block></xml>',
        17),
       ('9e9f613f-8936-43c3-96e2-70351a0852eb',
        '<xml xmlns="https://developers.google.com/blockly/xml"><block type="controls_if" id="k9nS`RjSw!+84wUe:1u#" x="-168" y="-273"><mutation else="1"></mutation><value name="IF0"><block type="logic_operation" id=".N#$huRFJ^mEn.eXEy/N"><field name="OP">OR</field><value name="A"><block type="logic_compare" id="Updh4`dmqWOl8d}M;g8y"><field name="OP">EQ</field><value name="A"><block type="properties_user_healing" id="!pUGQ){..iXB8CMTS;$v"><field name="properties">ROUNDS</field></block></value><value name="B"><block type="math_number" id="Eem[Vxht-;;+ILj@@lxp"><field name="NUM">1</field></block></value></block></value><value name="B"><block type="logic_compare" id="nQ4|l`%m7E.e;r5TqJV?"><field name="OP">EQ</field><value name="A"><block type="properties_user_healing" id="v~Em{4#Y~?aQQ:-q~7q9"><field name="properties">BODYCOLOR</field></block></value><value name="B"><block type="shirt_picker" id="q`6u|/L)7-ZYxEQ-Sy8F"><field name="color">cyan</field></block></value></block></value></block></value><statement name="DO0"><block type="assert_loop" id="aMyXhz@z^U+NL#U@cF?}"><value name="target"><block type="properties_user_healing" id="?q*tSF2K^XLU#$Qw~nGg"><field name="properties">WHITEBERRIES</field></block></value><value name="value"><block type="math_arithmetic" id="M]Qfng[KcxW;Qdz%;CdX"><field name="OP">MULTIPLY</field><value name="A"><block type="properties_user_healing" id=".qU!TH)e~c]2Y}1ni{nB"><field name="properties">ROUNDS</field></block></value><value name="B"><block type="math_number" id="jFDwR/!|O~SvpF2W(TV}"><field name="NUM">2</field></block></value></block></value><next><block type="assert_loop" id="m0+9-^qxjVggw`Ibgr4]"><value name="target"><block type="properties_user_healing" id="E=ynHqra%Q|w!eVZ|ZWJ"><field name="properties">REDBERRIES</field></block></value><value name="value"><block type="math_arithmetic" id="PY#6qfWtMC3lU:zSk0Pf"><field name="OP">MULTIPLY</field><value name="A"><block type="properties_user_healing" id=";d_O]E68R!O7~YO[A%za"><field name="properties">ROUNDS</field></block></value><value name="B"><block type="math_number" id="A)-//iOU}IOVBLZ5XX_)"><field name="NUM">2</field></block></value></block></value></block></next></block></statement><statement name="ELSE"><block type="assert_loop" id="EmLBtUokQ6|JVkk#x@s#"><value name="target"><block type="properties_user_healing" id="gPMZ9-(#4oh*ETg-lp)s"><field name="properties">REDBERRIES</field></block></value><value name="value"><block type="math_arithmetic" id="d2shHkG@^V4F}cn3`EzX"><field name="OP">ADD</field><value name="A"><block type="properties_user_healing" id="PAZ-sti^E1%ckN%5CSIn"><field name="properties">ROUNDS</field></block></value><value name="B"><block type="math_number" id="[$yb5?y[iw[4Yz;1}y=D"><field name="NUM">1</field></block></value></block></value><next><block type="assert_loop" id="Fb;v2*BiKmi~8!Ab,__P"><value name="target"><block type="properties_user_healing" id="rj2IA)~xF,r?Te9oG$a,"><field name="properties">WHITEBERRIES</field></block></value><value name="value"></value></block></next></block></statement></block></xml>',
        18),
       ('9e9f613f-8936-43c3-96e2-70351a0852eb',
        '<xml xmlns="https://developers.google.com/blockly/xml"><block type="controls_if" id="k9nS`RjSw!+84wUe:1u#" x="-168" y="-273"><mutation else="1"></mutation><value name="IF0"><block type="logic_operation" id=".N#$huRFJ^mEn.eXEy/N"><field name="OP">OR</field><value name="A"><block type="logic_compare" id="Updh4`dmqWOl8d}M;g8y"><field name="OP">EQ</field><value name="A"><block type="properties_user_healing" id="!pUGQ){..iXB8CMTS;$v"><field name="properties">ROUNDS</field></block></value><value name="B"><block type="math_number" id="Eem[Vxht-;;+ILj@@lxp"><field name="NUM">1</field></block></value></block></value><value name="B"><block type="logic_compare" id="nQ4|l`%m7E.e;r5TqJV?"><field name="OP">EQ</field><value name="A"><block type="properties_user_healing" id="v~Em{4#Y~?aQQ:-q~7q9"><field name="properties">BODYCOLOR</field></block></value><value name="B"><block type="shirt_picker" id="q`6u|/L)7-ZYxEQ-Sy8F"><field name="color">cyan</field></block></value></block></value></block></value><statement name="DO0"><block type="assert_loop" id="aMyXhz@z^U+NL#U@cF?}"><value name="target"><block type="properties_user_healing" id="?q*tSF2K^XLU#$Qw~nGg"><field name="properties">WHITEBERRIES</field></block></value><value name="value"><block type="math_arithmetic" id="M]Qfng[KcxW;Qdz%;CdX"><field name="OP">MULTIPLY</field><value name="A"><block type="properties_user_healing" id=".qU!TH)e~c]2Y}1ni{nB"><field name="properties">ROUNDS</field></block></value><value name="B"><block type="math_number" id="jFDwR/!|O~SvpF2W(TV}"><field name="NUM">2</field></block></value></block></value><next><block type="assert_loop" id="m0+9-^qxjVggw`Ibgr4]"><value name="target"><block type="properties_user_healing" id="E=ynHqra%Q|w!eVZ|ZWJ"><field name="properties">REDBERRIES</field></block></value><value name="value"><block type="math_arithmetic" id="PY#6qfWtMC3lU:zSk0Pf"><field name="OP">MULTIPLY</field><value name="A"><block type="properties_user_healing" id=";d_O]E68R!O7~YO[A%za"><field name="properties">ROUNDS</field></block></value><value name="B"><block type="math_number" id="A)-//iOU}IOVBLZ5XX_)"><field name="NUM">2</field></block></value></block></value></block></next></block></statement><statement name="ELSE"><block type="assert_loop" id="EmLBtUokQ6|JVkk#x@s#"><value name="target"><block type="properties_user_healing" id="gPMZ9-(#4oh*ETg-lp)s"><field name="properties">REDBERRIES</field></block></value><value name="value"><block type="math_arithmetic" id="d2shHkG@^V4F}cn3`EzX"><field name="OP">ADD</field><value name="A"><block type="properties_user_healing" id="PAZ-sti^E1%ckN%5CSIn"><field name="properties">ROUNDS</field></block></value><value name="B"><block type="math_number" id="[$yb5?y[iw[4Yz;1}y=D"><field name="NUM">1</field></block></value></block></value><next><block type="assert_loop" id="Fb;v2*BiKmi~8!Ab,__P"><value name="target"><block type="properties_user_healing" id="rj2IA)~xF,r?Te9oG$a,"><field name="properties">WHITEBERRIES</field></block></value><value name="value"><block type="math_number" id="OJKqo3x7!`jz=O~^Hc3w"><field name="NUM">2</field></block></value></block></next></block></statement></block></xml>',
        19);

insert into `expected_clicked_coordinate` (`id`, `hint_id`, `expected_clicked_coordinates_key`)
values ('8ad114c8-1e93-488d-91b3-e973d99115af', '9e9f613f-8936-43c3-96e2-70351a0852eb', 3),
       ('19be0484-4ff6-4a01-91d6-62a09359750f', '9e9f613f-8936-43c3-96e2-70351a0852eb', 7);

insert into `expected_clicked_coordinate_coordinates` (`expected_clicked_coordinate_id`, `x`, `y`)
values ('8ad114c8-1e93-488d-91b3-e973d99115af', 5, 2),
       ('19be0484-4ff6-4a01-91d6-62a09359750f', 1, 3);

insert into `hint_expected_user_interaction` (`hint_id`, `expected_user_interaction`, `expected_user_interaction_key`)
values ('9e9f613f-8936-43c3-96e2-70351a0852eb', 0, 3),
       ('9e9f613f-8936-43c3-96e2-70351a0852eb', 1, 4),
       ('9e9f613f-8936-43c3-96e2-70351a0852eb', 2, 5),
       ('9e9f613f-8936-43c3-96e2-70351a0852eb', 0, 7),
       ('9e9f613f-8936-43c3-96e2-70351a0852eb', 1, 8),
       ('9e9f613f-8936-43c3-96e2-70351a0852eb', 1, 9),
       ('9e9f613f-8936-43c3-96e2-70351a0852eb', 1, 12),
       ('9e9f613f-8936-43c3-96e2-70351a0852eb', 1, 14),
       ('9e9f613f-8936-43c3-96e2-70351a0852eb', 1, 15),
       ('9e9f613f-8936-43c3-96e2-70351a0852eb', 1, 18),
       ('9e9f613f-8936-43c3-96e2-70351a0852eb', 2, 19);

insert into `hint_expected_portal_js_code` (`hint_id`, `expected_portal_js_code`, `expected_portal_js_code_key`)
values ('9e9f613f-8936-43c3-96e2-70351a0852eb', 'if (!(((this.roundsCount) <= 3))) {\n\tthis._killCritter(x, y, ((this.roundsCount) <= 3), ((this.roundsCount) <= 3));\n\tthis.mustWalkOut = true;\n\treturn true;\n}\n', 4),
       ('9e9f613f-8936-43c3-96e2-70351a0852eb', 'if ((this.roundsCount) == 1) {\n  if ((this.whiteBerryCount) !== 2) {\n  \tthis._killCritter(x, y, (this.whiteBerryCount), 2);\n  \tthis.mustWalkOut = true;\n  \treturn true;\n  }\n}\n', 8),
       ('9e9f613f-8936-43c3-96e2-70351a0852eb', 'if ((this.roundsCount) == 1) {\n  if ((this.whiteBerryCount) !== 2) {\n  \tthis._killCritter(x, y, (this.whiteBerryCount), 2);\n  \tthis.mustWalkOut = true;\n  \treturn true;\n  }\n  if ((this.redBerryCount) !== 2) {\n  \tthis._killCritter(x, y, (this.redBerryCount), 2);\n  \tthis.mustWalkOut = true;\n  \treturn true;\n  }\n}\n', 9),
       ('9e9f613f-8936-43c3-96e2-70351a0852eb', 'if ((this.roundsCount) == 1 || (this.color) == (\"cyan\")) {\n  if ((this.whiteBerryCount) !== ((this.roundsCount) * 2)) {\n  \tthis._killCritter(x, y, (this.whiteBerryCount), ((this.roundsCount) * 2));\n  \tthis.mustWalkOut = true;\n  \treturn true;\n  }\n  if ((this.redBerryCount) !== ((this.roundsCount) * 2)) {\n  \tthis._killCritter(x, y, (this.redBerryCount), ((this.roundsCount) * 2));\n  \tthis.mustWalkOut = true;\n  \treturn true;\n  }\n}\n', 12),
       ('9e9f613f-8936-43c3-96e2-70351a0852eb', 'if ((this.roundsCount) == 1 || (this.color) == (\"cyan\")) {\n  if ((this.whiteBerryCount) !== ((this.roundsCount) * 2)) {\n  \tthis._killCritter(x, y, (this.whiteBerryCount), ((this.roundsCount) * 2));\n  \tthis.mustWalkOut = true;\n  \treturn true;\n  }\n  if ((this.redBerryCount) !== ((this.roundsCount) * 2)) {\n  \tthis._killCritter(x, y, (this.redBerryCount), ((this.roundsCount) * 2));\n  \tthis.mustWalkOut = true;\n  \treturn true;\n  }\n} else if ((this.roundsCount) == 2) {\n  if ((this.redBerryCount) !== 3) {\n  \tthis._killCritter(x, y, (this.redBerryCount), 3);\n  \tthis.mustWalkOut = true;\n  \treturn true;\n  }\n} else if ((this.roundsCount) == 3) {\n}\n', 14),
       ('9e9f613f-8936-43c3-96e2-70351a0852eb', 'if ((this.roundsCount) == 1 || (this.color) == (\"cyan\")) {\n  if ((this.whiteBerryCount) !== ((this.roundsCount) * 2)) {\n  \tthis._killCritter(x, y, (this.whiteBerryCount), ((this.roundsCount) * 2));\n  \tthis.mustWalkOut = true;\n  \treturn true;\n  }\n  if ((this.redBerryCount) !== ((this.roundsCount) * 2)) {\n  \tthis._killCritter(x, y, (this.redBerryCount), ((this.roundsCount) * 2));\n  \tthis.mustWalkOut = true;\n  \treturn true;\n  }\n} else if ((this.roundsCount) == 2) {\n  if ((this.redBerryCount) !== 3) {\n  \tthis._killCritter(x, y, (this.redBerryCount), 3);\n  \tthis.mustWalkOut = true;\n  \treturn true;\n  }\n} else if ((this.roundsCount) == 3) {\n  if ((this.redBerryCount) !== 4) {\n  \tthis._killCritter(x, y, (this.redBerryCount), 4);\n  \tthis.mustWalkOut = true;\n  \treturn true;\n  }\n}\n', 15),
       ('9e9f613f-8936-43c3-96e2-70351a0852eb', 'if ((this.roundsCount) == 1 || (this.color) == (\"cyan\")) {\n  if ((this.whiteBerryCount) !== ((this.roundsCount) * 2)) {\n  \tthis._killCritter(x, y, (this.whiteBerryCount), ((this.roundsCount) * 2));\n  \tthis.mustWalkOut = true;\n  \treturn true;\n  }\n  if ((this.redBerryCount) !== ((this.roundsCount) * 2)) {\n  \tthis._killCritter(x, y, (this.redBerryCount), ((this.roundsCount) * 2));\n  \tthis.mustWalkOut = true;\n  \treturn true;\n  }\n} else {\n  if ((this.redBerryCount) !== ((this.roundsCount) + 1)) {\n  \tthis._killCritter(x, y, (this.redBerryCount), ((this.roundsCount) + 1));\n  \tthis.mustWalkOut = true;\n  \treturn true;\n  }\n  if ((this.whiteBerryCount) !== 2) {\n  \tthis._killCritter(x, y, (this.whiteBerryCount), 2);\n  \tthis.mustWalkOut = true;\n  \treturn true;\n  }\n}\n', 18);


-- Level 10 hints:

-- Code Explanation level 10
insert into `hint` (`id`, `hint_situation`, `heal_level_id`)
values ('3fad2c8f-0118-4bfa-ae5e-1939386ccd2a', 2, 'ee430d4c-186f-40d3-9f7f-3cfa1f0de937');

insert into `hint_hint_texts` (`hint_id`, `hint_texts`, `hint_texts_key`)
values ('3fad2c8f-0118-4bfa-ae5e-1939386ccd2a', 'hint_loop_level_10_code_0', 0),
       ('3fad2c8f-0118-4bfa-ae5e-1939386ccd2a', 'hint_loop_level_10_code_1', 1),
       ('3fad2c8f-0118-4bfa-ae5e-1939386ccd2a', 'hint_loop_level_10_code_2', 2),
       ('3fad2c8f-0118-4bfa-ae5e-1939386ccd2a', 'hint_loop_level_10_code_3', 3),
       ('3fad2c8f-0118-4bfa-ae5e-1939386ccd2a', 'hint_loop_level_10_code_4', 4),
       ('3fad2c8f-0118-4bfa-ae5e-1939386ccd2a', 'hint_loop_level_10_code_5', 5),
       ('3fad2c8f-0118-4bfa-ae5e-1939386ccd2a', 'hint_loop_level_10_code_6', 6),
       ('3fad2c8f-0118-4bfa-ae5e-1939386ccd2a', 'hint_loop_level_10_code_7', 7),
       ('3fad2c8f-0118-4bfa-ae5e-1939386ccd2a', 'hint_loop_level_10_code_8', 8),
       ('3fad2c8f-0118-4bfa-ae5e-1939386ccd2a', 'hint_loop_level_10_code_9', 9),
       ('3fad2c8f-0118-4bfa-ae5e-1939386ccd2a', 'hint_loop_level_10_code_10', 10),
       ('3fad2c8f-0118-4bfa-ae5e-1939386ccd2a', 'hint_loop_level_10_code_11', 11),
       ('3fad2c8f-0118-4bfa-ae5e-1939386ccd2a', 'hint_loop_level_10_code_12', 12),
       ('3fad2c8f-0118-4bfa-ae5e-1939386ccd2a', 'hint_loop_level_10_code_13', 13),
       ('3fad2c8f-0118-4bfa-ae5e-1939386ccd2a', 'hint_loop_level_10_code_14', 14);

insert into associated_component_ids (id, hint_id, associated_component_ids_key)
values ('cd44729a-4f40-4db8-9028-17fb9ad80784', '3fad2c8f-0118-4bfa-ae5e-1939386ccd2a', 0),
       ('234c7f7c-375e-42ce-9e22-e2506eb67a7e', '3fad2c8f-0118-4bfa-ae5e-1939386ccd2a', 1),
       ('7b2d2a02-c020-4c08-8779-55d123e43399', '3fad2c8f-0118-4bfa-ae5e-1939386ccd2a', 2),
       ('04bc3118-bb55-4643-af29-20e276eb0fa7', '3fad2c8f-0118-4bfa-ae5e-1939386ccd2a', 3),
       ('1dfe5bea-408d-4599-bdb6-5a0a1852cd2f', '3fad2c8f-0118-4bfa-ae5e-1939386ccd2a', 4),
       ('1664f91f-1d59-464e-a03f-6615b1b1f84a', '3fad2c8f-0118-4bfa-ae5e-1939386ccd2a', 5),
       ('7ed5cf93-77f3-4734-96a9-92abec307f6f', '3fad2c8f-0118-4bfa-ae5e-1939386ccd2a', 6),
       ('1fcf8b68-f968-4156-aaee-f0c50e4d503e', '3fad2c8f-0118-4bfa-ae5e-1939386ccd2a', 7),
       ('7472b213-b69e-4925-852e-5b5e9cba38ac', '3fad2c8f-0118-4bfa-ae5e-1939386ccd2a', 8),
       ('2309e9ad-158b-4e80-ad52-3e1ae3a17857', '3fad2c8f-0118-4bfa-ae5e-1939386ccd2a', 9),
       ('69de276e-55eb-415e-9e2c-3aae2b6d4ce9', '3fad2c8f-0118-4bfa-ae5e-1939386ccd2a', 10),
       ('99cd45d8-a19a-46f0-a162-bd781da4a30a', '3fad2c8f-0118-4bfa-ae5e-1939386ccd2a', 11),
       ('064f54ac-d69c-403c-a08d-ab63cf687712', '3fad2c8f-0118-4bfa-ae5e-1939386ccd2a', 12),
       ('a23e49ca-74cb-4789-9e7f-c49c289850f0', '3fad2c8f-0118-4bfa-ae5e-1939386ccd2a', 13),
       ('8baccd4f-3e48-4c2c-84d5-d92324bfe7bf', '3fad2c8f-0118-4bfa-ae5e-1939386ccd2a', 14);

insert into associated_component_ids_component_ids (associated_component_ids_id, component_ids)
values ('cd44729a-4f40-4db8-9028-17fb9ad80784', 'blockly_cut_div'),
       ('234c7f7c-375e-42ce-9e22-e2506eb67a7e', 'blockly_cut_div'),
       ('234c7f7c-375e-42ce-9e22-e2506eb67a7e', 'gameboard'),
       ('7b2d2a02-c020-4c08-8779-55d123e43399', 'blockly_cut_div'),
       ('7b2d2a02-c020-4c08-8779-55d123e43399', 'gameboard'),
       ('04bc3118-bb55-4643-af29-20e276eb0fa7', 'blockly_cut_div'),
       ('1dfe5bea-408d-4599-bdb6-5a0a1852cd2f', 'blockly_cut_div'),
       ('1664f91f-1d59-464e-a03f-6615b1b1f84a', 'blockly_cut_div'),
       ('1664f91f-1d59-464e-a03f-6615b1b1f84a', 'gameboard'),
       ('7ed5cf93-77f3-4734-96a9-92abec307f6f', 'blockly_cut_div'),
       ('7ed5cf93-77f3-4734-96a9-92abec307f6f', 'gameboard'),
       ('1fcf8b68-f968-4156-aaee-f0c50e4d503e', 'blockly_cut_div'),
       ('7472b213-b69e-4925-852e-5b5e9cba38ac', 'blockly_cut_div'),
       ('2309e9ad-158b-4e80-ad52-3e1ae3a17857', 'blockly_cut_div'),
       ('69de276e-55eb-415e-9e2c-3aae2b6d4ce9', 'blockly_cut_div'),
       ('69de276e-55eb-415e-9e2c-3aae2b6d4ce9', 'gameboard'),
       ('99cd45d8-a19a-46f0-a162-bd781da4a30a', 'blockly_cut_div'),
       ('064f54ac-d69c-403c-a08d-ab63cf687712', 'blockly_cut_div'),
       ('a23e49ca-74cb-4789-9e7f-c49c289850f0', 'blockly_cut_div'),
       ('8baccd4f-3e48-4c2c-84d5-d92324bfe7bf', 'blockly_cut_div');

insert into `associated_cut_blocks` (`id`, `hint_id`, `associated_cut_blocks_key`)
values ('676e9ec9-0639-45aa-8253-cc228d469d61', '3fad2c8f-0118-4bfa-ae5e-1939386ccd2a', 1),
       ('03408c61-2d39-4c9b-8d83-518396616032', '3fad2c8f-0118-4bfa-ae5e-1939386ccd2a', 2),
       ('58c8d629-a664-40bd-97a4-fd2978aa5338', '3fad2c8f-0118-4bfa-ae5e-1939386ccd2a', 3),
       ('928a8cfb-0985-4a64-aad5-edf3ce14b333', '3fad2c8f-0118-4bfa-ae5e-1939386ccd2a', 4),
       ('f80d8a9a-ddb4-4bc4-b570-060d8db02dc5', '3fad2c8f-0118-4bfa-ae5e-1939386ccd2a', 5),
       ('d200ac34-b65c-494f-b431-b9ed9b4b1a23', '3fad2c8f-0118-4bfa-ae5e-1939386ccd2a', 6),
       ('78e9e6cd-6e32-4204-9100-094ba91941cd', '3fad2c8f-0118-4bfa-ae5e-1939386ccd2a', 7),
       ('ae93c34a-0af2-49ba-ba5f-2a38c4c59c47', '3fad2c8f-0118-4bfa-ae5e-1939386ccd2a', 8),
       ('c13c0ebc-e965-4c22-989e-68c24f053747', '3fad2c8f-0118-4bfa-ae5e-1939386ccd2a', 9),
       ('8cec0185-a26a-4cbc-b2a2-e9905cd1568f', '3fad2c8f-0118-4bfa-ae5e-1939386ccd2a', 10),
       ('44af5185-cd13-43bd-9490-d036031fb72e', '3fad2c8f-0118-4bfa-ae5e-1939386ccd2a', 11),
       ('c1cc39be-1102-4989-9996-3aa83f32c983', '3fad2c8f-0118-4bfa-ae5e-1939386ccd2a', 12),
       ('f0b209d0-c343-46c1-b9be-cd1633f0ce97', '3fad2c8f-0118-4bfa-ae5e-1939386ccd2a', 13),
       ('594d3dfc-006c-4b52-a751-c490b3382bf2', '3fad2c8f-0118-4bfa-ae5e-1939386ccd2a', 14);

insert into `associated_cut_blocks_block_ids` (`associated_cut_blocks_id`, `block_ids`)
values ('676e9ec9-0639-45aa-8253-cc228d469d61', 'recipe_start_while'),
       ('03408c61-2d39-4c9b-8d83-518396616032', 'inner_while'),
       ('58c8d629-a664-40bd-97a4-fd2978aa5338', 'recipe_start_while'),
       ('58c8d629-a664-40bd-97a4-fd2978aa5338', 'logic_compare_1'),
       ('928a8cfb-0985-4a64-aad5-edf3ce14b333', 'controls_if_1'),
       ('928a8cfb-0985-4a64-aad5-edf3ce14b333', 'logic_compare_2'),
       ('f80d8a9a-ddb4-4bc4-b570-060d8db02dc5', 'inner_while'),
       ('f80d8a9a-ddb4-4bc4-b570-060d8db02dc5', 'logic_compare_3'),
       ('d200ac34-b65c-494f-b431-b9ed9b4b1a23', 'set_berries_2'),
       ('78e9e6cd-6e32-4204-9100-094ba91941cd', 'controls_if_1'),
       ('78e9e6cd-6e32-4204-9100-094ba91941cd', 'logic_compare_2'),
       ('ae93c34a-0af2-49ba-ba5f-2a38c4c59c47', 'set_berries_2'),
       ('c13c0ebc-e965-4c22-989e-68c24f053747', 'controls_if_1'),
       ('c13c0ebc-e965-4c22-989e-68c24f053747', 'logic_compare_2'),
       ('8cec0185-a26a-4cbc-b2a2-e9905cd1568f', 'inner_while'),
       ('8cec0185-a26a-4cbc-b2a2-e9905cd1568f', 'set_berries_1'),
       ('44af5185-cd13-43bd-9490-d036031fb72e', 'logic_compare_3'),
       ('44af5185-cd13-43bd-9490-d036031fb72e', 'bush_properties_1'),
       ('44af5185-cd13-43bd-9490-d036031fb72e', 'math_number_4'),
       ('c1cc39be-1102-4989-9996-3aa83f32c983', 'controls_if_1'),
       ('c1cc39be-1102-4989-9996-3aa83f32c983', 'inner_while'),
       ('f0b209d0-c343-46c1-b9be-cd1633f0ce97', 'recipe_start_while'),
       ('f0b209d0-c343-46c1-b9be-cd1633f0ce97', 'set_berries_2'),
       ('594d3dfc-006c-4b52-a751-c490b3382bf2', 'recipe_start_while');

insert into `hint_expected_user_interaction` (`hint_id`, `expected_user_interaction`, `expected_user_interaction_key`)
values ('3fad2c8f-0118-4bfa-ae5e-1939386ccd2a', 3, 3),
       ('3fad2c8f-0118-4bfa-ae5e-1939386ccd2a', 3, 7),
       ('3fad2c8f-0118-4bfa-ae5e-1939386ccd2a', 3, 8),
       ('3fad2c8f-0118-4bfa-ae5e-1939386ccd2a', 3, 9),
       ('3fad2c8f-0118-4bfa-ae5e-1939386ccd2a', 3, 11),
       ('3fad2c8f-0118-4bfa-ae5e-1939386ccd2a', 3, 13);

insert into `answer_options_list` (`id`, `hint_id`, `answer_options_list_key`)
values ('c2349ddf-2836-4ed8-a5cb-fb4c92593583', '3fad2c8f-0118-4bfa-ae5e-1939386ccd2a', 3),
       ('112393fe-13d1-4b8e-a78a-2c7f31b61f7b', '3fad2c8f-0118-4bfa-ae5e-1939386ccd2a', 7),
       ('d1017366-3c2d-4244-b28a-658c8f98f52f', '3fad2c8f-0118-4bfa-ae5e-1939386ccd2a', 8),
       ('285b94b2-7bcd-4c67-97a6-9820ef36239c', '3fad2c8f-0118-4bfa-ae5e-1939386ccd2a', 9),
       ('5055dd98-0c74-43fb-803e-d9c461c0b123', '3fad2c8f-0118-4bfa-ae5e-1939386ccd2a', 11),
       ('46e54e00-baea-47fe-9544-b0cbe9c251b6', '3fad2c8f-0118-4bfa-ae5e-1939386ccd2a', 13);

insert into `answer_options_list_answer_options` (`answer_options_list_id`, `answer_options`)
values ('c2349ddf-2836-4ed8-a5cb-fb4c92593583', '1'),
       ('c2349ddf-2836-4ed8-a5cb-fb4c92593583', '2'),
       ('c2349ddf-2836-4ed8-a5cb-fb4c92593583', '3'),
       ('112393fe-13d1-4b8e-a78a-2c7f31b61f7b', 'yes'),
       ('112393fe-13d1-4b8e-a78a-2c7f31b61f7b', 'no'),
       ('d1017366-3c2d-4244-b28a-658c8f98f52f', '2'),
       ('d1017366-3c2d-4244-b28a-658c8f98f52f', '3'),
       ('d1017366-3c2d-4244-b28a-658c8f98f52f', '4'),
       ('285b94b2-7bcd-4c67-97a6-9820ef36239c', 'yes'),
       ('285b94b2-7bcd-4c67-97a6-9820ef36239c', 'no'),
       ('5055dd98-0c74-43fb-803e-d9c461c0b123', '1'),
       ('5055dd98-0c74-43fb-803e-d9c461c0b123', '2'),
       ('5055dd98-0c74-43fb-803e-d9c461c0b123', '3'),
       ('46e54e00-baea-47fe-9544-b0cbe9c251b6', '1'),
       ('46e54e00-baea-47fe-9544-b0cbe9c251b6', '2'),
       ('46e54e00-baea-47fe-9544-b0cbe9c251b6', '4');

insert into `hint_solution_answer` (hint_id, solution_answer, solution_answer_key)
values ('3fad2c8f-0118-4bfa-ae5e-1939386ccd2a', '2', 3),
       ('3fad2c8f-0118-4bfa-ae5e-1939386ccd2a', 'no', 7),
       ('3fad2c8f-0118-4bfa-ae5e-1939386ccd2a', '2', 8),
       ('3fad2c8f-0118-4bfa-ae5e-1939386ccd2a', 'yes', 9),
       ('3fad2c8f-0118-4bfa-ae5e-1939386ccd2a', '2', 11),
       ('3fad2c8f-0118-4bfa-ae5e-1939386ccd2a', '4', 13);

insert into `associated_coordinates` (`hint_id`, `x`, `y`, `associated_coordinates_key`)
values ('3fad2c8f-0118-4bfa-ae5e-1939386ccd2a', 1, 1, 1),
       ('3fad2c8f-0118-4bfa-ae5e-1939386ccd2a', 3, 3, 2),
       ('3fad2c8f-0118-4bfa-ae5e-1939386ccd2a', 4, 4, 5),
       ('3fad2c8f-0118-4bfa-ae5e-1939386ccd2a', 5, 7, 6),
       ('3fad2c8f-0118-4bfa-ae5e-1939386ccd2a', 5, 7, 8),
       ('3fad2c8f-0118-4bfa-ae5e-1939386ccd2a', 4, 4, 10),
       ('3fad2c8f-0118-4bfa-ae5e-1939386ccd2a', 4, 4, 11),
       ('3fad2c8f-0118-4bfa-ae5e-1939386ccd2a', 5, 7, 13);


-- Portal together level 10
insert into `hint` (`id`, `hint_situation`, `heal_level_id`)
values ('95fb2eca-f53a-471e-9a8b-ccdd4ef953d9', 3, 'ee430d4c-186f-40d3-9f7f-3cfa1f0de937');

insert into `hint_hint_texts` (`hint_id`, `hint_texts`, `hint_texts_key`)
values ('95fb2eca-f53a-471e-9a8b-ccdd4ef953d9', 'hint_loop_level_10_complete_0', 0),
       ('95fb2eca-f53a-471e-9a8b-ccdd4ef953d9', 'hint_loop_level_10_complete_1', 1),
       ('95fb2eca-f53a-471e-9a8b-ccdd4ef953d9', 'hint_loop_level_10_complete_2', 2),
       ('95fb2eca-f53a-471e-9a8b-ccdd4ef953d9', 'hint_loop_level_10_complete_3', 3),
       ('95fb2eca-f53a-471e-9a8b-ccdd4ef953d9', 'hint_loop_level_10_complete_4', 4),
       ('95fb2eca-f53a-471e-9a8b-ccdd4ef953d9', 'hint_loop_level_10_complete_5', 5),
       ('95fb2eca-f53a-471e-9a8b-ccdd4ef953d9', 'hint_loop_level_10_complete_6', 6),
       ('95fb2eca-f53a-471e-9a8b-ccdd4ef953d9', 'hint_loop_level_10_complete_7', 7),
       ('95fb2eca-f53a-471e-9a8b-ccdd4ef953d9', 'hint_loop_level_10_complete_8', 8),
       ('95fb2eca-f53a-471e-9a8b-ccdd4ef953d9', 'hint_loop_level_10_complete_9', 9),
       ('95fb2eca-f53a-471e-9a8b-ccdd4ef953d9', 'hint_loop_level_10_complete_10', 10),
       ('95fb2eca-f53a-471e-9a8b-ccdd4ef953d9', 'hint_loop_level_10_complete_11', 11),
       ('95fb2eca-f53a-471e-9a8b-ccdd4ef953d9', 'hint_loop_level_10_complete_12', 12),
       ('95fb2eca-f53a-471e-9a8b-ccdd4ef953d9', 'hint_loop_level_10_complete_13', 13),
       ('95fb2eca-f53a-471e-9a8b-ccdd4ef953d9', 'hint_loop_level_10_complete_14', 14),
       ('95fb2eca-f53a-471e-9a8b-ccdd4ef953d9', 'hint_loop_level_10_complete_15', 15),
       ('95fb2eca-f53a-471e-9a8b-ccdd4ef953d9', 'hint_loop_level_10_complete_16', 16),
       ('95fb2eca-f53a-471e-9a8b-ccdd4ef953d9', 'hint_loop_level_10_complete_17', 17),
       ('95fb2eca-f53a-471e-9a8b-ccdd4ef953d9', 'hint_loop_level_10_complete_18', 18);

insert into `associated_coordinates` (`hint_id`, `x`, `y`, `associated_coordinates_key`)
values ('95fb2eca-f53a-471e-9a8b-ccdd4ef953d9', 5, 7, 2),
       ('95fb2eca-f53a-471e-9a8b-ccdd4ef953d9', 4, 4, 3),
       ('95fb2eca-f53a-471e-9a8b-ccdd4ef953d9', 3, 7, 4),
       ('95fb2eca-f53a-471e-9a8b-ccdd4ef953d9', 3, 5, 7),
       ('95fb2eca-f53a-471e-9a8b-ccdd4ef953d9', 3, 2, 11);

insert into `associated_cut_blocks` (`id`, `hint_id`, `associated_cut_blocks_key`)
values ('7a42c8a2-8060-412e-9613-16d6a3af204e', '95fb2eca-f53a-471e-9a8b-ccdd4ef953d9', 2),
       ('54277beb-ca81-44a7-af11-32a6039606d3', '95fb2eca-f53a-471e-9a8b-ccdd4ef953d9', 3),
       ('86ed5abb-95fa-4362-8b59-516a827f2e8b', '95fb2eca-f53a-471e-9a8b-ccdd4ef953d9', 4),
       ('0f0b9c00-6717-4b61-a996-393adb57e318', '95fb2eca-f53a-471e-9a8b-ccdd4ef953d9', 5),
       ('08ef21c4-7348-43de-9bc9-63b9f2469ab2', '95fb2eca-f53a-471e-9a8b-ccdd4ef953d9', 6),
       ('7f547e51-5a7a-471c-87a0-834c38904c44', '95fb2eca-f53a-471e-9a8b-ccdd4ef953d9', 7),
       ('e1d8a278-d17f-4d7b-818b-451ee20beb30', '95fb2eca-f53a-471e-9a8b-ccdd4ef953d9', 8),
       ('f639b0a8-7cb4-4d3a-8d21-7ec075583862', '95fb2eca-f53a-471e-9a8b-ccdd4ef953d9', 9),
       ('0e55f6c8-32bf-4de5-a19c-366e97b5d0c2', '95fb2eca-f53a-471e-9a8b-ccdd4ef953d9', 11),
       ('296c0d01-bdd3-492a-b085-0b0ecddd6cf7', '95fb2eca-f53a-471e-9a8b-ccdd4ef953d9', 12),
       ('b52ebd63-e127-4355-9741-c1d2e7313f54', '95fb2eca-f53a-471e-9a8b-ccdd4ef953d9', 13),
       ('c13cf2c0-2c3e-4181-97df-74f633798cfb', '95fb2eca-f53a-471e-9a8b-ccdd4ef953d9', 14),
       ('225244f0-933b-45e2-8b2f-913bbbf0671d', '95fb2eca-f53a-471e-9a8b-ccdd4ef953d9', 15),
       ('3db9db77-c96b-4874-9ef8-4679b781a457', '95fb2eca-f53a-471e-9a8b-ccdd4ef953d9', 18);

insert into `associated_cut_blocks_block_ids` (`associated_cut_blocks_id`, `block_ids`)
values ('7a42c8a2-8060-412e-9613-16d6a3af204e', 'logic_compare_1'),
       ('7a42c8a2-8060-412e-9613-16d6a3af204e', 'recipe_start_while'),
       ('7a42c8a2-8060-412e-9613-16d6a3af204e', 'set_berries_2'),
       ('54277beb-ca81-44a7-af11-32a6039606d3', 'controls_if_1'),
       ('54277beb-ca81-44a7-af11-32a6039606d3', 'logic_compare_2'),
       ('54277beb-ca81-44a7-af11-32a6039606d3', 'set_berries_1'),
       ('86ed5abb-95fa-4362-8b59-516a827f2e8b', 'recipe_start_while'),
       ('86ed5abb-95fa-4362-8b59-516a827f2e8b', 'set_berries_2'),
       ('0f0b9c00-6717-4b61-a996-393adb57e318', 'set_berries_2'),
       ('08ef21c4-7348-43de-9bc9-63b9f2469ab2', 'logic_compare_1'),
       ('08ef21c4-7348-43de-9bc9-63b9f2469ab2', 'set_berries_2'),
       ('7f547e51-5a7a-471c-87a0-834c38904c44', 'inner_while'),
       ('7f547e51-5a7a-471c-87a0-834c38904c44', 'set_berries_1'),
       ('e1d8a278-d17f-4d7b-818b-451ee20beb30', 'inner_while'),
       ('f639b0a8-7cb4-4d3a-8d21-7ec075583862', 'set_berries_1'),
       ('0e55f6c8-32bf-4de5-a19c-366e97b5d0c2', 'set_berries_1'),
       ('0e55f6c8-32bf-4de5-a19c-366e97b5d0c2', 'set_berries_2'),
       ('296c0d01-bdd3-492a-b085-0b0ecddd6cf7', 'logic_compare_2'),
       ('296c0d01-bdd3-492a-b085-0b0ecddd6cf7', 'set_berries_2'),
       ('b52ebd63-e127-4355-9741-c1d2e7313f54', 'logic_compare_1'),
       ('b52ebd63-e127-4355-9741-c1d2e7313f54', 'controls_if_1'),
       ('b52ebd63-e127-4355-9741-c1d2e7313f54', 'logic_compare_2'),
       ('c13cf2c0-2c3e-4181-97df-74f633798cfb', 'controls_if_1'),
       ('c13cf2c0-2c3e-4181-97df-74f633798cfb', 'logic_compare_2'),
       ('c13cf2c0-2c3e-4181-97df-74f633798cfb', 'inner_while'),
       ('225244f0-933b-45e2-8b2f-913bbbf0671d', 'inner_while'),
       ('225244f0-933b-45e2-8b2f-913bbbf0671d', 'set_berries_1'),
       ('3db9db77-c96b-4874-9ef8-4679b781a457', 'recipe_start_while'),
       ('3db9db77-c96b-4874-9ef8-4679b781a457', 'inner_while');

insert into `associated_component_ids` (`id`, `hint_id`, `associated_component_ids_key`)
values ('51e10111-1df2-4158-a99c-6f54b0285d06', '95fb2eca-f53a-471e-9a8b-ccdd4ef953d9', 1),
       ('4f32a3f8-830d-4340-82eb-43ae60c872e5', '95fb2eca-f53a-471e-9a8b-ccdd4ef953d9', 2),
       ('b0a33618-388e-4c3c-99d8-b4b48508816b', '95fb2eca-f53a-471e-9a8b-ccdd4ef953d9', 3),
       ('3a58106b-9047-4c7e-bf34-d2afedb6b986', '95fb2eca-f53a-471e-9a8b-ccdd4ef953d9', 4),
       ('dcec2e23-80fc-4119-8d8b-9fa902767d9f', '95fb2eca-f53a-471e-9a8b-ccdd4ef953d9', 5),
       ('a2aa470f-0436-4d8a-923f-2c10a5764569', '95fb2eca-f53a-471e-9a8b-ccdd4ef953d9', 6),
       ('e3a46621-a140-4580-8874-1870a59175db', '95fb2eca-f53a-471e-9a8b-ccdd4ef953d9', 7),
       ('d4e1b0dd-ab6f-46db-b56f-c5ccd00eb41b', '95fb2eca-f53a-471e-9a8b-ccdd4ef953d9', 8),
       ('71984444-0f5a-46b2-baa2-0362a34596a9', '95fb2eca-f53a-471e-9a8b-ccdd4ef953d9', 9),
       ('c926d7d4-fad6-4fe2-904c-f717350cf3c1', '95fb2eca-f53a-471e-9a8b-ccdd4ef953d9', 10),
       ('dc5d9592-3350-4f81-ad6f-490857614cdf', '95fb2eca-f53a-471e-9a8b-ccdd4ef953d9', 11),
       ('c136e182-ca50-428e-89cd-32c1c1f6fcb3', '95fb2eca-f53a-471e-9a8b-ccdd4ef953d9', 12),
       ('93e1074c-ac0f-4f7a-ba89-a7ec80d7afa4', '95fb2eca-f53a-471e-9a8b-ccdd4ef953d9', 13),
       ('37db5c71-be85-497e-9492-e5e7af6d162e', '95fb2eca-f53a-471e-9a8b-ccdd4ef953d9', 14),
       ('f9ca10c3-7d0a-47fc-b644-6de8c2cdc5d2', '95fb2eca-f53a-471e-9a8b-ccdd4ef953d9', 15),
       ('99d51d0a-6c9b-4e3f-afef-7f376fc533f0', '95fb2eca-f53a-471e-9a8b-ccdd4ef953d9', 16),
       ('bce0d054-5317-4a42-9310-79d5fc4a60b6', '95fb2eca-f53a-471e-9a8b-ccdd4ef953d9', 17),
       ('ad7d2e94-22d2-40a4-a41f-edb9750e0dd5', '95fb2eca-f53a-471e-9a8b-ccdd4ef953d9', 18);

insert into `associated_component_ids_component_ids` (`associated_component_ids_id`, `component_ids`)
values ('51e10111-1df2-4158-a99c-6f54b0285d06', 'critter_container_all_collectors'),
       ('51e10111-1df2-4158-a99c-6f54b0285d06', 'gameboard'),
       ('4f32a3f8-830d-4340-82eb-43ae60c872e5', 'blockly_cut_div'),
       ('4f32a3f8-830d-4340-82eb-43ae60c872e5', 'gameboard'),
       ('b0a33618-388e-4c3c-99d8-b4b48508816b', 'blockly_cut_div'),
       ('b0a33618-388e-4c3c-99d8-b4b48508816b', 'gameboard'),
       ('3a58106b-9047-4c7e-bf34-d2afedb6b986', 'gameboard'),
       ('dcec2e23-80fc-4119-8d8b-9fa902767d9f', 'test_popup_container'),
       ('a2aa470f-0436-4d8a-923f-2c10a5764569', 'save_button'),
       ('e3a46621-a140-4580-8874-1870a59175db', 'gameboard'),
       ('d4e1b0dd-ab6f-46db-b56f-c5ccd00eb41b', 'blockly_cut_div'),
       ('d4e1b0dd-ab6f-46db-b56f-c5ccd00eb41b', 'test_popup_container'),
       ('71984444-0f5a-46b2-baa2-0362a34596a9', 'test_popup_container'),
       ('c926d7d4-fad6-4fe2-904c-f717350cf3c1', 'save_button'),
       ('dc5d9592-3350-4f81-ad6f-490857614cdf', 'gameboard'),
       ('c136e182-ca50-428e-89cd-32c1c1f6fcb3', 'blockly_cut_div'),
       ('93e1074c-ac0f-4f7a-ba89-a7ec80d7afa4', 'test_popup_container'),
       ('37db5c71-be85-497e-9492-e5e7af6d162e', 'blockly_cut_div'),
       ('f9ca10c3-7d0a-47fc-b644-6de8c2cdc5d2', 'test_popup_container'),
       ('99d51d0a-6c9b-4e3f-afef-7f376fc533f0', 'test_popup_container'),
       ('bce0d054-5317-4a42-9310-79d5fc4a60b6', 'test_popup_container'),
       ('ad7d2e94-22d2-40a4-a41f-edb9750e0dd5', 'save_button');

insert into `portal_xmls` (`hint_id`, `portal_xml`, `portal_xml_key`)
values ('95fb2eca-f53a-471e-9a8b-ccdd4ef953d9',
        '<xml xmlns="https://developers.google.com/blockly/xml"><block type="assert_loop" id="Dcfy%LBc=h(7`~uZij#%" x="-417" y="-116"><value name="target"><block type="properties_user_healing" id="TNqEah-IdboQA@6uec%*"><field name="properties">PINKBERRIES</field></block></value><value name="value"><block type="math_arithmetic" id="M]Qfng[KcxW;Qdz%;CdX"><field name="OP">MULTIPLY</field><value name="A"><block type="properties_user_healing" id="qvfFM;55Q.WTCup`/6}H"><field name="properties">ROUNDS</field></block></value><value name="B"></value></block></value></block></xml>',
        5),
       ('95fb2eca-f53a-471e-9a8b-ccdd4ef953d9',
        '<xml xmlns="https://developers.google.com/blockly/xml"><block type="assert_loop" id="Dcfy%LBc=h(7`~uZij#%" x="-417" y="-116"><value name="target"><block type="properties_user_healing" id="TNqEah-IdboQA@6uec%*"><field name="properties">PINKBERRIES</field></block></value><value name="value"><block type="math_arithmetic" id="M]Qfng[KcxW;Qdz%;CdX"><field name="OP">MULTIPLY</field><value name="A"><block type="properties_user_healing" id="qvfFM;55Q.WTCup`/6}H"><field name="properties">ROUNDS</field></block></value><value name="B"><block type="math_number" id="Eem[Vxht-;;+ILj@@lxp"><field name="NUM">2</field></block></value></block></value></block></xml>',
        6),
       ('95fb2eca-f53a-471e-9a8b-ccdd4ef953d9',
        '<xml xmlns="https://developers.google.com/blockly/xml"><block type="properties_user_healing" id="UMzHM8w|b{t?Yuvmd|q1" x="-213" y="-80"><field name="properties">INNERROUNDS</field></block></xml>',
        8),
       ('95fb2eca-f53a-471e-9a8b-ccdd4ef953d9',
        '<xml xmlns="https://developers.google.com/blockly/xml"><block type="assert_loop" id="|C-)UAJJ{W!_!xB]KTA*" x="-543" y="-144"><value name="target"><block type="properties_user_healing" id="QvR*@wh:E]=cnrYuESr0"><field name="properties">PURPLEBERRIES</field></block></value><value name="value"><block type="math_arithmetic" id="M]Qfng[KcxW;Qdz%;CdX"><field name="OP">MULTIPLY</field><value name="A"><block type="properties_user_healing" id="UMzHM8w|b{t?Yuvmd|q1"><field name="properties">INNERROUNDS</field></block></value><value name="B"></value></block></value></block></xml>',
        9),
       ('95fb2eca-f53a-471e-9a8b-ccdd4ef953d9',
        '<xml xmlns="https://developers.google.com/blockly/xml"><block type="assert_loop" id="|C-)UAJJ{W!_!xB]KTA*" x="-543" y="-144"><value name="target"><block type="properties_user_healing" id="QvR*@wh:E]=cnrYuESr0"><field name="properties">PURPLEBERRIES</field></block></value><value name="value"><block type="math_arithmetic" id="M]Qfng[KcxW;Qdz%;CdX"><field name="OP">MULTIPLY</field><value name="A"><block type="properties_user_healing" id="UMzHM8w|b{t?Yuvmd|q1"><field name="properties">INNERROUNDS</field></block></value><value name="B"><block type="math_number" id="Eem[Vxht-;;+ILj@@lxp"><field name="NUM">2</field></block></value></block></value></block></xml>',
        10),
       ('95fb2eca-f53a-471e-9a8b-ccdd4ef953d9',
        '<xml xmlns="https://developers.google.com/blockly/xml"><block type="assert_loop" id="z]Qe^bZnC|WT80_kK-7J" x="-331" y="-131"><value name="target"><block type="properties_user_healing" id="kWr5dp7fdx_?~pO^IpRs"><field name="properties">ROUNDS</field></block></value><value name="value"></value></block></xml>',
        13),
       ('95fb2eca-f53a-471e-9a8b-ccdd4ef953d9',
        '<xml xmlns="https://developers.google.com/blockly/xml"><block type="assert_loop" id="z]Qe^bZnC|WT80_kK-7J" x="-464" y="-328"><value name="target"><block type="properties_user_healing" id="kWr5dp7fdx_?~pO^IpRs"><field name="properties">ROUNDS</field></block></value><value name="value"><block type="math_number" id="Eem[Vxht-;;+ILj@@lxp"><field name="NUM">2</field></block></value></block><block type="properties_user_healing" id="Yrt0G(.{54^/p1%,uu8," x="-362" y="-242"><field name="properties">INNERROUNDS</field></block></xml>',
        14),
       ('95fb2eca-f53a-471e-9a8b-ccdd4ef953d9',
        '<xml xmlns="https://developers.google.com/blockly/xml"><block type="assert_loop" id="z]Qe^bZnC|WT80_kK-7J" x="-401" y="-254"><value name="target"><block type="properties_user_healing" id="kWr5dp7fdx_?~pO^IpRs"><field name="properties">ROUNDS</field></block></value><value name="value"><block type="math_number" id="Eem[Vxht-;;+ILj@@lxp"><field name="NUM">2</field></block></value></block><block type="assert_loop" id="a%wZV2+hvi0+N%ftwFQJ" x="-403" y="-145"><value name="target"><block type="properties_user_healing" id="-)ki4u#CL=(gn?sIINdn"><field name="properties">INNERROUNDS</field></block></value><value name="value"></value></block></xml>',
        15),
       ('95fb2eca-f53a-471e-9a8b-ccdd4ef953d9',
        '<xml xmlns="https://developers.google.com/blockly/xml"><block type="assert_loop" id="z]Qe^bZnC|WT80_kK-7J" x="-401" y="-254"><value name="target"><block type="properties_user_healing" id="kWr5dp7fdx_?~pO^IpRs"><field name="properties">ROUNDS</field></block></value><value name="value"><block type="math_number" id="Eem[Vxht-;;+ILj@@lxp"><field name="NUM">2</field></block></value></block><block type="assert_loop" id="a%wZV2+hvi0+N%ftwFQJ" x="-403" y="-145"><value name="target"><block type="properties_user_healing" id="-)ki4u#CL=(gn?sIINdn"><field name="properties">INNERROUNDS</field></block></value><value name="value"><block type="math_number" id="Fi^bSb[|xVmYGdlLfB,d"><field name="NUM">2</field></block></value></block></xml>',
        16),
       ('95fb2eca-f53a-471e-9a8b-ccdd4ef953d9',
        '<xml xmlns="https://developers.google.com/blockly/xml"><block type="assert_loop" id="z]Qe^bZnC|WT80_kK-7J" x="-602" y="-325"><value name="target"><block type="properties_user_healing" id="kWr5dp7fdx_?~pO^IpRs"><field name="properties">ROUNDS</field></block></value><value name="value"><block type="math_number" id="Eem[Vxht-;;+ILj@@lxp"><field name="NUM">2</field></block></value></block><block type="assert_loop_free" id="@cx7UrFMdINPE4+f8vK1" x="-614" y="-233"><value name="value"><block type="logic_operation" id=".N#$huRFJ^mEn.eXEy/N"><field name="OP">OR</field><value name="A"><block type="logic_compare" id="Updh4`dmqWOl8d}M;g8y"><field name="OP">EQ</field><value name="A"><block type="properties_user_healing" id="]IXkXFo7Bfrt%)(pcp`{"><field name="properties">INNERROUNDS</field></block></value><value name="B"><block type="math_number" id="]z!P6-FSxPCc3tYL#6(1"><field name="NUM">0</field></block></value></block></value><value name="B"><block type="logic_compare" id="Nm[aPSfas{=pI%V2xi.;"><field name="OP">EQ</field><value name="A"><block type="properties_user_healing" id="muID`x2M16psz95jhu;u"><field name="properties">INNERROUNDS</field></block></value><value name="B"><block type="math_number" id="CjijGtPPcPGOIjyT5Pc$"><field name="NUM">2</field></block></value></block></value></block></value></block></xml>',
        17),
       ('95fb2eca-f53a-471e-9a8b-ccdd4ef953d9',
        '<xml xmlns="https://developers.google.com/blockly/xml"><block type="assert_loop" id="z]Qe^bZnC|WT80_kK-7J" x="-602" y="-325"><value name="target"><block type="properties_user_healing" id="kWr5dp7fdx_?~pO^IpRs"><field name="properties">ROUNDS</field></block></value><value name="value"><block type="math_number" id="Eem[Vxht-;;+ILj@@lxp"><field name="NUM">2</field></block></value></block><block type="assert_loop_free" id="@cx7UrFMdINPE4+f8vK1" x="-614" y="-233"><value name="value"><block type="logic_operation" id=".N#$huRFJ^mEn.eXEy/N"><field name="OP">OR</field><value name="A"><block type="logic_compare" id="Updh4`dmqWOl8d}M;g8y"><field name="OP">EQ</field><value name="A"><block type="properties_user_healing" id="]IXkXFo7Bfrt%)(pcp`{"><field name="properties">INNERROUNDS</field></block></value><value name="B"><block type="math_number" id="]z!P6-FSxPCc3tYL#6(1"><field name="NUM">0</field></block></value></block></value><value name="B"><block type="logic_compare" id="Nm[aPSfas{=pI%V2xi.;"><field name="OP">EQ</field><value name="A"><block type="properties_user_healing" id="muID`x2M16psz95jhu;u"><field name="properties">INNERROUNDS</field></block></value><value name="B"><block type="math_number" id="CjijGtPPcPGOIjyT5Pc$"><field name="NUM">2</field></block></value></block></value></block></value></block></xml>',
        18);

insert into `expected_clicked_coordinate` (`id`, `hint_id`, `expected_clicked_coordinates_key`)
values ('ceb6ac41-166b-4877-881b-a8f9e5053119', '95fb2eca-f53a-471e-9a8b-ccdd4ef953d9', 4),
       ('cea11985-4728-4798-81c5-58c217ce75e0', '95fb2eca-f53a-471e-9a8b-ccdd4ef953d9', 7),
       ('14a423a0-b2d6-49dd-bccb-636c6f700ae6', '95fb2eca-f53a-471e-9a8b-ccdd4ef953d9', 11);

insert into `expected_clicked_coordinate_coordinates` (`expected_clicked_coordinate_id`, `x`, `y`)
values ('ceb6ac41-166b-4877-881b-a8f9e5053119', 3, 7),
       ('cea11985-4728-4798-81c5-58c217ce75e0', 3, 5),
       ('14a423a0-b2d6-49dd-bccb-636c6f700ae6', 3, 2);

insert into `hint_expected_user_interaction` (`hint_id`, `expected_user_interaction`, `expected_user_interaction_key`)
values ('95fb2eca-f53a-471e-9a8b-ccdd4ef953d9', 0, 4),
       ('95fb2eca-f53a-471e-9a8b-ccdd4ef953d9', 1, 5),
       ('95fb2eca-f53a-471e-9a8b-ccdd4ef953d9', 2, 6),
       ('95fb2eca-f53a-471e-9a8b-ccdd4ef953d9', 0, 7),
       ('95fb2eca-f53a-471e-9a8b-ccdd4ef953d9', 1, 9),
       ('95fb2eca-f53a-471e-9a8b-ccdd4ef953d9', 2, 10),
       ('95fb2eca-f53a-471e-9a8b-ccdd4ef953d9', 0, 11),
       ('95fb2eca-f53a-471e-9a8b-ccdd4ef953d9', 1, 13),
       ('95fb2eca-f53a-471e-9a8b-ccdd4ef953d9', 1, 15),
       ('95fb2eca-f53a-471e-9a8b-ccdd4ef953d9', 2, 18);

insert into `hint_expected_portal_js_code` (`hint_id`, `expected_portal_js_code`, `expected_portal_js_code_key`)
values ('95fb2eca-f53a-471e-9a8b-ccdd4ef953d9', 'if ((this.pinkBerryCount) !== ((this.roundsCount) * 2)) {\n\tthis._killCritter(x, y, (this.pinkBerryCount), ((this.roundsCount) * 2));\n\tthis.mustWalkOut = true;\n\treturn true;\n}\n', 5),
       ('95fb2eca-f53a-471e-9a8b-ccdd4ef953d9', 'if ((this.purpleBerryCount) !== ((this.innerRoundsCount) * 2)) {\n\tthis._killCritter(x, y, (this.purpleBerryCount), ((this.innerRoundsCount) * 2));\n\tthis.mustWalkOut = true;\n\treturn true;\n}\n', 9),
       ('95fb2eca-f53a-471e-9a8b-ccdd4ef953d9', 'if ((this.roundsCount) !== 2) {\n\tthis._killCritter(x, y, (this.roundsCount), 2);\n\tthis.mustWalkOut = true;\n\treturn true;\n}\n', 13),
       ('95fb2eca-f53a-471e-9a8b-ccdd4ef953d9', 'if ((this.roundsCount) !== 2) {\n\tthis._killCritter(x, y, (this.roundsCount), 2);\n\tthis.mustWalkOut = true;\n\treturn true;\n}\n\nif ((this.innerRoundsCount) !== 2) {\n\tthis._killCritter(x, y, (this.innerRoundsCount), 2);\n\tthis.mustWalkOut = true;\n\treturn true;\n}\n', 15);
