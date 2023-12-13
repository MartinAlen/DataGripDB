select title, create_time, request, response, exception
from sap_execute_log
where title = '创建连续采购订单'
#                        and request like '%SBCK4010202305260075%'
  and sap_execute_log.response like '%4700352658%'
order by create_time desc
limit 10;
;-- -. . -..- - / . -. - .-. -.--
select title, create_time, request, response, exception
from sap_execute_log
where title = '创建连续采购订单'
#                        and request like '%SBCK4010202305260075%'
  and sap_execute_log.response like '%4500354772%'
order by create_time desc
limit 10;
;-- -. . -..- - / . -. - .-. -.--
select  distinct (szgcddh)
from business_3k66;
;-- -. . -..- - / . -. - .-. -.--
select  count(szgcddh) dd
from business_3k66 having dd>1;
;-- -. . -..- - / . -. - .-. -.--
select  count(szgcddh) dd
from business_3k66 group by szgcddh having dd>1;
;-- -. . -..- - / . -. - .-. -.--
select  count(szgcddh) dd,szgcddh
from business_3k66 group by szgcddh having dd>1;
;-- -. . -..- - / . -. - .-. -.--
select id
     , caigouyuan
     , szgcddh
     , jyms
     , gysbm
     , sapcgpz1
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
from business_3k66
# where ddfqlx ='A18A02A11A04';
# where sapcgpz1 ='4700384353';
# where szgcddh like 'PO%'
# where jyms ='A18A05A15A02';
# where id = '0a92c408dbd74fb5808698dfe75fa8d7';
# where serial = '20231026090431883';
# where htbh = 'YTH-4010-NB-GX-2022-001029-00';
# where jyms='A18A05A15A07'
order by create_date desc;
;-- -. . -..- - / . -. - .-. -.--
select id
     , caigouyuan
     , szgcddh
     , jyms
     , gysbm
     , sapcgpz1
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
from business_3k66
# where ddfqlx ='A18A02A11A04';
# where sapcgpz1 ='4700384353';
# where szgcddh like 'PO%'
where szgcddh like 'CGDD4010202312070015%'
# where jyms ='A18A05A15A02';
# where id = '0a92c408dbd74fb5808698dfe75fa8d7';
# where serial = '20231026090431883';
# where htbh = 'YTH-4010-NB-GX-2022-001029-00';
# where jyms='A18A05A15A07'
order by create_date desc;
;-- -. . -..- - / . -. - .-. -.--
select *
from wlwtd
where wlwtdbh = 'WLWTD4010202312010037';
;-- -. . -..- - / . -. - .-. -.--
select id
     , caigouyuan
     , szgcddh
     , jyms
     , gysbm
     , sapcgpz1
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
from business_3k66
# where ddfqlx ='A18A02A11A04';
# where sapcgpz1 ='4700384353';
# where szgcddh like 'PO%'
# where szgcddh like 'CGDD4010202312070015%'
# where jyms ='A18A05A15A02';
# where id = '0a92c408dbd74fb5808698dfe75fa8d7';
# where serial = '20231026090431883';
# where htbh = 'YTH-4010-NB-GX-2022-001029-00';
# where jyms='A18A05A15A07'
order by create_date desc;
;-- -. . -..- - / . -. - .-. -.--
select id
     , caigouyuan
     , szgcddh
     , jyms
     , gysbm
     , sapcgpz1
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
,create_date
from business_3k66
# where ddfqlx ='A18A02A11A04';
# where sapcgpz1 ='4700384353';
# where szgcddh like 'PO%'
# where szgcddh like 'CGDD4010202312070015%'
# where jyms ='A18A05A15A02';
# where id = '0a92c408dbd74fb5808698dfe75fa8d7';
# where serial = '20231026090431883';
# where htbh = 'YTH-4010-NB-GX-2022-001029-00';
# where jyms='A18A05A15A07'
order by create_date desc;
;-- -. . -..- - / . -. - .-. -.--
select clabs from sap_consignment_stock where matnr=1000019789;
;-- -. . -..- - / . -. - .-. -.--
select * from sap_consignment_stock where matnr=1000019789;
;-- -. . -..- - / . -. - .-. -.--
select * from sap_consignment_stock where matnr=1000019789 and org_id=00000287;
;-- -. . -..- - / . -. - .-. -.--
select *
from sap_consignment_stock
where 1 = 1
  and matnr = 1000019789
  and org_id = 00000287
having slabs > 0;
;-- -. . -..- - / . -. - .-. -.--
select *
from sap_consignment_stock
where 1 = 1
#   and matnr = 1000019789
  and org_id = 00000287
having slabs > 0;
;-- -. . -..- - / . -. - .-. -.--
select id, cgy
from business_hmz1
# where serial = '20230810152123924';
# where sbwzdhysdbh = 'INV231113000004';
where sbwzdhysdbh = 'DHYSD4010202312090003';
;-- -. . -..- - / . -. - .-. -.--
select *
from sap_consignment_stock
where werks = 3340 and matnr='1000273364';
;-- -. . -..- - / . -. - .-. -.--
select *
from sync_werk_org_copy1;
;-- -. . -..- - / . -. - .-. -.--
select *
from sync_werk_org_copy1 where werks=3340;
;-- -. . -..- - / . -. - .-. -.--
select *
from sap_consignment_stock
where werks = 3340
  and matnr = '1000273364';
;-- -. . -..- - / . -. - .-. -.--
select *
from sap_consignment_stock
where werks = 3390;
;-- -. . -..- - / . -. - .-. -.--
select *
from sap_consignment_stock
where werks = 3340;
;-- -. . -..- - / . -. - .-. -.--
select *
from sync_werk_org where werks=3390;
;-- -. . -..- - / . -. - .-. -.--
select *
from m_cost_center where bukrs=3390;
;-- -. . -..- - / . -. - .-. -.--
select *
from business_y339 order by create_date desc limit 10;
;-- -. . -..- - / . -. - .-. -.--
select *
from business_y339
where id='4818e4db5f0c2f1210d4779b5fd99e35'
order by create_date desc
limit 10;
;-- -. . -..- - / . -. - .-. -.--
select zjjg, sjzt, rk_temp_zt, zt, cgddmxid
from business_6j3g
# where id = '58b784abf338f6444602050c82eaf239';
where father_id = 'd977a210b49740d59b946ef58982d434';
;-- -. . -..- - / . -. - .-. -.--
select m.org_id, s.org_id, s.rk_temp_zt, s.zt,s.rkl
from business_hmz1 m
         inner join business_6j3g s
                    on m.id = s.father_id
