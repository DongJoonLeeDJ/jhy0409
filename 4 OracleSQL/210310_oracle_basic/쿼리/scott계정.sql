/*
--���̺� ����
CREATE TABLE mytable (
    ID NUMBER NOT NULL, 
    NAME VARCHAR2(20) NOT NULL,
    age NUMBER NOT NULL, 
    addr VARCHAR2(80) NOT NULL,
    CONSTRAINT pk_mytable_id PRIMARY KEY(ID));

-- ������ �Է�
INSERT INTO testtable values ('bbb');
*/
/*
--���������� ã�ƺ��� 
ALTER TABLE studentaddr drop PRIMARY key;
ALTER TABLE studentaddr MODIFY (ID NULL);
alter table studentaddr modify name null;

*/

/* 
--����Ʈ��
-- 1. ������ �� ��ü ����
SELECT COUNT(*) from studentaddr;

-- 2. ���̺� ����
CREATE TABLE studentaddr (
    ID NUMBER NOT NULL, 
    NAME VARCHAR(20) NOT NULL,
    age NUMBER NOT NULL, 
    addr VARCHAR(80) NOT NULL,
    CONSTRAINT pk_studentaddr_id PRIMARY KEY(ID));

-- ������ ����
INSERT INTO studentaddr values (1,'bbb',55,'3�� 10�� �ǽ���');

-- ������ ���̵�..
CREATE SEQUENCE seq_id INCREMENT by 1 START with 1;

-- ������ ����
drop SEQUENCE seq_id;
-- [���� ��� ����]
INSERT INTO studentaddr VALUES (seq_id.nextval, '�̸��̸�', 999, '0310 �ǽ�, �ּ��ڸ�');

-- 3. ���̺� ��������
desc studentaddr;

-- 4. ���̺� ����
ALTER TABLE studentaddr add (name2 varchar2(40));
ALTER TABLE studentaddr MODIFY (name2 VARCHAR2(50));
ALTER TABLE studentaddr RENAME COLUMN name2 to name4;
ALTER TABLE studentaddr DROP COLUMN name4;

-- 6. ��Ű ����
ALTER TABLE studentAddr add CONSTRAINT pk_student_id primary key(id);

--7. �⺻���� ó����
INSERT INTO studentaddr values (seq_id.nextval,'�ֱ浿',100,'99_3�� 10�� �ǽ���');

SELECT * from studentaddr;
SELECT id, name, age from studentaddr where id = 13;
SELECT * FROM studentaddr WHERE id = 15;
SELECT * FROM studentaddr WHERE name is null;
SELECT * FROM studentaddr WHERE name like '%�浿';

SELECT * FROM studentaddr order by name;
SELECT * FROM studentaddr order by name desc;
SELECT * FROM studentaddr WHERE name like '%�浿' ORDER by id desc;

delete from studentaddr where id = 30;
SELECT * FROM studentaddr WHERE name like '%�浿' ORDER by id desc;
delete from studentaddr where id BETWEEN 21 and 31;
SELECT * FROM studentaddr;

UPDATE studentaddr set name = '�����ߴ�.' where id = 2;
UPDATE studentaddr set name = '�����ߴ�.', age= 999, addr = '��������������������' where id BETWEEN 1 and 32 ;

UPDATE studentaddr set name = '????', age= 555, addr = '5555555' where name like '%�浿' ;
*/

SELECT * FROM studentaddr;


