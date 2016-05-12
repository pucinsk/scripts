--Ne anksèiau kaip vakar
SELECT df.name AS DEFEKTAS
       , dt.name AS TIPAS
       , ddt.created_at
  FROM defects df
  , defect_types dt
  , defects_defect_types ddt
 WHERE df.id = ddt.defects_id
   AND ddt.defect_types_id = dt.id
   AND ddt.created_at > SYSDATE - 29/24
   AND ddt.hidden = 0
----Ne vëliau kaip vakar
SELECT df.name AS DEFEKTAS
       , dt.name AS TIPAS
       , ddt.created_at
  FROM defects df
  , defect_types dt
  , defects_defect_types ddt
 WHERE df.id = ddt.defects_id
   AND ddt.defect_types_id = dt.id
   AND ddt.created_at < SYSDATE - 29/24
   AND ddt.hidden = 0

--Tarp uzvakar ir vakar
SELECT df.name AS DEFEKTAS
       , dt.name AS TIPAS
       , ddt.created_at
  FROM defects df
  , defect_types dt
  , defects_defect_types ddt
 WHERE df.id = ddt.defects_id
   AND ddt.defect_types_id = dt.id
   AND ddt.created_at BETWEEN SYSDATE - 53/24 AND SYSDATE - 29/24
   AND ddt.hidden = 0
   

