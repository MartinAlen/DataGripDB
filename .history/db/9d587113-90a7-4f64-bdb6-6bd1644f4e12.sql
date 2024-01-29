select *
from all_repository_stock where werks=4390 and wlbm=1000000648;
;-- -. . -..- - / . -. - .-. -.--
select *
from sap_consignment_stock where werks=4390 and matnr=1000000648;
;-- -. . -..- - / . -. - .-. -.--
select yhjxx, wlbm, ykcdbm, org_id, kclx
from business_50t4
where 1 = 1
#   and org_id = '00000287'
  and kclx = 'SAP'
  and wlbm = '1000000648'
# and ykcdbm='1521'
order by create_date desc;
;-- -. . -..- - / . -. - .-. -.--
select *
from sync_werk_org_copy1 where werks=4390;
;-- -. . -..- - / . -. - .-. -.--
select yhjxx, wlbm, ykcdbm, org_id, kclx,create_date,update_date
from business_50t4
where 1 = 1
#   and org_id = '00000287'
  and kclx = 'SAP'
  and wlbm = '1000000648'
# and ykcdbm='1521'
order by create_date desc;
;-- -. . -..- - / . -. - .-. -.--
select m.id,
       m.father_id,
       m.kcdbm,
       m.hjxx,
       m.ckpzh,
       m.zkc,
       m.cksl,
       m.ktsl,
       m.wlbm,
       m.wlms,
       m.gcdm,
       m.jhbm,
       m.father_id,
       m.rkdid,
       m.sfck,
       m.ydlx

from business_m3wc m
where m.father_id = '3542b1ca222e485a97f46cadd7e08f5d';
;-- -. . -..- - / . -. - .-. -.--
select m.id,
       m.father_id,
       m.kcdbm,
cbzx
from business_m3wc m
where m.father_id = '3542b1ca222e485a97f46cadd7e08f5d';
;-- -. . -..- - / . -. - .-. -.--
select m.id,
       m.father_id,
       m.kcdbm,
cbzx,cbzxms
from business_m3wc m
where m.father_id = '3542b1ca222e485a97f46cadd7e08f5d';
;-- -. . -..- - / . -. - .-. -.--
select id, rksl, ckl, sapcgpz1, wlbm, rkpzh, father_id
from business_f7hc
where 1 = 1
#   and rksl != ckl
#   and ckl > 0
#   and id = '2694928a2b6bf2305eb78c54bacf2b90';

  and wlbm = '1000157656';
;-- -. . -..- - / . -. - .-. -.--
select id, rksl, ckl, sapcgpz1, wlbm, rkpzh, father_id
from business_f7hc
where 1 = 1
#   and rksl != ckl
#   and ckl > 0
#   and id = '2694928a2b6bf2305eb78c54bacf2b90';

  and wlbm = '1000157656'
and dddj =135;
;-- -. . -..- - / . -. - .-. -.--
select s.id, rksl, ckl, wlbm
from business_y339 m
         inner join business_f7hc s on m.id = s.father_id
where m.flow_step = '归档'
#   and rksl != ckl
#   and ckl > 0
  and wlbm = '1000034208';
;-- -. . -..- - / . -. - .-. -.--
select title, create_time, request, response, exception
from sap_execute_log
where title = '退库'
# and sap_execute_log.response like '%"I"%'
# sap_execute_log.response like '%4913096500%'
order by create_time desc
limit 10;
;-- -. . -..- - / . -. - .-. -.--
select title, create_time, request, response, exception
from sap_execute_log
# where title = '物资出库'
# and sap_execute_log.response like '%"I"%'
# sap_execute_log.response like '%4913096500%'
order by create_time desc
limit 10;
;-- -. . -..- - / . -. - .-. -.--
select title, create_time, request, response, exception
from sap_execute_log
where title = '物资出库'
# and sap_execute_log.response like '%"I"%'
# sap_execute_log.response like '%4913096500%'
order by create_time desc
limit 10;
;-- -. . -..- - / . -. - .-. -.--
select id,
       ttwb,
       ckbm,
       psdd,
       serial,
       create_date,
       update_date,
       flow_step,
       flow_state,
       ckbm,
       kcdbm
from business_ij1g
# where ckbm is null  or ckbm=''
where ckbm like '%SBCK4010202401020343%';
;-- -. . -..- - / . -. - .-. -.--
select id, cksl, ktsl, gcdm, ckpzh,rkdid,cbzx,cbzxms
from business_m3wc
# where wlbm = '1000022922';
where father_id = '3542b1ca222e485a97f46cadd7e08f5d';
;-- -. . -..- - / . -. - .-. -.--
select id, cksl, ktsl, gcdm, ckpzh,rkdid,cbzx,cbzxms
from business_m3wc
# where wlbm = '1000022922';
# where father_id = '3542b1ca222e485a97f46cadd7e08f5d';
where id = '48ab661b9d8442119f584dac1ec55d95';
;-- -. . -..- - / . -. - .-. -.--
select id, jhbm,cksl, ktsl, gcdm, ckpzh,rkdid,cbzx,cbzxms
from business_m3wc
# where wlbm = '1000022922';
# where father_id = '3542b1ca222e485a97f46cadd7e08f5d';
where id = '48ab661b9d8442119f584dac1ec55d95';
;-- -. . -..- - / . -. - .-. -.--
select id, jhbm,cksl, ydlx,ktsl, gcdm, ckpzh,rkdid,cbzx,cbzxms
from business_m3wc
# where wlbm = '1000022922';
# where father_id = '3542b1ca222e485a97f46cadd7e08f5d';
where id = '48ab661b9d8442119f584dac1ec55d95';
;-- -. . -..- - / . -. - .-. -.--
select id, jhbm,cksl, father_id,ydlx,ktsl, gcdm, ckpzh,rkdid,cbzx,cbzxms
from business_m3wc
# where wlbm = '1000022922';
# where father_id = '3542b1ca222e485a97f46cadd7e08f5d';
where id = '48ab661b9d8442119f584dac1ec55d95';
;-- -. . -..- - / . -. - .-. -.--
select id, jhbm,cksl, father_id,ydlx,ktsl, gcdm, ckpzh,rkdid,cbzx,cbzxms
from business_m3wc
# where wlbm = '1000022922';
where father_id = '48fb1cd30ae44760b9aa2f2cedbbeb6a';
;-- -. . -..- - / . -. - .-. -.--
select m.id, m.tkdbm, s.*
from business_c927 m
         inner join business_z6nu s on m.id = s.father_id

where tkdbm='SBTKD4010202401100001';
;-- -. . -..- - / . -. - .-. -.--
select id,wlbm,ckdid,ydlx
from business_z6nu where father_id='15019d58e9ce4031be45d99ccb11b9f9';
;-- -. . -..- - / . -. - .-. -.--
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
order by m.ckbm desc;
;-- -. . -..- - / . -. - .-. -.--
select title, create_time, request, response, exception
from sap_execute_log
where title = '收货后冲销'
#   and request like '%1000221514%'
order by create_time desc
limit 100;
;-- -. . -..- - / . -. - .-. -.--
select id,
       rkdbh,
       org_id,
       htbh,
       htmc,
       dhysdh,
       create_date,
       rkpz,
       wlbmall
from business_y339
where id = 'b4c9a2a8e8573bed147b2be544734cd7';
;-- -. . -..- - / . -. - .-. -.--
select id, rksl, ckl, sapcgpz1, wlbm, rkpzh, father_id
from business_f7hc
where 1 = 1
#   and rksl != ckl
#   and ckl > 0
  and father_id = '2694928a2b6bf2305eb78c54bacf2b90';
;-- -. . -..- - / . -. - .-. -.--
select id, rksl, ckl, sapcgpz1, wlbm, rkpzh, father_id
from business_f7hc
where 1 = 1
#   and rksl != ckl
#   and ckl > 0
  and father_id = 'b4c9a2a8e8573bed147b2be544734cd7';
;-- -. . -..- - / . -. - .-. -.--
select id, rksl, ckl, sapcgpz1, wlbm, dddj,rkpzh, father_id
from business_f7hc
where 1 = 1
#   and rksl != ckl
#   and ckl > 0
  and father_id = 'b4c9a2a8e8573bed147b2be544734cd7';
;-- -. . -..- - / . -. - .-. -.--
select id,
       ttwb,
       ckbm,
       psdd,
       serial,
       create_date,
       update_date,
       flow_step,
       flow_state,
       ckbm,
       kcdbm
from business_ij1g
# where ckbm is null  or ckbm=''
where ckbm like '%SBCK4010202401100073%';
;-- -. . -..- - / . -. - .-. -.--
select id, jhbm,cksl,sfck, father_id,ydlx,ktsl, gcdm, ckpzh,rkdid,cbzx,cbzxms
from business_m3wc
# where wlbm = '1000022922';
where father_id = '4d04cb9870f64fbebce79449c4c95a9b';
;-- -. . -..- - / . -. - .-. -.--
select *
from business_50t4 group by org_id,wlbm,yhjxx,ykcdbm;
;-- -. . -..- - / . -. - .-. -.--
select wlbm
from business_50t4 group by org_id,wlbm,yhjxx,ykcdbm;
;-- -. . -..- - / . -. - .-. -.--
select count(wlbm)s
from business_50t4 group by org_id,wlbm,yhjxx,ykcdbm having s>0;
;-- -. . -..- - / . -. - .-. -.--
select count(wlbm)s
from business_50t4 group by org_id,wlbm,yhjxx,ykcdbm having s>1;
;-- -. . -..- - / . -. - .-. -.--
select count(wlbm)s,org_id
from business_50t4 group by org_id,wlbm,yhjxx,ykcdbm having s>1;
;-- -. . -..- - / . -. - .-. -.--
select count(wlbm)s,org_id,wlbm
from business_50t4 group by org_id,wlbm,yhjxx,ykcdbm having s>1;
;-- -. . -..- - / . -. - .-. -.--
select count(wlbm)s,org_id,wlbm,ykcdbm
from business_50t4 group by org_id,wlbm,yhjxx,ykcdbm having s>1;
;-- -. . -..- - / . -. - .-. -.--
select count(wlbm)s,org_id,wlbm,ykcdbm,yhjxx
from business_50t4 group by org_id,wlbm,yhjxx,ykcdbm having s>1;
;-- -. . -..- - / . -. - .-. -.--
select *
from business_50t4
where wlbm = '1000308314';
;-- -. . -..- - / . -. - .-. -.--
select *
from business_50t4
where wlbm = '1000004099';
;-- -. . -..- - / . -. - .-. -.--
select *
from sync_werk_org_copy1 where werks=00001;
;-- -. . -..- - / . -. - .-. -.--
select *
from sync_werk_org_copy1 where werks=0001;
;-- -. . -..- - / . -. - .-. -.--
select *
from sync_werk_org_copy1 where org_id=00000001;
;-- -. . -..- - / . -. - .-. -.--
select *
from business_50t4
# where wlbm = '1000004099';
where org_id = '00000001';
;-- -. . -..- - / . -. - .-. -.--
select *
from business_50t4
where wlbm = '1000011903';
;-- -. . -..- - / . -. - .-. -.--
select *
from business_50t4
where gcdm = ''
   or gcdm is null;
;-- -. . -..- - / . -. - .-. -.--
delete
from business_50t4
where gcdm = ''
   or gcdm is null;
;-- -. . -..- - / . -. - .-. -.--
select *
from business_50t4
where wlbm = '1000000956';
;-- -. . -..- - / . -. - .-. -.--
delete from business_50t4 where kclx='A18A06A06A02';
;-- -. . -..- - / . -. - .-. -.--
select count(wlbm)s,org_id,wlbm,ykcdbm,yhjxx
from business_50t4 where kclx !='WAITUSE' group by org_id,wlbm,yhjxx,ykcdbm having s>1;
;-- -. . -..- - / . -. - .-. -.--
select yhjxx, wlbm, ykcdbm, org_id, kclx,create_date,update_date
from business_50t4
where 1 = 1
#   and org_id = '00000287'
  and kclx = 'SAP'
  and wlbm = '1000248309'
