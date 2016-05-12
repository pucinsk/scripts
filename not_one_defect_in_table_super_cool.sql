SELECT df.name AS Defektas
  FROM defects df, defect_positions dp
 where df.id = dp.defects_id(+)
   and nvl(lower(dp.name), '1') != 'apaèioj kairëj'
