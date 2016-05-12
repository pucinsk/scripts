--defektus turincius bent viena pozija, bet neturi tipo
with having_pos as
 (select ddp.defects_id as positions
    from defects_defect_positions ddp, defects df
   where ddp.defects_id = df.id
  MINUS
  select ddt.defects_id
    from defects_defect_types ddt, defects df
   where ddt.defects_id = df.id)
SELECT DISTINCT df.name as DEFEKTAS
  FROM defects_defect_positions ddp,
       defects df,
       having_pos
 WHERE df.id IN (having_pos.positions)
   AND df.id = ddp.defects_id;

with ddt_ids as (
select ddt.defects_id as ids
from defects_defect_types ddt
)
select distinct ddp.defects_id, df.name as Defeckt
from defects_defect_positions ddp, defects df
where ddp.defects_id NOT IN (select ddt_ids.ids from ddt_ids)
AND df.id = ddp.defects_id