where m.sbwzdhysdbh = 'INV231103000002'
  and (s.rk_temp_zt = '' OR s.rk_temp_zt IS NULL)
  AND (s.zt != 'A18A09A02A05' OR s.zt IS NULL or s.zt = '')
  and (s.cgjhbh is null or s.cgjhbh = '')
  and (s.sjzt = 'A18A07A17A03' or s.sfrbjs = 'A03A01A01');
;-- -. . -..- - / . -. - .-. -.--
select zjjg, sjzt, rk_temp_zt, zt, cgddmxid,rkl
from business_6j3g
# where id = '58b784abf338f6444602050c82eaf239';
where father_id = 'd977a210b49740d59b946ef58982d434';
;-- -. . -..- - / . -. - .-. -.--
select zjjg, sjzt, rk_temp_zt, zt, cgddmxid,rkl,dhsl
from business_6j3g
# where id = '58b784abf338f6444602050c82eaf239';
where father_id = 'd977a210b49740d59b946ef58982d434';
;-- -. . -..- - / . -. - .-. -.--
select zjjg, sjzt, rk_temp_zt, zt, cgddmxid,rkl,dhsl,zt
from business_6j3g;
;-- -. . -..- - / . -. - .-. -.--
select zjjg, sjzt, rk_temp_zt, zt, cgddmxid,rkl,dhsl,zt
from business_6j3g
where id = '58b784abf338f6444602050c82eaf239';
;-- -. . -..- - / . -. - .-. -.--
select id, cgy
from business_hmz1
# where serial = '20230810152123924';
# where sbwzdhysdbh = 'INV231113000004';
# where sbwzdhysdbh = 'DHYSD4010202312090003';
where id = 'd977a210b49740d59b946ef58982d434';
;-- -. . -..- - / . -. - .-. -.--
select zjjg, sjzt, rk_temp_zt, zt, cgddmxid,rkl,dhsl,zt
from business_6j3g
# where id = '58b784abf338f6444602050c82eaf239';
where father_id = 'd977a210b49740d59b946ef58982d434';
;-- -. . -..- - / . -. - .-. -.--
select *
from sync_werk_org_copy1 where werks=3390;
;-- -. . -..- - / . -. - .-. -.--
select *
from sap_consignment_stock
where 1 = 1
#   and matnr = 1000019789
#   and org_id = 00000287
and werks=3390
having slabs > 0;
;-- -. . -..- - / . -. - .-. -.--
select *
from sap_consignment_stock
where 1 = 1
#   and matnr = 1000019789
#   and org_id = 00000287
and werks=3390;
;-- -. . -..- - / . -. - .-. -.--
select * from machine_output_reserved;
;-- -. . -..- - / . -. - .-. -.--
select `s`.`wlbm`       AS `wlbm`,
       `s`.`wlms`       AS `wlms`,
       `s`.`zkc`        AS `zkc`,
       `s`.`jhbm`       AS `jhbm`,
       `s`.`sbr`        AS `sbr`,
       `s`.`cgy`        AS `cgy`,
       `s`.`kcdbm`      AS `ckkcdbm`,
       `m`.`kcdbm`      AS `dbkcdbm`,
       `s`.`cksl`       AS `cksl`,
       `s`.`sfck`       AS `sfck`,
       `m`.`flow_step`  AS `flow_step`,
       `m`.`flow_state` AS `flow_state`,
       `m`.`ckbm`       AS `ckbm`,
       `m`.`zdr`        AS `zdr`,
       `m`.`psy`        AS `psy`,
       `m`.`sfbd`       AS `sfbd`,
       m.org_id
from (`purchase`.`business_ij1g` `m` left join `purchase`.`business_m3wc` `s` on ((`m`.`id` = `s`.`father_id`)))
where ((`m`.`flow_step` <> '归档') and (`m`.`flow_step` <> '领用人签收') and (`m`.`flow_step` <> '填写'));
;-- -. . -..- - / . -. - .-. -.--
select *
from business_8b0j
# where module_name like '%SAP采购订单号同步%'
# where module_name like '%电子商城采购订单%'
# where module_name like '%电子商城发货单同步%'
# where module_name like '%电子商城-创建收货单%'
# where module_name like '%退库单关闭同步%'
# where module_name like '%电子商城-SAP采购订单号同步%'
where module_name like '%电子%'
# and params like '%PO231110000005%'
# where params like '%INV231110000003%'
#     and  result like '%MTK%'
# and type='input'
order by create_date
        desc
limit 100;
;-- -. . -..- - / . -. - .-. -.--
select *
from business_8b0j
# where module_name like '%SAP采购订单号同步%'
# where module_name like '%电子商城采购订单%'
# where module_name like '%电子商城发货单同步%'
# where module_name like '%电子商城-创建收货单%'
# where module_name like '%退库单关闭同步%'
# where module_name like '%电子商城-SAP采购订单号同步%'
where module_name like '%接收电子商城采购申请单%'
# and params like '%PO231110000005%'
# where params like '%INV231110000003%'
#     and  result like '%MTK%'
# and type='input'
order by create_date
        desc
