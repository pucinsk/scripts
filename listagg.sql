--Visi defektai vienoj eilutėj atskirti kabliataškiais

SELECT listagg(INITCAP(defects.name), '; ')
WITHIN GROUP
(ORDER BY 1) names
FROM defects
