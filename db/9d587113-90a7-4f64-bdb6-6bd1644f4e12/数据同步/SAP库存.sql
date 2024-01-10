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
  and werks = 3280
#   and org_id = '00000287'
#   and matnr = '1000340448'
# group by matnr;

# having sum1 > 1;


select
#     count(matnr) sum1,
matnr,
maktx,
clabs
from sap_consignment_stock
where 1 = 1
  and werks = 4010
  and org_id = '00000287'
  and matnr = '1000340448'
# group by matnr;

# having sum1 > 1;


select *
from sync_werk_org
where or = 4010;

select *
from business_50t4
where wlbm = '1000455528';


select *
from material_average_price
where matnr = '1000455528';
select *
from sync_werk_org_copy1
where werks = 3390;

select *
from sync_werk_org
where werks = 3390;
#   and lgort = 1510;

select `stock`.`id`                                                  AS `id`,
       `stock`.`matnr`                                               AS `wlbm`,
       `stock`.`maktx`                                               AS `wlms`,
       `shelf`.`yhjxx`                                               AS `hjxx`,
       `shelf`.`yhjxx`                                               AS `yhjxx`,
       `shelf`.`xhjxx`                                               AS `xhjxx`,
       `stock`.`lgort`                                               AS `kcdbm`,
       `stock`.`lgobe`                                               AS `kcdmc`,
       `stock`.`meins`                                               AS `dw`,
       `stock`.`meins_name`                                          AS `dwms`,
       `stock`.`charg`                                               AS `pch`,
       `stock`.`slabs`                                               AS `jskc`,
       `stock`.`clabs`                                               AS `kcl`,
       'SAP'                                                         AS `typed`,
       0                                                             AS `is_history`,
       `stock`.`werks`                                               AS `werks`,
       `stock`.`org_id`                                              AS `org_id`,
       ifnull(`price`.`verpr`, 0)                                    AS `verpr`,
       '-'                                                           AS `wlbm_last`,
       `swo`.`org_name`                                              AS `org_name`,
       concat_ws('_', `stock`.`matnr`, `stock`.`lgort`, stock.charg) AS `qrcode`
from (((`sap_consignment_stock` `stock` left join `business_50t4` `shelf`
        on (((`stock`.`matnr` = `shelf`.`wlbm`) and (`stock`.`org_id` = `shelf`.`org_id`) and
             (`shelf`.`kclx` = 'SAP') and
             (`stock`.`lgort` = `shelf`.`ykcdbm`)))) left join `material_average_price` `price`
       on (((`stock`.`matnr` = `price`.`matnr`) and
            (`stock`.`org_id` = `price`.`org_id`)))) left join `sync_werk_org` `swo`
      on (((`stock`.`org_id` = `swo`.`org_code`) and (`stock`.`werks` = `swo`.`werks`))))
union
select `wait_use_repository`.`id`                                                                           AS `id`,
       `wait_use_repository`.`wlbm`                                                                         AS `wlbm`,
       `wait_use_repository`.`wlms`                                                                         AS `wlms`,
       `wait_use_repository`.`hjxx`                                                                         AS `hjxx`,
       `wait_use_repository`.`hjxx`                                                                         AS `yhjxx`,
       `wait_use_repository`.`hjxx`                                                                         AS `xhjxx`,
       `wait_use_repository`.`kcdbm`                                                                        AS `kcdbm`,
       `wait_use_repository`.`kcdmc`                                                                        AS `kcdmc`,
       `wait_use_repository`.`jldw`                                                                         AS `dw`,
       `wait_use_repository`.`jldwms`                                                                       AS `dwms`,
       `wait_use_repository`.`pch`                                                                          AS `pch`,
       0                                                                                                    AS `jskc`,
       `wait_use_repository`.`kcl`                                                                          AS `kcl`,
       'WAITUSE'                                                                                            AS `typed`,
       `wait_use_repository`.`is_history`                                                                   AS `is_history`,
       `wait_use_repository`.`werks`                                                                        AS `werks`,
       `wait_use_repository`.`org_id`                                                                       AS `org_id`,
       ifnull(`wait_use_repository`.`dj`, 0)                                                                AS `verpr`,
       `wait_use_repository`.`wlbm_last`                                                                    AS `wlbm_last`,
       `swo`.`org_name`                                                                                     AS `org_name`,
       concat_ws('_', `wait_use_repository`.`wlbm`, `wait_use_repository`.`kcdbm`, wait_use_repository.pch) AS `qrcode`
from (`wait_use_repository` left join `sync_werk_org` `swo` on ((`wait_use_repository`.`org_id` = `swo`.`org_code`)))
having (`wait_use_repository`.`kcl` > 0)



select *
from all_repository_stock where werks=4390 and wlbm=1000000648;


select *
from sap_consignment_stock where werks=4390 and matnr=1000000648;


