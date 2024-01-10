select yhjxx, wlbm, ykcdbm, org_id, kclx,create_date,update_date
from business_50t4
where 1 = 1
#   and org_id = '00000287'
  and kclx = 'SAP'
  and wlbm = '1000000648'
# and ykcdbm='1521'
order by create_date desc;


select *
from business_50t4
where gcdm = '5000'
  and kclx = 'SAP'
order by create_date desc;


select *
from business_50t4
where wlbm = '1000006490';



select *
from business_50t4
where id = '51d812ec8154018adc8f82db30965e3f';

select *
from sync_werk_org_copy1 where werks=4390;