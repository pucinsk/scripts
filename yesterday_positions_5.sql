--Ne anksèiau kaip vakar
SELECT df.name AS Defektas
       , dp.name AS Pozicja
       , ddp.created_at
  FROM defects df
  , defect_positions dp
  , defects_defect_positions ddp
 WHERE df.id = ddp.defects_id
   AND ddp.defect_positions_id = dp.id
   AND ddp.created_at > SYSDATE - 29/24
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
   AND ddp.created_at < SYSDATE - 29/24
   AND ddp.hidden = 0;

--defektu tipas, tipas, data naujausias / seniausias
--Tarp uzvakar ir vakar
SELECT df.name AS Defektas
       , dp.name AS Pozicja
       , to_char(to_date(ddp.created_at, 'YYYY.MM.DD')) AS "CREATED AT"
         FROM defects df
  , defect_positions dp
  , defects_defect_positions ddp
 WHERE df.id = ddp.defects_id
   AND ddp.defect_positions_id = dp.id
   AND ddp.created_at BETWEEN SYSDATE - 53/24 AND SYSDATE - 29/24
   AND ddp.hidden = 0
