-- 참조돼도 강제로 지움 or emplo -> dep -> sal
--DROP TABLE DEPARTMENT;

DROP TABLE department CASCADE CONSTRAINTS;
CREATE TABLE department (
    dno NUMBER(2) CONSTRAINT pk_dept PRIMARY KEY,
    dname VARCHAR2(14), 
    loc VARCHAR2(13));
    
DROP TABLE employee;
CREATE TABLE employee (
    eno NUMBER(4) CONSTRAINT pk_emp PRIMARY KEY,
    ename VARCHAR2(20),
    JOB VARCHAR(9),
    MANAGER NUMBER(4),
    hiredate DATE,
    salary NUMBER(7,2),
    commission NUMBER(7, 2),
    dno NUMBER(2) CONSTRAINT fk_dno REFERENCES department);
    
DROP TABLE salgrade;
CREATE TABLE salgrade (
    grade NUMBER,
    losal NUMBER,
    hisal NUMBER);
-- 테이블이 클래스, 엔티티가 인스턴스 변수, 클래스 유사

INSERT INTO department VALUES (10, 'ACCOUNTING', 'NEW YORK');
INSERT INTO department VALUES (20, 'RESEARCH', 'DALLAS');
INSERT INTO department VALUES (30, 'SALES', 'CHICAGO');
INSERT INTO department VALUES (40, 'OPERATIONS', 'BOSTON');

INSERT INTO employee VALUES (7369, 'SMITH', 'CLERK', 7902,
TO_DATE('17-12-1980', 'dd-mm-yyyy'), 800, NULL, 20);
INSERT INTO employee VALUES (7499, 'ALL', 'SALESMAN', 7698,
TO_DATE('20-2-1981', 'dd-mm-yyyy'), 1600, 300, 30);
INSERT INTO employee VALUES (7521, 'WARD', 'SALESMAN', 7698,
TO_DATE('22-2-1981', 'dd-mm-yyyy'), 1250, 500, 30);
INSERT INTO employee VALUES (7566, 'JONES', 'MANAGER', 7839,
TO_DATE('2-4-1981', 'dd-mm-yyyy'), 2975, NULL, 20);
INSERT INTO employee VALUES (7654, 'MARTIN', 'SALESMAN', 7698,
TO_DATE('28-9-1981', 'dd-mm-yyyy'), 1250, 1400, 30);
INSERT INTO employee VALUES (7782, 'CLARK', 'MANAGER', 7839,
TO_DATE('9-6-1981', 'dd-mm-yyyy'), 2450, NULL, 10);
INSERT INTO employee VALUES (7788, 'SCOTT', 'ANALYST', 7566,
TO_DATE('13-07-1987', 'dd-mm-yyyy'), 3000, NULL, 20);        
INSERT INTO employee VALUES (7839, 'KING', 'PRESIDENT', 5000,
TO_DATE('17-11-1981', 'dd-mm-yyyy'), 5000, NULL, 10);
INSERT INTO employee VALUES (7844, 'TURNER', 'SALESMAN', 7698,
TO_DATE('8-9-1981', 'dd-mm-yyyy'), 1500, 0, 30);
INSERT INTO employee VALUES (7876, 'ADAMS', 'CLERK', 7788,
TO_DATE('28-9-1981', 'dd-mm-yyyy'), 1250, 1400, 30);
INSERT INTO employee VALUES (7900, 'JAMES', 'CLERK', 7698,
TO_DATE('3-12-1981', 'dd-mm-yyyy'), 950, NULL, 30);
INSERT INTO employee VALUES (7902, 'FORD', 'ANALYST', 7566,
TO_DATE('3-12-1981', 'dd-mm-yyyy'), 3000, NULL, 20);
INSERT INTO employee VALUES (7934, 'MILLER', 'CLERK', 7698,
TO_DATE('23-1-1981', 'dd-mm-yyyy'), 1300, NULL, 10);
INSERT INTO salgrade VALUES (1, 700, 1200);
INSERT INTO salgrade VALUES (2, 1201, 1400);
INSERT INTO salgrade VALUES (3, 1401, 2000);
INSERT INTO salgrade VALUES (4, 2001, 3000);
INSERT INTO salgrade VALUES (5, 3001, 9999);

COMMIT;
--rollback;
