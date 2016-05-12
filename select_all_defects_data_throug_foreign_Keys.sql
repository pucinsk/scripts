SELECT df.name as DEFEKTAS,
       df.description "DEFEKTO APIBUDINIMAS",
       dt.name "TIPAS",
       dt.description "TIPO APIBUDINIMAS",
       dp.name "VIETA",
       dp.description "VIETOS APIBUDINIMAS"
  FROM defects                  df,
       defect_types             dt,
       defect_positions         dp,
       defects_defect_types     ddt,
       defects_defect_positions ddp
 WHERE df.id = ddt.defects_id(+)
   AND ddt.defect_types_id = dt.id(+)
   AND df.id = ddp.defects_id(+)
   AND ddp.defect_positions_id = dp.id(+)
 ORDER BY df.name
