SELECT LPAD(' ', 2 * (LEVEL - 1)) || dp.id || ' ' || initcap(dp.name) AS "Defect"
       ,LEVEL - 1 AS "Level"
       ,initcap(tmp_dp.name) AS "Parent Defect Pos"
FROM   defect_positions dp
      ,defect_positions tmp_dp
WHERE  tmp_dp.id = dp.id
START  WITH dp.defect_position_parent = 0
CONNECT BY PRIOR dp.id = dp.defect_position_parent;


