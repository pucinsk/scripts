SELECT LPAD(' ', 2 * (LEVEL - 1)) || dt.id || ' ' || initcap(dt.name) AS "Defect"
       ,LEVEL - 1 AS "Level"
       ,initcap(tmp_dt.name) AS "Parent Defect Type"
FROM   defect_types dt
      ,defect_types tmp_dt
WHERE  tmp_dt.id = dt.id
START  WITH dt.defect_type_parent = 0
CONNECT BY PRIOR dt.id = dt.defect_type_parent;
