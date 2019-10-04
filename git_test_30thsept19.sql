SET DEFINE OFF
SET DEFINE ON
CREATE TABLE TEST_NAME(ENAME VARCHAR2(20),DEPTNO NUMBER);
INSERT INTO TEST_NAME VALUES('ABHISEK&MOHANTY',10);
SELECT * FROM TEST_NAME;
SELECT * FROM EMP
WHERE DEPTNO IN(20,30,40);
SELECT * FROM EMP
WHERE DEPTNO NOT IN(10,20);
--SELECT * FROM SALGRADE;

SELECT E.ENAME,E.DEPTNO,E.SAL,S.LOSAL,S.HISAL,S.GRADE
FROM EMP E INNER JOIN SALGRADE S
ON E.SAL BETWEEN S.LOSAL AND S.HISAL;

SELECT * FROM EMP WHERE COMM IS NULL;
SELECT * FROM EMP WHERE COMM IS NOT NULL;

SELECT ENAME,SAL,COMM,SAL+COMM SALCOM FROM EMP 
WHERE COMM IS NOT NULL;

SELECT ENAME,SAL,DEPTNO,SAL+(NVL(COMM,0)) COMM
FROM EMP;
SELECT ENAME,COMM FROM EMP;
SELECT ENAME,SAL,DEPTNO,SAL+(NVL2(COMM,COMM+500,100)) COMM
FROM EMP;
SELECT * FROM DEPT;
SELECT * FROM BONUS;
SELECT E.ENAME,E.SAL,E.DEPTNO,S.GRADE FROM EMP E INNER JOIN SALGRADE S  --BETWEEN operator
ON E.SAL BETWEEN S.LOSAL AND S.HISAL;
ALTER TABLE EMP1 DROP COLUMN LOCATION;                                  --DROP A COLUMN ex:LOCATION
INSERT INTO EMP1(ENAME) VALUES('S_MITH');                               --INSERTED RECORD TO TEST LIKE OPERATOR WITH WILD CARD CHARACTER
INSERT INTO EMP1(ENAME) VALUES('S__MITH');
SELECT * FROM EMP1 WHERE ENAME LIKE 'SA_%' ESCAPE 'A';                  --FOR 'S_MITH'
SELECT * FROM EMP1 WHERE ENAME LIKE 'SA_A_%' ESCAPE 'A';                -- FOR 'S__MITH'





