# and ykcdbm='1521'
order by create_date desc;
;-- -. . -..- - / . -. - .-. -.--
select count(wlbm)s,org_id,wlbm,ykcdbm,yhjxx
from business_50t4   group by org_id,wlbm,yhjxx,ykcdbm having s>1;
;-- -. . -..- - / . -. - .-. -.--
select count(wlbm)s,org_id,wlbm,ykcdbm,yhjxx
from business_50t4  where kclx !='WAITUSE'group by org_id,wlbm,yhjxx,ykcdbm having s>1;
;-- -. . -..- - / . -. - .-. -.--
select count(wlbm)s,org_id,wlbm,ykcdbm,yhjxx
from business_50t4  where kclx =='WAITUSE' group by org_id,wlbm,yhjxx,ykcdbm having s>1;
;-- -. . -..- - / . -. - .-. -.--
select count(wlbm)s,org_id,wlbm,ykcdbm,yhjxx
from business_50t4  where kclx ='WAITUSE' group by org_id,wlbm,yhjxx,ykcdbm having s>1;
;-- -. . -..- - / . -. - .-. -.--
select count(wlbm)s,org_id,wlbm,ykcdbm,yhjxx,create_date
from business_50t4  where kclx ='WAITUSE' group by org_id,wlbm,yhjxx,ykcdbm having s>1;
;-- -. . -..- - / . -. - .-. -.--
select yhjxx, wlbm, ykcdbm, org_id, kclx,create_date,update_date
from business_50t4
where 1 = 1
#   and org_id = '00000287'
#   and kclx = 'SAP'
  and kclx = 'WAITUSE'
  and wlbm = '1000210110'
# and ykcdbm='1521'
order by create_date desc;
;-- -. . -..- - / . -. - .-. -.--
select count(wlbm)s,org_id,wlbm,ykcdbm,yhjxx,create_date
from business_50t4  where kclx ='WAITUSE' and create_date <'2023-05-21 10:05:57' group by org_id,wlbm,yhjxx,ykcdbm having s>1;
;-- -. . -..- - / . -. - .-. -.--
select count(wlbm)s,org_id,wlbm,ykcdbm,yhjxx
from business_50t4  where kclx ='WAITUSE' and create_date >'2023-05-21 10:05:57' group by org_id,wlbm,yhjxx,ykcdbm having s>1;
;-- -. . -..- - / . -. - .-. -.--
select count(wlbm)s,org_id,wlbm,ykcdbm,yhjxx
from business_50t4  where kclx ='WAITUSE' and create_date <'2023-05-21 10:05:57' group by org_id,wlbm,yhjxx,ykcdbm having s>1;
;-- -. . -..- - / . -. - .-. -.--
select count(wlbm)s,org_id,wlbm,ykcdbm,yhjxx
from business_50t4  where kclx ='WAITUSE';
;-- -. . -..- - / . -. - .-. -.--
select org_id,wlbm,ykcdbm,yhjxx
from business_50t4  where kclx ='WAITUSE';
;-- -. . -..- - / . -. - .-. -.--
select count(wlbm)s,org_id,wlbm,ykcdbm,yhjxx
from business_50t4  where kclx ='WAITUSE'  group by org_id,wlbm,xhjxx,ykcdbm having s>1;
;-- -. . -..- - / . -. - .-. -.--
select count(wlbm)s,org_id,wlbm,ykcdbm,xhjxx
from business_50t4  where kclx !='WAITUSE'  group by org_id,wlbm,xhjxx,ykcdbm having s>1;
;-- -. . -..- - / . -. - .-. -.--
select count(wlbm)s,org_id,wlbm,ykcdbm,xhjxx
from business_50t4  where kclx =='WAITUSE'  group by org_id,wlbm,xhjxx,ykcdbm having s>1;
;-- -. . -..- - / . -. - .-. -.--
select yhjxx, wlbm, ykcdbm, org_id, kclx,create_date,update_date
from business_50t4
where 1 = 1
#   and org_id = '00000287'
#   and kclx = 'SAP'
  and kclx = 'WAITUSE'
  and wlbm = '1000018422'
# and ykcdbm='1521'
order by create_date desc;
;-- -. . -..- - / . -. - .-. -.--
select xhjxx, wlbm, ykcdbm, org_id, kclx,create_date,update_date
from business_50t4
where 1 = 1
#   and org_id = '00000287'
#   and kclx = 'SAP'
  and kclx = 'WAITUSE'
  and wlbm = '1000018422'
# and ykcdbm='1521'
order by create_date desc;
;-- -. . -..- - / . -. - .-. -.--
select count(wlbm)s,org_id,wlbm,ykcdbm,yhjxx
from business_50t4  where kclx ='WAITUSE'  group by org_id,wlbm,yhjxx,ykcdbm having s>1;
;-- -. . -..- - / . -. - .-. -.--
select count(wlbm)s,org_id,wlbm,ykcdbm,xhjxx
from business_50t4  where kclx ='WAITUSE'  group by org_id,wlbm,yhjxx,xhjxx,ykcdbm having s>1;
;-- -. . -..- - / . -. - .-. -.--
select count(wlbm)s,org_id,wlbm,ykcdbm,xhjxx
from business_50t4  where kclx ='WAITUSE'  group by org_id,wlbm,xhjxx,ykcdbm having s>1;
;-- -. . -..- - / . -. - .-. -.--
select xhjxx, wlbm, ykcdbm, org_id, kclx,create_date,update_date
from business_50t4
where 1 = 1
#   and org_id = '00000287'
#   and kclx = 'SAP'
  and kclx = 'WAITUSE'
  and wlbm = '1000248309'
# and ykcdbm='1521'
order by create_date desc;
;-- -. . -..- - / . -. - .-. -.--
select yhjxx,xhjxx, wlbm, ykcdbm, org_id, kclx,create_date,update_date
from business_50t4
where 1 = 1
#   and org_id = '00000287'
#   and kclx = 'SAP'
  and kclx = 'WAITUSE'
  and wlbm = '1000248309'
# and ykcdbm='1521'
order by create_date desc;
;-- -. . -..- - / . -. - .-. -.--
select count(wlbm)s,org_id,wlbm,ykcdbm,xhjxx
from business_50t4  where kclx  !='WAITUSE'  group by org_id,wlbm,xhjxx,ykcdbm having s>1;
;-- -. . -..- - / . -. - .-. -.--
select count(wlbm)s,org_id,wlbm,ykcdbm,xhjxx
from business_50t4  where kclx  !='WAITUSE'  group by org_id,wlbm,yhjxx,xhjxx,ykcdbm having s>1;
;-- -. . -..- - / . -. - .-. -.--
select count(wlbm)s,org_id,wlbm,ykcdbm,xhjxx
from business_50t4  where kclx  !='WAITUSE'  group by org_id,wlbm,yhjxx,ykcdbm having s>1;
;-- -. . -..- - / . -. - .-. -.--
select count(wlbm)s,org_id,wlbm,ykcdbm
from business_50t4  where kclx  !='WAITUSE'  group by org_id,wlbm,yhjxx,ykcdbm having s>1;
;-- -. . -..- - / . -. - .-. -.--
select count(wlbm)s,org_id,wlbm,ykcdbm
from business_50t4  where kclx  !='WAITUSE'  group by org_id,wlbm,xhjxx,ykcdbm having s>1;
;-- -. . -..- - / . -. - .-. -.--
select count(wlbm)s,org_id,wlbm,ykcdbm
from business_50t4  where kclx  ='WAITUSE'  group by org_id,wlbm,xhjxx,ykcdbm having s>1;
;-- -. . -..- - / . -. - .-. -.--
select count(wlbm)s,org_id,wlbm,ykcdbm
from business_50t4  where kclx  ='WAITUSE';
;-- -. . -..- - / . -. - .-. -.--
select org_id,wlbm,ykcdbm
from business_50t4  where kclx  ='WAITUSE';
;-- -. . -..- - / . -. - .-. -.--
select outSlave.id,
       input.hjxx,
       outSlave.cksl,
       input.rksl,
       input.ckl
from business_m3wc outSlave
         inner join business_f7hc input on outSlave.rkdid = input.id
where outSlave.wlbm = '1000231020';
;-- -. . -..- - / . -. - .-. -.--
select outSlave.id,
       input.hjxx,
       outSlave.cksl,
       input.rksl,
       input.ckl,
       input.id inputId
from business_m3wc outSlave
         inner join business_f7hc input on outSlave.rkdid = input.id
where outSlave.wlbm = '1000231020';
;-- -. . -..- - / . -. - .-. -.--
select id,
       ttwb,
       ckbm,
       psdd,
       serial,
       create_date,
       update_date,
       flow_step,
       flow_state,
       ckbm,
       kcdbm
from business_ij1g
# where ckbm is null  or ckbm=''
# where ckbm like '%SBCK4010202401100073%';
where id='92203f8a0c6b4268bc675eda54de5c57'
#     where psdd like '%熔%'
# where serial = '20240102175828585'
# where business_ij1g.flow_step like '%总经理%';
# where business_ij1g.create_date = '2023-08-28 16:50:56';
where id = '2f904bfffb1f423891439f5531bfb67a'
# where serial = '20231025094042682'
order by create_date;
;-- -. . -..- - / . -. - .-. -.--
select id,
       ttwb,
       ckbm,
       psdd,
       serial,
       create_date,
       update_date,
       flow_step,
       flow_state,
       ckbm,
       kcdbm
from business_ij1g
# where ckbm is null  or ckbm=''
# where ckbm like '%SBCK4010202401100073%';
where id = '92203f8a0c6b4268bc675eda54de5c57';
;-- -. . -..- - / . -. - .-. -.--
select outSlave.id,
       input.hjxx,
       outSlave.cksl,
       input.rksl,
       input.ckl,
       input.id inputId,
       outSlave.father_id
from business_m3wc outSlave
         inner join business_f7hc input on outSlave.rkdid = input.id
where outSlave.wlbm = '1000231020';
;-- -. . -..- - / . -. - .-. -.--
select id,
       ttwb,
       ckbm,
       psdd,
       serial,
       create_date,
       update_date,
       flow_step,
       flow_state,
       ckbm,
       kcdbm
from business_ij1g
# where ckbm is null  or ckbm=''
# where ckbm like '%SBCK4010202401100073%';
where id = 'e6d984faf68c4f50ae851be843bc472c';
;-- -. . -..- - / . -. - .-. -.--
select *
from form_table_128c473299949c8b;
;-- -. . -..- - / . -. - .-. -.--
select *
from form_table_128c473299949c8b where field_h3=241;
;-- -. . -..- - / . -. - .-. -.--
select *
from business_1519
where bukrs = '3140'
order by create_date desc;
;-- -. . -..- - / . -. - .-. -.--
select *
from business_1519
where bukrs = '4010'
order by create_date desc;
;-- -. . -..- - / . -. - .-. -.--
select id,
       ttwb,
       ckbm,
       psdd,
       serial,
       create_date,
       update_date,
       flow_step,
       flow_state,
       ckbm,
       kcdbm
from business_ij1g
# where ckbm is null  or ckbm=''
where ckbm ='SBCK4390202401090253';
;-- -. . -..- - / . -. - .-. -.--
select m.id,
       m.father_id,
       m.kcdbm,
cbzx,cbzxms
from business_m3wc m
where m.father_id = 'cdaa1dbd459f459ba340671366421929';
;-- -. . -..- - / . -. - .-. -.--
select m.id,
       m.father_id,
       m.kcdbm,
       cbzx,
       cbzxms,
       nbddh,
       nbddms
from business_m3wc m
where m.father_id = 'cdaa1dbd459f459ba340671366421929';
;-- -. . -..- - / . -. - .-. -.--
select m.id,
       m.father_id,
       m.kcdbm,
       gdzc,
       cbzx,
       cbzxms,
       nbddh,
       nbddms
from business_m3wc m
where m.father_id = 'cdaa1dbd459f459ba340671366421929';
;-- -. . -..- - / . -. - .-. -.--
select m.id,
       m.father_id,
       m.kcdbm,
       gdzc,
       ydlx,
       cbzx,
       cbzxms,
       nbddh,
       nbddms
