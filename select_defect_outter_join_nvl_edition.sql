SELECT defects.name AS Defektas,
       NVL(defect_types.name, 'NERASTAS') AS Defekto_tipas,
       NVL(defect_positions.name, 'NERASTAS') AS Defekto_pozicija
  FROM defects, defect_types, defect_positions
 WHERE defects.id = defect_types.defects_id(+)
   AND defects.id = defect_positions.defects_id(+);
