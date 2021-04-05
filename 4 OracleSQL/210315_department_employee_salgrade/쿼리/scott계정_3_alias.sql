/*
SELECT sum(salary) as "�޿��Ѿ�",
    avg(salary) as "�޿����",
    max(salary) as "�ִ�޿�",
    min(salary) as "�ּұ޿�" from employee;
    
select count(*) as "��� ��" from employee;

-- DISTINCT �ߺ� ����
select count(DISTINCT job) as "���� ���� ����" from employee; 
select dno as "�μ� ��ȣ", avg(salary) as "�޿� ���"
    from employee GROUP by dno;
SELECT dno, job, COUNT(*), sum(salary) from employee
    group by dno, job order by dno, job; 
-- desc

SELECT dno, MAX(salary) FROM employee 
    GROUP by dno having max(salary) >= 3000;

-- ����, Equal join
select * from employee, department where employee.dno = department.dno;
*/

-- 1. ��Ī �ο� employee e, department d
SELECT e.eno, e.ename, d.dname, e.dno 
    FROM employee e, department d 
    where e.dno = d.dno and e.eno = 7788;

-- 2. dno > from employee e�� ���� (������)
select e.eno, e.ename, d.dname, dno 
    from employee e join department d using(dno) 
    where e.eno = 7788;

-- 3. 1==2==3
SELECT e.eno, e.ename, d.dname, e.dno 
    from employee e join department d
    on e.dno = d.dno where e.eno = 7788;
    
SELECT e.ename, d.dname, e.salary, s.grade 
    FROM employee e, department d, salgrade s
    where e.dno=d.dno and e.salary BETWEEN losal and s.hisal;
