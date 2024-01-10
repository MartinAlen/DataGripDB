# 年度重点工作下达填报 主表
select *
from annual_priority
where serial = '20231219104249224'
order by create_date desc;



select *
from work_task_list
where serial = '20231219131601273'
;



# dce02c21dee58e9d89c0a6d15efee1ed

# 重点工作措施填报
select id,serial
from work_measures_filled
where 1 = 1
and id='-489226097815566328.0'
group by org_id;

#   and org_id = '00008051';

#   and year = 'A26A23A04'
#   and responsible_unit = '00008051'
#   and serial = '20231220193001913';
# order by create_date desc;

# 重点工作措施填报 子表
select implemented_by
from work_task_preparation
# where father_id = '7d1b1d219da7fcc7e3134e8ab6b54171'
where id = '3845459287350201712.0'
order by create_date desc;

# 工作反馈
select responsible_unit,org_id
from work_task_feedback_filling
order by create_date desc;

# 工作反馈 子表
select *
from work_task_feedback;
# 工作任务措施修改填报
select *
from work_task_modification
order by create_date desc;

# where serial = '20231106171726675';

# 工作任务措施修改填报子表
select *
from list_measures_modification
where father_id = '33125f4eeab649f694e6c2afd8682404';