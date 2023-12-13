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


select *
from ele_shop_purchase_apply where apply_code='PO231102000001';

select *
from ele_shop_purchase_apply_detail where father_id='208be9569f09db9aacc31dd303951aff';

select *
from business_8b0j where id='52c14fbcd09f77597cOefe6f3d27a28a';