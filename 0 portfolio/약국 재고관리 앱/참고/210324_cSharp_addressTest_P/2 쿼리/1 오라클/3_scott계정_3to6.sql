/*
-- 3. �̸��� ���ڸ��� ����'���� ������ ��� �̸��� �˻��ϰ� id �� ������������ �����Ͻÿ�. 
SELECT * from namecard where name like '%��' order by id desc;

-- 4. ��浿�� �̸��� �˻��Ͽ� ����ġ�� �����ϰ� name�� ������������ �����Ͻÿ�. 
UPDATE namecard set name='����ġ' where name = '��浿';
select * from namecard order by name;

-- 5. ����ġ �̸��� �˻��Ͽ� ������ �����Ͻÿ�. 
DELETE from namecard where name = '����ġ';
select * from namecard;

-- 6. namecard�� �����Ͽ� namecard_copy ���̺��� �����Ͻÿ�.
-- - ��, ��浿 �����͸� namecard_copy�� ����ǰ� �Ͻÿ�.

CREATE TABLE namecard_copy as SELECT * from namecard where name like '��浿';
*/