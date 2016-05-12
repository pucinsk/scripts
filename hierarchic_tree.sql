SELECT lpad(' ', 2 * (LEVEL - 1)) || tmp_df.id || ' ' || initcap(tmp_df.name) AS "Defect"
      ,LEVEL - 1 AS "Level"
      ,initcap(df.name) as "Parent Defect"
FROM   defects df
      ,defects tmp_df
WHERE  tmp_df.id = df.id
START  WITH tmp_df.defect_parent = 0
CONNECT BY PRIOR tmp_df.id = tmp_df.defect_parent;


SELECT lpad(' ', 2 * (LEVEL - 1)) || df.id || ' ' || initcap(df.name) AS "Defect"
      ,LEVEL - 1 AS "Level"
      ,initcap(tmp_df.name) as "Parent Defect"
FROM   defects df
      ,defects tmp_df
WHERE  tmp_df.id = df.id
START  WITH df.defect_parent = 0
CONNECT BY PRIOR df.id = df.defect_parent;
