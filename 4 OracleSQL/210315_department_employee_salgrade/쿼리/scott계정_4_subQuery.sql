-- ���������� �ڿ������� �ۼ�
SELECT ename, dno FROM employee
    where dno = (SELECT dno from employee where ename ='SCOTT');