from business_m3wc m
where m.father_id = 'cdaa1dbd459f459ba340671366421929';
;-- -. . -..- - / . -. - .-. -.--
select `form_table_128c473299949c8b`.`field_h1` AS `field_h1`,
       `form_table_128c473299949c8b`.`field_h2` AS `field_h2`,
       `form_table_128c473299949c8b`.`field_h3` AS `field_h3`,
       `form_table_128c473299949c8b`.`field_h4` AS `field_h4`

from `form_table_128c473299949c8b`
where 1=field_h1
  and org_id = '${orgId}'
  and field_h3 is not null
and field_h3=261
order by `form_table_128c473299949c8b`.`field_h1`;
;-- -. . -..- - / . -. - .-. -.--
select `form_table_128c473299949c8b`.`field_h1` AS `field_h1`,
       `form_table_128c473299949c8b`.`field_h2` AS `field_h2`,
       `form_table_128c473299949c8b`.`field_h3` AS `field_h3`,
       `form_table_128c473299949c8b`.`field_h4` AS `field_h4`

from `form_table_128c473299949c8b`
where 1=field_h1
#   and org_id = '${orgId}'
  and field_h3 is not null
and field_h3=261
order by `form_table_128c473299949c8b`.`field_h1`;
;-- -. . -..- - / . -. - .-. -.--
select `form_table_128c473299949c8b`.`field_h1` AS `field_h1`,
       `form_table_128c473299949c8b`.`field_h2` AS `field_h2`,
       `form_table_128c473299949c8b`.`field_h3` AS `field_h3`,
       `form_table_128c473299949c8b`.`field_h4` AS `field_h4`

from `form_table_128c473299949c8b`
where 1=field_h1
#   and org_id = '${orgId}'
  and field_h3 is not null
and field_h4=261
order by `form_table_128c473299949c8b`.`field_h1`;
;-- -. . -..- - / . -. - .-. -.--
select `form_table_128c473299949c8b`.`field_h1` AS `field_h1`,
       `form_table_128c473299949c8b`.`field_h2` AS `field_h2`,
       `form_table_128c473299949c8b`.`field_h3` AS `field_h3`,
       `form_table_128c473299949c8b`.`field_h4` AS `field_h4`

from `form_table_128c473299949c8b`
where 1=1
#   and org_id = '${orgId}'
  and field_h3 is not null
and field_h4=261
order by `form_table_128c473299949c8b`.`field_h1`;
;-- -. . -..- - / . -. - .-. -.--
select `form_table_128c473299949c8b`.`field_h1` AS `field_h1`,
       `form_table_128c473299949c8b`.`field_h2` AS `field_h2`,
       `form_table_128c473299949c8b`.`field_h3` AS `field_h3`,
       `form_table_128c473299949c8b`.`field_h4` AS `field_h4`

from `form_table_128c473299949c8b`
where 1=1
#   and org_id = '${orgId}'
  and field_h3 is not null
and field_h3=261
order by `form_table_128c473299949c8b`.`field_h1`;
;-- -. . -..- - / . -. - .-. -.--
select m.id,
       m.father_id,
       m.kcdbm,
       gdzc,
       ydlx,
       fylx,
       cbzx,
       cbzxms,
       nbddh,
       nbddms
from business_m3wc m
where m.father_id = 'cdaa1dbd459f459ba340671366421929';
;-- -. . -..- - / . -. - .-. -.--
select id,
       ttwb,
       ckbm,
       psdd,
       serial,
       create_date,
       update_date,
       flow_step,
       flow_state,
       ckbm,
       kcdbm
from business_ij1g
# where ckbm is null  or ckbm=''
where ckbm = 'SBCK4390202401090253';
;-- -. . -..- - / . -. - .-. -.--
select title, create_time, request, response, exception
from sap_execute_log
where title = '物资出库'
and sap_execute_log.request like '%施兴涛领料出库%'
# sap_execute_log.response like '%4913096500%'
order by create_time desc
limit 10;
;-- -. . -..- - / . -. - .-. -.--
select title, create_time, request, response, exception
from sap_execute_log
where title = '物资出库'
and sap_execute_log.request like '%261%'
# sap_execute_log.response like '%4913096500%'
order by create_time desc
limit 10;
;-- -. . -..- - / . -. - .-. -.--
select title, create_time, request, response, exception
from sap_execute_log
where title = '物资出库'
and sap_execute_log.request like '%261%'
# sap_execute_log.response like '%4913096500%'
order by create_time desc
limit 100;
;-- -. . -..- - / . -. - .-. -.--
select title, create_time, request, response, exception
from sap_execute_log
where title = '物资出库'
and sap_execute_log.request like '%"MOVE_TYPE": "261"%'
# sap_execute_log.response like '%4913096500%'
order by create_time desc
limit 100;
;-- -. . -..- - / . -. - .-. -.--
select title, create_time, request, response, exception
from sap_execute_log
where title = '物资出库'
and sap_execute_log.request like '%"MOVE_TYPE":"261"%'
# sap_execute_log.response like '%4913096500%'
order by create_time desc
limit 100;
;-- -. . -..- - / . -. - .-. -.--
select *
from sync_werk_org_copy1  where werks=3092;
;-- -. . -..- - / . -. - .-. -.--
select *
from m_cost_center where bukrs=3092;
;-- -. . -..- - / . -. - .-. -.--
select id,ckbm
from business_e9wr
# where ckbm = 'DLYWZCK4010202307040007'
where serial = '20240111120147526'
order by create_date desc;
;-- -. . -..- - / . -. - .-. -.--
select *
from sync_werk_org_copy1
where werks = 3090;
;-- -. . -..- - / . -. - .-. -.--
select *
from m_cost_center where bukrs=3090;
;-- -. . -..- - / . -. - .-. -.--
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
;-- -. . -..- - / . -. - .-. -.--
select id
from wlwtd
where 1=1
  and user_id = '-273664753399085003';
;-- -. . -..- - / . -. - .-. -.--
select id,wlwtdbh
from wlwtd
where 1=1
  and user_id = '-273664753399085003';
;-- -. . -..- - / . -. - .-. -.--
select id,wlwtdbh,org_id
from wlwtd
where 1=1;
;-- -. . -..- - / . -. - .-. -.--
select id,wlwtdbh,org_id
from wlwtd
where 1=1
  and user_id = '-273664753399085003';
;-- -. . -..- - / . -. - .-. -.--
select title, create_time, request, response, exception
from sap_execute_log
where title = '物资出库'
and sap_execute_log.request like '%王立春领用出库%'
# sap_execute_log.response like '%4913096500%'
order by create_time desc
limit 100;
;-- -. . -..- - / . -. - .-. -.--
select *
from goods_repository where wlbm='2151501382';
;-- -. . -..- - / . -. - .-. -.--
select *
from wait_use_repository where wlbm='2151501382';
;-- -. . -..- - / . -. - .-. -.--
select *
from wait_use_repository where wlbm_last='2151501382';
;-- -. . -..- - / . -. - .-. -.--
select id,ckbm
from business_e9wr
where ckbm = 'DLYWZCK4010202401150005'
# where serial = '20240111120147526'
order by create_date desc;
;-- -. . -..- - / . -. - .-. -.--
select id,
       ttwb,
       ckbm,
       psdd,
       serial,
       create_date,
       update_date,
       flow_step,
       flow_state,
       ckbm,
       kcdbm
from business_ij1g
# where ckbm is null  or ckbm=''
# where ckbm = 'SBCK4390202401090253';
# where id = 'e6d984faf68c4f50ae851be843bc472c';
#     where psdd like '%熔%'
where serial = '20240115150011215'
# where business_ij1g.flow_step like '%总经理%';
# where business_ij1g.create_date = '2023-08-28 16:50:56';
# where serial = '20231025094042682'
order by create_date
desc;
;-- -. . -..- - / . -. - .-. -.--
select id,
       ttwb,
       aqhbfy,
       ckbm,
       psdd,
       serial,
       create_date,
       update_date,
       flow_step,
       flow_state,
       ckbm,
       kcdbm
from business_ij1g
# where ckbm is null  or ckbm=''
# where ckbm = 'SBCK4390202401090253';
# where id = 'e6d984faf68c4f50ae851be843bc472c';
#     where psdd like '%熔%'
where serial = '20240115150011215'
# where business_ij1g.flow_step like '%总经理%';
# where business_ij1g.create_date = '2023-08-28 16:50:56';
# where serial = '20231025094042682'
order by create_date
desc;
;-- -. . -..- - / . -. - .-. -.--
select title, create_time, request, response, exception, time
from sap_execute_log
where title = '采购订单连续收货'
#   and request like '%SBRKD4010202312290011%'
and sap_execute_log.response like '%4500344020 %'
order by create_time desc
limit 10;
;-- -. . -..- - / . -. - .-. -.--
select title, create_time, request, response, exception
from sap_execute_log
where title = '创建连续采购订单'
#                        and request like '%YTH-4010-WB-CG-2023-009990-00%'
#     出现问题的采购订单
#   and sap_execute_log.response like '%4500357582%'

  and sap_execute_log.response like '%4500344020%'
#   and sap_execute_log.request like '%1000440944%'
order by create_time desc
limit 10;
;-- -. . -..- - / . -. - .-. -.--
select *
from purchase_sulfur_number_confirm;
;-- -. . -..- - / . -. - .-. -.--
SELECT
	p.werks,p.matnr wlbm, p.maktx wlms, p.meins dw,p.msehl dwtext,p.matkl wlzbm, p.wgbez wlzms,s.org_code orgId
FROM
	p_product_master AS p LEFT JOIN
	sync_werk_org AS s
on
	s.werks = p.werks
where s.org_code='00023316';
;-- -. . -..- - / . -. - .-. -.--
select *
from sync_werk_org where sync_werk_org.org_code like '%3390%';
;-- -. . -..- - / . -. - .-. -.--
SELECT
	p.update_date,p.werks,p.matnr wlbm, p.maktx wlms, p.meins dw,p.msehl dwtext,p.matkl wlzbm, p.wgbez wlzms,s.org_code orgId
FROM
	p_product_master AS p LEFT JOIN
	sync_werk_org AS s
on
	s.werks = p.werks
where s.org_code='00023316';
;-- -. . -..- - / . -. - .-. -.--
SELECT
	p.update_date,p.werks,p.matnr wlbm, p.maktx wlms, p.meins dw,p.msehl dwtext,p.matkl wlzbm, p.wgbez wlzms,s.org_code orgId
FROM
	p_product_master AS p LEFT JOIN
	sync_werk_org AS s
on
	s.werks = p.werks
where s.org_code='00023316'
and p.matnr='1000467202';
;-- -. . -..- - / . -. - .-. -.--
SELECT
	p.update_date,p.werks,p.matnr wlbm, p.maktx wlms, p.meins dw,p.msehl dwtext,p.matkl wlzbm, p.wgbez wlzms,s.org_code orgId
FROM
	p_product_master AS p LEFT JOIN
	sync_werk_org AS s
on
	s.werks = p.werks
where s.org_code='00023316'
and p.matnr='1000457108';
;-- -. . -..- - / . -. - .-. -.--
SELECT
	p.update_date,p.werks,p.matnr wlbm, p.maktx wlms, p.meins dw,p.msehl dwtext,p.matkl wlzbm, p.wgbez wlzms,s.org_code orgId
FROM
	p_product_master AS p LEFT JOIN
	sync_werk_org AS s
on
	s.werks = p.werks
where s.org_code='00023316'
and p.matnr='1000457099';
;-- -. . -..- - / . -. - .-. -.--
SELECT
	p.update_date,p.werks,p.matnr wlbm, p.maktx wlms, p.meins dw,p.msehl dwtext,p.matkl wlzbm, p.wgbez wlzms,s.org_code orgId
FROM
	p_product_master AS p LEFT JOIN
	sync_werk_org AS s
on
	s.werks = p.werks
where s.org_code='00023316'
and p.matnr='1000452062';
;-- -. . -..- - / . -. - .-. -.--
SELECT
	p.update_date,p.werks,p.matnr wlbm, p.maktx wlms, p.meins dw,p.msehl dwtext,p.matkl wlzbm, p.wgbez wlzms,s.org_code orgId
