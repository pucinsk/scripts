INSERT INTO defects (id, name, description)
VALUES (1, 'var�tas', 'sutvirtinimo var�tas');
INSERT INTO defects (id, name, description)
VALUES (2, 'ratukas', 'k�d�s ratukas');
INSERT INTO defects (id, name, description)
VALUES(3, 'atlo�as', 'k�d�s atlo�as');

INSERT INTO defect_types (id, name, description)
VALUES (1, 'prasisuk�s var�tas', 'var�tas yra prasisuk�s');
INSERT INTO defect_types (id, name, description)
VALUES(2, 'n�ra ratuko', 'ding�s k�d�s penktas k�d�s ratukas');
INSERT INTO defect_types (id, name, description)
VALUES(3, 'ne ta spalva', 'atlo�as juodos spalvos, tur�jo b�ti raudonas');

INSERT INTO defect_positions (id, name, description)
VALUES (1, 'apa�ioj kair�j', 'apa�ioj kair�j po k�de');
INSERT INTO defect_positions (id, name, description)
VALUES(2, 'apa�ioje k�d�s', 'k�d�s kojos apa�ioje');
INSERT INTO defect_positions (id, name, description)
VALUES(3, 'vir�uje k�d�s', 'k�d�s atlo�as, kuris yra vir�uje, yra ne tos spalvos');

COMMIT;
