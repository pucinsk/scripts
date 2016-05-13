--Description short
SELECT df.name
      ,df.description
      ,CASE
         WHEN LENGTH(df.description) > 11 THEN
          substr(df.description, 0, 8) || '...'
         ELSE
          df.description
       END short_desc
FROM   defects df

---
