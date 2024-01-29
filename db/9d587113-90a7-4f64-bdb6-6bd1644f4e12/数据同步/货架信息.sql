select yhjxx,xhjxx, wlbm, ykcdbm, org_id, kclx,create_date,update_date
from business_50t4
where 1 = 1
#   and org_id = '00000287'
#   and kclx = 'SAP'
  and kclx = 'WAITUSE'
  and wlbm = '1000248309'
# and ykcdbm='1521'
order by create_date desc;


select
from business_50t4
# where gcdm = '5000'
#   and kclx = 'SAP'
# order by create_date desc;


delete from business_50t4 where kclx='A18A06A06A02'





# 排查公司货架信息是否重复

select org_id,wlbm,ykcdbm
from business_50t4  where kclx  ='WAITUSE'