FROM
	p_product_master AS p LEFT JOIN
	sync_werk_org AS s
on
	s.werks = p.werks
where s.org_code='00023316'
and p.matnr='1000433617';
;-- -. . -..- - / . -. - .-. -.--
select *
from p_product_master where werks='3340';
;-- -. . -..- - / . -. - .-. -.--
delete from p_product_master where org_id='7adba8c7e7efb32ef05ea22d6b1e5a60';
;-- -. . -..- - / . -. - .-. -.--
select *
from sync_werk_org where org_name like '%云聚能%';
;-- -. . -..- - / . -. - .-. -.--
select *
from sync_werk_org
where 1=1
#   and  org_name like '%云聚能%';
and org_code='10000700';
;-- -. . -..- - / . -. - .-. -.--
select *
from p_product_master where werks='3340' order by update_date asc;
;-- -. . -..- - / . -. - .-. -.--
delete from p_product_master where werks=3340 and org_id='10000700';
;-- -. . -..- - / . -. - .-. -.--
delete
from p_product_master
where werks = '3340'
  and org_id = '10000700';
;-- -. . -..- - / . -. - .-. -.--
select *
from p_product_master
where werks = '3340'
order by update_date asc;
;-- -. . -..- - / . -. - .-. -.--
SELECT p.update_date,
       p.werks,
       p.matnr    wlbm,
       p.maktx    wlms,
       p.meins    dw,
       p.msehl    dwtext,
       p.matkl    wlzbm,
       p.wgbez    wlzms,
       s.org_code orgId
FROM p_product_master AS p
         LEFT JOIN
     sync_werk_org AS s
     on
         s.werks = p.werks
where s.org_code = '00023316'
  and p.matnr = '1000433616';
;-- -. . -..- - / . -. - .-. -.--
SELECT p.update_date,
       p.werks,
       p.matnr    wlbm,
       p.maktx    wlms,
       p.meins    dw,
       p.msehl    dwtext,
       p.matkl    wlzbm,
       p.wgbez    wlzms,
       s.org_code orgId
FROM p_product_master AS p
         LEFT JOIN
     sync_werk_org AS s
     on
         s.werks = p.werks
where s.org_code = '00023316'
  and p.matnr = '1000433614';
;-- -. . -..- - / . -. - .-. -.--
SELECT p.update_date,
       p.werks,
       p.matnr    wlbm,
       p.maktx    wlms,
       p.meins    dw,
       p.msehl    dwtext,
       p.matkl    wlzbm,
       p.wgbez    wlzms,
       s.org_code orgId
FROM p_product_master AS p
         LEFT JOIN
     sync_werk_org AS s
     on
         s.werks = p.werks
where s.org_code = '00023316'
  and p.matnr = '1000433558';
;-- -. . -..- - / . -. - .-. -.--
SELECT p.update_date,
       p.werks,
       p.matnr    wlbm,
       p.maktx    wlms,
       p.meins    dw,
       p.msehl    dwtext,
       p.matkl    wlzbm,
       p.wgbez    wlzms,
       s.org_code orgId
FROM p_product_master AS p
         LEFT JOIN
     sync_werk_org AS s
     on
         s.werks = p.werks
where s.org_code = '00023316'
  and p.matnr = '1000433612';
;-- -. . -..- - / . -. - .-. -.--
SELECT p.update_date,
       p.werks,
       p.matnr    wlbm,
       p.maktx    wlms,
       p.meins    dw,
       p.msehl    dwtext,
       p.matkl    wlzbm,
       p.wgbez    wlzms,
       s.org_code orgId
FROM p_product_master AS p
         LEFT JOIN
     sync_werk_org AS s
     on
         s.werks = p.werks
where s.org_code = '00023316'
  and p.matnr = '1000433611';
;-- -. . -..- - / . -. - .-. -.--
SELECT p.update_date,
       p.werks,
       p.matnr    wlbm,
       p.maktx    wlms,
       p.meins    dw,
       p.msehl    dwtext,
       p.matkl    wlzbm,
       p.wgbez    wlzms,
       s.org_code orgId
FROM p_product_master AS p
         LEFT JOIN
     sync_werk_org AS s
     on
         s.werks = p.werks
where s.org_code = '00023316'
  and p.matnr = '1000433610';
;-- -. . -..- - / . -. - .-. -.--
SELECT p.update_date,
       p.werks,
       p.matnr    wlbm,
       p.maktx    wlms,
       p.meins    dw,
       p.msehl    dwtext,
       p.matkl    wlzbm,
       p.wgbez    wlzms,
       s.org_code orgId
FROM p_product_master AS p
         LEFT JOIN
     sync_werk_org AS s
     on
         s.werks = p.werks
where s.org_code = '00023316'
  and p.matnr = '1000433609';
;-- -. . -..- - / . -. - .-. -.--
SELECT p.update_date,
       p.werks,
       p.matnr    wlbm,
       p.maktx    wlms,
       p.meins    dw,
       p.msehl    dwtext,
       p.matkl    wlzbm,
       p.wgbez    wlzms,
       s.org_code orgId
FROM p_product_master AS p
         LEFT JOIN
     sync_werk_org AS s
     on
         s.werks = p.werks
where s.org_code = '00023316'
  and p.matnr = '1000433606';
;-- -. . -..- - / . -. - .-. -.--
SELECT p.update_date,
       p.werks,
       p.matnr    wlbm,
       p.maktx    wlms,
       p.meins    dw,
       p.msehl    dwtext,
       p.matkl    wlzbm,
       p.wgbez    wlzms,
       s.org_code orgId
FROM p_product_master AS p
         LEFT JOIN
     sync_werk_org AS s
     on
         s.werks = p.werks
where s.org_code = '00023316'
  and p.matnr = '1000433605';
;-- -. . -..- - / . -. - .-. -.--
SELECT p.update_date,
       p.werks,
       p.matnr    wlbm,
       p.maktx    wlms,
       p.meins    dw,
       p.msehl    dwtext,
       p.matkl    wlzbm,
       p.wgbez    wlzms,
       s.org_code orgId
FROM p_product_master AS p
         LEFT JOIN
     sync_werk_org AS s
     on
         s.werks = p.werks
where s.org_code = '00023316'
  and p.matnr = '1000467202';
;-- -. . -..- - / . -. - .-. -.--
SELECT p.update_date,
       p.werks,
       p.matnr    wlbm,
       p.maktx    wlms,
       p.meins    dw,
       p.msehl    dwtext,
       p.matkl    wlzbm,
       p.wgbez    wlzms,
       s.org_code orgId
FROM p_product_master AS p
         LEFT JOIN
     sync_werk_org AS s
     on
         s.werks = p.werks
where s.org_code = '00023316'
  and p.matnr = '1000457108';
;-- -. . -..- - / . -. - .-. -.--
SELECT p.update_date,
       p.werks,
       p.matnr    wlbm,
       p.maktx    wlms,
       p.meins    dw,
       p.msehl    dwtext,
       p.matkl    wlzbm,
       p.wgbez    wlzms,
       s.org_code orgId
FROM p_product_master AS p
         LEFT JOIN
     sync_werk_org AS s
     on
         s.werks = p.werks
where s.org_code = '00023316'
  and p.matnr = '1000457099';
;-- -. . -..- - / . -. - .-. -.--
SELECT p.update_date,
       p.werks,
       p.matnr    wlbm,
       p.maktx    wlms,
       p.meins    dw,
       p.msehl    dwtext,
       p.matkl    wlzbm,
       p.wgbez    wlzms,
       s.org_code orgId
FROM p_product_master AS p
         LEFT JOIN
     sync_werk_org AS s
     on
         s.werks = p.werks
where s.org_code = '00023316'
  and p.matnr = '1000452062';
;-- -. . -..- - / . -. - .-. -.--
SELECT p.update_date,
       p.werks,
       p.matnr    wlbm,
       p.maktx    wlms,
       p.meins    dw,
       p.msehl    dwtext,
       p.matkl    wlzbm,
       p.wgbez    wlzms,
       s.org_code orgId
FROM p_product_master AS p
         LEFT JOIN
     sync_werk_org AS s
     on
         s.werks = p.werks
where s.org_code = '00023316'
  and p.matnr = '1000433617';
;-- -. . -..- - / . -. - .-. -.--
SELECT p.update_date,
       p.werks,
       p.matnr    wlbm,
       p.maktx    wlms,
       p.meins    dw,
       p.msehl    dwtext,
       p.matkl    wlzbm,
       p.wgbez    wlzms,
       s.org_code orgId
FROM p_product_master AS p
         LEFT JOIN
     sync_werk_org AS s
     on
         s.werks = p.werks
where 1=1
#   and s.org_code = '00023316'
  and p.matnr = '1000433617';
;-- -. . -..- - / . -. - .-. -.--
SELECT p.update_date,
       p.werks,
       p.matnr    wlbm,
       p.maktx    wlms,
       p.meins    dw,
       p.msehl    dwtext,
       p.matkl    wlzbm,
       p.wgbez    wlzms,
       s.org_code orgId
FROM p_product_master AS p
         LEFT JOIN
     sync_werk_org AS s
     on
         s.werks = p.werks
where 1=1
#   and s.org_code = '00023316'
  and p.matnr = '1000457099';
;-- -. . -..- - / . -. - .-. -.--
SELECT p.update_date,
       p.werks,
       p.matnr    wlbm,
       p.maktx    wlms,
       p.meins    dw,
       p.msehl    dwtext,
       p.matkl    wlzbm,
       p.wgbez    wlzms,
       s.org_code orgId
FROM p_product_master AS p
         LEFT JOIN
     sync_werk_org AS s
     on
         s.werks = p.werks
where 1=1
#   and s.org_code = '00023316'
  and p.matnr = '1000452062';
;-- -. . -..- - / . -. - .-. -.--
select *
from fixed_assets;
;-- -. . -..- - / . -. - .-. -.--
select *
from fixed_assets where  bukrs=4010;
;-- -. . -..- - / . -. - .-. -.--
bukrs;
;-- -. . -..- - / . -. - .-. -.--
select *
from fixed_assets
where bukrs = 4010;
;-- -. . -..- - / . -. - .-. -.--
select *
from fixed_assets
where
    bukrs = 4010 and anln1='120010005736';
;-- -. . -..- - / . -. - .-. -.--
select count(1)
from fixed_assets
where
    bukrs = 4010;
;-- -. . -..- - / . -. - .-. -.--
select *
from fixed_assets
where bukrs = 4010
  and anln1 = '120010005736';
