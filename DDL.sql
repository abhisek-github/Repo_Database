SHOW USER;
DESC EMP1;
CREATE TABLE EMP1 AS SELECT * FROM EMP;
SELECT * FROM EMP1;

ALTER TABLE EMP1 ADD( LOC VARCHAR(10));
ALTER TABLE EMP1 MODIFY LOC VARCHAR2(20);
ALTER TABLE EMP1 DROP COLUMN LOC;

DROP TABLE EMP1;

SELECT * FROM TAB;
FLASHBACK TABLE EMP1 TO BEFORE DROP;
DROP TABLE EMP1 PURGE ;

DESC RECYCLEBIN;
SELECT ORIGINAL_NAME FROM RECYCLEBIN;
PURGE TABLE EMP1;

RENAME EMPLOYEE TO EMP1;----RENAME TABLE 

ALTER TABLE EMP1 RENAME COLUMN LOC TO LOCATION;-- RENAME COLUMN

DELETE FROM EMP1;
ROLLBACK;

COMMIT;------BUCAUSE DML











