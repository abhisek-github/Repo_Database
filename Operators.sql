SELECT * FROM EMP;

SELECT ENAME,SAL,SAL*12 ANNUAL_SAL FROM EMP
WHERE ANNUAL_SAL>20000;----------ERROR CAN'T USE CLOUMN ALIAS NAME

SELECT ENAME,SAL,SAL*12 ANNUAL_SAL FROM EMP
WHERE SAL*12>20000;

SELECT * FROM DEPT
