CREATE TABLE defects_defect_positions (
defects_id NUMBER(5) NOT NULL,
defect_positions_id NUMBER(5) NOT NULL,
CONSTRAINT fk1_defects_defect_positions FOREIGN KEY (defects_id)
REFERENCES defects(id),
CONSTRAINT fk2_defects_defect_positions FOREIGN KEY (defect_positions_id)
REFERENCES defect_positions(id)
);

CREATE TABLE defects_defect_types (
defects_id NUMBER(5) NOT NULL,
defect_types_id NUMBER(5) NOT NULL,
CONSTRAINT fk1_defects_defect_types FOREIGN KEY (defects_id)
REFERENCES defects(id) ,
CONSTRAINT fk2_defects_defect_types FOREIGN KEY (defect_types_id)
REFERENCES defect_types(id)
);
