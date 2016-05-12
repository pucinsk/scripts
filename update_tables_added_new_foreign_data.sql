UPDATE defect_types
SET defects_id = 1
WHERE id = 1;

UPDATE defect_types
SET defects_id = 2
WHERE id = 2;

UPDATE defect_types
SET defects_id = 3
WHERE id = 3;

UPDATE defect_positions
SET defects_id = 1
WHERE id = 1;

UPDATE defect_positions
SET defects_id = 2
WHERE id = 2;

UPDATE defect_positions
SET defects_id = 3
WHERE id = 3;

COMMIT;