limit 100;
;-- -. . -..- - / . -. - .-. -.--
select id,cgy_ids
from ele_shop_purchase_apply;
;-- -. . -..- - / . -. - .-. -.--
select id,cgy_ids,apply_user_id
from ele_shop_purchase_apply;
;-- -. . -..- - / . -. - .-. -.--
select id,apply_user_id,cgy_ids
from ele_shop_purchase_apply;
;-- -. . -..- - / . -. - .-. -.--
select *
from business_8b0j
# where module_name like '%SAP采购订单号同步%'
where module_name like '%电子商城采购订单%'
# where module_name like '%电子商城发货单同步%'
# where module_name like '%电子商城-创建收货单%'
# where module_name like '%退库单关闭同步%'
# where module_name like '%电子商城-SAP采购订单号同步%'
# where module_name like '%接收电子商城采购申请单%'
# and params like '%PO231110000005%'
and params like '%PR231103000003%'
#     and  result like '%MTK%'
# and type='input'
order by create_date
        desc
limit 100;
;-- -. . -..- - / . -. - .-. -.--
select *
from business_3k66 where szgcddh='PO231103000004';
;-- -. . -..- - / . -. - .-. -.--
select yszgcddh
from business_3k66 where szgcddh='PO231103000004';
;-- -. . -..- - / . -. - .-. -.--
select s.*
from business_3k66 m
         inner join business_qq7x s on m.id = s.father_id
where szgcddh = 'PO231103000004';
;-- -. . -..- - / . -. - .-. -.--
select s.xxmh
from business_3k66 m
         inner join business_qq7x s on m.id = s.father_id
where szgcddh = 'PO231103000004';
;-- -. . -..- - / . -. - .-. -.--
select *
from ele_shop_purchase_apply_detail;
;-- -. . -..- - / . -. - .-. -.--
select apply_item_code
from ele_shop_purchase_apply_detail;
;-- -. . -..- - / . -. - .-. -.--
select *
from business_8b0j
# where module_name like '%SAP采购订单号同步%'
where module_name like '%电子商城采购订单%'
# where module_name like '%电子商城发货单同步%'
# where module_name like '%电子商城-创建收货单%'
# where module_name like '%退库单关闭同步%'
# where module_name like '%电子商城-SAP采购订单号同步%'
# where module_name like '%接收电子商城采购申请单%'
# and params like '%PO231110000005%'
# and params like '%PR231103000003%'
#     and  result like '%MTK%'
# and type='input'
order by create_date
        desc
limit 100;
;-- -. . -..- - / . -. - .-. -.--
select *
from business_8b0j
# where module_name like '%SAP采购订单号同步%'
# where module_name like '%电子商城采购订单%'
# where module_name like '%电子商城发货单同步%'
# where module_name like '%电子商城-创建收货单%'
# where module_name like '%退库单关闭同步%'
# where module_name like '%电子商城-SAP采购订单号同步%'
where module_name like '%接收电子商城采购申请单%'
and params like '%PR231110000004%'
# and params like '%PR231103000003%'
#     and  result like '%MTK%'
# and type='input'
order by create_date
        desc
limit 100;
;-- -. . -..- - / . -. - .-. -.--
select *
from business_8b0j
# where module_name like '%SAP采购订单号同步%'
where module_name like '%电子商城采购订单%'
# where module_name like '%电子商城发货单同步%'
# where module_name like '%电子商城-创建收货单%'
# where module_name like '%退库单关闭同步%'
# where module_name like '%电子商城-SAP采购订单号同步%'
# where module_name like '%接收电子商城采购申请单%'
and params like '%PR231110000004%'
# and params like '%PR231103000003%'
#     and  result like '%MTK%'
# and type='input'
order by create_date
        desc
limit 100;
;-- -. . -..- - / . -. - .-. -.--
select s.xxmh,s.apply_item_code,s.apply_code
from business_3k66 m
         inner join business_qq7x s on m.id = s.father_id
where szgcddh = 'PO231103000004';
;-- -. . -..- - / . -. - .-. -.--
select s.xxmh,s.apply_item_code,s.apply_code
from business_3k66 m
         inner join business_qq7x s on m.id = s.father_id
where szgcddh = 'PO231110000003';
;-- -. . -..- - / . -. - .-. -.--
select *
from business_8b0j
# where module_name like '%SAP采购订单号同步%'
# where module_name like '%电子商城采购订单%'
where module_name like '%电子商城发货单同步%'
# where module_name like '%电子商城-创建收货单%'
# where module_name like '%退库单关闭同步%'
# where module_name like '%电子商城-SAP采购订单号同步%'
# where module_name like '%接收电子商城采购申请单%'
and params like '%PO231110000003%'
# and params like '%PR231103000003%'
#     and  result like '%MTK%'
# and type='input'
order by create_date
        desc
limit 100;
;-- -. . -..- - / . -. - .-. -.--
select *
from ele_shop_purchase_apply ap
         inner join ele_shop_purchase_apply_detail apd on ap.id=apd.father_id;
;-- -. . -..- - / . -. - .-. -.--
select *
from ele_shop_purchase_apply ap
         inner join ele_shop_purchase_apply_detail apd on ap.id=apd.father_id
inner join business_qq7x qq7x on apd.apply_code=qq7x.apply_code and qq7x.apply_item_code=apd.apply_item_code;
;-- -. . -..- - / . -. - .-. -.--
select ap.apply_user_id,ap.apply_code
from ele_shop_purchase_apply ap
         inner join ele_shop_purchase_apply_detail apd on ap.id = apd.father_id
         inner join business_qq7x qq7x
                    on apd.apply_code = qq7x.apply_code and qq7x.apply_item_code = apd.apply_item_code;
;-- -. . -..- - / . -. - .-. -.--
select ap.apply_user_id,ap.proposer_code
from ele_shop_purchase_apply ap
         inner join ele_shop_purchase_apply_detail apd on ap.id = apd.father_id
         inner join business_qq7x qq7x
                    on apd.apply_code = qq7x.apply_code and qq7x.apply_item_code = apd.apply_item_code;
