select  count(1) from (select o.org_name        as '公司',
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
       t.invzu           as '补充库存说明(库存标记 )',
       o.org_code,
       o.werks
from purchase.fixed_assets t
         left join sync_werk_org o on o.werks = t.bukrs
where t.menge > 0
#   and anln1 = '120010005725'
and
    org_code='00010499')a group by a.固定资产编码

select *
from sync_werk_org where werks=5000;

select *
from fixed_assets where bukrs=5000;