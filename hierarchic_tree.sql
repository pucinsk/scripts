SELECT LPAD(' ', 2 * (LEVEL - 1)) || df.id || ' ' || INITCAP(df.name) AS "Defect"
       ,LEVEL - 1 AS "Level"
       ,INITCAP(tmp_df.name) AS "Parent Defect"
FROM   defects df
      ,defects tmp_df
WHERE  tmp_df.id = df.id
START  WITH df.defect_parent = 0
CONNECT BY PRIOR df.id = df.defect_parent;
