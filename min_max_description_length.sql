SELECT * FROM (
  SELECT name || ' - '|| description || ' '||length(description) as Defektas
  FROM defects
  ORDER BY length(description) ASC
) WHERE ROWNUM <= 1

SELECT name || ' - '|| description || ' '||length(description) as Defektas
FROM defects
WHERE length(description) = (
  SELECT (min(length(description)))
  FROM defects
)
