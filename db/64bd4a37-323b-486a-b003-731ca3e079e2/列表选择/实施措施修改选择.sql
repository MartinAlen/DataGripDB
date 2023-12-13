# 重点工作措施填报
select m.year,
       m.responsible_unit,
       m.responsible_person,
       m.file,
       s.id,
       s.focus_on_work,
       s.job_content,
       s.request,
       s.date,
       s.implementation_measure,
       s.implemented_by
from work_measures_filled m
         inner join work_task_preparation s on m.id = s.father_id where s.implementation_measure!='';