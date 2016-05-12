SELECT df.name AS defektas
      ,dt.name AS tipas
      ,TO_CHAR(TO_DATE(ddt.created_at
                      ,'YYYY.MM.DD')) AS "Created at"
FROM   defects              df
      ,defect_types         dt
      ,defects_defect_types ddt
WHERE  ddt.created_at IN (SELECT MAX(created_at)
                          FROM   defects_defect_types
                          UNION
                          SELECT MIN(created_at)
                          FROM   defects_defect_types)
AND    ddt.defects_id = df.id
AND    ddt.defect_types_id = dt.id
ORDER  BY 3 DESC
