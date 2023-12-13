# 环境因素识别列表选择
select *
from env_risk_investigation_and_identification_child
where id not in (select env_factor_child_id from env_management_factor_evaluate_child)



select *
from business_t80i order by sort_num;