;-- -. . -..- - / . -. - .-. -.--
select ap.apply_user_id,ap.proposer_code,apd.*
from ele_shop_purchase_apply ap
         inner join ele_shop_purchase_apply_detail apd on ap.id = apd.father_id
         inner join business_qq7x qq7x
                    on apd.apply_code = qq7x.apply_code and qq7x.apply_item_code = apd.apply_item_code;
;-- -. . -..- - / . -. - .-. -.--
select ap.apply_user_id,ap.proposer_code,apd.*,qq7x.id
from ele_shop_purchase_apply ap
         inner join ele_shop_purchase_apply_detail apd on ap.id = apd.father_id
         inner join business_qq7x qq7x
                    on apd.apply_code = qq7x.apply_code and qq7x.apply_item_code = apd.apply_item_code;
;-- -. . -..- - / . -. - .-. -.--
select ap.apply_user_id, ap.proposer_code, apd.*, qq7x.id,purm.szgcddh
from ele_shop_purchase_apply ap
         inner join ele_shop_purchase_apply_detail apd on ap.id = apd.father_id
         inner join business_qq7x qq7x
         inner join business_3k66 purm on purm.id = qq7x.father_id on apd.apply_code = qq7x.apply_code and qq7x.apply_item_code = apd.apply_item_code;
;-- -. . -..- - / . -. - .-. -.--
select ap.apply_user_id, ap.proposer_code, apd.*, qq7x.id, purm.szgcddh
from ele_shop_purchase_apply ap
         inner join ele_shop_purchase_apply_detail apd on ap.id = apd.father_id
         inner join business_qq7x qq7x
                    on apd.apply_code = qq7x.apply_code and qq7x.apply_item_code = apd.apply_item_code
         inner join business_3k66 purm on purm.id = qq7x.father_id;
;-- -. . -..- - / . -. - .-. -.--
select *
from ele_shop_purchase_apply
where apply_code = 'PR231101000001';
;-- -. . -..- - / . -. - .-. -.--
select *
from ele_shop_purchase_apply;
;-- -. . -..- - / . -. - .-. -.--
select apply_item_code
from ele_shop_purchase_apply_detail where father_id='0810fee1a614285c0245af1cd4dee13a';
;-- -. . -..- - / . -. - .-. -.--
select apply_item_code,remark,purchase_user_work_number
from ele_shop_purchase_apply_detail where father_id='0810fee1a614285c0245af1cd4dee13a';
;-- -. . -..- - / . -. - .-. -.--
select *
from business_y339
# where id = '4818e4db5f0c2f1210d4779b5fd99e35'
where serial = '20231212091143912'
order by create_date desc
limit 10;
;-- -. . -..- - / . -. - .-. -.--
select id,rkdbh
from business_y339
# where id = '4818e4db5f0c2f1210d4779b5fd99e35'
where serial = '20231212091143912'
order by create_date desc
limit 10;
;-- -. . -..- - / . -. - .-. -.--
select title, create_time, request, response, exception,time
from sap_execute_log
where
    title = '采购订单连续收货'
    and
request like '%SBRKD4010202312120003%'
# sap_execute_log.response like '%4913096500%'
order by create_time desc
limit 10;
;-- -. . -..- - / . -. - .-. -.--
select id, apply_user_id, cgy_ids
from ele_shop_purchase_apply;
;-- -. . -..- - / . -. - .-. -.--
select *
from ele_shop_purchase_apply
where apply_code = 'PR231103000003';
;-- -. . -..- - / . -. - .-. -.--
select id, apply_item_code, remark, purchase_user_work_number
from ele_shop_purchase_apply_detail
where father_id = '0810fee1a614285c0245af1cd4dee13a';
;-- -. . -..- - / . -. - .-. -.--
select id, apply_item_code, remark, purchase_user_work_number
from ele_shop_purchase_apply_detail
where father_id = '38a3b7ea426024b620fa59648d00a7c7';
;-- -. . -..- - / . -. - .-. -.--
select id, cgy
from business_hmz1
# where serial = '20230810152123924';
where sbwzdhysdbh = 'INV231110000004';
;-- -. . -..- - / . -. - .-. -.--
select zjjg, sjzt, rk_temp_zt, zt, cgddmxid,rkl,dhsl,zt,wgjcjsy
from business_6j3g
# where id = '58b784abf338f6444602050c82eaf239';
where father_id = '1feea6da9060b82e813a75c06e37abb0';
;-- -. . -..- - / . -. - .-. -.--
select ap.apply_user_id, ap.proposer_code, apd.*, qq7x.id as purchase_order_item_id, purm.szgcddh, qq7x.xxmh
from ele_shop_purchase_apply ap
         inner join ele_shop_purchase_apply_detail apd on ap.id = apd.father_id
         inner join business_qq7x qq7x
                    on apd.apply_code = qq7x.apply_code and qq7x.apply_item_code = apd.apply_item_code
         inner join business_3k66 purm on purm.id = qq7x.father_id;
;-- -. . -..- - / . -. - .-. -.--
select *
from ele_shop_purchase_apply
where apply_code = 'PR231110000004';
;-- -. . -..- - / . -. - .-. -.--
select *
from sap_consignment_stock
# where werks = 4390
  and matnr = '1000031874';
;-- -. . -..- - / . -. - .-. -.--
select *
from sap_consignment_stock
where werks = 4390;
;-- -. . -..- - / . -. - .-. -.--
select *
from sap_consignment_stock
where werks = 4390
  and matnr = '1000031874';
;-- -. . -..- - / . -. - .-. -.--
select title, create_time, request, response, exception,time
from sap_execute_log
where
    title = '采购订单连续收货'
    and
# request like '%SBRKD4010202312120003%'
request like '%4500334104%'
# sap_execute_log.response like '%4913096500%'
order by create_time desc
limit 10;
;-- -. . -..- - / . -. - .-. -.--
select title, create_time, request, response, exception,time
from sap_execute_log
where
    title = '采购订单连续收货'
    and
