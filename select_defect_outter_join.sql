SELECT defects.name AS Defektas,
       defect_types.name AS Defekto_tipas,
       defect_positions.name AS Defekto_pozicija
  FROM defects, defect_types, defect_positions
  WHERE  defects.id = defect_types.defects_id(+)
  AND defects.id = defect_positions.defects_id(+);
  
  
    
