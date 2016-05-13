--Visi defektai vienoj eilutëj atskirti kabliataðkiais

SELECT listagg(INITCAP(defects.name), '; ')
WITHIN GROUP
(ORDER BY 1) names
FROM defects
