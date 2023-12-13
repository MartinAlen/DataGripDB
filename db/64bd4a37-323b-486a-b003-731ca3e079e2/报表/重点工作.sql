# 年度重点工作下达填报 主表
select *
from annual_priority
order by create_date desc;




update annual_priority
set org_id='00000001',
    dept_id='00000001',user_id='admin';

select *
from work_task_list;



# dce02c21dee58e9d89c0a6d15efee1ed

# 重点工作措施填报
select *
from work_measures_filled
# where id = '4562ac6fd8cf1cfbee9c428b1632a62a';
where serial = '20231117162104026';

select *
from work_task_preparation
where id = 'dce02c21dee58e9d89c0a6d15efee1ed';

# 工作反馈
select *
from work_task_feedback_filling;

# 工作反馈 子表
select *
from work_task_feedback;
# 工作任务措施修改填报
select *
from work_task_modification
where serial = '20231106171726675';

# 工作任务措施修改填报子表
select *
from list_measures_modification
where father_id = '740e3a8edb91421dae38e125b22a0100';