CREATE TABLE defects(
id NUMBER(5) NOT NULL,
name VARCHAR2(50) NOT NULL,
description VARCHAR2(254) NOT NULL, 
 
CONSTRAINT pk_defects PRIMARY KEY(id));

CREATE TABLE defect_types(
id NUMBER(5) NOT NULL,
name VARCHAR2(50) NOT NULL,
description VARCHAR2(254) NOT NULL, 
CONSTRAINT pk_defect_types PRIMARY KEY(id));

CREATE TABLE defect_positions(
id NUMBER(5) NOT NULL,
name VARCHAR2(50) NOT NULL,
description VARCHAR2(254) NOT NULL, 
CONSTRAINT pk_defect_positions PRIMARY KEY(id));
