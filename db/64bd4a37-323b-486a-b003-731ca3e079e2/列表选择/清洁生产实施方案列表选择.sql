# 清除生产实施方案列表选择  是否过滤
select *
from env_management_product_work_plan_high

union

select *
from env_management_product_work_plan_low;