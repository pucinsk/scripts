--rasti defektus, defektø tipus/pozicijas, kurie nëra hidden

UPDATE defects_defect_types 
SET hidden = 1
WHERE defects_id IN (1, 3, 6);

UPDATE defects_defect_positions
SET hidden = 1
WHERE defects_id IN (2, 3, 5);

SELECT df.name AS DEFEKTAS
       , dt.name AS TIPAS
  FROM defects df
  , defect_types dt
  , defects_defect_types ddt
 WHERE df.id = ddt.defects_id
   AND ddt.defect_types_id = dt.id
   AND ddt.hidden = 0


SELECT df.name AS DEFEKTAS
, dp.name AS POZICIJA
  FROM defects df
  , defect_positions dp
  , defects_defect_positions ddp
 WHERE df.id = ddp.defects_id
   AND ddp.defect_positions_id = dp.id
   AND ddp.hidden = 0
