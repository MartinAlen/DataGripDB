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
  and zt is not null
  and zt != ''
#   and wlbm = '1000385331'
  and father_id = '70467919a07c95b3438a39df123808e1'
# where id = 'c2f8cdbb3418d1c74625a7bbf32f5d2d'
order by create_date desc;
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
  and father_id = '70467919a07c95b3438a39df123808e1'
# where id = 'c2f8cdbb3418d1c74625a7bbf32f5d2d'
order by create_date desc;
;-- -. . -..- - / . -. - .-. -.--
select id
     , org_id
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
# where ddfqlx ='A18A02A11A04';
where sapcgpz1 = '4500357582'
# where szgcddh like 'PO%'
# where szgcddh like 'CGDD4010202312070015%'
# where jyms ='A18A05A15A02';
# where id = '0a92c408dbd74fb5808698dfe75fa8d7';
# where serial = '20231226161944066';
# where htbh = 'YTH-4010-NB-GX-2022-001029-00';
# where jyms='A18A05A15A07'
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
  and father_id = 'c930fd9e22a64a5a87ead3d7e6d77cc7'
# where id = 'c2f8cdbb3418d1c74625a7bbf32f5d2d'
order by create_date desc;
;-- -. . -..- - / . -. - .-. -.--
select m.id,m.tkdbm,s.*
from business_c927 m inner  join business_z6nu s on m.id=s.father_id;
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
       `stock`.`slabs`                                                   AS `jskc`,
       `stock`.`clabs`                                                   AS `kcl`,
       'SAP'                                                             AS `typed`,
       0                                                                 AS `is_history`,
       `stock`.`werks`                                                   AS `werks`,
       `stock`.`org_id`                                                  AS `org_id`,
       '-'                                                               AS `wlbm_last`,
       concat_ws('_', `stock`.`matnr`, `stock`.`lgort`, `shelf`.`xhjxx`) AS `qrcode`
