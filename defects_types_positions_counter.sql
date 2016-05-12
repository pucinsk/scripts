--kiek defektø tipø, ir kiek pozicijø prisikirta kiekvienam defektui
--PARTITION OVER CHECK IT OUT
WITH types_counter AS (
SELECT ddt.defects_id, COUNT(ddt.defects_id) as countas
          FROM defects df, defects_defect_types ddt
          WHERE df.id = ddt.defects_id
          GROUP BY ddt.defects_id
),
positions_counter as (
SELECT ddp.defects_id, COUNT(ddp.defects_id) as countas
          FROM defects df, defects_defect_positions ddp
          WHERE df.id = ddp.defects_id
          GROUP BY ddp.defects_id
)
SELECT df.name as DEFECT, tc.countas, pc.countas
  FROM defects df, types_counter tc, positions_counter pc
  WHERE df.id = tc.defects_id AND df.id = pc.defects_id
  ORDER BY 2 DESC, 3 DESC;
