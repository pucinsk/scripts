 with maximumas AS (SELECT countas
                                   FROM (SELECT COUNT(defects_id) countas
                                           FROM defects_defect_types
                                          GROUP BY defects_id
                                          ORDER BY 1 DESC)
                                  WHERE ROWNUM <= 1)
 SELECT df.name as Defektas, COUNT(ddt.defects_id) as "Defektø sk"
   FROM defects df, defects_defect_types ddt, maximumas
  WHERE df.id = ddt.defects_id
  GROUP BY df.name, maximumas.countas
 HAVING COUNT(ddt.defects_id) = maximumas.countas
  ORDER BY 1
