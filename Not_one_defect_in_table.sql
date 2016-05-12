  
SELECT DISTINCT df.name AS Defektas
  FROM defects df, defect_positions dp
 WHERE df.id = dp.defects_id
   AND LOWER(dp.name) NOT LIKE LOWER('%apaèioj kairëj%')
UNION
SELECT df.name AS Defektas
  FROM defects df, defect_positions dp
 WHERE df.id NOT IN (SELECT dp.defects_id FROM defect_positions dp);
