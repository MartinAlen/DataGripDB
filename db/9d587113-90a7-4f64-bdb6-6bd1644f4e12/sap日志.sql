# 调用物资出库
select title, create_time, request, response, exception
from sap_execute_log
where title = '物资出库'
# where request like '%伏旭东领料出库%'
#   and sap_execute_log.response like '%4913209995%'
order by create_time desc
limit 10;

# 发票删除
select title, create_time, request, response, exception
from sap_execute_log
where title = '发票删除'
order by create_time desc
limit 10;

# 发票删除
select title, create_time, request, response, exception
from sap_execute_log
where title = '发票'
order by create_time desc
limit 10;

# 收货后冲销
select title, create_time, request, response, exception
from sap_execute_log
where title = '收货后冲销'
#   and request like '%1000221514%'
order by create_time desc
limit 100;

# 同步供应商信息
select title, create_time, request, response, exception
from sap_execute_log
where title = '同步供应商信息'
order by create_time desc
limit 10;


# 物料凭证冲销
select title, create_time, request, response, exception
from sap_execute_log
where title = '物料凭证冲销'
#                        and request like '%SBCK4010202305260075%'
order by create_time desc
limit 10;


# 创建采购订单
select title, create_time, request, response, exception
from sap_execute_log
where title = '创建连续采购订单'
#                        and request like '%SBCK4010202305260075%'
  and sap_execute_log.response like '%4500354772%'
order by create_time desc
limit 10;


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


select title, create_time, request, response, exception
from sap_execute_log
where
    title = '查询SAP库存'
# and request like '%1503%'
# and sap_execute_log.response like '%"I"%'
# sap_execute_log.response like '%4913096500%'
order by create_time desc
limit 10;


select title, create_time, request, response, exception
from sap_execute_log
where title  ='新增修改删除库位信息'
# and sap_execute_log.response like '%"I"%'
# sap_execute_log.response like '%4913096500%'
order by create_time desc
limit 10;