;-- -. . -..- - / . -. - .-. -.--
select *
from sync_werk_org where org_name like '%磷化集团%';
;-- -. . -..- - / . -. - .-. -.--
select *
from sulfur_month_avge;
;-- -. . -..- - / . -. - .-. -.--
select *
from sync_werk_org where org_name like '%红磷化工%';
;-- -. . -..- - / . -. - .-. -.--
select *
from business_wgkn;
;-- -. . -..- - / . -. - .-. -.--
select *
from sync_werk_org where org_name like '%云峰%';
;-- -. . -..- - / . -. - .-. -.--
select *
from sync_werk_org where org_name like '%联合商务%';
;-- -. . -..- - / . -. - .-. -.--
select *
from sync_werk_org_copy1;
;-- -. . -..- - / . -. - .-. -.--
select *
from sync_werk_org_copy1 where org_name like '%联合商务%';
;-- -. . -..- - / . -. - .-. -.--
select title, create_time, request, response, exception, time
from sap_execute_log
where title = '采购订单连续收货'
#   and request like '%SBRKD4010202312290011%'
and sap_execute_log.response like '%4500344020%'
order by create_time desc
limit 10;
;-- -. . -..- - / . -. - .-. -.--
select title, create_time, request, response, exception, time
from sap_execute_log
where title = '采购订单连续收货'
#   and request like '%SBRKD4010202312290011%'
and sap_execute_log.response like '%8600897720%'
order by create_time desc
limit 10;
;-- -. . -..- - / . -. - .-. -.--
select id, rksl, ckl, sapcgpz1, wlbm, dddj,rkpzh, father_id
from business_f7hc
where 1 = 1
#   and rksl != ckl
#   and ckl > 0
#   and father_id = 'b4c9a2a8e8573bed147b2be544734cd7';
and org_id='00008413';
;-- -. . -..- - / . -. - .-. -.--
select id, rksl,gcbm, ckl, sapcgpz1, wlbm, dddj,rkpzh, father_id
from business_f7hc
where 1 = 1
#   and rksl != ckl
#   and ckl > 0
#   and father_id = 'b4c9a2a8e8573bed147b2be544734cd7';
and org_id='00008413'
and sapcgpz1='4500360355';
;-- -. . -..- - / . -. - .-. -.--
select id, rksl,gcbm, ckl, sapcgpz1, wlbm, dddj,rkpzh, father_id
from business_f7hc
where 1 = 1
#   and rksl != ckl
#   and ckl > 0
#   and father_id = 'b4c9a2a8e8573bed147b2be544734cd7';
and org_id='00008413';
;-- -. . -..- - / . -. - .-. -.--
select id, rksl,gcbm, ckl, sapcgpz1, wlbm, dddj,rkpzh, father_id
from business_f7hc
where 1 = 1
#   and rksl != ckl
#   and ckl > 0
#   and father_id = 'b4c9a2a8e8573bed147b2be544734cd7';
and org_id='00008413'
and rkpzh=5006306102;
;-- -. . -..- - / . -. - .-. -.--
select id, rksl,gcbm, ckl, sapcgpz1, wlbm, dddj,rkpzh, father_id
from business_f7hc
where 1 = 1
#   and rksl != ckl
#   and ckl > 0
#   and father_id = 'b4c9a2a8e8573bed147b2be544734cd7';
# and org_id='00008413'
and rkpzh='5006306102';
;-- -. . -..- - / . -. - .-. -.--
select *
from sap_consignment_stock where org_id='00008413';
;-- -. . -..- - / . -. - .-. -.--
select werks,create_date
from sap_consignment_stock where org_id='00008413';
;-- -. . -..- - / . -. - .-. -.--
select *
from all_repository_stock where
org_id='00008413';
;-- -. . -..- - / . -. - .-. -.--
select `stock`.`id`                                                      AS `id`,
       `stock`.`matnr`                                                   AS `wlbm`,
       `stock`.`maktx`                                                   AS `wlms`,
       `shelf`.`yhjxx`                                                   AS `hjxx`,
       `shelf`.`yhjxx`                                                   AS `yhjxx`,
       `shelf`.`xhjxx`                                                   AS `xhjxx`,
       `stock`.`lgort`                                                   AS `kcdbm`,
       `stock`.`lgobe`                                                   AS `kcdmc`,
       `stock`.`meins`                                                   AS `dw`,
       `stock`.`meins_name`                                              AS `dwms`,
       `stock`.`charg`                                                   AS `pch`,
       `stock`.`slabs`                                                   AS `jskc`,
       `stock`.`clabs`                                                   AS `kcl`,
       'SAP'                                                             AS `typed`,
       0                                                                 AS `is_history`,
       `stock`.`werks`                                                   AS `werks`,
       `stock`.`org_id`                                                  AS `org_id`,
       ifnull(`price`.`verpr`, 0)                                        AS `verpr`,
       '-'                                                               AS `wlbm_last`,
       `swo`.`org_name`                                                  AS `org_name`,
       concat_ws('_', `stock`.`matnr`, `stock`.`lgort`, `stock`.`charg`) AS `qrcode`
from (((`purchase`.`sap_consignment_stock` `stock` left join `purchase`.`business_50t4` `shelf`
        on (((`stock`.`matnr` = `shelf`.`wlbm`) and (`stock`.`org_id` = `shelf`.`org_id`) and
             (`shelf`.`kclx` = 'SAP') and
             (`stock`.`lgort` = `shelf`.`ykcdbm`)))) left join `purchase`.`material_average_price` `price`
       on (((`stock`.`matnr` = `price`.`matnr`) and
            (`stock`.`org_id` = `price`.`org_id`)))) left join `purchase`.`sync_werk_org` `swo`
      on (((`stock`.`org_id` = `swo`.`org_code`) and (`stock`.`werks` = `swo`.`werks`))))
where swo.org_id='00008413';
;-- -. . -..- - / . -. - .-. -.--
select `stock`.`id`                                                      AS `id`,
       `stock`.`matnr`                                                   AS `wlbm`,
       `stock`.`maktx`                                                   AS `wlms`,
       `shelf`.`yhjxx`                                                   AS `hjxx`,
       `shelf`.`yhjxx`                                                   AS `yhjxx`,
       `shelf`.`xhjxx`                                                   AS `xhjxx`,
       `stock`.`lgort`                                                   AS `kcdbm`,
       `stock`.`lgobe`                                                   AS `kcdmc`,
       `stock`.`meins`                                                   AS `dw`,
       `stock`.`meins_name`                                              AS `dwms`,
       `stock`.`charg`                                                   AS `pch`,
       `stock`.`slabs`                                                   AS `jskc`,
       `stock`.`clabs`                                                   AS `kcl`,
       'SAP'                                                             AS `typed`,
       0                                                                 AS `is_history`,
       `stock`.`werks`                                                   AS `werks`,
       `stock`.`org_id`                                                  AS `org_id`,
       ifnull(`price`.`verpr`, 0)                                        AS `verpr`,
       '-'                                                               AS `wlbm_last`,
       `swo`.`org_name`                                                  AS `org_name`,
       concat_ws('_', `stock`.`matnr`, `stock`.`lgort`, `stock`.`charg`) AS `qrcode`
from (((`purchase`.`sap_consignment_stock` `stock` left join `purchase`.`business_50t4` `shelf`
        on (((`stock`.`matnr` = `shelf`.`wlbm`) and (`stock`.`org_id` = `shelf`.`org_id`) and
             (`shelf`.`kclx` = 'SAP') and
             (`stock`.`lgort` = `shelf`.`ykcdbm`)))) left join `purchase`.`material_average_price` `price`
       on (((`stock`.`matnr` = `price`.`matnr`) and
            (`stock`.`org_id` = `price`.`org_id`)))) left join `purchase`.`sync_werk_org` `swo`
      on (((`stock`.`org_id` = `swo`.`org_code`) and (`stock`.`werks` = `swo`.`werks`))))
where stock.org_id='00008413';
;-- -. . -..- - / . -. - .-. -.--
select *
from sync_werk_org;
;-- -. . -..- - / . -. - .-. -.--
select *
from sync_werk_org where werks=3280;
;-- -. . -..- - / . -. - .-. -.--
select *
from sync_werk_org_copy1 where werks=3280;
;-- -. . -..- - / . -. - .-. -.--
delete 
from sap_consignment_stock where werks=3280;
;-- -. . -..- - / . -. - .-. -.--
delete
from sap_consignment_stock where werks=3280;
;-- -. . -..- - / . -. - .-. -.--
delete
 sap_consignment_stock where werks=3280;
;-- -. . -..- - / . -. - .-. -.--
delete
from sap_consignment_stock where werks='3280';
;-- -. . -..- - / . -. - .-. -.--
select s.dw, dhysmx.wgjcjsy, dhysmx.update_date, dhysmx.sjzt
from business_f7hc as s
         inner join business_6j3g dhysmx
                    on s.rkdid = dhysmx.id and s.father_id = '541ea66864bb1bdc481ec9d1160064d1';
;-- -. . -..- - / . -. - .-. -.--
select *
from fixed_assets where bukrs=3092;
;-- -. . -..- - / . -. - .-. -.--
select *
from fixed_assets where bukrs=3090;
;-- -. . -..- - / . -. - .-. -.--
select *
from sync_werk_org where werks=3092;
;-- -. . -..- - / . -. - .-. -.--
select *
from sync_werk_org where werks=3090;
;-- -. . -..- - / . -. - .-. -.--
select o.org_name        as '公司',
       t.ktext           as '资产部门',
       t.ktext           as '成本中心描述',
       t.anln1           as '固定资产编码',
       t.anln2           as '资产子编号',
       t.invnr           as '资产实物编码/存货号',
       t.txa50           as '规格型号',
       t.txt50           as '固定资产名称',
       t.txk20           as '资产类别',
       t.menge           as '数量',
       t.meins           as '计量单位',
       format(t.zcyz, 2) as '资产原值',
       format(t.zmjz, 2) as '资产净值',
       t.gdlgrp_txt      as '资产来源',
       t.ordtx           as '资产状态',
       t.afasl           as '折旧方式代码',
       t.afaslt          as '折旧方式描述',
       t.ndjar           as '折旧年限',
       t.afabg           as '折旧开始时间',
       t.aktiv           as '入账时间',
       t.herst           as '制造单位',
       t.anlhtxt         as '资产主号文件',
       t.ndabj           as '已使用年限',
       t.invzu           as '补充库存说明(库存标记 )'
from purchase.fixed_assets t
         left join sync_werk_org o on o.werks = t.bukrs
where o.org_code = '00008413';
;-- -. . -..- - / . -. - .-. -.--
select s.jhbm,
       s.id,
       s.wlbm,
       s.rksl,
       s.ckl,
       s.create_date,
       s.wlms,
       s.dddj,
       s.kmdbm,
       kcdmc,
       s.hjxx as               yhjxx,
       ddhxmh,
       s.gysbm,
       s.gysmc,
       wzfj,
       hgz,
       czzm,
       bgd,
       ccjybg,
       sysm,
       tz,
       s.bz,
       dw,
       gcbm,
       cgddbh,
       hjbm,
       dwms,
       s.kclx,
       wzlx,
       je,
       s.jhlx,
       caigouddgm,
       s.cgy,
       cgddhxmh,
       pc,
       cgylxdh,
       xqjhsbr,
       sbrlxdh,
       fylx,
       syzz,
       ydlx,
       cbzx,
       cbzxms,
       jgh,
       zch,
       ggxh,
       wzjb,
       wztp,
       (rksl - IFNULL(ckl, 0)) kcl_temp,
       m.rkdbh
from business_f7hc s
         inner join business_y339 m on s.father_id = m.id
         left join purchase.business_3k66 b on m.sapcgpz1 = b.sapcgpz1;
;-- -. . -..- - / . -. - .-. -.--
select s.jhbm,
       s.id,
       s.wlbm,
       s.rksl,
       s.ckl,
       s.create_date,
       s.wlms,
       s.dddj,
       s.kmdbm,
       kcdmc,
       s.hjxx as               yhjxx,
       ddhxmh,
       s.gysbm,
       s.gysmc,
       wzfj,
       hgz,
       czzm,
       bgd,
       ccjybg,
       sysm,
       tz,
       s.bz,
       dw,
       gcbm,
       cgddbh,
       hjbm,
       dwms,
       s.kclx,
       wzlx,
       je,
       s.jhlx,
       caigouddgm,
       s.cgy,
       cgddhxmh,
       pc,
       cgylxdh,
       xqjhsbr,
       sbrlxdh,
       fylx,
       syzz,
       ydlx,
       cbzx,
       cbzxms,
       jgh,
       zch,
       ggxh,
       wzjb,
       wztp,
       (rksl - IFNULL(ckl, 0)) kcl_temp,
       m.rkdbh,
       b.ddfqlx
from business_f7hc s
         inner join business_y339 m on s.father_id = m.id
         left join purchase.business_3k66 b on m.sapcgpz1 = b.sapcgpz1;
;-- -. . -..- - / . -. - .-. -.--
select *
from sap_consignment_stock
where matnr ='1000005906';
;-- -. . -..- - / . -. - .-. -.--
select `stock`.`id`                                                      AS `id`,
       `stock`.`matnr`                                                   AS `wlbm`,
       `stock`.`maktx`                                                   AS `wlms`,
       `shelf`.`yhjxx`                                                   AS `hjxx`,
       `shelf`.`yhjxx`                                                   AS `yhjxx`,
       `shelf`.`xhjxx`                                                   AS `xhjxx`,
       `stock`.`lgort`                                                   AS `kcdbm`,
       `stock`.`lgobe`                                                   AS `kcdmc`,
       `stock`.`charg`                                                   AS `pch`,
       `stock`.`meins`                                                   AS `dw`,
       `stock`.`meins_name`                                              AS `dwms`,
       `stock`.`slabs`                                                   AS `jskc`,
       `stock`.`clabs`                                                   AS `kcl`,
       'SAP'                                                             AS `typed`,
       0                                                                 AS `is_history`,
       `stock`.`werks`                                                   AS `werks`,
       `stock`.`org_id`                                                  AS `org_id`,
       ifnull(`price`.`verpr`, 0)                                        AS `verpr`,
       '-'                                                               AS `wlbm_last`,
       `swo`.`org_name`                                                  AS `org_name`,
       concat_ws('_', `stock`.`matnr`, `stock`.`lgort`, `shelf`.`xhjxx`) AS `qrcode`
