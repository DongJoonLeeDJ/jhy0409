-- ������Լ�, ���ν���, Ʈ����...
-- View �������̺� : ����/������ dba�� ���������� �ִ°� ����������x, ���ȶ����� ���..
-- ���� �� drop view
CREATE or REPLACE VIEW v_emp (���, ����̸�, �μ���ȣ, ������)
    as SELECT eno, ename, dno, job
    from employee where job like 'SALESMAN';
    
-- PL/SQL
set SERVEROUTPUT on;
DECLARE
    v_eno number(4); -- ��������
    v_ename employee.ename%type; -- Ÿ�� �״�� ������
    
begin
    v_eno := 7788; -- ���� �ʱ�ȭ
    v_ename := 'scott';
    dbms_output.put_line('�����ȣ             ����̸�');
    dbms_output.put_line('-----------------------------');
    dbms_output.put_line(v_eno ||'               '||v_ename);
end;    