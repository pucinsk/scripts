SELECT defects.name AS Defektas,
       CASE
         WHEN defect_types.name IS NULL
           THEN 'NERASTA'
             ELSE 'RASTA'
               END AS Defekto_TIPAS,
       CASE
         WHEN  defect_positions.name IS NULL
           THEN 'NERASTA'
             ELSE 'RASTA'
               END AS Defekto_pozicija
       --NVL(defect_types.name, 'NERASTAS') AS Defekto_tipas,
       --NVL(defect_positions.name, 'NERASTA') AS Defekto_pozicija
  FROM defects, defect_types, defect_positions
 WHERE defects.id = defect_types.defects_id(+)
   AND defects.id = defect_positions.defects_id(+);
