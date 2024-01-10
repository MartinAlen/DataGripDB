# 主表
select id
     , org_id
     ,ddsfgb
     , sapcgpz1
     , user_id
     , caigouyuan
     , szgcddh
     , jyms
     , gysbm
     , gc
     , shdw
     , jcdw
     , ddsfgb
     , ddfqlx
     , gysmc
     , gsdm
     , org_id
     , user_id
     , sbr
     , htbh
     , htmc
     , create_date
from business_3k66
where 1=1

# and ddfqlx ='A18A02A11A04';
and sapcgpz1 = '4500362170'
# and szgcddh like 'PO%'
# and szgcddh like 'CGDD4010202312070015%'
# and jyms ='A18A05A15A02';
# and id = '0a92c408dbd74fb5808698dfe75fa8d7';
# and serial = '20231226161944066';
# and htbh = 'YTH-4010-NB-GX-2022-001029-00';
# and jyms='A18A05A15A07'
and jyms='A18A05A15A06' and sapcgpz1 !='' and gsdm=4010
order by create_date
desc;


select count(szgcddh) dd, szgcddh
from business_3k66
group by szgcddh
having dd > 1;



select id, caigouyuan
from business_3k66
where szgcddh = 'PO231103000004';

# 子表
select id,
       zt,
       wlbm,
       ddsl,
       cgdj,
       gzf,
       zxf,
       xxmh,
       gcrkkw,
       cgdj,
       wlms,
       pch,
       rkkw,
       gcrkkw,
       hang_status

from business_qq7x
where 1 = 1
#   and wlbm = '1000385331'
  and father_id = '2203af33ec1d45708af1fe5df00d6455'
# where id = 'c2f8cdbb3418d1c74625a7bbf32f5d2d'
order by create_date desc;


select count(1) su, father_id
from business_qq7x
group by father_id
having su > 100;

select id, jldw
from business_qq7x
where id = '7d20debead1a43e4bb528fa92a942841'


select m.szgcddh, s.cgdj, s.wlbm, s.wlms
from business_3k66 m
         inner join business_qq7x s on m.id = s.father_id
where s.wlbm = '1000166565'



select hb
from business_3k66
# where ddfqlx ='A18A02A11A04';
# where sapcgpz1 ='4700384353';
# where szgcddh ='PO231020000006';
# where jyms ='A18A05A15A02';
# where id = '0a92c408dbd74fb5808698dfe75fa8d7';


select *
from sync_werk_org_copy1;