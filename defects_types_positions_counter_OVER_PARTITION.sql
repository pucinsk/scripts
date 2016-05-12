WITH types_counter AS
 (SELECT DISTINCT ddt.defects_id
         , ddt.defect_types_id
         , COUNT(ddt.defects_id) OVER(PARTITION BY ddt.defects_id) as countas
    FROM defects df, defects_defect_types ddt
   WHERE df.id = ddt.defects_id),
positions_counter AS
 (SELECT DISTINCT ddp.defects_id,
         COUNT(ddp.defects_id) OVER(PARTITION BY ddp.defects_id) as countas
    FROM defects df, defects_defect_positions ddp
   WHERE df.id = ddp.defects_id)
SELECT df.name as DEFECT, tc.countas as TypesCount, pc.countas as PositionCount
  FROM defects df, types_counter tc, positions_counter pc
 WHERE df.id = tc.defects_id
   AND df.id = pc.defects_id
 ORDER BY 2 DESC, 3 DESC;
