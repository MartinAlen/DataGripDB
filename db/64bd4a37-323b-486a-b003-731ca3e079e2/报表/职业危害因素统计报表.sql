# 危害岗位关联关系
select opf.point_id, op.org_id, op.id, op.inspection_post_name, lw.category_whys, lw.name_whys_xl
from oh_hazard_post op
         inner join oh_hazard_post_place oph on op.id = oph.father_id
         inner join oh_monitor_point omp on oph.hazard_place_id = omp.place_id
         inner join oh_point_factors opf on omp.id = opf.point_id
         inner join list_whys lw on opf.factors_id = lw.id
group by opf.point_id, op.org_id, op.id;


SELECT m.org_id
FROM basic_table_whys m
         INNER JOIN list_whys n
WHERE n.father_id = m.id;



SELECT n.*
FROM list_whys n
where name_whys_xl is not null
  and name_whys_xl != ''
  and category_whys is not null
  and category_whys != ''
# 内部
SELECT n.id             factor_id,
       n.category_whys,
       n.name_whys_xl,
       n.id             nid,
       f.id             check_id,
       f.is_eligible as is_eligible,
       f.create_date as check_time,
       f.org_id         org_idd
FROM list_whys n
         left join oh_internal_monitor_factors f on n.id = f.hazard_factors_id
where n.category_whys = 'A26A04A03'
  and n.name_whys_xl = 'A26A05A01'
  and f.create_date is not null
  and 1 = 1
  and 1 = 1
  and (f.create_date between '2023-01-04' and '2023-12-06');
select *
from oh_internal_monitor_factors;
# 外部
SELECT n.id               factor_id,
       n.category_whys,
       n.name_whys_xl,
       n.id               nid,
       f.id               check_id,
       CASE f.is_eligible
           WHEN 'A03A01A01' THEN
               '1'
           WHEN 'A03A01A02' THEN
               '0'
           ELSE
               '0' end as is_eligible,
       f.create_date,
       f.org_id           org_idd,
       'out'              type
FROM list_whys n
         left join outside_detect_harm f on n.id = f.hazardous_factors_id;



SELECT n.*, n.id nid, outs.id outid, outs.is_eligible, outs.create_date
FROM basic_table_whys m
         INNER JOIN list_whys n on m.id = n.father_id
         inner join outside_detect_harm outs on n.id = outs.hazardous_factors_id;


select id, is_eligible
from outside_detect_harm
# where hazardous_factors_id is not null ;
where id = '483f210f726c491db02df4052e6ce656';


SELECT count(1)
FROM basic_table_whys m
         INNER JOIN list_whys n
WHERE n.father_id = m.id
  and category_whys = '${categoryWhys}'
  and name_whys_xl = '${nameWhysXl}'
group by m.org_id;

SELECT m.org_id
FROM basic_table_whys m
         INNER JOIN list_whys n
WHERE n.father_id = m.id
  and category_whys = 'A26A04A03'
  and name_whys_xl = 'A26A05A01'
group by m.org_id


# 监测记录  内部
select s.is_eligible, s.id, hazard_factors_id,s.org_id
from oh_internal_monitor m
         inner join oh_internal_monitor_factors s on m.id = s.father_id
where s.id in
      ('fb83e3b7a8d29144f6dded6d9b1211e0', '53ba5cc26e8f029c3fd9c5a531721d5b', '1183e3b7a8d29l44f6dded6d9b1211e0')

# 监测记录 外部
select monitoring_points_id,is_eligible,s.id
from outside_detect m
         inner join outside_detect_harm s on m.id = s.father_id where m.org_id='00008051';


select *
from oh_internal_monitor_factors
where hazard_factors_id in ('
0d4e25ab60ec48debca91577dbe0fb08,12ce8b48bb444110a433a5d46c884c72,31f0ad5637894dc9abd9d62d52f0e5df,49ea051b49034e73a0b882b79169155c,5f888cbc9daf4c669554f6b225f5203a,6084cac8c8f9442dab0df9dd660e9eba,6c31eb8c990543e1a5672b9602be8d7d,7b38b645d3c247ca9cfa6f12af82cd32,8474ebffd5d44d16a49a0f9d8f94e77a,a6d346e182f54f9a9fd78047f862b9b7,c61f273adcce47ce9daea72659813a7d,e2a2ce94dcb14c0fa6d978e08f763725,fa21c65d099f4c7cbfb919d4bd883331,fbe6f6b3baa04c5bb9e9bd641b4b8297,fd87a6fd4be943e5948d0f41ac7f5bfc,ff01c5d4cff24bfe8f987c44cd05b20b');