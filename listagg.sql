--Visi defektai vienoj eilut�j atskirti kabliata�kiais

SELECT listagg(INITCAP(defects.name), '; ')
WITHIN GROUP
(ORDER BY 1) names
FROM defects
