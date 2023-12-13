


select t8.*
from contract_master t1
         left join opposite t2 on t1.id = t2.contract_id
         left join credit t3 on t1.id = t3.contract_id
         left join variety t4 on t1.id = t4.contract_id
         left join bank t5 on t1.id = t5.contract_id
         left join pay t6 on t1.id = t6.contract_id
         left join fee t7 on t1.id = t7.contract_id
         left join charter t8 on t1.id = t7.contract_id;
