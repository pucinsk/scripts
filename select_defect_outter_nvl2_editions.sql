SELECT defects.name AS Defektas
,       NVL2(defect_types.name, 'Rasta', 'Nerasta') as Defekto_TIPAS
,       NVL2(defect_positions.name, 'Rasta', 'Nerasta') as Defekto_Pozicija
  FROM defects, defect_types, defect_positions
 WHERE defects.id = defect_types.defects_id(+)
   AND defects.id = defect_positions.defects_id(+);