from (((`sap_consignment_stock` `stock` left join `business_50t4` `shelf`
        on (((`stock`.`matnr` = `shelf`.`wlbm`) and (`stock`.`org_id` = `shelf`.`org_id`) and
             (`shelf`.`kclx` = 'SAP') and
             (`stock`.`lgort` = `shelf`.`ykcdbm`))));
;-- -. . -..- - / . -. - .-. -.--
select *
from sap_consignment_stock
where 1 = 1
  and werks = 4010
  and org_id = '00000287';
;-- -. . -..- - / . -. - .-. -.--
select count(1)
from sap_consignment_stock
where 1 = 1
  and werks = 4010
  and org_id = '00000287';
;-- -. . -..- - / . -. - .-. -.--
select count(1)
from sap_consignment_stock
where 1 = 1
#   and werks = 4010
  and org_id = '00000287';
;-- -. . -..- - / . -. - .-. -.--
select count(matnr) sum1
from sap_consignment_stock
where 1 = 1
  and werks = 4010
  and org_id = '00000287'
group by matnr
having sum1 > 0;
;-- -. . -..- - / . -. - .-. -.--
select count(matnr) sum1,matnr
from sap_consignment_stock
where 1 = 1
  and werks = 4010
  and org_id = '00000287'
group by matnr
having sum1 > 0;
;-- -. . -..- - / . -. - .-. -.--
select count(matnr) sum1,matnr
from sap_consignment_stock
where 1 = 1
  and werks = 4010
  and org_id = '00000287'
group by matnr
having sum1 > 1;
;-- -. . -..- - / . -. - .-. -.--
select
#     count(matnr) sum1,
    matnr,
clabs
from sap_consignment_stock
where 1 = 1
  and werks = 4010
  and org_id = '00000287'
and matnr='1000340448'
group by matnr;
;-- -. . -..- - / . -. - .-. -.--
select
#     count(matnr) sum1,
matnr,
clabs
from sap_consignment_stock
where 1 = 1
  and werks = 4010
  and org_id = '00000287'
  and matnr = '1000340448'
group by matnr;
;-- -. . -..- - / . -. - .-. -.--
select
#     count(matnr) sum1,
matnr,
clabs
from sap_consignment_stock
where 1 = 1
  and werks = 4010
  and org_id = '00000287'
  and matnr = '1000340448';
;-- -. . -..- - / . -. - .-. -.--
select
#     count(matnr) sum1,
matnr,
maktx,
clabs
from sap_consignment_stock
where 1 = 1
  and werks = 4010
  and org_id = '00000287'
  and matnr = '1000340448';
;-- -. . -..- - / . -. - .-. -.--
select
#     count(matnr) sum1,
matnr,
maktx,
clabs,
lgort
from sap_consignment_stock
where 1 = 1
  and werks = 4010
  and org_id = '00000287'
  and matnr = '1000340448';
;-- -. . -..- - / . -. - .-. -.--
select
#     count(matnr) sum1,
matnr,
maktx,
clabs,
lgort,
charg
from sap_consignment_stock
where 1 = 1
  and werks = 4010
  and org_id = '00000287'
  and matnr = '1000340448';
;-- -. . -..- - / . -. - .-. -.--
select id
     , org_id
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
# and sapcgpz1 = '4500357582'
# and szgcddh like 'PO%'
# and szgcddh like 'CGDD4010202312070015%'
# and jyms ='A18A05A15A02';
# and id = '0a92c408dbd74fb5808698dfe75fa8d7';
# and serial = '20231226161944066';
# and htbh = 'YTH-4010-NB-GX-2022-001029-00';
# and jyms='A18A05A15A07'
and jyms='A18A05A15A06'
order by create_date
desc;
;-- -. . -..- - / . -. - .-. -.--
select id
     , org_id
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
# and sapcgpz1 = '4500357582'
# and szgcddh like 'PO%'
# and szgcddh like 'CGDD4010202312070015%'
# and jyms ='A18A05A15A02';
# and id = '0a92c408dbd74fb5808698dfe75fa8d7';
# and serial = '20231226161944066';
# and htbh = 'YTH-4010-NB-GX-2022-001029-00';
# and jyms='A18A05A15A07'
and jyms='A18A05A15A06' and sapcgpz1 is not null 
order by create_date
desc;
;-- -. . -..- - / . -. - .-. -.--
select id
     , org_id
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
# and sapcgpz1 = '4500357582'
# and szgcddh like 'PO%'
# and szgcddh like 'CGDD4010202312070015%'
# and jyms ='A18A05A15A02';
# and id = '0a92c408dbd74fb5808698dfe75fa8d7';
# and serial = '20231226161944066';
# and htbh = 'YTH-4010-NB-GX-2022-001029-00';
# and jyms='A18A05A15A07'
and jyms='A18A05A15A06' and sapcgpz1 !=''
order by create_date
desc;
;-- -. . -..- - / . -. - .-. -.--
select title, create_time, request, response, exception
from sap_execute_log
where title = '创建连续采购订单'
#                        and request like '%YTH-4010-WB-CG-2023-009990-00%'
#     出现问题的采购订单
#   and sap_execute_log.response like '%4500357582%'

  and sap_execute_log.response like '%4500362716%'
order by create_time desc
limit 10;
;-- -. . -..- - / . -. - .-. -.--
select title, create_time, request, response, exception, time
from sap_execute_log
where title = '采购订单连续收货'
  and request like '%4500357582%4010%'
# sap_execute_log.response like '%4913096500%'
order by create_time desc
limit 10;
;-- -. . -..- - / . -. - .-. -.--
select id
     , org_id
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
# and sapcgpz1 = '4500357582'
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
;-- -. . -..- - / . -. - .-. -.--
select title, create_time, request, response, exception, time
from sap_execute_log
where title = '采购订单连续收货'
  and request like '%4500362689%4010%'
# sap_execute_log.response like '%4913096500%'
order by create_time desc
limit 10;
;-- -. . -..- - / . -. - .-. -.--
select title, create_time, request, response, exception, time
from sap_execute_log
where title = '采购订单连续收货'
  and request like '%4500362689%'
# sap_execute_log.response like '%4913096500%'
order by create_time desc
limit 10;
;-- -. . -..- - / . -. - .-. -.--
select title, create_time, request, response, exception
from sap_execute_log
where title = '创建连续采购订单'
#                        and request like '%YTH-4010-WB-CG-2023-009990-00%'
#     出现问题的采购订单
#   and sap_execute_log.response like '%4500357582%'

  and sap_execute_log.response like '%4500362689%'
order by create_time desc
limit 10;
;-- -. . -..- - / . -. - .-. -.--
select title, create_time, request, response, exception
from sap_execute_log
where title = '创建连续采购订单'
#                        and request like '%YTH-4010-WB-CG-2023-009990-00%'
#     出现问题的采购订单
#   and sap_execute_log.response like '%4500357582%'

#   and sap_execute_log.response like '%4500362689%'
  and sap_execute_log.request like '%1000440944%'
order by create_time desc
limit 10;
;-- -. . -..- - / . -. - .-. -.--
select *
from receving_rkd_relation;
;-- -. . -..- - / . -. - .-. -.--
select *
from receving_rkd_relation
where
#     rkd_id='7c4f4db45d704d0d5e7efdce9ab32dcc'
text like '%4500492329%';
;-- -. . -..- - / . -. - .-. -.--
select title, create_time, request, response, exception
from sap_execute_log
where title = '创建连续采购订单'
#                        and request like '%YTH-4010-WB-CG-2023-009990-00%'
#     出现问题的采购订单
  and sap_execute_log.response like '%4500357582%'

#   and sap_execute_log.response like '%4500362689%'
#   and sap_execute_log.request like '%1000440944%'
order by create_time desc
limit 10;
;-- -. . -..- - / . -. - .-. -.--
select id, rkdbh, htbh, htmc, dhysdh, create_date,rkpz,wlbmall
from business_y339
# where id = 'bb8ed4eba3e3e5c6d999974a9a776885'
# where serial = '20231226153831855'
where sapcgpz1 = '4500357582'
# where rkdbh = 'SBRKD4010202312250029'
# where dhysdh is null
order by create_date desc;
;-- -. . -..- - / . -. - .-. -.--
select id, sapcgpz1, wlbm, rkpzh, father_id
from business_f7hc
where father_id = 'b37b85458b4e537581c31214b4441077'
  and wlbm = '1000002942';
;-- -. . -..- - / . -. - .-. -.--
select id, sapcgpz1, wlbm, rkpzh, father_id
from business_f7hc
where father_id = 'b37b85458b4e537581c31214b4441077';
;-- -. . -..- - / . -. - .-. -.--
select id, rksl,sapcgpz1, wlbm, rkpzh, father_id
from business_f7hc
where father_id = 'b37b85458b4e537581c31214b4441077';
;-- -. . -..- - / . -. - .-. -.--
select id
     , org_id
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
and sapcgpz1 = '4500357582'
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
;-- -. . -..- - / . -. - .-. -.--
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
and sapcgpz1 = '4500357582'
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
;-- -. . -..- - / . -. - .-. -.--
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
  and father_id = '2203af33ec1d45708af1fe5df00d6455'
# where id = 'c2f8cdbb3418d1c74625a7bbf32f5d2d'
order by create_date desc;
;-- -. . -..- - / . -. - .-. -.--
select id, cgy,org_id,dept_id,user_id,flow_state,flow_step
from business_hmz1
# where serial = '20231221132024458';
where sbwzdhysdbh = 'DHYSD4010202312250019';
;-- -. . -..- - / . -. - .-. -.--
select id,zjjg, sjzt, rk_temp_zt, zt, cgddmxid,rkl,dhsl,zt,xxmh
from business_6j3g
# where id = '58b784abf338f6444602050c82eaf239';
where father_id = '4af92c2dc0114d27b3039fffa85f38af';
;-- -. . -..- - / . -. - .-. -.--
select wlbm,kcl
from wait_use_repository where wlbm='1000011419';
;-- -. . -..- - / . -. - .-. -.--
select m.id, m.wlbm, m.ckdid, m.father_id, m.rksl, m.ckl
from business_34db m
         left join business_l1lc s on m.id = s.rkd_detail_id
where m.wlbm='1000011419';
;-- -. . -..- - / . -. - .-. -.--
select *
from business_l1lc
# where father_id = '85008822338c4f8caa6f8882e4151a2d';
# where wlbm = '1000014117';
# where  rkd_detail_id= '168fabf698914b3bb52775c2e379f056';
where wlbm='1000011419';
;-- -. . -..- - / . -. - .-. -.--
select s.jhbm,
       s.id,
       s.wlbm,
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
       mp.verpr                ydpjj,
       m.rkdbh
from business_f7hc s
         inner join business_y339 m on s.father_id = m.id
         left join material_average_price mp on s.wlbm = mp.matnr and s.gcbm = mp.werks
having kcl_temp > 0
limit 10;
;-- -. . -..- - / . -. - .-. -.--
select s.jhbm,
       s.id,
       s.wlbm,
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
       mp.verpr                ydpjj,
       m.rkdbh
from business_f7hc s
         inner join business_y339 m on s.father_id = m.id
         left join material_average_price mp on s.wlbm = mp.matnr and s.gcbm = mp.werks
having kcl_temp > 0;
;-- -. . -..- - / . -. - .-. -.--
select id, rksl,sapcgpz1, wlbm, rkpzh, father_id
from business_f7hc
where ckl>0;
;-- -. . -..- - / . -. - .-. -.--
select id, rksl,ckl,sapcgpz1, wlbm, rkpzh, father_id
from business_f7hc
where ckl>0;
;-- -. . -..- - / . -. - .-. -.--
select id, rksl,ckl,sapcgpz1, wlbm, rkpzh, father_id
from business_f7hc
where rksl!=ckl and ckl>0;
;-- -. . -..- - / . -. - .-. -.--
select id, rksl, ckl, sapcgpz1, wlbm, rkpzh, father_id
from business_f7hc
where rksl != ckl
  and ckl > 0
and wlbm='1000466421';
;-- -. . -..- - / . -. - .-. -.--
select id, rksl, ckl, sapcgpz1, wlbm, rkpzh, father_id
from business_f7hc
where 1 = 1
#   and rksl != ckl
#   and ckl > 0
  and wlbm = '1000466421';
;-- -. . -..- - / . -. - .-. -.--
select id, rksl, ckl, sapcgpz1, wlbm, rkpzh, father_id
from business_f7hc
where 1 = 1
  and rksl != ckl
  and ckl > 0;
;-- -. . -..- - / . -. - .-. -.--
select *
from business_y339 m
         inner join business_f7hc s on m.id = s.father_id
where m.flow_step = '归档'
  and rksl != ckl
  and ckl > 0;
;-- -. . -..- - / . -. - .-. -.--
select s.id, rksl, ckl, wlbm
from business_y339 m
         inner join business_f7hc s on m.id = s.father_id
where m.flow_step = '归档'
  and rksl != ckl
  and ckl > 0;
;-- -. . -..- - / . -. - .-. -.--
select m.id,
       m.father_id,
       m.kcdbm,
       m.hjxx,
       s.hjxx,
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
         inner join business_f7hc s on m.rkdid = s.id
where m.flow_step='归档';
;-- -. . -..- - / . -. - .-. -.--
select m.id,
       m.ckl,
       m.rksl
from business_m3wc s
         inner join business_f7hc m on m.rkdid = s.id
where m.flow_step='归档';
;-- -. . -..- - / . -. - .-. -.--
select *
from business_ij1g m
         inner join business_m3wc s on m.id = s.father_id;
;-- -. . -..- - / . -. - .-. -.--
select *
from business_ij1g m
         inner join business_m3wc s on m.id = s.father_id
where m.flow_step != '填写';
;-- -. . -..- - / . -. - .-. -.--
select m.flow_step
from business_ij1g m
         inner join business_m3wc s on m.id = s.father_id
where m.flow_step != '填写'
group by m.flow_step;
;-- -. . -..- - / . -. - .-. -.--
select m.flow_step
from business_ij1g m
         inner join business_m3wc s on m.id = s.father_id
where m.flow_step != '领用填写'
group by m.flow_step;
;-- -. . -..- - / . -. - .-. -.--
select
from business_ij1g m
         inner join business_m3wc s on m.id = s.father_id
         inner join business_f7hc input on s.rkdid = input.id
where m.flow_step != '领用填写';
;-- -. . -..- - / . -. - .-. -.--
select input.rksl,input.ckl,s.cklx
from business_ij1g m
         inner join business_m3wc s on m.id = s.father_id
         inner join business_f7hc input on s.rkdid = input.id
where m.flow_step != '领用填写';
;-- -. . -..- - / . -. - .-. -.--
select input.rksl,input.ckl,s.cksl
from business_ij1g m
         inner join business_m3wc s on m.id = s.father_id
         inner join business_f7hc input on s.rkdid = input.id
where m.flow_step != '领用填写';
;-- -. . -..- - / . -. - .-. -.--
select input.rksl,input.ckl,s.cksl
from business_ij1g m
         inner join business_m3wc s on m.id = s.father_id
         inner join business_f7hc input on s.rkdid = input.id
where m.flow_step != '领用填写' and s.jhbm!='';
;-- -. . -..- - / . -. - .-. -.--
select  count(1)
from business_ij1g m
         inner join business_m3wc s on m.id = s.father_id
         inner join business_f7hc input on s.rkdid = input.id
where m.flow_step != '领用填写'
  and s.jhbm != '';
;-- -. . -..- - / . -. - .-. -.--
select input.rksl, input.ckl, s.cksl
# select  count(1)
from business_ij1g m
         inner join business_m3wc s on m.id = s.father_id
         inner join business_f7hc input on s.rkdid = input.id
where m.flow_step != '领用填写'
  and s.jhbm != '';
;-- -. . -..- - / . -. - .-. -.--
select input.rksl, input.ckl, s.cksl
# select  count(1)
from business_ij1g m
         inner join business_m3wc s on m.id = s.father_id
         inner join business_f7hc input on s.rkdid = input.id
where m.flow_step != '领用填写'
  and s.jhbm != ''
  and input.rksl != input.ckl;
;-- -. . -..- - / . -. - .-. -.--
select input.rksl, input.ckl, s.cksl
# select  count(1)
from business_ij1g m
         inner join business_m3wc s on m.id = s.father_id
         inner join business_f7hc input on s.rkdid = input.id
where m.flow_step != '领用填写'
  and s.jhbm != ''
  and input.rksl < input.ckl;
;-- -. . -..- - / . -. - .-. -.--
select count(input.rkdid) kk, input.rkdid
# select  count(1)
from business_ij1g m
         inner join business_m3wc s on m.id = s.father_id
         inner join business_f7hc input on s.rkdid = input.id
where m.flow_step != '领用填写'
  and s.jhbm != ''
  and input.rksl < input.ckl
group by input.rkdid
having kk > 0;
;-- -. . -..- - / . -. - .-. -.--
select count(input.rkdid) kk, input.rkdid
# select  count(1)
from business_ij1g m
         inner join business_m3wc s on m.id = s.father_id
         inner join business_f7hc input on s.rkdid = input.id
where m.flow_step != '领用填写'
  and s.jhbm != ''
  and input.rksl < input.ckl
group by input.rkdid
having kk > 1;
;-- -. . -..- - / . -. - .-. -.--
select sum(s.cksl), input.rkdid
# select  count(1)
from business_ij1g m
         inner join business_m3wc s on m.id = s.father_id
         inner join business_f7hc input on s.rkdid = input.id
where m.flow_step != '领用填写'
  and s.jhbm != ''
  and input.rksl < input.ckl
group by input.rkdid
having kk > 1;
;-- -. . -..- - / . -. - .-. -.--
select sum(s.cksl) kk, count(input.rkdid) kk, input.rkdid ,input.ckl,input.rksl
# select  count(1)
from business_ij1g m
         inner join business_m3wc s on m.id = s.father_id
         inner join business_f7hc input on s.rkdid = input.id
where m.flow_step != '领用填写'
  and s.jhbm != ''
  and input.rksl < input.ckl
group by input.rkdid
having kk > 1;
;-- -. . -..- - / . -. - .-. -.--
select sum(s.cksl) kk, count(input.rkdid) kk, input.rkdid
# select  count(1)
from business_ij1g m
         inner join business_m3wc s on m.id = s.father_id
         inner join business_f7hc input on s.rkdid = input.id
where m.flow_step != '领用填写'
  and s.jhbm != ''
  and input.rksl < input.ckl
group by input.rkdid
having kk > 1;
;-- -. . -..- - / . -. - .-. -.--
select *
from business_f7hc input
where input.id in (

# 出库单出库数量统计 (计划物资)
    select sum(s.cksl) kk, count(input.rkdid) duplicateGetOut, input.rkdid
# select  count(1)
    from business_ij1g m
             inner join business_m3wc s on m.id = s.father_id
             inner join business_f7hc input on s.rkdid = input.id
    where m.flow_step != '领用填写'
      and s.jhbm != ''
      and input.rksl < input.ckl
    group by input.rkdid
    having duplicateGetOut > 1
);
;-- -. . -..- - / . -. - .-. -.--
select sum(s.cksl) kk, count(input.rkdid) duplicateGetOut, input.rkdid
# select  count(1)
from business_ij1g m
         inner join business_m3wc s on m.id = s.father_id
         inner join business_f7hc input on s.rkdid = input.id
where m.flow_step != '领用填写'
  and s.jhbm != ''
  and input.rksl < input.ckl
group by input.rkdid
having duplicateGetOut > 1;
;-- -. . -..- - / . -. - .-. -.--
select sum(s.cksl) kk, count(input.rkdid) duplicateGetOut, input.rkdid,input.rksl
# select  count(1)
from business_ij1g m
         inner join business_m3wc s on m.id = s.father_id
         inner join business_f7hc input on s.rkdid = input.id
where m.flow_step != '领用填写'
  and s.jhbm != ''
  and input.rksl < input.ckl
group by input.rkdid
having duplicateGetOut > 1;
;-- -. . -..- - / . -. - .-. -.--
select outs.cksl, outs.create_date, input.rkdid
# select  count(1)
from business_ij1g m
         inner join business_m3wc outs on m.id = outs.father_id
         inner join business_f7hc input on outs.rkdid = input.id
where m.flow_step != '领用填写'
  and outs.jhbm != ''
  and input.rksl < input.ckl
order by outs.create_date desc
limit 100;
;-- -. . -..- - / . -. - .-. -.--
select input.rksl,input.ckl,outs.cksl, outs.create_date, input.rkdid
# select  count(1)
from business_ij1g m
         inner join business_m3wc outs on m.id = outs.father_id
         inner join business_f7hc input on outs.rkdid = input.id
where m.flow_step != '领用填写'
  and outs.jhbm != ''
  and input.rksl < input.ckl
order by outs.create_date desc
limit 100;
;-- -. . -..- - / . -. - .-. -.--
select m.ckbm,input.rksl,input.ckl,outs.cksl, outs.create_date, input.rkdid
# select  count(1)
from business_ij1g m
         inner join business_m3wc outs on m.id = outs.father_id
         inner join business_f7hc input on outs.rkdid = input.id
where m.flow_step != '领用填写'
  and outs.jhbm != ''
  and input.rksl < input.ckl
order by outs.create_date desc
limit 100;
;-- -. . -..- - / . -. - .-. -.--
select m.ckbm, input.rksl, input.ckl, outs.cksl, outs.create_date, input.rkdid
# select  count(1)
from business_ij1g m
         inner join business_m3wc outs on m.id = outs.father_id
         inner join business_f7hc input on outs.rkdid = input.id
where m.flow_step != '领用填写'
  and outs.jhbm != ''
  and input.rksl < input.ckl
order by outs.create_date desc
limit 100;
;-- -. . -..- - / . -. - .-. -.--
select m.id,
       m.father_id,
       m.kcdbm,
       m.hjxx,
       s.hjxx,
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
         inner join business_f7hc s on m.rkdid = s.id

where wlbm = '1000034208';
;-- -. . -..- - / . -. - .-. -.--
select outSlave.id,
       outSlave.father_id,
       outSlave.kcdbm,
       outSlave.hjxx,
       input.hjxx,
       outSlave.ckpzh,
       outSlave.zkc,
       outSlave.cksl,
       outSlave.ktsl,
       outSlave.wlbm,
       outSlave.wlms,
       outSlave.gcdm,
       outSlave.jhbm,
       outSlave.father_id,
       outSlave.rkdid,
       outSlave.sfck,
       outSlave.ydlx

from business_m3wc outSlave
         inner join business_f7hc input on outSlave.rkdid = input.id

where outSlave.wlbm = '1000034208';
;-- -. . -..- - / . -. - .-. -.--
select outSlave.id,
       input.hjxx,
       outSlave.cksl,
       input.rksl,
       input.ckl

from business_m3wc outSlave
         inner join business_f7hc input on outSlave.rkdid = input.id

where outSlave.wlbm = '1000034208';
;-- -. . -..- - / . -. - .-. -.--
select m.ckbm, input.rksl, input.ckl, outs.cksl, outs.create_date, input.rkdid
# select  count(1)
from business_ij1g m
         inner join business_m3wc outs on m.id = outs.father_id
         inner join business_f7hc input on outs.rkdid = input.id
where m.flow_step != '领用填写'
  and outs.jhbm != ''
  and input.rksl < input.ckl;
;-- -. . -..- - / . -. - .-. -.--
select m.ckbm, input.rksl, input.ckl as input_ckl, outs.cksl, outs.create_date, input.rkdid
# select  count(1)
from business_ij1g m
         inner join business_m3wc outs on m.id = outs.father_id
         inner join business_f7hc input on outs.rkdid = input.id
where m.flow_step != '领用填写'
  and outs.jhbm != ''
  and input.rksl < input.ckl;
;-- -. . -..- - / . -. - .-. -.--
select m.ckbm, input.rksl, input.ckl as input_ckl, outs.cksl actual_ckl, outs.create_date, input.rkdid
# select  count(1)
from business_ij1g m
         inner join business_m3wc outs on m.id = outs.father_id
         inner join business_f7hc input on outs.rkdid = input.id
where m.flow_step != '领用填写'
  and outs.jhbm != ''
  and input.rksl < input.ckl;
;-- -. . -..- - / . -. - .-. -.--
select m.ckbm, input.rksl, input.ckl as input_ckl, outs.cksl actual_ckl, outs.create_date, input.rkdid
# select  count(1)
from business_ij1g m
         inner join business_m3wc outs on m.id = outs.father_id
         inner join business_f7hc input on outs.rkdid = input.id
where m.flow_step != '领用填写'
  and outs.jhbm != ''
  and input.rksl < input.ckl
  and outs.cksl < input.rksl;
;-- -. . -..- - / . -. - .-. -.--
select m.ckbm, input.rksl, input.ckl as input_ckl, outs.cksl actual_ckl, outs.create_date, input.rkdid
# select  count(1)
from business_ij1g m
         inner join business_m3wc outs on m.id = outs.father_id
         inner join business_f7hc input on outs.rkdid = input.id
where m.flow_step != '领用填写'
  and outs.jhbm != '';
;-- -. . -..- - / . -. - .-. -.--
select m.ckbm,
       input.id,
       outs.rkdid,
       input.rksl,
       input.ckl as input_ckl,
       outs.cksl    actual_ckl,
       outs.create_date
# select  count(1)
from business_ij1g m
         inner join business_m3wc outs on m.id = outs.father_id
         inner join business_f7hc input on outs.rkdid = input.id
where m.flow_step != '领用填写'
  and outs.jhbm != '';
;-- -. . -..- - / . -. - .-. -.--
select m.ckbm,
       input.id,
       input.rksl,
       input.ckl as input_ckl,
       outs.cksl    actual_ckl,
       outs.create_date
# select  count(1)
from business_ij1g m
         inner join business_m3wc outs on m.id = outs.father_id
         inner join business_f7hc input on outs.rkdid = input.id
where m.flow_step != '领用填写'
  and outs.jhbm != ''
  and input.ckl = outs.cksl;
;-- -. . -..- - / . -. - .-. -.--
select m.ckbm,
       input.id,
       input.rksl,
       input.ckl as input_ckl,
       outs.cksl    actual_ckl,
       outs.create_date
# select  count(1)
from business_ij1g m
         inner join business_m3wc outs on m.id = outs.father_id
         inner join business_f7hc input on outs.rkdid = input.id
where m.flow_step != '领用填写'
#   计划物资出库
  and outs.jhbm != ''
#   计划物资的出库量与实际出库量
  and input.ckl = outs.cksl;
;-- -. . -..- - / . -. - .-. -.--
select *
from sap_consignment_stock where werks=3340;
;-- -. . -..- - / . -. - .-. -.--
select *
from sync_werk_org where org_name like '云聚';
;-- -. . -..- - / . -. - .-. -.--
select *
from sync_werk_org where org_name like '云';
;-- -. . -..- - / . -. - .-. -.--
select *
from sync_werk_org;
;-- -. . -..- - / . -. - .-. -.--
select *
from sync_werk_org where org_name like '%云%';
;-- -. . -..- - / . -. - .-. -.--
select *
from sync_werk_org where org_name like '%云聚能%';
;-- -. . -..- - / . -. - .-. -.--
select *
from sap_consignment_stock
where werks = 3390;
;-- -. . -..- - / . -. - .-. -.--
select *
from sap_consignment_stock
where werks = 3390
and lgort='1515'
and matnr='1000408327';
;-- -. . -..- - / . -. - .-. -.--
select m.ckbm,
       input.id,
       input.rksl,
       input.ckl as input_ckl,
       outs.cksl    actual_ckl,
       outs.create_date
# select  count(1)
from business_ij1g m
         inner join business_m3wc outs on m.id = outs.father_id
         inner join business_f7hc input on outs.rkdid = input.id
where m.flow_step != '领用填写'
#   计划物资出库
  and outs.jhbm != ''
#   计划物资的出库量与实际出库量
  and input.ckl = outs.cksl
order by outs.create_date desc;
;-- -. . -..- - / . -. - .-. -.--
select m.ckbm,
       input.id,
       input.rksl,
       input.ckl as input_ckl,
       outs.cksl    actual_ckl,
       outs.create_date
# select  count(1)
from business_ij1g m
         inner join business_m3wc outs on m.id = outs.father_id
         inner join business_f7hc input on outs.rkdid = input.id
where m.flow_step != '领用填写'
#   计划物资出库
  and outs.jhbm != ''
#   计划物资的出库量与实际出库量
  and input.ckl != outs.cksl
order by outs.create_date desc;
;-- -. . -..- - / . -. - .-. -.--
select m.ckbm,
       input.id,
       input.rksl,
       input.ckl as input_ckl,
       outs.cksl    actual_ckl,
       outs.create_date
# select  count(1)
from business_ij1g m
         inner join business_m3wc outs on m.id = outs.father_id
         inner join business_f7hc input on outs.rkdid = input.id
where m.flow_step != '领用填写'
#   计划物资出库
  and outs.jhbm != ''
#   计划物资的出库量与实际出库量
  and input.ckl != outs.cksl
and input.ckl <0
order by outs.create_date desc;
;-- -. . -..- - / . -. - .-. -.--
select m.ckbm,
       input.id,
       input.rksl,
       input.ckl as input_ckl,
       outs.cksl    actual_ckl,
       outs.create_date
# select  count(1)
from business_ij1g m
         inner join business_m3wc outs on m.id = outs.father_id
         inner join business_f7hc input on outs.rkdid = input.id
where m.flow_step != '领用填写'
#   计划物资出库
  and outs.jhbm != ''
#   计划物资的出库量与实际出库量
  and input.ckl > outs.cksl
order by outs.create_date desc;
;-- -. . -..- - / . -. - .-. -.--
select m.ckbm,
       input.id,
       input.rksl,
       input.ckl as input_ckl,
       outs.cksl    actual_ckl,
       outs.create_date
# select  count(1)
from business_ij1g m
         inner join business_m3wc outs on m.id = outs.father_id
         inner join business_f7hc input on outs.rkdid = input.id
where m.flow_step != '领用填写'
#   计划物资出库
  and outs.jhbm != ''
#   计划物资的出库量与实际出库量
  and input.ckl > outs.cksl
and outs.jhbm='CGJH4010202312050347'
order by outs.create_date desc;
;-- -. . -..- - / . -. - .-. -.--
select m.ckbm,
       input.id,
       input.rksl,
       input.ckl as input_ckl,
       outs.cksl    actual_ckl,
       outs.create_date
# select  count(1)
from business_ij1g m
         inner join business_m3wc outs on m.id = outs.father_id
         inner join business_f7hc input on outs.rkdid = input.id
where m.flow_step != '领用填写'
#   计划物资出库
  and outs.jhbm != ''
#   计划物资的出库量与实际出库量
  and input.ckl > outs.cksl
and outs.jhbm='CGJH4010202312050347'
and outs.wlbm='4914481712'
order by outs.create_date desc;
;-- -. . -..- - / . -. - .-. -.--
select m.ckbm,
       input.id,
       input.rksl,
       input.ckl as input_ckl,
       outs.cksl    actual_ckl,
       outs.create_date
# select  count(1)
from business_ij1g m
         inner join business_m3wc outs on m.id = outs.father_id
         inner join business_f7hc input on outs.rkdid = input.id
where m.flow_step != '领用填写'
#   计划物资出库
  and outs.jhbm != ''
#   计划物资的出库量与实际出库量
and outs.jhbm='CGJH4010202312050347'
and outs.wlbm='4914481712'
order by outs.create_date desc;
;-- -. . -..- - / . -. - .-. -.--
select m.ckbm,
       input.id,
       input.rksl,
       input.ckl as input_ckl,
       outs.cksl    actual_ckl,
       outs.create_date
# select  count(1)
from business_ij1g m
         inner join business_m3wc outs on m.id = outs.father_id
         inner join business_f7hc input on outs.rkdid = input.id
where m.flow_step != '领用填写'
#   计划物资出库
  and outs.jhbm != ''
#   计划物资的出库量与实际出库量
and outs.jhbm='CGJH4010202312050347'
# and outs.wlbm='4914481712'
order by outs.create_date desc;
;-- -. . -..- - / . -. - .-. -.--
select m.ckbm,
       input.id,
       input.rksl,
       input.ckl as input_ckl,
       outs.cksl    actual_ckl,
       outs.create_date
# select  count(1)
from business_ij1g m
         inner join business_m3wc outs on m.id = outs.father_id
         inner join business_f7hc input on outs.rkdid = input.id
where m.flow_step != '领用填写'
#   计划物资出库
  and outs.jhbm != ''
#   计划物资的出库量与实际出库量
and outs.jhbm='CGJH4010202312050287'
# and outs.wlbm='4914481712'
order by outs.create_date desc;
;-- -. . -..- - / . -. - .-. -.--
select m.ckbm,
       m.flow_state,
       input.id,
       input.rksl,
       input.ckl as input_ckl,
       outs.cksl    actual_ckl,
       outs.create_date
# select  count(1)
from business_ij1g m
         inner join business_m3wc outs on m.id = outs.father_id
         inner join business_f7hc input on outs.rkdid = input.id
where m.flow_step != '领用填写'
#   计划物资出库
  and outs.jhbm != ''
#   计划物资的出库量与实际出库量
and outs.jhbm='CGJH4010202312050287'
# and outs.wlbm='4914481712'
order by outs.create_date desc;
;-- -. . -..- - / . -. - .-. -.--
select *
from business_f7hc where rksl!=ckl;
;-- -. . -..- - / . -. - .-. -.--
select id,rksl,ckl,wlbm
from business_f7hc where rksl!=ckl;
;-- -. . -..- - / . -. - .-. -.--
select id,rksl,ckl,wlbm
from business_f7hc where rksl!=ckl  and ckl!=0;
;-- -. . -..- - / . -. - .-. -.--
select m.ckbm,
       m.flow_state,
       input.id,
       input.rksl,
       input.ckl as input_ckl,
       outs.cksl    actual_ckl,
       outs.create_date
# select  count(1)
from business_ij1g m
         inner join business_m3wc outs on m.id = outs.father_id
         inner join business_f7hc input on outs.rkdid = input.id
where m.flow_step != '领用填写'
#   计划物资出库
  and outs.jhbm != ''
#   计划物资的出库量与实际出库量
    
# and outs.jhbm='CGJH4010202312050287'
# and outs.wlbm='4914481712'
order by outs.create_date desc;
;-- -. . -..- - / . -. - .-. -.--
select m.ckbm,
       m.flow_state,
       input.id,
       input.rksl,
       input.ckl as input_ckl,
       outs.cksl    actual_ckl,
       outs.create_date
# select  count(1)
from business_ij1g m
         inner join business_m3wc outs on m.id = outs.father_id
         inner join business_f7hc input on outs.rkdid = input.id
where m.flow_step != '领用填写'
#   计划物资出库
  and outs.jhbm != ''
#   计划物资的出库量与实际出库量
    
# and outs.jhbm='CGJH4010202312050287'
and outs.wlbm='4914481712'
order by outs.create_date desc;
;-- -. . -..- - / . -. - .-. -.--
select m.ckbm,
       m.flow_state,
       input.id,
       input.rksl,
       input.ckl as input_ckl,
       outs.cksl    actual_ckl,
       outs.create_date
# select  count(1)
from business_ij1g m
         inner join business_m3wc outs on m.id = outs.father_id
         inner join business_f7hc input on outs.rkdid = input.id
where m.flow_step != '领用填写'
#   计划物资出库
  and outs.jhbm != ''
#   计划物资的出库量与实际出库量
    
and outs.jhbm='CGJH4010202312050287'
order by outs.create_date desc;
;-- -. . -..- - / . -. - .-. -.--
select id, rksl, ckl, wlbm
from business_f7hc
where rksl != ckl
  and ckl != 0;
;-- -. . -..- - / . -. - .-. -.--
select m.ckbm,
       input.id,
       input.rksl,
       input.ckl as input_ckl,
       outs.cksl    actual_ckl
# select count(1)
from business_ij1g m
         inner join business_m3wc outs on m.id = outs.father_id
         inner join business_f7hc input on outs.rkdid = input.id
where m.flow_step != '领用填写'
  and outs.jhbm != '';
;-- -. . -..- - / . -. - .-. -.--
select m.ckbm,
       input.id,
       input.rksl,
       input.ckl as input_ckl,
       outs.cksl    actual_ckl
# select count(1)
from business_ij1g m
         inner join business_m3wc outs on m.id = outs.father_id
         inner join business_f7hc input on outs.rkdid = input.id
where m.flow_step != '领用填写'
  and outs.jhbm != ''
  and input.ckl != outs.cksl;
;-- -. . -..- - / . -. - .-. -.--
select m.ckbm,
       input.id,
       input.rksl,
       sum(input.ckl) as input_ckl,
       sum(outs.cksl)    actual_ckl
# select count(1)
from business_ij1g m
         inner join business_m3wc outs on m.id = outs.father_id
         inner join business_f7hc input on outs.rkdid = input.id
where m.flow_step != '领用填写'
  and outs.jhbm != ''
group by outs.rkdid
having input_ckl != actual_ckl;
;-- -. . -..- - / . -. - .-. -.--
select outs.rkdid,
       sum(input.ckl) as input_ckl,
       sum(outs.cksl)    actual_ckl
# select count(1)
from business_ij1g m
         inner join business_m3wc outs on m.id = outs.father_id
         inner join business_f7hc input on outs.rkdid = input.id
where m.flow_step != '领用填写'
  and outs.jhbm != ''
group by outs.rkdid
having input_ckl != actual_ckl
   and input_ckl > actual_ckl;
;-- -. . -..- - / . -. - .-. -.--
select outs.rkdid,
       sum(input.ckl) as input_ckl,
       sum(outs.cksl)    actual_ckl
# select count(1)
from business_ij1g m
         inner join business_m3wc outs on m.id = outs.father_id
         inner join business_f7hc input on outs.rkdid = input.id
where m.flow_step != '领用填写'
  and outs.jhbm != ''
group by outs.rkdid
having input_ckl != actual_ckl;
;-- -. . -..- - / . -. - .-. -.--
select m.ckbm,
       m.flow_state,
       input.id,
       input.rksl,
       input.ckl as input_ckl,
       outs.cksl    actual_ckl,
       outs.create_date
# select  count(1)
from business_ij1g m
         inner join business_m3wc outs on m.id = outs.father_id
         inner join business_f7hc input on outs.rkdid = input.id
where m.flow_step != '领用填写'
#   计划物资出库
  and outs.jhbm != ''
#   计划物资的出库量与实际出库量
    and input.ckl> input.ckl
order by outs.create_date desc;
;-- -. . -..- - / . -. - .-. -.--
select m.ckbm,
       m.flow_state,
       input.id,
       input.rksl,
       input.ckl as input_ckl,
       outs.cksl    actual_ckl,
# select  count(1)
from business_ij1g m
         inner join business_m3wc outs on m.id = outs.father_id
         inner join business_f7hc input on outs.rkdid = input.id
where m.flow_step != '领用填写'
#   计划物资出库
  and outs.jhbm != ''
#   计划物资的出库量与实际出库量
  and input.ckl > input.ckl;
;-- -. . -..- - / . -. - .-. -.--
select m.ckbm,
       m.flow_state,
       input.id,
       input.rksl,
       input.ckl as input_ckl,
       outs.cksl    actual_ckl
# select  count(1)
from business_ij1g m
         inner join business_m3wc outs on m.id = outs.father_id
         inner join business_f7hc input on outs.rkdid = input.id
where m.flow_step != '领用填写'
#   计划物资出库
  and outs.jhbm != ''
#   计划物资的出库量与实际出库量
  and input.ckl > input.ckl;
;-- -. . -..- - / . -. - .-. -.--
select count(outs.rkdid) rkdCount
# select  count(1)
from business_ij1g m
         inner join business_m3wc outs on m.id = outs.father_id
         inner join business_f7hc input on outs.rkdid = input.id
where m.flow_step != '领用填写'
#   计划物资出库
  and outs.jhbm != ''
#   计划物资的出库量与实际出库量
  and input.ckl > input.ckl
group by outs.rkdid
having rkdCount > 1;
;-- -. . -..- - / . -. - .-. -.--
select count(outs.rkdid) rkdCount
# select  count(1)
from business_ij1g m
         inner join business_m3wc outs on m.id = outs.father_id
         inner join business_f7hc input on outs.rkdid = input.id
where m.flow_step != '领用填写'
#   计划物资出库
  and outs.jhbm != ''
#   计划物资的出库量与实际出库量
group by outs.rkdid
having rkdCount > 1;
;-- -. . -..- - / . -. - .-. -.--
select count(outs.rkdid) rkdCount, outs.rkdid
# select  count(1)
from business_ij1g m
         inner join business_m3wc outs on m.id = outs.father_id
         inner join business_f7hc input on outs.rkdid = input.id
where m.flow_step != '领用填写'
#   计划物资出库
  and outs.jhbm != ''
#   计划物资的出库量与实际出库量
group by outs.rkdid
having rkdCount > 1;
;-- -. . -..- - / . -. - .-. -.--
select *
from input where id='b37456a6bc5aee45dd0e96851b285dde';
;-- -. . -..- - / . -. - .-. -.--
select rksl,ckl
from business_f7hc where id='b37456a6bc5aee45dd0e96851b285dde';
;-- -. . -..- - / . -. - .-. -.--
select outs.rkdid,
       sum(input.ckl) as input_ckl,
       sum(outs.cksl)    actual_ckl
from business_ij1g m
         inner join business_m3wc outs on m.id = outs.father_id
         inner join business_f7hc input on outs.rkdid = input.id
where m.flow_step != '领用填写'
  and outs.jhbm != ''
group by outs.rkdid
having input_ckl != actual_ckl;
;-- -. . -..- - / . -. - .-. -.--
select count(outs.rkdid) rkdCount, outs.rkdid
# select  count(1)
from business_ij1g m
         inner join business_m3wc outs on m.id = outs.father_id
         inner join business_f7hc input on outs.rkdid = input.id
where m.flow_step != '领用填写'
#   计划物资出库
  and outs.jhbm != ''
#   计划物资的出库量与实际出库量
and outs.rkdid='9a731462683b8fe09f9bb1ccf42da4bd'
group by outs.rkdid;
;-- -. . -..- - / . -. - .-. -.--
select m.ckbm
# select  count(1)
from business_ij1g m
         inner join business_m3wc outs on m.id = outs.father_id
         inner join business_f7hc input on outs.rkdid = input.id
where m.flow_step != '领用填写'
#   计划物资出库
  and outs.jhbm != ''
#   计划物资的出库量与实际出库量
  and outs.rkdid = '9a731462683b8fe09f9bb1ccf42da4bd'
group by outs.rkdid;
;-- -. . -..- - / . -. - .-. -.--
select m.ckbm
# select  count(1)
from business_ij1g m
         inner join business_m3wc outs on m.id = outs.father_id
         inner join business_f7hc input on outs.rkdid = input.id
where m.flow_step != '领用填写'
#   计划物资出库
  and outs.jhbm != ''
#   计划物资的出库量与实际出库量
  and outs.rkdid = '9a731462683b8fe09f9bb1ccf42da4bd';
;-- -. . -..- - / . -. - .-. -.--
select m.ckbm,input.id
# select  count(1)
from business_ij1g m
         inner join business_m3wc outs on m.id = outs.father_id
         inner join business_f7hc input on outs.rkdid = input.id
where m.flow_step != '领用填写'
#   计划物资出库
  and outs.jhbm != ''
#   计划物资的出库量与实际出库量
  and outs.rkdid = '9a731462683b8fe09f9bb1ccf42da4bd';
;-- -. . -..- - / . -. - .-. -.--
select *
from business_y339 inputMaster
         inner join business_f7hc slave on inputMaster.id = slave.father_id
where slave.id='9a731462683b8fe09f9bb1ccf42da4bd';
;-- -. . -..- - / . -. - .-. -.--
select m.id,m.ckbm, input.id
# select  count(1)
from business_ij1g m
         inner join business_m3wc outs on m.id = outs.father_id
         inner join business_f7hc input on outs.rkdid = input.id
where m.flow_step != '领用填写'
#   计划物资出库
  and outs.jhbm != ''
#   计划物资的出库量与实际出库量
  and outs.rkdid = '9a731462683b8fe09f9bb1ccf42da4bd';
;-- -. . -..- - / . -. - .-. -.--
select m.id,m.ckbm, input.id,outs.wlbm
# select  count(1)
from business_ij1g m
         inner join business_m3wc outs on m.id = outs.father_id
         inner join business_f7hc input on outs.rkdid = input.id
where m.flow_step != '领用填写'
#   计划物资出库
  and outs.jhbm != ''
#   计划物资的出库量与实际出库量
  and outs.rkdid = '9a731462683b8fe09f9bb1ccf42da4bd';
;-- -. . -..- - / . -. - .-. -.--
select inputMaster.id, slave.rksl, slave.ckl
from business_y339 inputMaster
         inner join business_f7hc slave on inputMaster.id = slave.father_id
where slave.id = '9a731462683b8fe09f9bb1ccf42da4bd';
;-- -. . -..- - / . -. - .-. -.--
select sum(outs.cksl)
# select  count(1)
from business_ij1g m
         inner join business_m3wc outs on m.id = outs.father_id
         inner join business_f7hc input on outs.rkdid = input.id
where m.flow_step != '领用填写'
#   计划物资出库
  and outs.jhbm != ''
#   计划物资的出库量与实际出库量
  and outs.rkdid = '9a731462683b8fe09f9bb1ccf42da4bd'
group by outs.rkdid;
;-- -. . -..- - / . -. - .-. -.--
select outs.rkdid,
       input.ckl as input_ckl,
       sum(outs.cksl)    actual_ckl
from business_ij1g m
         inner join business_m3wc outs on m.id = outs.father_id
         inner join business_f7hc input on outs.rkdid = input.id
where m.flow_step != '领用填写'
  and outs.jhbm != ''
group by outs.rkdid;
;-- -. . -..- - / . -. - .-. -.--
s;
;-- -. . -..- - / . -. - .-. -.--
select *
from business_f7hc
where ckl > business_f7hc.rksl;
;-- -. . -..- - / . -. - .-. -.--
select ckl,rksl
from business_f7hc
where ckl > business_f7hc.rksl;
;-- -. . -..- - / . -. - .-. -.--
select ckl,rksl,id
from business_f7hc
where ckl > business_f7hc.rksl;
;-- -. . -..- - / . -. - .-. -.--
select input.id, ckl, rksl
from business_f7hc input
         left join business_m3wc outs on input.id=outs.rkdid
where ckl > input.rksl;
;-- -. . -..- - / . -. - .-. -.--
select input.id, ckl, rksl,outs.rkdid
from business_f7hc input
         left join business_m3wc outs on input.id=outs.rkdid
where ckl > input.rksl;
;-- -. . -..- - / . -. - .-. -.--
select title, create_time, request, response, exception, time
from sap_execute_log
where title = '采购订单连续收货'
  and request like '%SBRKD4010202312290011%'
# sap_execute_log.response like '%4913096500%'
order by create_time desc
limit 10;
;-- -. . -..- - / . -. - .-. -.--
select input.id, rksl, ckl, outs.rkdid
from business_f7hc input
         left join business_m3wc outs on input.id = outs.rkdid
where ckl > input.rksl;
;-- -. . -..- - / . -. - .-. -.--
select *
from (select outs.rkdid,
             input.ckl as   input_ckl,
             sum(outs.cksl) actual_ckl
      from business_ij1g m
               inner join business_m3wc outs on m.id = outs.father_id
               inner join business_f7hc input on outs.rkdid = input.id
      where m.flow_step != '领用填写'
        and outs.jhbm != ''
      group by outs.rkdid) x
where x.input_ckl != actual_ckl;
;-- -. . -..- - / . -. - .-. -.--
select input.id, rksl, ckl, outs.rkdid,input.jhbm
from business_f7hc input
         left join business_m3wc outs on input.id = outs.rkdid
where ckl > input.rksl;
;-- -. . -..- - / . -. - .-. -.--
select input.id, rksl, ckl, outs.rkdid,input.jhbm
from business_f7hc input
         left join business_m3wc outs on input.id = outs.rkdid
where ckl > input.rksl
and outs.rkdid ='';
;-- -. . -..- - / . -. - .-. -.--
select input.id, rksl, ckl, outs.rkdid,input.jhbm
from business_f7hc input
         left join business_m3wc outs on input.id = outs.rkdid
where ckl > input.rksl
and outs.rkdid is null;
;-- -. . -..- - / . -. - .-. -.--
select input.id, rksl, ckl, outs.rkdid outRkdis,input.jhbm
from business_f7hc input
         left join business_m3wc outs on input.id = outs.rkdid
where ckl > input.rksl
and outs.rkdid is null;
;-- -. . -..- - / . -. - .-. -.--
select input.id, rksl, ckl
from business_f7hc input
         left join business_m3wc outs on input.id = outs.rkdid
where ckl > input.rksl
and outs.rkdid is null;
;-- -. . -..- - / . -. - .-. -.--
select input.id, rksl, ckl,outs.rkdid outsRkdid
from business_f7hc input
         left join business_m3wc outs on input.id = outs.rkdid
where ckl > input.rksl;
;-- -. . -..- - / . -. - .-. -.--
select outs.rkdid,
       input.ckl as   input_ckl,
       outs.cksl actual_ckl
from business_ij1g m
         inner join business_m3wc outs on m.id = outs.father_id
         inner join business_f7hc input on outs.rkdid = input.id
where m.flow_step != '领用填写'
  and outs.jhbm != ''
  and outs.rkdid='143ec87c68d1dde84e2d75eee238e883';
;-- -. . -..- - / . -. - .-. -.--
select *
from (select outs.rkdid,
             input.ckl as   input_ckl,
             sum(outs.cksl) actual_ckl
      from business_ij1g m
               inner join business_m3wc outs on m.id = outs.father_id
               inner join business_f7hc input on outs.rkdid = input.id
#       where m.flow_step != '领用填写'
        and outs.jhbm != ''
      group by outs.rkdid) x
where x.input_ckl != actual_ckl;
;-- -. . -..- - / . -. - .-. -.--
select m.ckbm
      from business_ij1g m
               inner join business_m3wc outs on m.id = outs.father_id
 where rkdid='ef759644b742d79da448c3147c914e04';
;-- -. . -..- - / . -. - .-. -.--
select m.ckbm
from business_ij1g m
         inner join business_m3wc outs on m.id = outs.father_id
where m.flow_step != '领用填写'
  and rkdid = 'ef759644b742d79da448c3147c914e04';
;-- -. . -..- - / . -. - .-. -.--
select m.ckbm
from business_ij1g m
         inner join business_m3wc outs on m.id = outs.father_id
# where m.flow_step != '领用填写'
where m.flow_step = '领用填写'
  and rkdid = 'ef759644b742d79da448c3147c914e04';
;-- -. . -..- - / . -. - .-. -.--
select m.ckbm,m.flow_step
from business_ij1g m
         inner join business_m3wc outs on m.id = outs.father_id
# where m.flow_step != '领用填写'
where 1 = 1
  and m.flow_step ! '领用填写'
  and rkdid = 'ef759644b742d79da448c3147c914e04';
;-- -. . -..- - / . -. - .-. -.--
select m.ckbm,m.flow_step
from business_ij1g m
         inner join business_m3wc outs on m.id = outs.father_id
# where m.flow_step != '领用填写'
where 1 = 1
#   and m.flow_step ! '领用填写'
  and rkdid = 'ef759644b742d79da448c3147c914e04';
;-- -. . -..- - / . -. - .-. -.--
select *
from (select outs.rkdid,
             input.ckl as   input_ckl,
             sum(outs.cksl) actual_ckl
      from business_ij1g m
               inner join business_m3wc outs on m.id = outs.father_id
               inner join business_f7hc input on outs.rkdid = input.id
      where m.flow_step != '领用填写'
        and m.flow_step is not null 
          and outs.jhbm != ''
      group by outs.rkdid) x
where x.input_ckl != actual_ckl;
;-- -. . -..- - / . -. - .-. -.--
select *
        from (select outs.rkdid,
        input.ckl as input_ckl,
        sum(outs.cksl) actual_ckl
        from business_ij1g m
        inner join business_m3wc outs on m.id = outs.father_id
        inner join business_f7hc input on outs.rkdid = input.id
        where m.flow_step != '领用填写'
          and m.flow_step is not null
          and m.flow_step !=''

        and outs.jhbm != ''
        group by outs.rkdid) x
        where x.input_ckl != actual_ckl;
;-- -. . -..- - / . -. - .-. -.--
select *
from (select outs.rkdid,
             input.ckl as   input_ckl,
             sum(outs.cksl) actual_ckl
      from business_ij1g m
               inner join business_m3wc outs on m.id = outs.father_id
               inner join business_f7hc input on outs.rkdid = input.id
      where m.flow_step != '领用填写'
        and m.flow_step is not null
        and m.flow_step !=''
          and outs.jhbm != ''
      group by outs.rkdid) x
where x.input_ckl != actual_ckl;
;-- -. . -..- - / . -. - .-. -.--
select *
from (select outs.rkdid,
             input.ckl as   input_ckl,
             sum(outs.cksl) actual_ckl
      from business_ij1g m
               inner join business_m3wc outs on m.id = outs.father_id
               inner join business_f7hc input on outs.rkdid = input.id
      where m.flow_step != '领用填写'
        and m.flow_step is not null
        and m.flow_step != ''
        and outs.jhbm != ''
      group by outs.rkdid) x;
;-- -. . -..- - / . -. - .-. -.--
select *
from (select outs.rkdid,
             input.ckl as   input_ckl,
             sum(outs.cksl) actual_ckl
      from business_ij1g m
               inner join business_m3wc outs on m.id = outs.father_id
               inner join business_f7hc input on outs.rkdid = input.id
      where m.flow_step != '领用填写'
        and m.flow_step is not null
        and m.flow_step != ''
        and outs.jhbm != ''
      group by outs.rkdid) x
where rkdid='026897382a21c5d54cb0c8ab2969433a';
;-- -. . -..- - / . -. - .-. -.--
select *
from (select outs.rkdid,
             input.ckl as   input_ckl,
             sum(outs.cksl) actual_ckl
      from business_ij1g m
               inner join business_m3wc outs on m.id = outs.father_id
               inner join business_f7hc input on outs.rkdid = input.id
      where m.flow_step != '领用填写'
        and m.flow_step is not null
        and m.flow_step != ''
        and outs.jhbm != ''
      group by outs.rkdid) x
where rkdid = '026897382a21c5d54cb0c8ab2969433a';
;-- -. . -..- - / . -. - .-. -.--
select *
from (select outs.rkdid,
             input.rksl,
             input.ckl as   input_ckl,
             sum(outs.cksl) actual_ckl
      from business_ij1g m
               inner join business_m3wc outs on m.id = outs.father_id
               inner join business_f7hc input on outs.rkdid = input.id
      where m.flow_step != '领用填写'
        and m.flow_step is not null
        and m.flow_step != ''
        and outs.jhbm != ''
      group by outs.rkdid) x
where rksl!=input_ckl;
;-- -. . -..- - / . -. - .-. -.--
select *
from (select outs.rkdid,
             input.rksl,
             input.ckl as   input_ckl,
             sum(outs.cksl) actual_ckl
      from business_ij1g m
               inner join business_m3wc outs on m.id = outs.father_id
               inner join business_f7hc input on outs.rkdid = input.id
      where m.flow_step != '领用填写'
        and m.flow_step is not null
        and m.flow_step != ''
        and outs.jhbm != ''
      group by outs.rkdid) x
where rksl != input_ckl
  and input_ckl != actual_ckl;
;-- -. . -..- - / . -. - .-. -.--
select *
from (select outs.rkdid,
             input.rksl,
             input.ckl as   input_ckl,
             sum(outs.cksl) actual_ckl
      from business_ij1g m
               inner join business_m3wc outs on m.id = outs.father_id
               inner join business_f7hc input on outs.rkdid = input.id
      where m.flow_step != '领用填写'
        and m.flow_step is not null
        and m.flow_step != ''
        and outs.jhbm != ''
      group by outs.rkdid) x
where rksl< input_ckl;
;-- -. . -..- - / . -. - .-. -.--
select *
from (select outs.rkdid,
             input.rksl,
             input.ckl as   input_ckl,
             sum(outs.cksl) actual_ckl
      from business_ij1g m
               inner join business_m3wc outs on m.id = outs.father_id
               inner join business_f7hc input on outs.rkdid = input.id
      where m.flow_step != '领用填写'
        and m.flow_step is not null
        and m.flow_step != ''
        and outs.jhbm != ''
      group by outs.rkdid) x
where rksl < input_ckl;
;-- -. . -..- - / . -. - .-. -.--
select input.id, rksl, ckl, outs.rkdid outsRkdid
from business_f7hc input
         left join business_m3wc outs on input.id = outs.rkdid
where ckl > input.rksl
  and input.id = '026897382a21c5d54cb0c8ab2969433a';
;-- -. . -..- - / . -. - .-. -.--
select input.id, rksl, ckl, outs.rkdid outsRkdid
from business_f7hc input
         left join business_m3wc outs on input.id = outs.rkdid
where ckl > input.rksl;
;-- -. . -..- - / . -. - .-. -.--
select input.id, rksl, ckl
from business_f7hc input
         left join business_m3wc outs on input.id = outs.rkdid
where ckl > input.rksl;
;-- -. . -..- - / . -. - .-. -.--
select *
from (select outs.rkdid,
             input.rksl,
             input.ckl as   input_ckl,
             sum(outs.cksl) actual_ckl
      from business_ij1g m
               inner join business_m3wc outs on m.id = outs.father_id
               inner join business_f7hc input on outs.rkdid = input.id
      where m.flow_step != '领用填写'
        and m.flow_step is not null
        and m.flow_step != ''
        and outs.jhbm != ''
      group by outs.rkdid) x;
;-- -. . -..- - / . -. - .-. -.--
select *
from (select outs.rkdid,
             input.rksl,
             input.ckl as   input_ckl,
             sum(outs.cksl) actual_ckl
      from business_ij1g m
               inner join business_m3wc outs on m.id = outs.father_id
               inner join business_f7hc input on outs.rkdid = input.id
        and m.flow_step is  null
        and m.flow_step = ''
        and outs.jhbm != ''
      group by outs.rkdid) x;
;-- -. . -..- - / . -. - .-. -.--
select *
from (select outs.rkdid,
             input.rksl,
             input.ckl as   input_ckl,
             sum(outs.cksl) actual_ckl
      from business_ij1g m
               inner join business_m3wc outs on m.id = outs.father_id
               inner join business_f7hc input on outs.rkdid = input.id
        and (m.flow_step is  null  or m.flow_step='')
        and outs.jhbm != ''
      group by outs.rkdid) x;
;-- -. . -..- - / . -. - .-. -.--
select id,rksl,ckl
from business_f7hc
where id in (select rkdid
             from (select outs.rkdid,
                          input.rksl,
                          input.ckl as   input_ckl,
                          sum(outs.cksl) actual_ckl
                   from business_ij1g m
                            inner join business_m3wc outs on m.id = outs.father_id
                            inner join business_f7hc input on outs.rkdid = input.id
                       and (m.flow_step is null or m.flow_step = '')
                       and outs.jhbm != ''
                   group by outs.rkdid) x);
;-- -. . -..- - / . -. - .-. -.--
select *
        from (select outs.rkdid,
        input.rksl,
        input.ckl as input_ckl,
        sum(outs.cksl) actual_ckl
        from business_ij1g m
        inner join business_m3wc outs on m.id = outs.father_id
        inner join business_f7hc input on outs.rkdid = input.id
        where m.flow_step != '领用填写'
        and m.flow_step is not null
        and m.flow_step != ''
        and outs.jhbm != ''
        group by outs.rkdid) x;
;-- -. . -..- - / . -. - .-. -.--
select *
from (select outs.rkdid,
             input.rksl,
             input.ckl as   input_ckl,
             sum(outs.cksl) actual_ckl
      from business_ij1g m
               inner join business_m3wc outs on m.id = outs.father_id
               inner join business_f7hc input on outs.rkdid = input.id
      where m.flow_step != '领用填写'
        and m.flow_step is not null
        and m.flow_step != ''
        and outs.jhbm != ''
      group by outs.rkdid) x
where input_ckl > actual_ckl;
;-- -. . -..- - / . -. - .-. -.--
select *
from (select outs.rkdid,
             input.rksl,
             input.ckl as   input_ckl,
             sum(outs.cksl) actual_ckl
      from business_ij1g m
               inner join business_m3wc outs on m.id = outs.father_id
               inner join business_f7hc input on outs.rkdid = input.id
      where m.flow_step != '领用填写'
        and m.flow_step is not null
        and m.flow_step != ''
        and outs.jhbm != ''
      group by outs.rkdid) x
where input_ckl < actual_ckl;
;-- -. . -..- - / . -. - .-. -.--
select *
from (select outs.rkdid,
             input.rksl,
             input.ckl as   input_ckl,
             sum(outs.cksl) actual_ckl
      from business_ij1g m
               inner join business_m3wc outs on m.id = outs.father_id
               inner join business_f7hc input on outs.rkdid = input.id
      where m.flow_step != '领用填写'
        and m.flow_step is not null
        and m.flow_step != ''
        and outs.jhbm != ''
      group by outs.rkdid) x
where input_ckl != actual_ckl and input_ckl<rksl;
;-- -. . -..- - / . -. - .-. -.--
select *
from (select outs.rkdid,
             input.rksl,
             input.ckl as   input_ckl,
             sum(outs.cksl) actual_ckl
      from business_ij1g m
               inner join business_m3wc outs on m.id = outs.father_id
               inner join business_f7hc input on outs.rkdid = input.id
      where m.flow_step != '领用填写'
        and m.flow_step is not null
        and m.flow_step != ''
        and outs.jhbm != ''
      group by outs.rkdid) x
where input_ckl != actual_ckl
  and input_ckl < rksl;
;-- -. . -..- - / . -. - .-. -.--
select *
from (select outs.rkdid,
             input.rksl,
             input.ckl as   input_ckl,
             sum(outs.cksl) actual_ckl
      from business_ij1g m
               inner join business_m3wc outs on m.id = outs.father_id
               inner join business_f7hc input on outs.rkdid = input.id
      where m.flow_step != '领用填写'
        and m.flow_step is not null
        and m.flow_step != ''
        and outs.jhbm != ''
      group by outs.rkdid) x
where input_ckl != actual_ckl;
;-- -. . -..- - / . -. - .-. -.--
select outs.rkdid,
       input.ckl as input_ckl,
       outs.cksl    actual_ckl
from business_ij1g m
         inner join business_m3wc outs on m.id = outs.father_id
         inner join business_f7hc input on outs.rkdid = input.id
where m.flow_step != '领用填写'
  and outs.jhbm != '';
;-- -. . -..- - / . -. - .-. -.--
select outs.rkdid,
        sum(input.ckl) as input_ckl,
        sum(outs.cksl) actual_ckl
        from business_ij1g m
        inner join business_m3wc outs on m.id = outs.father_id
        inner join business_f7hc input on outs.rkdid = input.id
        where m.flow_step != '领用填写'
        and m.flow_step is not null
        and m.flow_step != ''
        and outs.jhbm != ''
        and outs.rkdid = #{rkdid}
        group by outs.rkdid;
;-- -. . -..- - / . -. - .-. -.--
select outs.rkdid,
        sum(input.ckl) as input_ckl,
        sum(outs.cksl) actual_ckl
        from business_ij1g m
        inner join business_m3wc outs on m.id = outs.father_id
        inner join business_f7hc input on outs.rkdid = input.id
        where m.flow_step != '领用填写'
        and m.flow_step is not null
        and m.flow_step != ''
        and outs.jhbm != ''
        group by outs.rkdid;
;-- -. . -..- - / . -. - .-. -.--
select outs.rkdid,
       sum(input.ckl) as input_ckl,
       sum(outs.cksl)    actual_ckl
from business_ij1g m
         inner join business_m3wc outs on m.id = outs.father_id
         inner join business_f7hc input on outs.rkdid = input.id
where m.flow_step != '领用填写'
  and m.flow_step is not null
  and m.flow_step != ''
  and outs.jhbm != ''
group by outs.rkdid;
;-- -. . -..- - / . -. - .-. -.--
select id, cgy,org_id,dept_id,user_id,flow_state,flow_step
from business_hmz1
# where serial = '20231221132024458';
where sbwzdhysdbh = 'DHYSD4010202312290035';
;-- -. . -..- - / . -. - .-. -.--
select wlbm, wlms, djlx, wlpz, bussiness_user,djbm,kclx,create_date,kclx,org_id
from goods_input_output_account
# where djbm like '%SBRKD4010202307030001%'
where djlx='A18A06A04A01'
#   and djbm='SBRKD4010202312260015'
and  kclx='SAP'
# where wlpz='A18A06A04A01'
order by create_date desc limit 100;
;-- -. . -..- - / . -. - .-. -.--
select id,
       rkdbh,
       htbh,
       htmc,
       dhysdh,
       create_date,
       rkpz,
       wlbmall
from business_y339
# where id = 'bb8ed4eba3e3e5c6d999974a9a776885'
# where serial = '20231226153831855'
# where sapcgpz1 = '4500357582'
    where org_id !='00000287'
# where rkdbh = 'SBRKD4010202312250029'
# where dhysdh is null
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
# where id = 'bb8ed4eba3e3e5c6d999974a9a776885'
# where serial = '20231226153831855'
# where sapcgpz1 = '4500357582'
    where org_id !='00000287'
# where rkdbh = 'SBRKD4010202312250029'
# where dhysdh is null
order by create_date desc;
;-- -. . -..- - / . -. - .-. -.--
select *
from form_table_128c473299949c8b;
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
      on ((`stock`.`org_id` = `swo`.`org_code`)));
;-- -. . -..- - / . -. - .-. -.--
select *
from sap_consignment_stock where matnr='1000331595';
;-- -. . -..- - / . -. - .-. -.--
select *
from business_50t4  where wlbm='1000331595';
;-- -. . -..- - / . -. - .-. -.--
select input.id, rksl, ckl
from business_f7hc input
where ckl > input.rksl;
;-- -. . -..- - / . -. - .-. -.--
select input.id, rksl, ckl
from business_f7hc input
where ckl < input.rksl;
;-- -. . -..- - / . -. - .-. -.--
select id,
       ttwb,
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
where ckbm like '%SBCK4010202401020193%'
#     where psdd like '%熔%'
# where serial = '20231221103336538'
# where business_ij1g.flow_step like '%总经理%';
# where business_ij1g.create_date = '2023-08-28 16:50:56';

# where id = '0e5aa350c6ae4db0b8415332aaddd043'
# where serial = '20231025094042682'
order by create_date desc;
;-- -. . -..- - / . -. - .-. -.--
select id, cksl, ktsl, gcdm, ckpzh
from business_m3wc
# where wlbm = '1000022922';
where father_id = '0dd65c85d89f47bb89c3ceb66ae3f00d';
;-- -. . -..- - / . -. - .-. -.--
select id, cksl, ktsl, gcdm, ckpzh,rkdid
from business_m3wc
# where wlbm = '1000022922';
where father_id = '0dd65c85d89f47bb89c3ceb66ae3f00d';
;-- -. . -..- - / . -. - .-. -.--
select m.wlbm, m.wlms, m.hjbm, m.hjxx, (rksl - IFNULL(ckl, 0)) kcl
        from business_34db m;
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
       `stock`.`slabs`                                                   AS `jskc`,
       `stock`.`clabs`                                                   AS `kcl`,
       'SAP'                                                             AS `typed`,
       0                                                                 AS `is_history`,
       `stock`.`werks`                                                   AS `werks`,
       `stock`.`org_id`                                                  AS `org_id`,
       '-'                                                               AS `wlbm_last`,
       concat_ws('_', `stock`.`matnr`, `stock`.`lgort`, `shelf`.`xhjxx`) AS `qrcode`
from (((`sap_consignment_stock` `stock` left join `business_50t4` `shelf`
        on (((`stock`.`matnr` = `shelf`.`wlbm`) and (`stock`.`org_id` = `shelf`.`org_id`) and
             (`shelf`.`kclx` = 'SAP') and
             (`stock`.`lgort` = `shelf`.`ykcdbm`))))));
;-- -. . -..- - / . -. - .-. -.--
select `stock`.`id`                                                                   AS `id`,
       `stock`.`matnr`                                                                AS `wlbm`,
       `stock`.`maktx`                                                                AS `wlms`,
       `shelf`.`yhjxx`                                                                AS `hjxx`,
       `shelf`.`yhjxx`                                                                AS `yhjxx`,
       `shelf`.`xhjxx`                                                                AS `xhjxx`,
       `stock`.`lgort`                                                                AS `kcdbm`,
       `stock`.`lgobe`                                                                AS `kcdmc`,
       `stock`.`meins`                                                                AS `dw`,
       `stock`.`meins_name`                                                           AS `dwms`,
       `stock`.`slabs`                                                                AS `jskc`,
       `stock`.`clabs`                                                                AS `kcl`,
       'SAP'                                                                          AS `typed`,
       0                                                                              AS `is_history`,
       `stock`.`werks`                                                                AS `werks`,
       `stock`.`org_id`                                                               AS `org_id`,
       ifnull(`price`.`verpr`, 0)                                                     AS `verpr`,
       '-'                                                                            AS `wlbm_last`,
       `swo`.`org_name`                                                               AS `org_name`,
       concat_ws('_', `stock`.`matnr`, `stock`.`lgort`, `shelf`.`xhjxx`, stock.charg) AS `qrcode`
from (((`sap_consignment_stock` `stock` left join `business_50t4` `shelf`
        on (((`stock`.`matnr` = `shelf`.`wlbm`) and (`stock`.`org_id` = `shelf`.`org_id`) and
             (`shelf`.`kclx` = 'SAP') and
             (`stock`.`lgort` = `shelf`.`ykcdbm`)))) left join `material_average_price` `price`
       on (((`stock`.`matnr` = `price`.`matnr`) and
            (`stock`.`org_id` = `price`.`org_id`)))) left join `sync_werk_org` `swo`
      on (((`stock`.`org_id` = `swo`.`org_code`) and (`stock`.`werks` = `swo`.`werks`))))
union
select `wait_use_repository`.`id`                                       AS `id`,
       `wait_use_repository`.`wlbm`                                     AS `wlbm`,
       `wait_use_repository`.`wlms`                                     AS `wlms`,
       `wait_use_repository`.`hjxx`                                     AS `hjxx`,
       `wait_use_repository`.`hjxx`                                     AS `yhjxx`,
       `wait_use_repository`.`hjxx`                                     AS `xhjxx`,
       `wait_use_repository`.`kcdbm`                                    AS `kcdbm`,
       `wait_use_repository`.`kcdmc`                                    AS `kcdmc`,
       `wait_use_repository`.`jldw`                                     AS `dw`,
       `wait_use_repository`.`jldwms`                                   AS `dwms`,
       0                                                                AS `jskc`,
       `wait_use_repository`.`kcl`                                      AS `kcl`,
       'WAITUSE'                                                        AS `typed`,
       `wait_use_repository`.`is_history`                               AS `is_history`,
       `wait_use_repository`.`werks`                                    AS `werks`,
       `wait_use_repository`.`org_id`                                   AS `org_id`,
       ifnull(`wait_use_repository`.`dj`, 0)                            AS `verpr`,
       `wait_use_repository`.`wlbm_last`                                AS `wlbm_last`,
       `swo`.`org_name`                                                 AS `org_name`,
       concat_ws('_', `wait_use_repository`.`wlbm`, `wait_use_repository`.`kcdbm`,
                 `wait_use_repository`.`hjxx`, wait_use_repository.pch) AS `qrcode`
from (`wait_use_repository` left join `sync_werk_org` `swo` on ((`wait_use_repository`.`org_id` = `swo`.`org_code`)))
having (`wait_use_repository`.`kcl` > 0);
;-- -. . -..- - / . -. - .-. -.--
select `stock`.`id`                                                                   AS `id`,
       `stock`.`matnr`                                                                AS `wlbm`,
       `stock`.`maktx`                                                                AS `wlms`,
       `shelf`.`yhjxx`                                                                AS `hjxx`,
       `shelf`.`yhjxx`                                                                AS `yhjxx`,
       `shelf`.`xhjxx`                                                                AS `xhjxx`,
       `stock`.`lgort`                                                                AS `kcdbm`,
       `stock`.`lgobe`                                                                AS `kcdmc`,
       `stock`.`meins`                                                                AS `dw`,
       `stock`.`meins_name`                                                           AS `dwms`,
       `stock`.`charg`                                                                AS `pch`,
       `stock`.`slabs`                                                                AS `jskc`,
       `stock`.`clabs`                                                                AS `kcl`,
       'SAP'                                                                          AS `typed`,
       0                                                                              AS `is_history`,
       `stock`.`werks`                                                                AS `werks`,
       `stock`.`org_id`                                                               AS `org_id`,
       ifnull(`price`.`verpr`, 0)                                                     AS `verpr`,
       '-'                                                                            AS `wlbm_last`,
       `swo`.`org_name`                                                               AS `org_name`,
       concat_ws('_', `stock`.`matnr`, `stock`.`lgort`, `shelf`.`xhjxx`, stock.charg) AS `qrcode`
from (((`sap_consignment_stock` `stock` left join `business_50t4` `shelf`
        on (((`stock`.`matnr` = `shelf`.`wlbm`) and (`stock`.`org_id` = `shelf`.`org_id`) and
             (`shelf`.`kclx` = 'SAP') and
             (`stock`.`lgort` = `shelf`.`ykcdbm`)))) left join `material_average_price` `price`
       on (((`stock`.`matnr` = `price`.`matnr`) and
            (`stock`.`org_id` = `price`.`org_id`)))) left join `sync_werk_org` `swo`
      on (((`stock`.`org_id` = `swo`.`org_code`) and (`stock`.`werks` = `swo`.`werks`))))
union
select `wait_use_repository`.`id`                                       AS `id`,
       `wait_use_repository`.`wlbm`                                     AS `wlbm`,
       `wait_use_repository`.`wlms`                                     AS `wlms`,
       `wait_use_repository`.`hjxx`                                     AS `hjxx`,
       `wait_use_repository`.`hjxx`                                     AS `yhjxx`,
       `wait_use_repository`.`hjxx`                                     AS `xhjxx`,
       `wait_use_repository`.`kcdbm`                                    AS `kcdbm`,
       `wait_use_repository`.`kcdmc`                                    AS `kcdmc`,
       `wait_use_repository`.`jldw`                                     AS `dw`,
       `wait_use_repository`.`jldwms`                                   AS `dwms`,
       `wait_use_repository`.`pch`                                      AS `pch`,

       0                                                                AS `jskc`,
       `wait_use_repository`.`kcl`                                      AS `kcl`,
       'WAITUSE'                                                        AS `typed`,
       `wait_use_repository`.`is_history`                               AS `is_history`,
       `wait_use_repository`.`werks`                                    AS `werks`,
       `wait_use_repository`.`org_id`                                   AS `org_id`,
       ifnull(`wait_use_repository`.`dj`, 0)                            AS `verpr`,
       `wait_use_repository`.`wlbm_last`                                AS `wlbm_last`,
       `swo`.`org_name`                                                 AS `org_name`,
       concat_ws('_', `wait_use_repository`.`wlbm`, `wait_use_repository`.`kcdbm`,
                 `wait_use_repository`.`hjxx`, wait_use_repository.pch) AS `qrcode`
from (`wait_use_repository` left join `sync_werk_org` `swo` on ((`wait_use_repository`.`org_id` = `swo`.`org_code`)))
having (`wait_use_repository`.`kcl` > 0);
;-- -. . -..- - / . -. - .-. -.--
select `stock`.`id`                                                                   AS `id`,
       `stock`.`matnr`                                                                AS `wlbm`,
       `stock`.`maktx`                                                                AS `wlms`,
       `shelf`.`yhjxx`                                                                AS `hjxx`,
       `shelf`.`yhjxx`                                                                AS `yhjxx`,
       `shelf`.`xhjxx`                                                                AS `xhjxx`,
       `stock`.`lgort`                                                                AS `kcdbm`,
       `stock`.`lgobe`                                                                AS `kcdmc`,
       `stock`.`meins`                                                                AS `dw`,
       `stock`.`meins_name`                                                           AS `dwms`,
       `stock`.`charg`                                                                AS `pch`,
       `stock`.`slabs`                                                                AS `jskc`,
       `stock`.`clabs`                                                                AS `kcl`,
       'SAP'                                                                          AS `typed`,
       0                                                                              AS `is_history`,
       `stock`.`werks`                                                                AS `werks`,
       `stock`.`org_id`                                                               AS `org_id`,
       ifnull(`price`.`verpr`, 0)                                                     AS `verpr`,
       '-'                                                                            AS `wlbm_last`,
       `swo`.`org_name`                                                               AS `org_name`,
       concat_ws('_', `stock`.`matnr`, `stock`.`lgort`, `shelf`.`xhjxx`, stock.charg) AS `qrcode`
from (((`sap_consignment_stock` `stock` left join `business_50t4` `shelf`
        on (((`stock`.`matnr` = `shelf`.`wlbm`) and (`stock`.`org_id` = `shelf`.`org_id`) and
             (`shelf`.`kclx` = 'SAP') and
             (`stock`.`lgort` = `shelf`.`ykcdbm`)))) left join `material_average_price` `price`
       on (((`stock`.`matnr` = `price`.`matnr`) and
            (`stock`.`org_id` = `price`.`org_id`)))) left join `sync_werk_org` `swo`
      on (((`stock`.`org_id` = `swo`.`org_code`) and (`stock`.`werks` = `swo`.`werks`))))
union
select `wait_use_repository`.`id`                                       AS `id`,
       `wait_use_repository`.`wlbm`                                     AS `wlbm`,
       `wait_use_repository`.`wlms`                                     AS `wlms`,
       `wait_use_repository`.`hjxx`                                     AS `hjxx`,
       `wait_use_repository`.`hjxx`                                     AS `yhjxx`,
       `wait_use_repository`.`hjxx`                                     AS `xhjxx`,
       `wait_use_repository`.`kcdbm`                                    AS `kcdbm`,
       `wait_use_repository`.`kcdmc`                                    AS `kcdmc`,
       `wait_use_repository`.`jldw`                                     AS `dw`,
       `wait_use_repository`.`jldwms`                                   AS `dwms`,
       `wait_use_repository`.`pch`                                      AS `pch`,
       0                                                                AS `jskc`,
       `wait_use_repository`.`kcl`                                      AS `kcl`,
       'WAITUSE'                                                        AS `typed`,
       `wait_use_repository`.`is_history`                               AS `is_history`,
       `wait_use_repository`.`werks`                                    AS `werks`,
       `wait_use_repository`.`org_id`                                   AS `org_id`,
       ifnull(`wait_use_repository`.`dj`, 0)                            AS `verpr`,
       `wait_use_repository`.`wlbm_last`                                AS `wlbm_last`,
       `swo`.`org_name`                                                 AS `org_name`,
       concat_ws('_', `wait_use_repository`.`wlbm`, `wait_use_repository`.`kcdbm`,
                 `wait_use_repository`.`hjxx`, wait_use_repository.pch) AS `qrcode`
from (`wait_use_repository` left join `sync_werk_org` `swo` on ((`wait_use_repository`.`org_id` = `swo`.`org_code`)))
having (`wait_use_repository`.`kcl` > 0);
;-- -. . -..- - / . -. - .-. -.--
select *
from form_table_128c473299949c8b where org_id=00000287;
;-- -. . -..- - / . -. - .-. -.--
select `form_table_128c473299949c8b`.`field_h1` AS `field_h1`,
       `form_table_128c473299949c8b`.`field_h2` AS `field_h2`,
       `form_table_128c473299949c8b`.`field_h3` AS `field_h3`,
       `form_table_128c473299949c8b`.`field_h4` AS `field_h4`
from `form_table_128c473299949c8b`
where org_id = '#{orgId}'
  and field_h3 is not null
  and field_h4 is not null
order by `form_table_128c473299949c8b`.`field_h1` desc;
;-- -. . -..- - / . -. - .-. -.--
select `form_table_128c473299949c8b`.`field_h1` AS `field_h1`,
       `form_table_128c473299949c8b`.`field_h2` AS `field_h2`,
       `form_table_128c473299949c8b`.`field_h3` AS `field_h3`,
       `form_table_128c473299949c8b`.`field_h4` AS `field_h4`
from `form_table_128c473299949c8b`
where org_id = '00000287'
  and field_h3 is not null
  and field_h4 is not null
order by `form_table_128c473299949c8b`.`field_h1` desc;
;-- -. . -..- - / . -. - .-. -.--
select zzkm
from business_m3wc group by  zzkm;
;-- -. . -..- - / . -. - .-. -.--
select `form_table_128c473299949c8b`.`field_h1` AS `field_h1`,
       `form_table_128c473299949c8b`.`field_h2` AS `field_h2`,
       `form_table_128c473299949c8b`.`field_h3` AS `field_h3`,
       `form_table_128c473299949c8b`.`field_h4` AS `field_h4`
from `form_table_128c473299949c8b`
where  field_h4 not in (select zzkm
from business_m3wc where org_id=00000287 group by  zzkm )
  and field_h3 is not null
  and field_h4 is not null
order by `form_table_128c473299949c8b`.`field_h1` desc;
;-- -. . -..- - / . -. - .-. -.--
select *
from form_table_128c473299949c8b where form_table_128c473299949c8b.field_h4 in (8000020141,
8000020140,
8000029999,
8000020100,
8000020139,
8000029999
);
;-- -. . -..- - / . -. - .-. -.--
select id,
       ttwb,
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
# where ckbm like '%SBCK4010202401020193%'
#     where psdd like '%熔%'
where serial = '20240102175828585'
# where business_ij1g.flow_step like '%总经理%';
# where business_ij1g.create_date = '2023-08-28 16:50:56';

# where id = '0e5aa350c6ae4db0b8415332aaddd043'
# where serial = '20231025094042682'
order by create_date desc;
;-- -. . -..- - / . -. - .-. -.--
select cklx
from business_m3wc group by  cklx;
;-- -. . -..- - / . -. - .-. -.--
select ydlx
from business_m3wc group by  ydlx;
;-- -. . -..- - / . -. - .-. -.--
select ydlx
from business_m3wc where org_id =00000287 group by  ydlx;
;-- -. . -..- - / . -. - .-. -.--
select *
from business_m3wc where ydlx =933;
;-- -. . -..- - / . -. - .-. -.--
select `form_table_128c473299949c8b`.`field_h1` AS `field_h1`,
       `form_table_128c473299949c8b`.`field_h2` AS `field_h2`,
       `form_table_128c473299949c8b`.`field_h3` AS `field_h3`,
       `form_table_128c473299949c8b`.`field_h4` AS `field_h4`

from `form_table_128c473299949c8b`
where org_id = '${orgId}'
  and field_h3 is not null
  and field_h4 is not null
order by `form_table_128c473299949c8b`.`field_h1`;
;-- -. . -..- - / . -. - .-. -.--
select input.id,input.wlbm, rksl, ckl
from business_f7hc input
where ckl < input.rksl;
;-- -. . -..- - / . -. - .-. -.--
select *
from (select outs.rkdid,
             input.rksl,
             input.ckl as   input_ckl,
             sum(outs.cksl) actual_ckl
      from business_ij1g m
               inner join business_m3wc outs on m.id = outs.father_id
               inner join business_f7hc input on outs.rkdid = input.id
      where m.flow_step != '领用填写'
        and m.flow_step is not null
        and m.flow_step != ''
        and outs.jhbm != ''
      group by outs.rkdid) x
where input_ckl != actual_ckl
  and rksl > actual_ckl;
;-- -. . -..- - / . -. - .-. -.--
select *
from (select outs.rkdid,
             input.rksl,
             input.wlbm,
             input.ckl as   input_ckl,
             sum(outs.cksl) actual_ckl
      from business_ij1g m
               inner join business_m3wc outs on m.id = outs.father_id
               inner join business_f7hc input on outs.rkdid = input.id
      where m.flow_step != '领用填写'
        and m.flow_step is not null
        and m.flow_step != ''
        and outs.jhbm != ''
      group by outs.rkdid) x
where input_ckl != actual_ckl
  and rksl > actual_ckl;
;-- -. . -..- - / . -. - .-. -.--
select *
from (select outs.rkdid,
             input.rksl,
             input.ckl as   input_ckl,
             input.wlbm,
             sum(outs.cksl) actual_ckl
      from business_ij1g m
               inner join business_m3wc outs on m.id = outs.father_id
               inner join business_f7hc input on outs.rkdid = input.id
      where m.flow_step != '领用填写'
        and m.flow_step is not null
        and m.flow_step != ''
        and outs.jhbm != ''
      group by outs.rkdid) x
where input_ckl != actual_ckl
  and rksl > actual_ckl;
;-- -. . -..- - / . -. - .-. -.--
select *
from (select outs.rkdid,
             input.rksl,
             input.ckl as   input_ckl,
             input.wlbm,
             sum(outs.cksl) actual_ckl
      from business_ij1g m
               inner join business_m3wc outs on m.id = outs.father_id
               inner join business_f7hc input on outs.rkdid = input.id
      where m.flow_step != '领用填写'
        and m.flow_step is not null
        and m.flow_step != ''
        and outs.jhbm != ''
      group by outs.rkdid) x
where input_ckl != actual_ckl
  and rksl > actual_ckl
  and input_ckl != business_f7hc.rksl;
;-- -. . -..- - / . -. - .-. -.--
select *
from (select outs.rkdid,
             input.rksl,
             input.ckl as   input_ckl,
             input.wlbm,
             sum(outs.cksl) actual_ckl
      from business_ij1g m
               inner join business_m3wc outs on m.id = outs.father_id
               inner join business_f7hc input on outs.rkdid = input.id
      where m.flow_step != '领用填写'
        and m.flow_step is not null
        and m.flow_step != ''
        and outs.jhbm != ''
      group by outs.rkdid) x
where input_ckl != actual_ckl
  and rksl > actual_ckl
  and input_ckl != rksl;
;-- -. . -..- - / . -. - .-. -.--
select *
from business_m3wc where wlbm =1000454495;
;-- -. . -..- - / . -. - .-. -.--
select id,
       ttwb,
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
# where ckbm like '%SBCK4010202401020193%'
#     where psdd like '%熔%'
# where serial = '20240102175828585'
# where business_ij1g.flow_step like '%总经理%';
# where business_ij1g.create_date = '2023-08-28 16:50:56';
where id = '75de9efe42de48459cc9f90aa402bf60'
# where serial = '20231025094042682'
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
# where ckbm like '%SBCK4010202401020193%'
#     where psdd like '%熔%'
# where serial = '20240102175828585'
# where business_ij1g.flow_step like '%总经理%';
# where business_ij1g.create_date = '2023-08-28 16:50:56';
where id = '75de9efe42de48459cc9f90aa402bf60'
# where serial = '20231025094042682'
order by create_date desc;
;-- -. . -..- - / . -. - .-. -.--
select *
from business_1519;
;-- -. . -..- - / . -. - .-. -.--
select `form_table_128c473299949c8b`.`field_h1` AS `field_h1`,
       `form_table_128c473299949c8b`.`field_h2` AS `field_h2`,
       `form_table_128c473299949c8b`.`field_h3` AS `field_h3`,
       `form_table_128c473299949c8b`.`field_h4` AS `field_h4`

from `form_table_128c473299949c8b`
where 1 = 1
#   and org_id = '${orgId}'
  and field_h3 is not null
  and field_h4 is not null
order by `form_table_128c473299949c8b`.`field_h1`;
;-- -. . -..- - / . -. - .-. -.--
select `form_table_128c473299949c8b`.`field_h1` AS `field_h1`,
       `form_table_128c473299949c8b`.`field_h2` AS `field_h2`,
       `form_table_128c473299949c8b`.`field_h3` AS `field_h3`,
       `form_table_128c473299949c8b`.`field_h4` AS `field_h4`

from `form_table_128c473299949c8b`
where 1 = 1
#   and org_id = '${orgId}'
  and field_h2 like '%大师%'
  and field_h3 is not null
  and field_h4 is not null
order by `form_table_128c473299949c8b`.`field_h1`;
;-- -. . -..- - / . -. - .-. -.--
select `form_table_128c473299949c8b`.`field_h1` AS `field_h1`,
       `form_table_128c473299949c8b`.`field_h2` AS `field_h2`,
       `form_table_128c473299949c8b`.`field_h3` AS `field_h3`,
       `form_table_128c473299949c8b`.`field_h4` AS `field_h4`

from `form_table_128c473299949c8b`
where 1 = 1
#   and org_id = '${orgId}'
  and field_h2 like '%大师%'
#   and field_h3 is not null
#   and field_h4 is not null
order by `form_table_128c473299949c8b`.`field_h1`;
;-- -. . -..- - / . -. - .-. -.--
select *
from business_m3wc where cklx like '%大师%';
;-- -. . -..- - / . -. - .-. -.--
select cklx
from business_m3wc;
;-- -. . -..- - / . -. - .-. -.--
select fylx
from business_m3wc where cklx like '%大师%';
;-- -. . -..- - / . -. - .-. -.--
select fylx
from business_m3wc;
;-- -. . -..- - / . -. - .-. -.--
select fylx
from business_m3wc where fylx like '%大师%';
;-- -. . -..- - / . -. - .-. -.--
select fylx
from business_m3wc

where 1=1  and
#       fylx like '%大师%'
      business_m3wc.wlbm = '1000462024';
;-- -. . -..- - / . -. - .-. -.--
select
#     count(matnr) sum1,
matnr,
maktx,
clabs,
lgort,
charg
from sap_consignment_stock
where 1 = 1
  and werks = 3090;
;-- -. . -..- - / . -. - .-. -.--
select
#     count(matnr) sum1,
matnr,
maktx,
clabs,
lgort,
charg
from sap_consignment_stock
where 1 = 1
  and werks = 3092;
;-- -. . -..- - / . -. - .-. -.--
select
#     count(matnr) sum1,
matnr,
maktx,
clabs,
lgort,
charg,
create_date
from sap_consignment_stock
where 1 = 1
  and werks = 3092;
;-- -. . -..- - / . -. - .-. -.--
select
#     count(matnr) sum1,
matnr,
maktx,
clabs,
lgort,
charg,
werks
create_date
from sap_consignment_stock
where 1 = 1
  and werks = 3092;
;-- -. . -..- - / . -. - .-. -.--
select
#     count(matnr) sum1,
matnr,
maktx,
clabs,
lgort,
charg,
werks,
create_date
from sap_consignment_stock
where 1 = 1
  and werks = 3092;
;-- -. . -..- - / . -. - .-. -.--
select
#     count(matnr) sum1,
matnr,
maktx,
clabs,
lgort,
charg,
werks,
create_date
from sap_consignment_stock
where 1 = 1
  and werks = 3280;
;-- -. . -..- - / . -. - .-. -.--
select
#     count(matnr) sum1,
matnr,
maktx,
clabs,
lgort,
charg,
werks,
create_date,
org_id
from sap_consignment_stock
where 1 = 1
  and werks = 3280;
;-- -. . -..- - / . -. - .-. -.--
select title, create_time, request, response, exception
from sap_execute_log
where title = '创建连续采购订单'
#                        and request like '%YTH-4010-WB-CG-2023-009990-00%'
#     出现问题的采购订单
#   and sap_execute_log.response like '%4500357582%'

#   and sap_execute_log.response like '%4500362689%'
#   and sap_execute_log.request like '%1000440944%'
order by create_time desc
limit 10;
;-- -. . -..- - / . -. - .-. -.--
select *
from m_internal_order;
;-- -. . -..- - / . -. - .-. -.--
select *
from m_delivery_order where matnr='1000407086
';
;-- -. . -..- - / . -. - .-. -.--
select *
from m_delivery_order where matnr='1000407086';
;-- -. . -..- - / . -. - .-. -.--
select *
from m_delivery_order where  vbeln=8600668360;
;-- -. . -..- - / . -. - .-. -.--
select *
from m_delivery_order where ebeln=4700404632;
;-- -. . -..- - / . -. - .-. -.--
select *
from m_delivery_order where
                          matnr='1000407086';
;-- -. . -..- - / . -. - .-. -.--
select *
from m_delivery_order;
;-- -. . -..- - / . -. - .-. -.--
select *
from m_delivery_order where
                          bukrs=4010;
;-- -. . -..- - / . -. - .-. -.--
select *
from (select outs.rkdid,
             input.rksl,
             input.ckl as   input_ckl,
             input.wlbm,
             sum(outs.cksl) actual_ckl
      from business_ij1g m
               inner join business_m3wc outs on m.id = outs.father_id
               inner join business_f7hc input on outs.rkdid = input.id
      where m.flow_step != '领用填写'
        and m.flow_step is not null
        and m.flow_step != ''
        and outs.jhbm != ''
      group by outs.rkdid) x
where input_ckl != actual_ckl
  and rksl > actual_ckl
  and input_ckl != rksl order by wlbm;
;-- -. . -..- - / . -. - .-. -.--
select input.id,input.wlbm, rksl, ckl
from business_f7hc input
where ckl > input.rksl;
;-- -. . -..- - / . -. - .-. -.--
select title, create_time, request, response, exception, time
from sap_execute_log
where title = '采购订单连续收货'
#   and request like '%SBRKD4010202312290011%'
# sap_execute_log.response like '%4913096500%'
order by create_time desc
limit 10;
;-- -. . -..- - / . -. - .-. -.--
select fylx,father_id
from business_m3wc

where 1=1  and
#       fylx like '%大师%'
      business_m3wc.wlbm = '1000231020';
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
# where ckbm like '%SBCK4010202401020193%'
#     where psdd like '%熔%'
# where serial = '20240102175828585'
# where business_ij1g.flow_step like '%总经理%';
# where business_ij1g.create_date = '2023-08-28 16:50:56';
where id = 'e6d984faf68c4f50ae851be843bc472c'
# where serial = '20231025094042682'
order by create_date desc;
;-- -. . -..- - / . -. - .-. -.--
select title, create_time, request, response, exception
from sap_execute_log
where title = '物资出库'
and  request like '%SBCK4010202401050093%'
#   and sap_execute_log.response like '%4913209995%'
order by create_time desc
limit 10;
;-- -. . -..- - / . -. - .-. -.--
select title, create_time, request, response, exception
from sap_execute_log
where title = '物资出库'
#   and request like '%SBCK4010202401050093%'
#   and sap_execute_log.response like '%4913209995%'
order by create_time desc
limit 10;
;-- -. . -..- - / . -. - .-. -.--
select title, create_time, request, response, exception
from sap_execute_log
where title = '物资出库'
  and request like '%黄丽芬领料出库%'
#   and sap_execute_log.response like '%4913209995%'
order by create_time desc
limit 10;
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
where title = '创建连续采购订单'
#                        and request like '%YTH-4010-WB-CG-2023-009990-00%'
#     出现问题的采购订单
#   and sap_execute_log.response like '%4500357582%'

  and sap_execute_log.response like '%4700298859%'
#   and sap_execute_log.request like '%1000440944%'
order by create_time desc
limit 10;
;-- -. . -..- - / . -. - .-. -.--
select *
from gys_gc;
;-- -. . -..- - / . -. - .-. -.--
select count(father_id),father_id
from business_m3wc

where 1=1
  and    business_m3wc.wlbm = '1000231020'
#       fylx like '%大师%'
group by  father_id;
;-- -. . -..- - / . -. - .-. -.--
select count(father_id),father_id
from business_m3wc

where 1=1
#   and    business_m3wc.wlbm = '1000231020'
#       fylx like '%大师%'
group by  father_id;
;-- -. . -..- - / . -. - .-. -.--
select count(father_id) ss,father_id
from business_m3wc

where 1=1
#   and    business_m3wc.wlbm = '1000231020'
#       fylx like '%大师%'
group by  father_id
 having ss >20;
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
# where ckbm like '%SBCK4010202401020193%'
#     where psdd like '%熔%'
# where serial = '20240102175828585'
# where business_ij1g.flow_step like '%总经理%';
# where business_ij1g.create_date = '2023-08-28 16:50:56';
where id = '2f904bfffb1f423891439f5531bfb67a'
# where serial = '20231025094042682'
order by create_date desc;
;-- -. . -..- - / . -. - .-. -.--
select hjxx
from business_m3wc where
#                        org_id =00000287
#                    group by  ydlx ;
wlbm='1000261405';
;-- -. . -..- - / . -. - .-. -.--
select hjxx,rkdid
from business_m3wc where
#                        org_id =00000287
#                    group by  ydlx ;
wlbm='1000261405';
;-- -. . -..- - / . -. - .-. -.--
select id, rksl, ckl, sapcgpz1, wlbm, rkpzh, father_id
from business_f7hc
where 1 = 1
#   and rksl != ckl
#   and ckl > 0
  and id = '2694928a2b6bf2305eb78c54bacf2b90';
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
where id = '48e9854a12bd62e700ac2e8523199fc9';
;-- -. . -..- - / . -. - .-. -.--
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
select title, create_time, request, response, exception
from sap_execute_log
where title = '物料凭证冲销'
#                        and request like '%SBCK4010202305260075%'
order by create_time desc
limit 10;
;-- -. . -..- - / . -. - .-. -.--
select title, create_time, request, response, exception
from sap_execute_log
where title = '收货后冲销'
#   and request like '%1000221514%'
order by create_time desc
limit 100;