from (((`sap_consignment_stock` `stock` left join `business_50t4` `shelf`
        on (((`stock`.`matnr` = `shelf`.`wlbm`) and (`stock`.`org_id` = `shelf`.`org_id`) and
             (`shelf`.`kclx` = 'SAP') and
             (`stock`.`lgort` = `shelf`.`ykcdbm`)))) left join `material_average_price` `price`
       on (((`stock`.`matnr` = `price`.`matnr`) and
            (`stock`.`org_id` = `price`.`org_id`)))) left join `sync_werk_org` `swo`
      on ((`stock`.`org_id` = `swo`.`org_code`)))
where stock.matnr='1000005906';
;-- -. . -..- - / . -. - .-. -.--
select *
from sap_consignment_stock
where matnr = '1000005906';
;-- -. . -..- - / . -. - .-. -.--
select title, create_time, request, response, exception, time
from sap_execute_log
where title = '采购订单连续收货'
#   and request like '%SBRKD4010202312290011%'
# and sap_execute_log.response like '%8600897720%'
order by create_time desc
limit 10;
;-- -. . -..- - / . -. - .-. -.--
select id, cgy,org_id,dept_id,user_id,flow_state,flow_step
from business_hmz1
# where serial = '2311020113';
where sbwzdhysdbh like '%2311020113%';
;-- -. . -..- - / . -. - .-. -.--
select id, cgy,org_id,dept_id,user_id,flow_state,flow_step
from business_hmz1
# where serial = '2311020113';
where sbwzdhysdbh like '%11020113%';
;-- -. . -..- - / . -. - .-. -.--
select title, create_time, request, response, exception, time
from sap_execute_log
where title = '采购订单连续收货'
#   and request like '%SBRKD4010202312290011%'
and sap_execute_log.response like '%4500365366%'
order by create_time desc
limit 10;
;-- -. . -..- - / . -. - .-. -.--
select id
     , org_id
     , ddsfgb
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
where 1 = 1

# and ddfqlx ='A18A02A11A04';
  and sapcgpz1 = '4500365366'
# and szgcddh like 'PO%'
# and szgcddh like 'CGDD4010202312070015%'
# and jyms ='A18A05A15A02';
# and id = '0a92c408dbd74fb5808698dfe75fa8d7';
# and serial = '20231226161944066';
# and htbh = 'YTH-4010-NB-GX-2022-001029-00';
# and jyms='A18A05A15A07'
#   and jyms = 'A18A05A15A06'
#   and sapcgpz1 != ''
#   and gsdm = 4010
order by create_date
        desc;
;-- -. . -..- - / . -. - .-. -.--
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
  and father_id = '75e9f0e9f6574aa0b0a301f59bb16344'
# where id = 'c2f8cdbb3418d1c74625a7bbf32f5d2d'
order by create_date desc;
;-- -. . -..- - / . -. - .-. -.--
select id,
       xxmh,
       zt,
       wlbm,
       ddsl,
       cgdj,
       gzf,
       zxf,
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
  and father_id = '75e9f0e9f6574aa0b0a301f59bb16344'
# where id = 'c2f8cdbb3418d1c74625a7bbf32f5d2d'
order by create_date desc;
;-- -. . -..- - / . -. - .-. -.--
select id,
       rkdbh,
       org_id,
       htbh,
       htmc,
       dhysdh,
       create_date,
       rkpz,
       wlbmall
from business_y339
where  1=1
# where id = 'b4c9a2a8e8573bed147b2be544734cd7';

# where serial = '20231226153831855'
and sapcgpz1 = '4500365366'
#     where org_id !='00000287'
# where rkdbh = 'SBRKD4010202312250029'
# where dhysdh is null
order by create_date desc;
;-- -. . -..- - / . -. - .-. -.--
select id, rksl,gcbm, ckl, sapcgpz1, wlbm, dddj,rkpzh, father_id
from business_f7hc
where 1 = 1
#   and rksl != ckl
#   and ckl > 0
  and father_id = '990dcfc482a388d418b7e2558803acc2';
;-- -. . -..- - / . -. - .-. -.--
select id,ddhxmh, rksl,gcbm, ckl, sapcgpz1, wlbm, dddj,rkpzh, father_id
from business_f7hc
where 1 = 1
#   and rksl != ckl
#   and ckl > 0
  and father_id = '990dcfc482a388d418b7e2558803acc2';
;-- -. . -..- - / . -. - .-. -.--
select *
from sap_consignment_stock where matnr='1000394281';
;-- -. . -..- - / . -. - .-. -.--
select id,ddhxmh, rksl,gcbm, ckl, sapcgpz1, wlbm, dddj,rkpzh, father_id
from business_f7hc
where 1 = 1
#   and rksl != ckl
#   and ckl > 0
#   and father_id = '990dcfc482a388d418b7e2558803acc2';
# and org_id='00008413'
# and rkpzh='5006306102'
# and sapcgpz1='4500360355'
  and wlbm = '1000394281';
;-- -. . -..- - / . -. - .-. -.--
select *
from business_w142 where code='I0002';
;-- -. . -..- - / . -. - .-. -.--
select *
from sap_consignment_stock where matnr='1000246764';
;-- -. . -..- - / . -. - .-. -.--
select id,
       ttwb,
       aqhbfy,
       ckbm,
       psdd,
       serial,
       create_date,
       update_date,
       flow_step,
       flow_state,
       ckbm,
       kcdbm
from business_ij1g
# where ckbm is null  or ckbm=''
# where ckbm = 'SBCK4390202401090253';
# where id = 'e6d984faf68c4f50ae851be843bc472c';
#     where psdd like '%熔%'
where serial = '20240124114216562'
# where business_ij1g.flow_step like '%总经理%';
# where business_ij1g.create_date = '2023-08-28 16:50:56';
# where serial = '20231025094042682'
order by create_date
desc;
;-- -. . -..- - / . -. - .-. -.--
select outSlave.id,
       input.hjxx,
       outSlave.cksl,
       input.rksl,
       input.ckl,
       input.id inputId,
       outSlave.father_id
from business_m3wc outSlave
         inner join business_f7hc input on outSlave.rkdid = input.id
where 1 = 1
#   and outSlave.wlbm = '1000231020';
# where jhbm = 'CGJH4010202305080031';
# where rkdid !=''
# where id='112a052b8a524e0d84bab1d5f7e01abf';
and  m.father_id = '5700d857d29c49cab75495a4286962c9';
;-- -. . -..- - / . -. - .-. -.--
select outSlave.id,
       input.hjxx,
       outSlave.cksl,
       input.rksl,
       input.ckl,
       input.id inputId,
       outSlave.father_id
from business_m3wc outSlave
         inner join business_f7hc input on outSlave.rkdid = input.id
where 1 = 1
#   and outSlave.wlbm = '1000231020';
# where jhbm = 'CGJH4010202305080031';
# where rkdid !=''
# where id='112a052b8a524e0d84bab1d5f7e01abf';
and  outSlave.father_id = '5700d857d29c49cab75495a4286962c9';
;-- -. . -..- - / . -. - .-. -.--
select m.id,
       m.father_id,
       m.kcdbm,
       gdzc,
       ydlx,
       fylx,
       cbzx,
       cbzxms,
       nbddh,
       nbddms
from business_m3wc m
where 1 = 1
#   and m.father_id = 'cdaa1dbd459f459ba340671366421929';
and rkdid='c36a39e6d083914033e123541fda982f';
;-- -. . -..- - / . -. - .-. -.--
select id,ddhxmh, rksl,gcbm, ckl, sapcgpz1, wlbm, dddj,rkpzh, father_id
from business_f7hc
where 1 = 1
#   and rksl != ckl
#   and ckl > 0
#   and father_id = '990dcfc482a388d418b7e2558803acc2';
# and org_id='00008413'
# and rkpzh='5006306102'
# and sapcgpz1='4500360355'
#   and wlbm = '1000394281'
  and id = 'c36a39e6d083914033e123541fda982f';
;-- -. . -..- - / . -. - .-. -.--
select id,
       jhbm,
       cklx,
       cksl,
       sfck,
       father_id,
       ydlx,
       ktsl,
       gcdm,
       ckpzh,
       rkdid,
       cbzx,
       cbzxms
from business_m3wc
# where wlbm = '1000022922';
# where father_id = '4d04cb9870f64fbebce79449c4c95a9b';
    where cklx;
;-- -. . -..- - / . -. - .-. -.--
select id,
       jhbm,
       cklx,
       cksl,
       sfck,
       father_id,
       ydlx,
       ktsl,
       gcdm,
       ckpzh,
       rkdid,
       cbzx,
       cbzxms
from business_m3wc;
;-- -. . -..- - / . -. - .-. -.--
select id,
       jhbm,
       cklx,
       ydlx,
       cksl,
       sfck,
       father_id,
       ydlx,
       ktsl,
       gcdm,
       ckpzh,
       rkdid,
       cbzx,
       cbzxms
from business_m3wc
# where wlbm = '1000022922';
# where father_id = '4d04cb9870f64fbebce79449c4c95a9b';
    where cklx;
;-- -. . -..- - / . -. - .-. -.--
select id,
       jhbm,
       cklx,
       ydlx,
       cksl,
       sfck,
       father_id,
       ktsl,
       gcdm,
       ckpzh,
       rkdid,
       cbzx,
       cbzxms
from business_m3wc
# where wlbm = '1000022922';
# where father_id = '4d04cb9870f64fbebce79449c4c95a9b';
    where cklx;
;-- -. . -..- - / . -. - .-. -.--
select id,
       jhbm,
       cklx,
       ydlx,
       cksl,
       sfck,
       father_id,
       ktsl,
       gcdm,
       ckpzh,
       rkdid,
       cbzx,
       cbzxms
from business_m3wc;
;-- -. . -..- - / . -. - .-. -.--
select title, create_time, request, response, exception
from sap_execute_log
where title = '物资出库'
#   and request like '%黄丽芬领料出库%'
  and sap_execute_log.response like '%4914560700%'
order by create_time desc
limit 10;
;-- -. . -..- - / . -. - .-. -.--
select title, create_time, request, response, exception
from sap_execute_log
where title = '物资出库'
#   and request like '%黄丽芬领料出库%'
#   and sap_execute_log.response like '%4914560700%'
order by create_time desc
limit 10;
;-- -. . -..- - / . -. - .-. -.--
select title, create_time, request, response, exception
from sap_execute_log
where title = '物资出库'
#   and request like '%黄丽芬领料出库%'
#   and sap_execute_log.response like '%4914560700%'
order by create_time desc
limit 100;
;-- -. . -..- - / . -. - .-. -.--
select id,
       ttwb,
       aqhbfy,
       ckbm,
       psdd,
       serial,
       create_date,
       update_date,
       flow_step,
       flow_state,
       ckbm,
       kcdbm
from business_ij1g
# where ckbm is null  or ckbm=''
# where ckbm = 'SBCK4390202401090253';
# where id = 'e6d984faf68c4f50ae851be843bc472c';
#     where psdd like '%熔%'
where serial = '20240116140217485'
# where business_ij1g.flow_step like '%总经理%';
# where business_ij1g.create_date = '2023-08-28 16:50:56';
# where serial = '20231025094042682'
order by create_date
        desc;
;-- -. . -..- - / . -. - .-. -.--
select outSlave.id,
       input.hjxx,
       outSlave.cksl,
       input.rksl,
       input.ckl,
       input.id inputId,
       outSlave.father_id
from business_m3wc outSlave
         inner join business_f7hc input on outSlave.rkdid = input.id
