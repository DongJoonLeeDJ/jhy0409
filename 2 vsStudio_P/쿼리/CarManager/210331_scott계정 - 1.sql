--INSERT into deal_t values(deal_t_SEQ.nextval, sysdate,
--    (select se_id from seller_t where se_name='����ġ' 
--    and se_tel='010-8888-8989'), 
--    (select car_id from car_t where car_model='�׷���' 
--    and car_price=40000000), 
--    (select c_id from customer_t where c_name='ȫ�浿' 
--    and c_tel='010-1111-2222'));

SELECT *

  FROM nls_database_parameters

WHERE parameter = 'NLS_CHARACTERSET'

       or parameter = 'NLS_NCHAR_CHARACTERSET'
