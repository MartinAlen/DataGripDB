select yhjxx,wlbm,ykcdbm,org_id,kclx
from business_50t4
where org_id = '00000287'
  and kclx = 'SAP'
and wlbm='1000137885'
# and ykcdbm='1521'
order by create_date desc ;


select *
from business_50t4
where org_id = '00008413'
  and kclx = 'SAP'
order by create_date desc;


select *
from business_50t4
where wlbm = '1000006490';



select *
from business_50t4
where id = '51d812ec8154018adc8f82db30965e3f';
