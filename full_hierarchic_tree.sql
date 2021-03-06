--Defects
SELECT LPAD(' ', 2 * (LEVEL - 1)) || df.id || ' ' || initcap(df.name) AS "Defect"
       ,LEVEL - 1 AS "Level"
       ,initcap(tmp_df.name) AS "Parent Defect"
FROM   defects df
      ,defects tmp_df
WHERE  tmp_df.id = df.id
START  WITH df.defect_parent = 0
CONNECT BY PRIOR df.id = df.defect_parent;

--Pos
WITH all_defects AS (
     SELECT df.*, dt.*, dp.*, ddp.*, ddt.*
     FROM defects df, defect_positions dp, defect_types dt, defects_defect_positions ddp, defects_defect_types ddt
     WHERE df.id = ddp.defects_id(+)
     AND   ddp.defect_positions_id = dp.id(+)
     AND   df.id = ddt.defects_id(+)
     AND   ddt.defect_types_id = dt.id(+)
)
WITH all_defects AS (
     SELECT df.id, df.name, df.defect_parent, dt.id, dt.name, dt.defect_type_parent
     FROM defects df,defect_types dt, defects_defect_types ddt
     WHERE df.id = ddt.defects_id(+)
     AND   ddt.defect_types_id = dt.id(+)
)
SELECT LPAD(' ', 2 * (LEVEL - 1)) || (SELECT all_defects


SELECT 'Positions:' AS "Defect", 0 as "Level", '-' as "Parent Defect Pos" FROM dual
UNION
SELECT LPAD(' ', 2 * (LEVEL - 1)) || dp.id || ' ' || initcap(dp.name) AS "Defect"
       ,LEVEL - 1 AS "Level"
       ,initcap(tmp_dp.name) AS "Parent Defect Pos"
FROM   defect_positions dp
      ,defect_positions tmp_dp
WHERE  tmp_dp.id = dp.id
START  WITH dp.defect_position_parent = 0
CONNECT BY PRIOR dp.id = dp.defect_position_parent;











--Types
SELECT LPAD(' ', 2 * (LEVEL - 1)) || dt.id || ' ' || initcap(dt.name) AS "Defect"
       ,LEVEL - 1 AS "Level"
       ,initcap(tmp_dt.name) AS "Parent Defect Type"
FROM   defect_types dt
      ,defect_types tmp_dt
WHERE  tmp_dt.id = dt.id
START  WITH dt.defect_type_parent = 0
CONNECT BY PRIOR dt.id = dt.defect_type_parent;