# request like '%SBRKD4010202312120003%'
request like '%4500359625%'
# sap_execute_log.response like '%4913096500%'
order by create_time desc
limit 10;
;-- -. . -..- - / . -. - .-. -.--
select id
     , caigouyuan
     , szgcddh
     , jyms
     , gysbm
     , sapcgpz1
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
,create_date
from business_3k66
# where ddfqlx ='A18A02A11A04';
where sapcgpz1 ='4500359625';
;-- -. . -..- - / . -. - .-. -.--
select id,
       wlbm,
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
  and wlbm = '1000385331'
  and father_id = 'f0f41f739f0c49d686511418d7c1b6a0'
# where id = 'c2f8cdbb3418d1c74625a7bbf32f5d2d'
order by create_date desc;
;-- -. . -..- - / . -. - .-. -.--
select id,
       wlbm,
       ddsl,
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
  and wlbm = '1000385331'
  and father_id = 'f0f41f739f0c49d686511418d7c1b6a0'
# where id = 'c2f8cdbb3418d1c74625a7bbf32f5d2d'
order by create_date desc;
;-- -. . -..- - / . -. - .-. -.--
SELECT dhddmx.cgjhbh          AS           jhbm,
       dhddmx.id,
       dhddmx.cgddmxid,
       dhddmx.sjzt,
       dhddmx.sfrbjs,
       dhddmx.bhpczbh,
       cgjh.cgr               AS           cgy,
       cgjh.sbr               AS           sbr,
       cgdd.gysbm             as           xdfbm,
       cgdd.gysmc             as           xdfmc,
       cgdd.szgcddh                        cgddh,
       cgdd.htbh,
       cgdd.htmc,
       dhddmx.wlbm,
       dhddmx.wlms,
       dhddmx.wlzbm,
       dhddmx.wlzms,
       dhddmx.ddsl            AS           sl,
       cgddmx.xxmh,
       dhddmx.rkkw,
       dhddmx.sm,
       dhddmx.xxmh                         rlkgy,

       dhddmx.wztp,
       dhddmx.wzfj,
       dhddmx.hgz,
       dhddmx.czzm,
       dhddmx.bgd,
       dhddmx.ccjybg,
       dhddmx.sysm,
       dhddmx.tz,
       ifnull(cgddmx.cgdj, 0) as           dj,
       dhddmx.jldw,
       'CGJH'                              jhlx,
       cgjh.sjlx,
       cgjh.jyxm,
       cgjh.sbwh,
       cgjh.sbbmname,
       cgjh.fj,
       cgjh.fjbz,
       cgjh.zdyjy,
       cgjh.ggxh,
       cgjh.fylx,
       cgjh.ydlx,
       cgjh.cbzx              as           cbzxms,
       w.cbzxmc               as           cbzxcode,
       cgjh.jgh,
       cgjh.zch,
       cgjh.shdz,
       cgjh.wzjb,
       dhddmx.zt,
       dhddmx.rk_temp_zt,
       dhddmx.rkl,
       dhddmx.dhsl,
       dhddmx.dhsl - ifnull(dhddmx.rkl, 0) wrksl,
       cgdd.sapcgpz1,
       dhysd.sbwzdhysdbh,
       dhysd.jyfl,
       dhysd.id                            dhysdid,
       dhysd.kgy
FROM business_6j3g dhddmx
         inner join business_hmz1 dhysd on dhddmx.father_id = dhysd.id
         inner join business_qq7x cgddmx on dhddmx.cgddmxid = cgddmx.id and dhddmx.cgddmxid = cgddmx.id
         inner JOIN business_3k66 cgdd on dhysd.szgcddh = cgdd.szgcddh
         left JOIN business_7twq cgjh ON cgjh.cggyjhbh = dhddmx.cgjhbh
         left JOIN wzxqjh w ON cgjh.xqjhbh = w.xqjhbh
WHERE (dhddmx.rk_temp_zt = '' OR dhddmx.rk_temp_zt IS NULL)
#   未入库
  AND (dhddmx.zt != 'A18A09A02A05' OR dhddmx.zt IS NULL)
  and dhddmx.cgjhbh like 'CGJH%'
  and (cgdd.sapcgpz1 != null OR cgdd.sapcgpz1 != '')
#   质检结果合格
  and (dhddmx.sjzt = 'A18A07A17A03' or dhddmx.sfrbjs = 'A03A01A01')
union


# 根据到货验收单进行数据筛选 长期需求计划
SELECT dhddmx.cgjhbh          AS           jhbm,
       dhddmx.id,
       dhddmx.cgddmxid,

       dhddmx.sjzt,
       dhddmx.sfrbjs,
       dhddmx.bhpczbh,
       ''                     AS           cgy,
       cqjh.sbr               AS           sbr,
       cgdd.gysbm             as           xdfbm,
       cgdd.gysmc             as           xdfmc,
       cgdd.szgcddh                        cgddh,
       cgdd.htbh,
       cgdd.htmc,
       dhddmx.wlbm,
       dhddmx.wlms,
       dhddmx.wlzbm,
       dhddmx.wlzms,
       dhddmx.ddsl            AS           sl,
       cgddmx.xxmh,
       dhddmx.rkkw,
       dhddmx.sm,
       dhddmx.xxmh                         rlkgy,
       dhddmx.wztp,
       dhddmx.wzfj,
       dhddmx.hgz,
       dhddmx.czzm,
       dhddmx.bgd,
       dhddmx.ccjybg,
       dhddmx.sysm,
       dhddmx.tz,
       ifnull(cgddmx.cgdj, 0) as           dj,
       dhddmx.jldw,
       'CQXQ'                              jhlx,
       cqjhmx.sjlx,
       cqjhmx.jyxm,
       ''                     as           sbwh,
       ''                     as           sbbmname,
       ''                     as           fj,
       ''                     as           fjbz,
       ''                     as           zdyjy,
       ''                     as           ggxh,
       ''                     as           fylx,
       ''                     as           ydlx,
       ''                     as           cbzxms,
       ''                     as           cbzxcode,
       ''                     as           jgh,
       ''                     as           zch,
       ''                     as           shdz,
       ''                     as           wzjb,
       dhddmx.zt,
       dhddmx.rk_temp_zt,
       dhddmx.rkl,
       dhddmx.dhsl,
       dhddmx.dhsl - ifnull(dhddmx.rkl, 0) wrksl,
       cgdd.sapcgpz1,
       dhysd.sbwzdhysdbh,
       dhysd.jyfl,
       dhysd.id                            dhysdid,
       dhysd.kgy
