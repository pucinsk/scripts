SELECT defects.name AS Defektas,
       defect_types.name AS Defekto_tipas,
       defect_positions.name AS Defekto_pozicija
  FROM defects 
  LEFT OUTER JOIN defect_types
  ON defects.id = defect_types.defects_id
  LEFT OUTER JOIN defect_positions
  ON defects.id = defect_positions.id;
  
  
    
