INSERT INTO defects_defect_types (defects_id, defect_types_id)
VALUES (1, 1);
INSERT INTO defects_defect_types (defects_id, defect_types_id)
VALUES (2, 2);
INSERT INTO defects_defect_types (defects_id, defect_types_id)
VALUES (3, 3);

INSERT INTO defects_defect_positions (defects_id, defect_positions_id)
VALUES (1, 1);
INSERT INTO defects_defect_positions (defects_id, defect_positions_id)
VALUES (1, 2);
INSERT INTO defects_defect_positions (defects_id, defect_positions_id)
VALUES (2, 1);
INSERT INTO defects_defect_positions (defects_id, defect_positions_id)
VALUES (2, 3);
INSERT INTO defects_defect_positions (defects_id, defect_positions_id)
VALUES (3, 1);
INSERT INTO defects_defect_positions (defects_id, defect_positions_id)
VALUES (3, 3);

COMMIT;


INSERT INTO defects (id, name, description)
VALUES (4, 'stalivišis', 'stalo viršus');
INSERT INTO defects (id, name, description)
VALUES(5, 'rankena', 'stalčiaus rankena');

INSERT INTO defect_positions (id, name, description)
VALUES (4, 'pačioj apačioj', 'pačioj pačioj apačioj');
INSERT INTO defect_positions (id, name, description)
VALUES(5, 'viršuj', 'viršuj viršuj');
INSERT INTO defect_positions (id, name, description)
VALUES (6, 'kairej', 'kairej ieškok');


INSERT INTO defects_defect_positions (defects_id, defect_positions_id)
VALUES (4, 6);
INSERT INTO defects_defect_positions (defects_id, defect_positions_id)
VALUES (4, 4);
INSERT INTO defects_defect_positions (defects_id, defect_positions_id)
VALUES (5, 5);