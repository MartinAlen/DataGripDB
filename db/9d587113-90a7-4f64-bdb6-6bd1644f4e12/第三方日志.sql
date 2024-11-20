select *
from business_8b0j
where module_name = '电子商城-接收电子商城采购申请单'
order by create_date desc
limit 10;


select create_date, params, result, url, fail_reason
from business_8b0j
where module_name = '电子商城-采购申请单审批结果回传'
  and params like '%PR240221000025%'
order by create_date desc
limit 100;

select create_date, params, result, url, fail_reason
from business_8b0j
where module_name = '电子商城-电子商城采购订单同步'
order by create_date desc
limit 100;

select create_date, params, result, url, fail_reason
from business_8b0j
where module_name = '电子商城-电子商城发货单同步'
and params like '%INV240227000020%'
order by create_date desc
limit 100;


select type,create_date, params, result, url, fail_reason
from business_8b0j
where module_name like '%电子商城%'
and  business_8b0j.type = 'out'
and url like '%create%'
order by create_date desc
limit 100;

select type,create_date,status, params, result, url, fail_reason
from business_8b0j
where module_name = '电子商城-SAP采购订单号同步'
order by create_date desc
limit 100;


select *
from business_8b0j
# where business_8b0j.module_name =  '电子商城-获取比价记录'
where business_8b0j.url = 'http://172.17.29.130:8114/outer/requirement/listPriceParity'
# where business_8b0j.request_class_inner like  '%listPriceParity%'
order by create_date desc
limit 10;

