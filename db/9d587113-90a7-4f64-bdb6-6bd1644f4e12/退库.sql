select m.id,m.tkdbm,s.*
from business_c927 m inner  join business_z6nu s on m.id=s.father_id
where tkdbm='SBTKD4010202307060001';
# where m.serial='20230706152240404';

# 子表
select wlbm,ckdid
from business_z6nu where father_id='f85cf78dc6064bebbf9e48f74e4e423a';

select *
from business_1dmt
where id = '9041e2dd7e2e46b19275f2effe2b6192';



select ktsl,*
from business_m3wc where id ='9041e2dd7e2e46b19275f2effe2b6192';