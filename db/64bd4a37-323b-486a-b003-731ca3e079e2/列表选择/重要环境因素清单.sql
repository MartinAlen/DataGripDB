# 重要环境因素清单
select m.company_name,
       s.id,
       s.factor_name,
       s.env_influence,
       s.tense,
       s.status,
       s.regulatory_measure,
       s.activity_product,
       s.equipment
from env_management_factor_evaluate m
         inner join env_management_factor_evaluate_child s on m.id = s.father_id
where m.flow_step = '归档'
  and s.conclusion = '重大环境因素';


# 环境因素识别评价
select *
from env_management_factor_evaluate;

# 环境因素识别评价-子表
select *
from env_management_factor_evaluate_child;