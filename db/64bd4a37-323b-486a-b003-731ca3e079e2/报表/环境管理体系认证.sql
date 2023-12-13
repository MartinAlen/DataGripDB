# 环境管理体系认证
select company_name,flow_state,filling_time,org_id,standard_name,dept_id,user_id,certificate
from env_management_system_certification
where standard_name like '%GB/T 24001-2016/ISO 14001:%';

select *
from env_management_system_certification where org_id=''
