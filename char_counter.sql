--Bent viena A raide description

SELECT defects.name
      ,defects.description
      ,LENGTH(lower(defects.description)) - LENGTH(REPLACE(lower(defects.description)
                                                          ,'a'
                                                          ,'')) AS charcounter
FROM   defects
--WHERE lower(defects.description)LIKE '%m%'
