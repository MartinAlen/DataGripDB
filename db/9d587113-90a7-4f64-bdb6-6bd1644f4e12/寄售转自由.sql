# 主表
select *
from business_66o1;

# 明细
select *
from business_iy41;



select *
from business_66o1 m
         left join business_iy41 s on m.id = s.father_id;