where 1 = 1
#   and outSlave.wlbm = '1000231020';
# where jhbm = 'CGJH4010202305080031';
# where rkdid !=''
# where id='112a052b8a524e0d84bab1d5f7e01abf';
  and outSlave.father_id = 'fb09e5d287944c369f4f2bca905d45b7';
;-- -. . -..- - / . -. - .-. -.--
select outSlave.id,
       input.hjxx,
       outSlave.cksl,
       input.rksl,
       input.ckl,
       input.id inputId,
       outSlave.father_id,
       gcbm
from business_m3wc outSlave
         inner join business_f7hc input on outSlave.rkdid = input.id
where 1 = 1
#   and outSlave.wlbm = '1000231020';
# where jhbm = 'CGJH4010202305080031';
# where rkdid !=''
# where id='112a052b8a524e0d84bab1d5f7e01abf';
  and outSlave.father_id = 'fb09e5d287944c369f4f2bca905d45b7';
;-- -. . -..- - / . -. - .-. -.--
select outSlave.id,
       input.hjxx,
       outSlave.cksl,
       input.rksl,
       input.ckl,
       input.id inputId,
       outSlave.father_id,
       gcbm
from business_m3wc outSlave
         left join business_f7hc input on outSlave.rkdid = input.id
where 1 = 1
#   and outSlave.wlbm = '1000231020';
# where jhbm = 'CGJH4010202305080031';
# where rkdid !=''
# where id='112a052b8a524e0d84bab1d5f7e01abf';
  and outSlave.father_id = 'fb09e5d287944c369f4f2bca905d45b7';
;-- -. . -..- - / . -. - .-. -.--
select *
from sync_werk_org where org_name like '%磷化工%';
;-- -. . -..- - / . -. - .-. -.--
select outSlave.id,
       input.hjxx,
       outSlave.cksl,
       input.rksl,
       input.ckl,
       input.id inputId,
       outSlave.father_id,
       outSlave.org_id,
       gcbm
from business_m3wc outSlave
         left join business_f7hc input on outSlave.rkdid = input.id
where 1 = 1
#   and outSlave.wlbm = '1000231020';
# where jhbm = 'CGJH4010202305080031';
# where rkdid !=''
# where id='112a052b8a524e0d84bab1d5f7e01abf';
  and outSlave.father_id = 'fb09e5d287944c369f4f2bca905d45b7';
;-- -. . -..- - / . -. - .-. -.--
select *
from sync_werk_org where sync_werk_org.org_code like 'fb09e5d287944c369f4f2bca905d45b7';
;-- -. . -..- - / . -. - .-. -.--
select *
from sync_werk_org where sync_werk_org.org_code like '%00008413%';
;-- -. . -..- - / . -. - .-. -.--
select title, create_time, request, response, exception
from sap_execute_log
where title = '物资出库'
  and request like '%933%'
#   and sap_execute_log.response like '%4914560700%'
order by create_time desc
limit 100;
;-- -. . -..- - / . -. - .-. -.--
select title, create_time, request, response, exception
from sap_execute_log
where title = '物资出库'
  and request like '%3280%'
#   and sap_execute_log.response like '%4914560700%'
order by create_time desc
limit 100;
;-- -. . -..- - / . -. - .-. -.--
select outSlave.id,
       input.hjxx,
       outSlave.cksl,
       input.rksl,
       input.ckl,
       input.id inputId,
       outSlave.father_id,
       outSlave.org_id,
       outSlave.gcdm
from business_m3wc outSlave
         left join business_f7hc input on outSlave.rkdid = input.id
where 1 = 1
#   and outSlave.wlbm = '1000231020';
# where jhbm = 'CGJH4010202305080031';
# where rkdid !=''
# where id='112a052b8a524e0d84bab1d5f7e01abf';
  and outSlave.father_id = 'fb09e5d287944c369f4f2bca905d45b7';
;-- -. . -..- - / . -. - .-. -.--
select *
from sap_consignment_stock where werks=3280;
;-- -. . -..- - / . -. - .-. -.--
select *
from sap_consignment_stock where werks=3090;
;-- -. . -..- - / . -. - .-. -.--
select *
from sap_consignment_stock where werks=3092;
;-- -. . -..- - / . -. - .-. -.--
select id, cgy,org_id,dept_id,user_id,flow_state,flow_step
from business_hmz1
where serial = '20240124100419979';
;-- -. . -..- - / . -. - .-. -.--
select id,zjjg, sjzt, rk_temp_zt, zt, cgddmxid,rkl,dhsl,zt,xxmh
from business_6j3g
# where id = '58b784abf338f6444602050c82eaf239';
where father_id = 'cc05bde367164082a144e0acb4e23225';
;-- -. . -..- - / . -. - .-. -.--
select id,zjjg, sjzt, rk_temp_zt, zt, cgddmxid,rkl,dhsl,zt,xxmh
from business_6j3g
# where id = '58b784abf338f6444602050c82eaf239';
where father_id = 'd3256c5f30369673aa91bb8354a50374';
;-- -. . -..- - / . -. - .-. -.--
select id, cgy,org_id,dept_id,user_id,flow_state,flow_step
from business_hmz1
where serial = '20240125143513227';
;-- -. . -..- - / . -. - .-. -.--
select id,zjjg, sjzt, rk_temp_zt, zt, cgddmxid,rkl,dhsl,zt,xxmh
from business_6j3g
# where id = '58b784abf338f6444602050c82eaf239';
where father_id = '24f0f7ed6c75490aafd8699797875d39';
;-- -. . -..- - / . -. - .-. -.--
select m.id,m.zt
from business_9yth m
         inner join business_715z s on m.id = s.father_id
# where s.id = '8e917eef604846ba83bbb6fef5109b95'
where m.szgcdd='CGDD00001202401240005'
order by m.create_date desc;
;-- -. . -..- - / . -. - .-. -.--
select m.id,m.zt,m.org_id
from business_9yth m
         inner join business_715z s on m.id = s.father_id
# where s.id = '8e917eef604846ba83bbb6fef5109b95'
where m.szgcdd='CGDD00001202401240005'
order by m.create_date desc;
;-- -. . -..- - / . -. - .-. -.--
select title, create_time, request, response, exception, time
from sap_execute_log
where title = '采购订单连续收货'
#   and request like '%SBRKD4010202312290011%'
and sap_execute_log.response like '%4700409114%'
order by create_time desc
limit 10;
;-- -. . -..- - / . -. - .-. -.--
select *
from receving_rkd_relation;
;-- -. . -..- - / . -. - .-. -.--
select *
from receving_rkd_relation where rkd_id='2212f5c962bd1895ab70b39fcf000818';
;-- -. . -..- - / . -. - .-. -.--
select title, create_time, request, response, exception
from sap_execute_log
where title = '创建连续采购订单'
#                        and request like '%YTH-4010-WB-CG-2023-009990-00%'
#     出现问题的采购订单
#   and sap_execute_log.response like '%4500357582%'

  and sap_execute_log.response like '%4500365366%'
#   and sap_execute_log.request like '%1000440944%'
order by create_time desc
limit 10;
;-- -. . -..- - / . -. - .-. -.--
select title, create_time, request, response, exception
from sap_execute_log
where title = '创建连续采购订单'
#                        and request like '%YTH-4010-WB-CG-2023-009990-00%'
#     出现问题的采购订单
#   and sap_execute_log.response like '%4500357582%'

#   and sap_execute_log.response like '%4500365366%'
#   and sap_execute_log.request like '%1000440944%'
order by create_time desc
limit 10;
;-- -. . -..- - / . -. - .-. -.--
select title, create_time, request, response, exception
from sap_execute_log
where title = '关联采购订单修改删除'
#                        and request like '%YTH-4010-WB-CG-2023-009990-00%'
#     出现问题的采购订单
#   and sap_execute_log.response like '%4500357582%'

#   and sap_execute_log.response like '%4500365366%'
#   and sap_execute_log.request like '%1000440944%'
order by create_time desc
limit 10;
;-- -. . -..- - / . -. - .-. -.--
select title, create_time, request, response, exception
from sap_execute_log
where title = '关联采购订单修改删除'
#                        and request like '%YTH-4010-WB-CG-2023-009990-00%'
#     出现问题的采购订单
  and sap_execute_log.request like '%4700409114%'
order by create_time desc
limit 10;
;-- -. . -..- - / . -. - .-. -.--
select *
from receving_rkd_relation order by create_date desc;
;-- -. . -..- - / . -. - .-. -.--
select id
     , org_id
     , ddsfgb
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
where 1 = 1

# and ddfqlx ='A18A02A11A04';
#   and sapcgpz1 = '4500365366'
# and szgcddh like 'PO%'
and szgcddh like 'CGDD00001202401260007%'
# and jyms ='A18A05A15A02';
# and id = '0a92c408dbd74fb5808698dfe75fa8d7';
# and serial = '20231226161944066';
# and htbh = 'YTH-4010-NB-GX-2022-001029-00';
# and jyms='A18A05A15A07'
#   and jyms = 'A18A05A15A06'
#   and sapcgpz1 != ''
#   and gsdm = 4010
order by create_date
        desc;
;-- -. . -..- - / . -. - .-. -.--
select title, create_time, request, response, exception
from sap_execute_log
where title = '物料凭证冲销'
#                        and request like '%SBCK4010202305260075%'
order by create_time desc
limit 10;
;-- -. . -..- - / . -. - .-. -.--
select title, create_time, request, response, exception
from sap_execute_log
where title = '物料凭证冲销'
                       and request like '%4700409114%'
order by create_time desc
limit 10;
;-- -. . -..- - / . -. - .-. -.--
select title, create_time, request, response, exception
from sap_execute_log
where title = '收货后冲销'
  and request like '%4700409114%'
order by create_time desc
limit 100;
;-- -. . -..- - / . -. - .-. -.--
select title, create_time, request, response, exception
from sap_execute_log
where title = '关联采购订单修改删除'
#                        and request like '%YTH-4010-WB-CG-2023-009990-00%'
#     出现问题的采购订单
#   and sap_execute_log.request like '%4700409114%'
order by create_time desc
limit 10;
;-- -. . -..- - / . -. - .-. -.--
select id
     , org_id
     , ddsfgb
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
where 1 = 1

# and ddfqlx ='A18A02A11A04';
#   and sapcgpz1 = '4500365366'
# and szgcddh like 'PO%'
# and szgcddh like 'CGDD00001202401260007%'
# and jyms ='A18A05A15A02';
# and id = '0a92c408dbd74fb5808698dfe75fa8d7';
and serial = '20240129092019812';
;-- -. . -..- - / . -. - .-. -.--
select title, create_time, request, response, exception
from sap_execute_log
where title = '创建连续采购订单'
#                        and request like '%YTH-4010-WB-CG-2023-009990-00%'
#     出现问题的采购订单
#   and sap_execute_log.response like '%4500357582%'

  and sap_execute_log.response like '%4500367520%'
#   and sap_execute_log.request like '%1000440944%'
order by create_time desc
limit 10;
;-- -. . -..- - / . -. - .-. -.--
select id,
       rkdbh,
       org_id,
       htbh,
       htmc,
       dhysdh,
       create_date,
       rkpz,
       wlbmall
from business_y339
where  1=1
# where id = 'b4c9a2a8e8573bed147b2be544734cd7';

# where serial = '20231226153831855'
# and sapcgpz1 = '4500365366'
#     where org_id !='00000287'
and rkdbh = 'SBRKD4010202401190091'
# where dhysdh is null
order by create_date desc;
;-- -. . -..- - / . -. - .-. -.--
select id,
       rkdbh,
       org_id,
       htbh,
       kgy,
       htmc,
       dhysdh,
       create_date,
       rkpz,
       wlbmall
from business_y339
where  1=1
# where id = 'b4c9a2a8e8573bed147b2be544734cd7';

# where serial = '20231226153831855'
# and sapcgpz1 = '4500365366'
#     where org_id !='00000287'
and rkdbh = 'SBRKD4010202401190091'
# where dhysdh is null
order by create_date desc;
;-- -. . -..- - / . -. - .-. -.--
select title, create_time, request, response, exception
from sap_execute_log
where title = '创建连续采购订单'
#                        and request like '%YTH-4010-WB-CG-2023-009990-00%'
#     出现问题的采购订单
#   and sap_execute_log.response like '%4500357582%'

  and sap_execute_log.response like '%4700410024%'