FROM business_6j3g dhddmx
         inner join business_hmz1 dhysd on dhddmx.father_id = dhysd.id
         inner join business_qq7x cgddmx on dhddmx.cgddmxid = cgddmx.id and dhddmx.cgddmxid = cgddmx.id
         inner JOIN business_3k66 cgdd on dhysd.szgcddh = cgdd.szgcddh
         left JOIN business_wnmh as cqjh ON cqjh.id = dhddmx.cgjhbh
         left JOIN business_6151 AS cqjhmx ON cqjh.id = cqjhmx.father_id
WHERE 1 = 1
  and (dhddmx.rk_temp_zt = '' OR dhddmx.rk_temp_zt IS NULL)
  AND (dhddmx.zt != 'A18A09A02A05' OR dhddmx.zt IS NULL)
  and dhddmx.cgjhbh like 'CQXQXYJH%'
#   and (cgdd.sapcgpz1 != null or cgdd.sapcgpz1 != '')
#   and (dhddmx.sjzt = 'A18A07A17A03' or dhddmx.sfrbjs = 'A03A01A01')

union


# 根据到货验收单进行数据筛选 无计划订单
SELECT dhddmx.cgjhbh          AS           jhbm,
       dhddmx.id,
       dhddmx.cgddmxid,
       dhddmx.sjzt,
       dhddmx.sfrbjs,
       dhddmx.bhpczbh,
       ''                     AS           cgy,
       ''                     AS           sbr,
       cgdd.gysbm             as           xdfbm,
       cgdd.gysmc             as           xdfmc,
       cgdd.szgcddh                        cgddh,
       cgdd.htbh,
       cgdd.htmc,
       dhddmx.wlbm,
       dhddmx.wlms,
       dhddmx.wlzbm,
       dhddmx.wlzms,
       dhddmx.ddsl            AS           sl,
       cgddmx.xxmh,
       dhddmx.rkkw,
       dhddmx.sm,
       dhddmx.xxmh                         rlkgy,
       dhddmx.wztp,
       dhddmx.wzfj,
       dhddmx.hgz,
       dhddmx.czzm,
       dhddmx.bgd,
       dhddmx.ccjybg,
       dhddmx.sysm,
       dhddmx.tz,
       ifnull(cgddmx.cgdj, 0) as           dj,
       dhddmx.jldw,
       ''                                  jhlx,
       ''                                  sjlx,
       ''                                  jyxm,
       ''                     as           sbwh,
       ''                     as           sbbmname,
       ''                     as           fj,
       ''                     as           fjbz,
       ''                     as           zdyjy,
       ''                     as           ggxh,
       ''                     as           fylx,
       ''                     as           ydlx,
       ''                     as           cbzxms,
       ''                     as           cbzxcode,
       ''                     as           jgh,
       ''                     as           zch,
       ''                     as           shdz,
       ''                     as           wzjb,
       dhddmx.zt,
       dhddmx.rk_temp_zt,
       dhddmx.rkl,
       dhddmx.dhsl,
       dhddmx.dhsl - ifnull(dhddmx.rkl, 0) wrksl,
       cgdd.sapcgpz1,
       dhysd.sbwzdhysdbh,
       dhysd.jyfl,
       dhysd.id                            dhysdid,
       dhysd.kgy

FROM business_6j3g dhddmx
         inner join business_hmz1 dhysd on dhddmx.father_id = dhysd.id
         inner join business_qq7x cgddmx on dhddmx.cgddmxid = cgddmx.id and dhddmx.cgddmxid = cgddmx.id
         inner JOIN business_3k66 cgdd on dhysd.szgcddh = cgdd.szgcddh
WHERE (dhddmx.rk_temp_zt = '' OR dhddmx.rk_temp_zt IS NULL)
  AND (dhddmx.zt != 'A18A09A02A05' OR dhddmx.zt IS NULL or dhddmx.zt = '')
  and (dhddmx.cgjhbh is null or dhddmx.cgjhbh = '')
  and (cgdd.sapcgpz1 != null or cgdd.sapcgpz1 != '')
  and (dhddmx.sjzt = 'A18A07A17A03' or dhddmx.sfrbjs = 'A03A01A01')


# 电子商城订单 无sap采购凭证
union
SELECT dhddmx.cgjhbh          AS           jhbm,
       dhddmx.id,
       dhddmx.cgddmxid,
       dhddmx.sjzt,
       dhddmx.sfrbjs,
       dhddmx.bhpczbh,
       ''                     AS           cgy,
       ''                     AS           sbr,
       dhysd.gysbm            as           xdfbm,
       dhysd.gysmc            as           xdfmc,
       dhysd.szgcddh                       cgddh,
       dhysd.htbh,
       dhysd.htmc,
       dhddmx.wlbm,
       dhddmx.wlms,
       dhddmx.wlzbm,
       dhddmx.wlzms,
       dhddmx.ddsl            AS           sl,
       dhddmx.send_order_item_code as xxmh,
       dhddmx.rkkw,
       dhddmx.sm,
       dhddmx.xxmh                         rlkgy,
       dhddmx.wztp,
       dhddmx.wzfj,
       dhddmx.hgz,
       dhddmx.czzm,
       dhddmx.bgd,
       dhddmx.ccjybg,
       dhddmx.sysm,
       dhddmx.tz,
       ifnull(cgddmx.cgdj, 0) as           dj,
       dhddmx.jldw,
       ''                                  jhlx,
       ''                                  sjlx,
       ''                                  jyxm,
       ''                     as           sbwh,
       ''                     as           sbbmname,
       ''                     as           fj,
       ''                     as           fjbz,
       ''                     as           zdyjy,
       ''                     as           ggxh,
       ''                     as           fylx,
       ''                     as           ydlx,
       ''                     as           cbzxms,
       ''                     as           cbzxcode,
       ''                     as           jgh,
       ''                     as           zch,
       ''                     as           shdz,
       ''                     as           wzjb,
       dhddmx.zt,
       dhddmx.rk_temp_zt,
       dhddmx.rkl,
       dhddmx.dhsl,
       dhddmx.dhsl - ifnull(dhddmx.rkl, 0) wrksl,
       ''                                  sapcgpz1,
       dhysd.sbwzdhysdbh,
       dhysd.jyfl,
       dhysd.id                            dhysdid,
       dhysd.kgy

