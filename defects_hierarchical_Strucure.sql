DELIMITER //
CREATE PROCEDURE defect_name(
  IN parentid number(5),
  OUT defect_id number(5))
        
BEGIN
    SELECT COUNT(*)
    INTO ALLREADYIN
    FROM GROUPS
    WHERE G_NAME = NAME;
END//
DELIMITER ;

SELECT LPAD(' ',2 * (LEVEL - 1)) ||  INITCAP(name)
      ,LEVEL as Lygis
      ,defect_parent
FROM   defects
START  WITH defect_parent = 0
CONNECT BY PRIOR id = defect_parent;
