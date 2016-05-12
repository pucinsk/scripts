SELECT defects.name AS Defektas
,       DECODE(defect_types.name, NULL, 'Nerasta', 'Rasta') as Defekto_TIPAS
,       DECODE(defect_positions.name, NULL, 'Nerasta', 'Rasta') as Defekto_Pozicija
  FROM defects, defect_types, defect_positions
 WHERE defects.id = defect_types.defects_id(+)
   AND defects.id = defect_positions.defects_id(+);
