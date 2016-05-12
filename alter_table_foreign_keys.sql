ALTER TABLE defect_types 
ADD CONSTRAINT fk1_defect_types
FOREIGN KEY (defects_id) REFERENCES defects(id)

ALTER TABLE defect_positions 
ADD CONSTRAINT fk1_defect_positions
FOREIGN KEY (defects_id) REFERENCES defects(id)
