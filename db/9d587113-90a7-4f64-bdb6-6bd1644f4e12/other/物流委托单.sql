# 承运单
select m.cph,
       m.wlcydbh,
       m.cgddh,
       m.shsj,
       m.fhsj,
       m.cysbm,
       m.cysmc,
       m.shd,
       m.fhd,
       s.*

from wlcyd m
         inner join wlcydxx s on m.id = s.father_id
where 1 = 1
  and m.user_id = '-273664753399085003';



SELECT COUNT(1)
FROM (SELECT * FROM wlcydmx_v) a


select *
from business_9wk5;
# 主表
select id,wlwtdbh,org_id
from wlwtd
where 1=1
  and user_id = '-273664753399085003';

#   and wlwtdbh = 'WLWTD3090202312050025';
# where szgcddh = 'CGDD3090202312050029';
# where szgcddh = 'CGDD4110202309260005';
# where id = '5925393b6d4e4af6841cf04889564036';

#物流委托单运输合同
select id, cys, cysbm, ccwlwtdh
from wlwtd_yshezb
where father_id = '3a72c71e0e104bd2b8335e4a95fa6314';
# where wlwtl='SZGC2312050009';


select *
from sync_werk_org
where org_code = '10001943';


# 物料信息
select *
from material_master_v
where matnr = '1000082069';