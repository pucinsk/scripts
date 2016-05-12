--Ne anksèiau kaip vakar
SELECT df.name AS Defektas
       , dp.name AS Pozicja
       , ddp.created_at
  FROM defects df
  , defect_positions dp
  , defects_defect_positions ddp
 WHERE df.id = ddp.defects_id
   AND ddp.defect_positions_id = dp.id
   AND ddp.created_at > to_date('2016 05 11', 'YYYY MM DD')
   AND ddp.hidden = 0;
----Ne vëliau kaip vakar
SELECT df.name AS Defektas
       , dp.name AS Pozicja
       , ddp.created_at as
  FROM defects df
  , defect_positions dp
  , defects_defect_positions ddp
 WHERE df.id = ddp.defects_id
   AND ddp.defect_positions_id = dp.id
   AND ddp.created_at < to_date('2016 05 11', 'YYYY MM DD')
   AND ddp.hidden = 0;

--Tarp uzvakar ir vakar
SELECT df.name AS Defektas
       , dp.name AS Pozicja
       , ddp.created_at
  FROM defects df
  , defect_positions dp
  , defects_defect_positions ddp
 WHERE df.id = ddp.defects_id
   AND ddp.defect_positions_id = dp.id
   AND ddp.created_at BETWEEN to_date('2016 05 10', 'YYYY MM DD') AND to_date('2016 05 11', 'YYYY MM DD')
   AND ddp.hidden = 0
