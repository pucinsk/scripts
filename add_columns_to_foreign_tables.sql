ALTER TABLE defects_defect_types
ADD (
    hidden number(5) DEFAULT 0 NOT NULL
    , created_at date DEFAULT SYSDATE NOT NULL
    , created_by varchar2(50) DEFAULT '' NOT NULL
);

ALTER TABLE defects_defect_positions
ADD (
    hidden number(5)
    , created_at date DEFAULT SYSDATE
    , created_by varchar2(50)
);

