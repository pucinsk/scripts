INSERT INTO defects (id, name, description)
VALUES (1, 'varþtas', 'sutvirtinimo varþtas');
INSERT INTO defects (id, name, description)
VALUES (2, 'ratukas', 'këdës ratukas');
INSERT INTO defects (id, name, description)
VALUES(3, 'atloðas', 'këdës atloðas');

INSERT INTO defect_types (id, name, description)
VALUES (1, 'prasisukæs varþtas', 'varþtas yra prasisukæs');
INSERT INTO defect_types (id, name, description)
VALUES(2, 'nëra ratuko', 'dingæs këdës penktas këdës ratukas');
INSERT INTO defect_types (id, name, description)
VALUES(3, 'ne ta spalva', 'atloðas juodos spalvos, turëjo bûti raudonas');

INSERT INTO defect_positions (id, name, description)
VALUES (1, 'apaèioj kairëj', 'apaèioj kairëj po këde');
INSERT INTO defect_positions (id, name, description)
VALUES(2, 'apaèioje këdës', 'këdës kojos apaèioje');
INSERT INTO defect_positions (id, name, description)
VALUES(3, 'virðuje këdës', 'këdës atloðas, kuris yra virðuje, yra ne tos spalvos');

COMMIT;
