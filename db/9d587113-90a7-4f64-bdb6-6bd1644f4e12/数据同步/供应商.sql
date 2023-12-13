select *
from m_supplier
where  name1 like '%昆明新康电商贸有限公司%';
# where bukrs = '4110';

select count(1)
from m_supplier where create_time < '2023-06-15';


select *
from m_supplier
where bukrs ='4110'
order by create_time desc


select *
from sync_werk_org_copy1;