FROM business_6j3g dhddmx
         inner join business_hmz1 dhysd on dhddmx.father_id = dhysd.id
         inner join business_qq7x cgddmx on dhddmx.cgddmxid = cgddmx.id
WHERE (dhddmx.rk_temp_zt = '' OR dhddmx.rk_temp_zt IS NULL)
  and dhysd.sbwzdhysdbh like 'INV%'
  and (dhddmx.sjzt = 'A18A07A17A03' or dhddmx.sfrbjs = 'A03A01A01')
and dhysd.sbwzdhysdbh='DHYSD4010202312060003';
;-- -. . -..- - / . -. - .-. -.--
SELECT dhddmx.cgjhbh               AS      jhbm,
       dhddmx.id,
       dhddmx.cgddmxid,
       dhddmx.sjzt,
       dhddmx.sfrbjs,
       dhddmx.bhpczbh,
       ''                          AS      cgy,
       ''                          AS      sbr,
       dhysd.gysbm                 as      xdfbm,
       dhysd.gysmc                 as      xdfmc,
       dhysd.szgcddh                       cgddh,
       dhysd.htbh,
       dhysd.htmc,
       dhddmx.wlbm,
       dhddmx.wlms,
       dhddmx.wlzbm,
       dhddmx.wlzms,
       dhddmx.ddsl                 AS      sl,
       dhddmx.send_order_item_code as      xxmh,
       dhddmx.rkkw,
       dhddmx.sm,
       dhddmx.xxmh                         rlkgy,
       dhddmx.wztp,
       dhddmx.wzfj,
       dhddmx.hgz,
       dhddmx.czzm,
       dhddmx.bgd,
       dhddmx.ccjybg,
       dhddmx.sysm,
       dhddmx.tz,
       ifnull(cgddmx.cgdj, 0)      as      dj,
       dhddmx.jldw,
       ''                                  jhlx,
       ''                                  sjlx,
       ''                                  jyxm,
       ''                          as      sbwh,
       ''                          as      sbbmname,
       ''                          as      fj,
       ''                          as      fjbz,
       ''                          as      zdyjy,
       ''                          as      ggxh,
       ''                          as      fylx,
       ''                          as      ydlx,
       ''                          as      cbzxms,
       ''                          as      cbzxcode,
       ''                          as      jgh,
       ''                          as      zch,
       ''                          as      shdz,
       ''                          as      wzjb,
       dhddmx.zt,
       dhddmx.rk_temp_zt,
       dhddmx.rkl,
       dhddmx.dhsl,
       dhddmx.dhsl - ifnull(dhddmx.rkl, 0) wrksl,
       ''                                  sapcgpz1,
       dhysd.sbwzdhysdbh,
       dhysd.jyfl,
       dhysd.id                            dhysdid,
       dhysd.kgy

FROM business_6j3g dhddmx
         inner join business_hmz1 dhysd on dhddmx.father_id = dhysd.id
         inner join business_qq7x cgddmx on dhddmx.cgddmxid = cgddmx.id
WHERE (dhddmx.rk_temp_zt = '' OR dhddmx.rk_temp_zt IS NULL)
  and dhysd.sbwzdhysdbh like 'INV%'
  and (dhddmx.sjzt = 'A18A07A17A03' or dhddmx.sfrbjs = 'A03A01A01')
  and dhysd.sbwzdhysdbh = 'DHYSD4010202312060003';
;-- -. . -..- - / . -. - .-. -.--
select id,cys,cysbm
from wlwtd_yshezb
# where father_id='27e5f2246c964407baf95350342ad3ff';
where wlwtl='SZGC2312050009 ';
;-- -. . -..- - / . -. - .-. -.--
select id,cys,cysbm
from wlwtd_yshezb
# where father_id='27e5f2246c964407baf95350342ad3ff';
where wlwtl='SZGC2312050009';
;-- -. . -..- - / . -. - .-. -.--
select *
from business_8b0j
# where module_name like '%SAP采购订单号同步%'
# where module_name like '%电子商城采购订单%'
# where module_name like '%电子商城发货单同步%'
# where module_name like '%电子商城-创建收货单%'
where module_name like '%仓储物流%'
# where module_name like '%电子商城-SAP采购订单号同步%'
# where module_name like '%电子%'
# and params like '%PO231110000005%'
# where params like '%INV231110000003%'
and business_8b0j.result like 'SZGC2312050009'
#     and  result like '%MTK%'
# and type='input'
order by create_date
        desc
limit 100;
;-- -. . -..- - / . -. - .-. -.--
select *
from business_8b0j
# where module_name like '%SAP采购订单号同步%'
# where module_name like '%电子商城采购订单%'
# where module_name like '%电子商城发货单同步%'
# where module_name like '%电子商城-创建收货单%'
where module_name like '%仓储物流%'
# where module_name like '%电子商城-SAP采购订单号同步%'
# where module_name like '%电子%'
# and params like '%PO231110000005%'
# where params like '%INV231110000003%'
and business_8b0j.result like '%SZGC2312050009%'
#     and  result like '%MTK%'
# and type='input'
order by create_date
        desc
