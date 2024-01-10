select publish_time
from business_reserve_plan
where org_id = '00018024';

select m.*
from business_reserve_plan m
where plan_type is not null
  and ${if(len(orgIds) = 0,"1 = 1", "m.org_id in " + orgIds)}
  and ${if(len(orgId_s) = 0,"1 = 1", "m.org_id like '%" + orgId_s + "%'")}
order by plan_type

select m.*,s.*
from business_reserve_plan m
         left join business_drill_plan s on m.id = s.reserve_plan
where plan_type is not null
#   and ${if(len(orgIds) = 0,"1 = 1", "m.org_id in " + orgIds)}
#   and ${if(len(orgId_s) = 0,"1 = 1", "m.org_id like '%" + orgId_s + "%'")}
and m.org_id='10003892'
group by m.id;

select *
from business_drill_plan where reserve_plan='0c9019df7100df5325077a1ddddcc375';


select m.*,count(s.id)
from business_reserve_plan m
         left join business_drill_plan s on m.plan_name = s.plan_name
where plan_type is not null group by m.id;


# 演练
select *
from business_drill_plan;



select *
from ;



