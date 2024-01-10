select m.id, m.tkdbm, s.*
from business_c927 m
         inner join business_z6nu s on m.id = s.father_id

where tkdbm = 'SBTKD4010202401100001';
# where m.serial='20230706152240404';
917
# 子表
select id, wlbm, ckdid, ydlx
from business_z6nu
where father_id = '15019d58e9ce4031be45d99ccb11b9f9';

select *
from business_1dmt
where id = '9041e2dd7e2e46b19275f2effe2b6192';



select ktsl, *
from business_m3wc
where id = '9041e2dd7e2e46b19275f2effe2b6192';


# 退库弹窗选择器
SELECT s.jhbm,
       s.id,
       s.wlbm,
       s.wlms,
       s.dddj,
       s.kcdbm,
       s.kcdms,
       hjxx,
       s.gysbm,
       s.gysmc,
       hgz,
       czzm,
       bgd,
       ccjybg,
       sysm,
       tz,
       bz,
       s.jldw,
       s.gcdm,
       cgddbh,
       dwms,
       kclx,
       s.wzlx,
       je,
       s.caigy,
       m.psy                         cgy,
       s.cgddhxm,
       pc,
       cgylxdh,
       s.sbr,
       sbrlxdh,
       fylx,
       s.ydlx,
       cbzx,
       jgh,
       s.gdzc,
       ggxh,
       wzjb,
       wztp,
       s.cksl,
       s.zjgc,
       s.zzkm,
       s.yfdd,
       m.ckbm,
       m.dept_id,
       s.cksl - ifnull(s.ktsl, 0) as ktsl,
       s.matdoc_item,
       m.zdr
FROM business_ij1g AS m
         LEFT JOIN business_m3wc AS s ON m.id = s.father_id
where s.ckpzh != ''
  and m.org_id = '${orgId}'
having ktsl > 0
order by m.ckbm desc