#   and sap_execute_log.request like '%1000440944%'
order by create_time desc
limit 10;
;-- -. . -..- - / . -. - .-. -.--
select id,
       ttwb,
       aqhbfy,
       ckbm,
       psdd,
       serial,
       create_date,
       update_date,
       flow_step,
       flow_state,
       ckbm,
       kcdbm
from business_ij1g
# where ckbm is null  or ckbm=''
# where ckbm = 'SBCK4390202401090253';
# where id = 'e6d984faf68c4f50ae851be843bc472c';
#     where psdd like '%熔%'
where serial = '20240125161936823'
# where business_ij1g.flow_step like '%总经理%';
# where business_ij1g.create_date = '2023-08-28 16:50:56';
# where serial = '20231025094042682'
order by create_date
        desc;
;-- -. . -..- - / . -. - .-. -.--
select outSlave.id,
       input.hjxx,
       outSlave.cksl,
       input.rksl,
       input.ckl,
       input.id inputId,
       outSlave.father_id,
       outSlave.org_id,
       outSlave.gcdm
from business_m3wc outSlave
         left join business_f7hc input on outSlave.rkdid = input.id
where 1 = 1
#   and outSlave.wlbm = '1000231020';
# where jhbm = 'CGJH4010202305080031';
# where rkdid !=''
# where id='112a052b8a524e0d84bab1d5f7e01abf';
  and outSlave.father_id = 'd3cabab46ed54b96885452cd5cc443e9';
;-- -. . -..- - / . -. - .-. -.--
select outSlave.id,
       input.hjxx,
       outSlave.cksl,
       input.rksl,
       input.ckl,
       input.id inputId,
       outSlave.father_id,
       outSlave.org_id,
       outSlave.gcdm,
       outSlave.rkdid
from business_m3wc outSlave
         left join business_f7hc input on outSlave.rkdid = input.id
where 1 = 1
#   and outSlave.wlbm = '1000231020';
# where jhbm = 'CGJH4010202305080031';
# where rkdid !=''
# where id='112a052b8a524e0d84bab1d5f7e01abf';
  and outSlave.father_id = 'd3cabab46ed54b96885452cd5cc443e9';
;-- -. . -..- - / . -. - .-. -.--
select id,
       ttwb,
       aqhbfy,
       ckbm,
       psdd,
       serial,
       create_date,
       update_date,
       flow_step,
       flow_state,
       ckbm,
       kcdbm
from business_ij1g
# where ckbm is null  or ckbm=''
# where ckbm = 'SBCK4390202401090253';
# where id = 'e6d984faf68c4f50ae851be843bc472c';
#     where psdd like '%熔%'
where serial = '20240105092616262'
# where business_ij1g.flow_step like '%总经理%';
# where business_ij1g.create_date = '2023-08-28 16:50:56';
# where serial = '20231025094042682'
order by create_date
        desc;
;-- -. . -..- - / . -. - .-. -.--
select outSlave.id,
       input.hjxx,
       outSlave.cksl,
       input.rksl,
       input.ckl,
       input.id inputId,
       outSlave.father_id,
       outSlave.org_id,
       outSlave.gcdm,
       outSlave.rkdid
from business_m3wc outSlave
         left join business_f7hc input on outSlave.rkdid = input.id
where 1 = 1
#   and outSlave.wlbm = '1000231020';
# where jhbm = 'CGJH4010202305080031';
# where rkdid !=''
# where id='112a052b8a524e0d84bab1d5f7e01abf';
  and outSlave.father_id = '097adcea4f4f4495a7a4690af44dde59';
;-- -. . -..- - / . -. - .-. -.--
select id,
       ttwb,
       aqhbfy,
       ckbm,
       psdd,
       serial,
       create_date,
       update_date,
       flow_step,
       flow_state,
       ckbm,
       kcdbm
from business_ij1g
# where ckbm is null  or ckbm=''
# where ckbm = 'SBCK4390202401090253';
# where id = 'e6d984faf68c4f50ae851be843bc472c';
#     where psdd like '%熔%'
where serial = '20240105120936050'
# where business_ij1g.flow_step like '%总经理%';
# where business_ij1g.create_date = '2023-08-28 16:50:56';
# where serial = '20231025094042682'
order by create_date
        desc;
;-- -. . -..- - / . -. - .-. -.--
select outSlave.id,
       input.hjxx,
       outSlave.cksl,
       input.rksl,
       input.ckl,
       input.id inputId,
       outSlave.father_id,
       outSlave.org_id,
       outSlave.gcdm,
       outSlave.rkdid
from business_m3wc outSlave
         left join business_f7hc input on outSlave.rkdid = input.id
where 1 = 1
#   and outSlave.wlbm = '1000231020';
# where jhbm = 'CGJH4010202305080031';
# where rkdid !=''
# where id='112a052b8a524e0d84bab1d5f7e01abf';
  and outSlave.father_id = '5bea62d2cb0d4004940b638567c86e48';
;-- -. . -..- - / . -. - .-. -.--
select id,
       rkdbh,
       org_id,
       htbh,
       kgy,
       htmc,
       dhysdh,
       create_date,
       rkpz,
       wlbmall
from business_y339
where  1=1
and id = '51ebbf67f424fcc915d73711fc18ae9f';
;-- -. . -..- - / . -. - .-. -.--
select id,
       ddhxmh,
       rksl,
       gcbm,
       ckl,
       sapcgpz1,
       wlbm,
       dddj,
       rkpzh,
       father_id
from business_f7hc
where 1 = 1
    and id='51ebbf67f424fcc915d73711fc18ae9f'
#   and rksl != ckl
#   and ckl > 0
#   and father_id = '990dcfc482a388d418b7e2558803acc2';
# and org_id='00008413'
# and rkpzh='5006306102'
# and sapcgpz1='4500360355'
#   and wlbm = '1000394281'
  and id = 'c36a39e6d083914033e123541fda982f';
;-- -. . -..- - / . -. - .-. -.--
select id,
       ddhxmh,
       rksl,
       gcbm,
       ckl,
       sapcgpz1,
       wlbm,
       dddj,
       rkpzh,
       father_id
from business_f7hc
where 1 = 1
    and id='51ebbf67f424fcc915d73711fc18ae9f';
;-- -. . -..- - / . -. - .-. -.--
select id,
       rkdbh,
       org_id,
       htbh,
       kgy,
       htmc,
       dhysdh,
       create_date,
       rkpz,
       wlbmall
from business_y339
where 1 = 1
  and id = '17f44848e47a85d10feccafc277b1a35'

# where serial = '20231226153831855'
# and sapcgpz1 = '4500365366'
#     where org_id !='00000287'
# and rkdbh = 'SBRKD4010202401190091'
# where dhysdh is null
order by create_date desc;
;-- -. . -..- - / . -. - .-. -.--
select outSlave.id,
       input.hjxx,
       outSlave.cksl,
       input.rksl,
       input.ckl,
       input.dddj,
       outSlave.dddj,
       input.id inputId,
       outSlave.father_id,
       outSlave.org_id,
       outSlave.gcdm,
       outSlave.rkdid
from business_m3wc outSlave
         left join business_f7hc input on outSlave.rkdid = input.id
where 1 = 1
#   and outSlave.wlbm = '1000231020';
# where jhbm = 'CGJH4010202305080031';
# where rkdid !=''
# where id='112a052b8a524e0d84bab1d5f7e01abf';
  and outSlave.father_id = '5bea62d2cb0d4004940b638567c86e48';
;-- -. . -..- - / . -. - .-. -.--
select outSlave.id,
       input.hjxx,
       outSlave.cksl,
       input.rksl,
       input.ckl,
       input.dddj as '入库单价',
       outSlave.dddj as '出库单价',
       input.id inputId,
       outSlave.father_id,
       outSlave.org_id,
       outSlave.gcdm,
       outSlave.rkdid
from business_m3wc outSlave
         left join business_f7hc input on outSlave.rkdid = input.id
where 1 = 1
#   and outSlave.wlbm = '1000231020';
# where jhbm = 'CGJH4010202305080031';
# where rkdid !=''
# where id='112a052b8a524e0d84bab1d5f7e01abf';
  and outSlave.father_id = '5bea62d2cb0d4004940b638567c86e48';
;-- -. . -..- - / . -. - .-. -.--
select id
     , org_id
     , ddsfgb
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
where 1 = 1

# and ddfqlx ='A18A02A11A04';
#   and sapcgpz1 = '4500365366'
# and szgcddh like 'PO%'
and szgcddh like 'CGDD00001202401260121%'
# and jyms ='A18A05A15A02';
# and id = '0a92c408dbd74fb5808698dfe75fa8d7';
and serial = '20240129092019812';
;-- -. . -..- - / . -. - .-. -.--
select *
from material_average_price where werks=3092;
;-- -. . -..- - / . -. - .-. -.--
select input.id,input.wlbm, rksl, ckl
from business_f7hc input
where ckl > input.rksl;
;-- -. . -..- - / . -. - .-. -.--
show global status;
;-- -. . -..- - / . -. - .-. -.--
show variables like '%slow%';
;-- -. . -..- - / . -. - .-. -.--
show variables like 'max_connections';
;-- -. . -..- - / . -. - .-. -.--
show global status like ‘Max_used_connections’;
;-- -. . -..- - / . -. - .-. -.--
show global status like 'Max_used_connections';
;-- -. . -..- - / . -. - .-. -.--
show global status like 'Thread%';
;-- -. . -..- - / . -. - .-. -.--
select s.dddj,
       s.zt,
       m.id,
       s.wlbm,
       m.sbwzdhysdbh,
       m.create_date,
       m.wlcydh,
       s.wzlx,
       s.zt,
       m.gysbm,
       m.gysmc,
       m.htbh,
       s.fhsl,
       s.shsl,
       s.rkl,
       s.dw,
       s.cgjhh,
       s.dddj
from business_hmz1 m
         left join business_qux5 s on m.id = s.father_id
order by s.zt desc;
;-- -. . -..- - / . -. - .-. -.--
select title, create_time, request, response, exception
from sap_execute_log
where title = '物资出库'
  and request like '%付浩辉领料出库%'
#   and sap_execute_log.response like '%4914560700%'
order by create_time desc
limit 100;
;-- -. . -..- - / . -. - .-. -.--
select id,
       ttwb,
       aqhbfy,
       ckbm,
       psdd,
       serial,
       create_date,
       update_date,
       flow_step,
       flow_state,
       ckbm,
       kcdbm
from business_ij1g
# where ckbm is null  or ckbm=''
where ckbm = 'SBCK4390202401290237';
;-- -. . -..- - / . -. - .-. -.--
select m.id,
       m.father_id,
       m.kcdbm,
       gdzc,
       zzkm,
       ydlx,
       fylx,
       cbzx,
       cbzxms,
       nbddh,
       nbddms
from business_m3wc m
where 1 = 1
  and m.father_id = 'fd122b7651194af1abdb2b65c07edb93';
;-- -. . -..- - / . -. - .-. -.--
select id
     , org_id
     , ddsfgb
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
where 1 = 1

# and ddfqlx ='A18A02A11A04';
#   and sapcgpz1 = '4500365366'
# and szgcddh like 'PO%'
and szgcddh like 'CGDD00001202401260121%'
# and jyms ='A18A05A15A02';
# and id = '0a92c408dbd74fb5808698dfe75fa8d7';
# and serial = '20240129092019812';
# and htbh = 'YTH-4010-NB-GX-2022-001029-00';
# and jyms='A18A05A15A07'
#   and jyms = 'A18A05A15A06'
#   and sapcgpz1 != ''
#   and gsdm = 4010
order by create_date
        desc;
;-- -. . -..- - / . -. - .-. -.--
select title, create_time, request, response, exception, time
from sap_execute_log
where title = '采购订单连续收货'
  and request like '%4700409497%'
# and sap_execute_log.response like '%4700409114%'
order by create_time desc
limit 10;