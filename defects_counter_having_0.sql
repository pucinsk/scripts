SELECT defects.name AS Defektas, COUNT(defect_types.id) as Counter
  FROM defects, defect_types
 WHERE defects.id = defect_types.defects_id(+)
 GROUP BY defects.name
 HAVING COUNT(defect_types.id) = 0
 ORDER BY Counter DESC;

