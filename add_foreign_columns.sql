ALTER TABLE defect_types
ADD defects_id NUMBER(5); 

ALTER TABLE defect_positions
ADD defects_id NUMBER(5); 

COMMIT;

ALTER TABLE defect_types
ADD FOREIGN KEY (defects_id)
REFERENCES defects(id);

ALTER TABLE defect_positions
ADD FOREIGN KEY (defects_id)
REFERENCES defects(id);

COMMIT;
