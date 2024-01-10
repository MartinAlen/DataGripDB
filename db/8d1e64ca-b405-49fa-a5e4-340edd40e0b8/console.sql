select m.*, s.*, '${orgId}' as currentOrgId
from business_reserve_plan m
         left join business_drill_plan s on m.id = s.reserve_plan
where plan_type is not null
  and ${if(len(orgIds) = 0,"1 = 1", "m.org_id in " + orgIds)}
  and s.plan_start_time > '${start_time}'
  and s.plan_end_time < '${end_time}'
group by m.id



select m.*,'${orgId}' as currentOrgId
from business_reserve_plan m
  left join business_drill_plan s on m.id = s.reserve_plan
where plan_type is not null
  and ${if(len(orgIds) = 0,"1 = 1", "m.org_id in " + orgIds)}
  and s.plan_start_time > '${start_time}'
  and s.plan_end_time < '${end_time}'
order by plan_type