limit 100;
;-- -. . -..- - / . -. - .-. -.--
select id,cys,cysbm
from wlwtd_yshezb
where father_id='3a72c71e0e104bd2b8335e4a95fa6314';
;-- -. . -..- - / . -. - .-. -.--
select *
from wlwtd
# where wlwtdbh = 'WLWTD4010202312010037';
where szgcddh = 'CGDD3090202312050029';
;-- -. . -..- - / . -. - .-. -.--
select org_id
from wlwtd
# where wlwtdbh = 'WLWTD4010202312010037';
where szgcddh = 'CGDD3090202312050029';
;-- -. . -..- - / . -. - .-. -.--
select *
from sync_werk_org where org_code='10001943';
;-- -. . -..- - / . -. - .-. -.--
select *
from business_8b0j
# where module_name like '%SAP采购订单号同步%'
# where module_name like '%电子商城采购订单%'
# where module_name like '%电子商城发货单同步%'
# where module_name like '%电子商城-创建收货单%'
where module_name like '%仓储物流%'
# where module_name like '%电子商城-SAP采购订单号同步%'
# where module_name like '%电子%'
# and params like '%PO231110000005%'
# where params like '%INV231110000003%'
# and business_8b0j.result like '%SZGC2312050009%'
#     and  result like '%MTK%'
# and type='input'
order by create_date
        desc
limit 100;
;-- -. . -..- - / . -. - .-. -.--
select id,cys,cysbm,wlwtl
from wlwtd_yshezb
where father_id='3a72c71e0e104bd2b8335e4a95fa6314';
;-- -. . -..- - / . -. - .-. -.--
select id
from wlwtd
where wlwtdbh = 'WLWTD3090202312050025';
;-- -. . -..- - / . -. - .-. -.--
select id,cys,cysbm,ccwlwtdh
from wlwtd_yshezb
where father_id='3a72c71e0e104bd2b8335e4a95fa6314';
;-- -. . -..- - / . -. - .-. -.--
select id, cgy,org_id,dept_id,user_id
from business_hmz1
where serial = '20231212154145492';
;-- -. . -..- - / . -. - .-. -.--
select *
from business_8b0j
# where module_name like '%SAP采购订单号同步%'
# where module_name like '%电子商城采购订单%'
# where module_name like '%电子商城发货单同步%'
# where module_name like '%电子商城-创建收货单%'
# where module_name like '%退库单关闭同步%'
# where module_name like '%电子商城-SAP采购订单号同步%'
# where module_name like '%接收电子商城采购申请单%'
where module_name like '%电子%'
# and params like '%PO231110000003%'
# and params like '%PR231103000003%'
#     and  result like '%MTK%'
# and type='input'
order by create_date
        desc
limit 100;
;-- -. . -..- - / . -. - .-. -.--
select *
from business_8b0j
# where module_name like '%SAP采购订单号同步%'
# where module_name like '%电子商城采购订单%'
# where module_name like '%电子商城-创建收货单%'
where module_name like '%电子商城发货单同步%'
# where module_name like '%电子商城-SAP采购订单号同步%'
# where module_name like '%接收电子商城采购申请单%'
# where module_name like '%电子%'
# where module_name like '%退库单关闭同步%'
# and params like '%PO231110000003%'
# and params like '%PR231103000003%'
#     and  result like '%MTK%'
# and type='input'
order by create_date
        desc
limit 100;
;-- -. . -..- - / . -. - .-. -.--
select *
from business_8b0j
# where module_name like '%SAP采购订单号同步%'
# where module_name like '%电子商城采购订单%'
# where module_name like '%电子商城-创建收货单%'
# where module_name like '%电子商城发货单同步%'
# where module_name like '%电子商城-SAP采购订单号同步%'
# where module_name like '%接收电子商城采购申请单%'
where module_name like '%电子%'
# where module_name like '%退库单关闭同步%'
# and params like '%PO231110000003%'
# and params like '%PR231103000003%'
#     and  result like '%MTK%'
# and type='input'
order by create_date
        desc
limit 100;
;-- -. . -..- - / . -. - .-. -.--
select id, apply_item_code, remark, purchase_user_work_number
from ele_shop_purchase_apply_detail
where father_id = 'ffc6681942c383595d2064e29471a978';
;-- -. . -..- - / . -. - .-. -.--
select id, cgy,org_id,dept_id,user_id
from business_hmz1
# where serial = '20230810152123924';
where sbwzdhysdbh = 'INV231110000004';
;-- -. . -..- - / . -. - .-. -.--
select id, cgy,org_id,dept_id,user_id,ysbz
from business_hmz1
# where serial = '20230810152123924';
where sbwzdhysdbh = 'INV231110000004';
;-- -. . -..- - / . -. - .-. -.--
select *
from business_8b0j
# where module_name like '%SAP采购订单号同步%'
# where module_name like '%电子商城采购订单%'
# where module_name like '%电子商城-创建收货单%'
# where module_name like '%电子商城发货单同步%'
# where module_name like '%电子商城-SAP采购订单号同步%'
# where module_name like '%接收电子商城采购申请单%'
# where module_name like '%电子%'
where module_name like '%电子商城-创建收货单%'
# where module_name like '%退库单关闭同步%'
# and params like '%PO231110000003%'
# and params like '%PR231103000003%'
#     and  result like '%MTK%'
# and type='input'
order by create_date
        desc
limit 100;
;-- -. . -..- - / . -. - .-. -.--
select *
from business_8b0j
# where module_name like '%SAP采购订单号同步%'
# where module_name like '%电子商城采购订单%'
# where module_name like '%电子商城-创建收货单%'
# where module_name like '%电子商城发货单同步%'
# where module_name like '%电子商城-SAP采购订单号同步%'
# where module_name like '%接收电子商城采购申请单%'
# where module_name like '%电子%'
where module_name like '%电子商城-创建收货单%'
# where module_name like '%退库单关闭同步%'
# and params like '%PO231110000003%'
# and params like '%PR231103000003%'
#     and  result like '%MTK%'
# and type='input'
order by create_date
        desc
limit 10;