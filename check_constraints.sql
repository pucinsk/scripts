ALTER TABLE defects
ADD CONSTRAINT chk2_defects CHECK (REGEXP_LIKE('[A-Z]%'));


ALTER TABLE defects
ADD CONSTRAINT chk1_defects CHECK (REGEXP_LIKE(name, '[^0-9]*'));


ALTER TABLE defects 
ADD (CONSTRAINT chk1_defects CHECK (REGEXP_LIKE(name, '[^0-9]')),
     CONSTRAINT chk2_defects CHECK (REGEXP_LIKE(description, '^[A-Z]')));

INSERT INTO defects ( name, description, defect_parent)
VALUES ('1b11nana', 'blablabla', 6)
commit
select * from defects;
COMMIT;

alter table
defects drop Constraint chk1_defects
