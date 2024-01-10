select rain_level,serial
from flood_season_report where rain_level is not null;
;-- -. . -..- - / . -. - .-. -.--
select rain,serial
from flood_season_report where rain_level is not null;
;-- -. . -..- - / . -. - .-. -.--
update flood_season_report
set rain='A03A01A02'
where rain = 'A03A01A01';
;-- -. . -..- - / . -. - .-. -.--
update flood_season_report
set rain='A03A01A01'
where rain = 'A03A01A02';
;-- -. . -..- - / . -. - .-. -.--
delete
from flood_season_report
where flow_state=-10;
;-- -. . -..- - / . -. - .-. -.--
delete
from flood_season_report
where flow_state = -10;
;-- -. . -..- - / . -. - .-. -.--
select rain, serial
from flood_season_report
where flood_season_report.safety_environmental is null
   or flood_season_report.safety_environmental = '';
;-- -. . -..- - / . -. - .-. -.--
select *
from business_reserve_plan;
;-- -. . -..- - / . -. - .-. -.--
select m.org_id,
       m.monitoring_point,
       m.monitoring_type,
       s.standard_name,
       s.monitoring_frequency,
       time_date.emission_control_standard,
       time_date.monitoring_item,
       time_date.emission_upper_limit_standard,
       time_date.emission_lower_limit_standard,
       time_date.data_collection_time,
       time_date.rtd_value,
       time_date.unit
from environment_monitoring_point_maintenance m
         inner join environment_monitoring_item_maintenance s on m.id = s.father_id
         left join environment_monitoring_unusual_hourly_data time_date
                   on s.monitoring_item_code = time_date.monitoring_item_code
where 1 = 1;
;-- -. . -..- - / . -. - .-. -.--
select m.org_id,
       m.monitoring_point,
       m.monitoring_type,
       s.standard_name,
       s.monitoring_frequency,
       time_date.*
from environment_monitoring_unusual_hourly_data time_date
left join environment_monitoring_point_maintenance m on m.equipment_code = time_date.equipment_code
left join environment_monitoring_item_maintenance s on  m.id = s.father_id and s.monitoring_item_code = time_date.monitoring_item_code;
;-- -. . -..- - / . -. - .-. -.--
SELECT m.org_id, n.category_whys, n.name_whys_xl
FROM basic_table_whys m
         INNER JOIN list_whys n
WHERE n.father_id = m.id;
;-- -. . -..- - / . -. - .-. -.--
SELECT *
FROM basic_table_whys m
         INNER JOIN list_whys n
WHERE n.father_id = m.id;
;-- -. . -..- - / . -. - .-. -.--
SELECT *
FROM basic_table_whys m
         INNER JOIN list_whys n on m.id = n.father_id
WHERE (category_whys != null or category_whys != '')

  and (name_whys_xl != null or name_whys_xl != '');
;-- -. . -..- - / . -. - .-. -.--
SELECT category_whys,name_whys_xl
FROM basic_table_whys m
         INNER JOIN list_whys n on m.id = n.father_id
WHERE (category_whys != null or category_whys != '')

  and (name_whys_xl != null or name_whys_xl != '');
;-- -. . -..- - / . -. - .-. -.--
SELECT count(1)
FROM basic_table_whys m
         INNER JOIN list_whys n
WHERE n.father_id = m.id
  and category_whys = 'A26A04A03'
  and name_whys_xl = 'A26A05A01';
;-- -. . -..- - / . -. - .-. -.--
SELECT count(1)
FROM basic_table_whys m
         INNER JOIN list_whys n
WHERE n.father_id = m.id
  and category_whys = 'A26A04A03'
  and name_whys_xl = 'A26A05A01'
group by m.org_id;
;-- -. . -..- - / . -. - .-. -.--
SELECT m.org_id
FROM basic_table_whys m
         INNER JOIN list_whys n
WHERE n.father_id = m.id
  and category_whys = 'A26A04A03'
  and name_whys_xl = 'A26A05A01'
group by m.org_id;
;-- -. . -..- - / . -. - .-. -.--
select *
from oh_internal_monitor;
;-- -. . -..- - / . -. - .-. -.--
SELECT category_whys,name_whys_xl
FROM basic_table_whys m
         INNER JOIN list_whys n on m.id = n.father_id
WHERE (category_whys != null or category_whys != '')

  and (name_whys_xl != null or name_whys_xl != '')
and n.id='0db20e03d03ea47fded2720dd7213f04';
;-- -. . -..- - / . -. - .-. -.--
select *
from oh_internal_monitor m
         inner join oh_internal_monitor_factors s on m.id = s.father_id;
;-- -. . -..- - / . -. - .-. -.--
select *
from outside_detect m inner  join outside_detect_harm s on m.id=s.father_id;
;-- -. . -..- - / . -. - .-. -.--
SELECT category_whys, name_whys_xl,n.id
FROM basic_table_whys m
         INNER JOIN list_whys n on m.id = n.father_id
WHERE (category_whys != null or category_whys != '')

  and (name_whys_xl != null or name_whys_xl != '');
;-- -. . -..- - / . -. - .-. -.--
select *
from oh_internal_monitor_factors where hazard_factors_id in (SELECT n.id
FROM basic_table_whys m
         INNER JOIN list_whys n
WHERE n.father_id = m.id
  and category_whys = 'A26A04A03'
  and name_whys_xl = 'A26A05A01');
;-- -. . -..- - / . -. - .-. -.--
select *
from oh_internal_monitor_factors
where hazard_factors_id in ('
0d4e25ab60ec48debca91577dbe0fb08,12ce8b48bb444110a433a5d46c884c72,31f0ad5637894dc9abd9d62d52f0e5df,49ea051b49034e73a0b882b79169155c,5f888cbc9daf4c669554f6b225f5203a,6084cac8c8f9442dab0df9dd660e9eba,6c31eb8c990543e1a5672b9602be8d7d,7b38b645d3c247ca9cfa6f12af82cd32,8474ebffd5d44d16a49a0f9d8f94e77a,a6d346e182f54f9a9fd78047f862b9b7,c61f273adcce47ce9daea72659813a7d,e2a2ce94dcb14c0fa6d978e08f763725,fa21c65d099f4c7cbfb919d4bd883331,fbe6f6b3baa04c5bb9e9bd641b4b8297,fd87a6fd4be943e5948d0f41ac7f5bfc,ff01c5d4cff24bfe8f987c44cd05b20b');
;-- -. . -..- - / . -. - .-. -.--
SELECT category_whys, name_whys_xl, n.id,f.id
FROM basic_table_whys m
         INNER JOIN list_whys n on m.id = n.father_id
         left join oh_internal_monitor_factors f on n.id = f.hazard_factors_id
WHERE (category_whys != null or category_whys != '')

  and (name_whys_xl != null or name_whys_xl != '');
;-- -. . -..- - / . -. - .-. -.--
select s.is_eligible
from oh_internal_monitor m
         inner join oh_internal_monitor_factors s on m.id = s.father_id;
;-- -. . -..- - / . -. - .-. -.--
select s.is_eligible
from oh_internal_monitor m
         inner join oh_internal_monitor_factors s on m.id = s.father_id
where s.id in ('5083a24fbba0b2fe12e62fe43889c8be','53ba5cc26e8f029c3fd9c5a531721d5b');
;-- -. . -..- - / . -. - .-. -.--
select s.is_eligible,s.id
from oh_internal_monitor m
         inner join oh_internal_monitor_factors s on m.id = s.father_id
where s.id in ('5083a24fbba0b2fe12e62fe43889c8be','53ba5cc26e8f029c3fd9c5a531721d5b');
;-- -. . -..- - / . -. - .-. -.--
select *
from oh_internal_monitor_factors
where hazard_factors_id in ('fb83e3b7a8d29144f6dded6d9b1211e0');
;-- -. . -..- - / . -. - .-. -.--
select s.is_eligible,s.id
from oh_internal_monitor m
         inner join oh_internal_monitor_factors s on m.id = s.father_id
where s.id in ('fb83e3b7a8d29144f6dded6d9b1211e0');
;-- -. . -..- - / . -. - .-. -.--
select s.is_eligible,s.id
from oh_internal_monitor m
         inner join oh_internal_monitor_factors s on m.id = s.father_id
where s.id in ('fb83e3b7a8d29144f6dded6d9b1211e0','53ba5cc26e8f029c3fd9c5a531721d5b');
;-- -. . -..- - / . -. - .-. -.--
select s.is_eligible,s.id
from oh_internal_monitor m
         inner join oh_internal_monitor_factors s on m.id = s.father_id
where s.id in ('fb83e3b7a8d29144f6dded6d9b1211e0','53ba5cc26e8f029c3fd9c5a531721d5b','fb83e3b7a8d29l44f6dded6d9b1211e0');
;-- -. . -..- - / . -. - .-. -.--
select s.is_eligible,s.id
from oh_internal_monitor m
         inner join oh_internal_monitor_factors s on m.id = s.father_id
where s.id in ('fb83e3b7a8d29144f6dded6d9b1211e0','53ba5cc26e8f029c3fd9c5a531721d5b','1183e3b7a8d29l44f6dded6d9b1211e0');
;-- -. . -..- - / . -. - .-. -.--
select harm
from outside_detect m
         inner join outside_detect_harm s on m.id = s.father_id;
;-- -. . -..- - / . -. - .-. -.--
SELECT category_whys, name_whys_xl, n.id,f.id
FROM basic_table_whys m
         INNER JOIN list_whys n on m.id = n.father_id
         left join oh_internal_monitor_factors f on n.id = f.hazard_factors_id
WHERE (category_whys != null or category_whys != '')

  and (name_whys_xl != null or name_whys_xl != '')
and n.id='1bfa35c01b19042801505797da7e0281';
;-- -. . -..- - / . -. - .-. -.--
SELECT category_whys, name_whys_xl, n.id,f.id
FROM basic_table_whys m
         INNER JOIN list_whys n on m.id = n.father_id
         left join oh_internal_monitor_factors f on n.id = f.hazard_factors_id
         left join outside_detect_harm outs on n.id = outs.hazard_factors_id

WHERE (category_whys != null or category_whys != '')

  and (name_whys_xl != null or name_whys_xl != '')
and n.id;
;-- -. . -..- - / . -. - .-. -.--
SELECT category_whys, name_whys_xl, n.id, f.id
FROM basic_table_whys m
         INNER JOIN list_whys n on m.id = n.father_id
         left join oh_internal_monitor_factors f on n.id = f.hazard_factors_id
         left join outside_detect_harm outs on n.id = outs.hazard_factors_id

WHERE (category_whys != null or category_whys != '')

  and (name_whys_xl != null or name_whys_xl != '')
  and n.id;
;-- -. . -..- - / . -. - .-. -.--
SELECT category_whys, name_whys_xl, n.id, f.id
FROM basic_table_whys m
         INNER JOIN list_whys n on m.id = n.father_id
         left join oh_internal_monitor_factors f on n.id = f.hazard_factors_id
         left join outside_detect_harm outs on n.id = outs.hazardous_factors_id

WHERE (category_whys != null or category_whys != '')

  and (name_whys_xl != null or name_whys_xl != '')
  and n.id;
;-- -. . -..- - / . -. - .-. -.--
SELECT n.*, f.*, n.id nid, f.id fid, outs.id outid, outs.is_eligible,f.create_date
FROM basic_table_whys m
         INNER JOIN list_whys n on m.id = n.father_id
         left join oh_internal_monitor_factors f on n.id = f.hazard_factors_id
         left join outside_detect_harm outs on n.id = outs.hazardous_factors_id

WHERE (category_whys != null or category_whys != '')

  and (name_whys_xl != null or name_whys_xl != '')
  and m.org_id = '${orgId_s}'
  and f.create_date between '${start_time}' and '${end_time}'
  and outs.create_date between '${start_time}' and '${end_time}';
;-- -. . -..- - / . -. - .-. -.--
SELECT n.*, f.*, n.id nid, f.id fid, outs.id outid, outs.is_eligible,f.create_date
FROM basic_table_whys m
         INNER JOIN list_whys n on m.id = n.father_id
         left join oh_internal_monitor_factors f on n.id = f.hazard_factors_id
         left join outside_detect_harm outs on n.id = outs.hazardous_factors_id

WHERE (category_whys != null or category_whys != '')

  and (name_whys_xl != null or name_whys_xl != '');
;-- -. . -..- - / . -. - .-. -.--
SELECT n.*, f.*, n.id nid, f.id fid, outs.id outid, outs.is_eligible
FROM basic_table_whys m
         INNER JOIN list_whys n on m.id = n.father_id
         left join oh_internal_monitor_factors f on n.id = f.hazard_factors_id
         left join outside_detect_harm outs on n.id = outs.hazardous_factors_id

WHERE (category_whys != null or category_whys != '')
  and (name_whys_xl != null or name_whys_xl != '')

  and 1 = 1
  and 1 = 1
  and f.create_date between '2023-01-04' and '2023-12-04'
  and outs.create_date between '2023-01-04' and '2023-12-04';
;-- -. . -..- - / . -. - .-. -.--
SELECT n.*, f.*, n.id nid, f.id fid, outs.id outid, outs.is_eligible
FROM basic_table_whys m
         INNER JOIN list_whys n on m.id = n.father_id
         left join oh_internal_monitor_factors f on n.id = f.hazard_factors_id
         left join outside_detect_harm outs on n.id = outs.hazardous_factors_id

WHERE (category_whys != null or category_whys != '')
  and (name_whys_xl != null or name_whys_xl != '')

  and 1 = 1
  and 1 = 1;
;-- -. . -..- - / . -. - .-. -.--
SELECT n.*, f.*, n.id nid, f.id fid, outs.id outid, outs.is_eligible
FROM basic_table_whys m
         INNER JOIN list_whys n on m.id = n.father_id
         left join oh_internal_monitor_factors f on n.id = f.hazard_factors_id
         left join outside_detect_harm outs on n.id = outs.hazardous_factors_id

WHERE (category_whys != null or category_whys != '')
  and (name_whys_xl != null or name_whys_xl != '')

  and 1 = 1
  and 1 = 1
  and (f.create_date between '2023-01-04' and '2023-12-04'
  or outs.create_date between '2023-01-04' and '2023-12-04');
;-- -. . -..- - / . -. - .-. -.--
SELECT n.*, f.*, n.id nid, f.id fid, outs.id outid, outs.is_eligible
FROM basic_table_whys m
         INNER JOIN list_whys n on m.id = n.father_id
         left join oh_internal_monitor_factors f on n.id = f.hazard_factors_id
         left join outside_detect_harm outs on n.id = outs.hazardous_factors_id

WHERE (category_whys != null or category_whys != '')
  and (name_whys_xl != null or name_whys_xl != '');
;-- -. . -..- - / . -. - .-. -.--
SELECT n.*, f.*, n.id nid, f.id fid, outs.id outid, outs.is_eligible,f.create_date
FROM basic_table_whys m
         INNER JOIN list_whys n on m.id = n.father_id
         left join oh_internal_monitor_factors f on n.id = f.hazard_factors_id
         left join outside_detect_harm outs on n.id = outs.hazardous_factors_id

WHERE (category_whys != null or category_whys != '')
  and (name_whys_xl != null or name_whys_xl != '')

  and 1 = 1
  and 1 = 1
  and (f.create_date between '2023-01-04' and '2023-12-04'
  or outs.create_date between '2023-01-04' and '2023-12-04');
;-- -. . -..- - / . -. - .-. -.--
SELECT n.*, f.*, n.id nid, f.id fid, outs.id outid, outs.is_eligible,f.create_date
FROM basic_table_whys m
         INNER JOIN list_whys n on m.id = n.father_id
         left join oh_internal_monitor_factors f on n.id = f.hazard_factors_id
         left join outside_detect_harm outs on n.id = outs.hazardous_factors_id

WHERE (category_whys != null or category_whys != '')
  and (name_whys_xl != null or name_whys_xl != '')
and f.create_date!=null;
;-- -. . -..- - / . -. - .-. -.--
SELECT n.*, f.*, n.id nid, f.id fid, outs.id outid, outs.is_eligible,f.create_date
FROM basic_table_whys m
         INNER JOIN list_whys n on m.id = n.father_id
         left join oh_internal_monitor_factors f on n.id = f.hazard_factors_id
         left join outside_detect_harm outs on n.id = outs.hazardous_factors_id

WHERE (category_whys != null or category_whys != '')
  and (name_whys_xl != null or name_whys_xl != '')
and f.create_date is not null;
;-- -. . -..- - / . -. - .-. -.--
SELECT n.*, f.*, n.id nid, f.id fid, outs.id outid, outs.is_eligible,f.create_date
FROM basic_table_whys m
         INNER JOIN list_whys n on m.id = n.father_id
         left join oh_internal_monitor_factors f on n.id = f.hazard_factors_id
         left join outside_detect_harm outs on n.id = outs.hazardous_factors_id

WHERE (category_whys != null or category_whys != '')
  and (name_whys_xl != null or name_whys_xl != '')
and f.create_date is not null
  and 1 = 1
  and 1 = 1
  and (f.create_date between '2023-01-04' and '2023-12-04 59:59:59'
  or outs.create_date between '2023-01-04' and '2023-12-04');
;-- -. . -..- - / . -. - .-. -.--
SELECT n.*, f.*, n.id nid, f.id fid, outs.id outid, outs.is_eligible,f.create_date
FROM basic_table_whys m
         INNER JOIN list_whys n on m.id = n.father_id
         left join oh_internal_monitor_factors f on n.id = f.hazard_factors_id
         left join outside_detect_harm outs on n.id = outs.hazardous_factors_id

WHERE (category_whys != null or category_whys != '')
  and (name_whys_xl != null or name_whys_xl != '')
and f.create_date is not null
  and 1 = 1
  and 1 = 1
  and (f.create_date between '2023-01-04' and '2023-12-04 59:59'
  or outs.create_date between '2023-01-04' and '2023-12-04');
;-- -. . -..- - / . -. - .-. -.--
SELECT n.*, f.*, n.id nid, f.id fid, outs.id outid, outs.is_eligible,f.create_date
FROM basic_table_whys m
         INNER JOIN list_whys n on m.id = n.father_id
         left join oh_internal_monitor_factors f on n.id = f.hazard_factors_id
         left join outside_detect_harm outs on n.id = outs.hazardous_factors_id

WHERE (category_whys != null or category_whys != '')
  and (name_whys_xl != null or name_whys_xl != '')
and f.create_date is not null
  and 1 = 1
  and 1 = 1
  and f.create_date between '2023-01-04' and '2023-12-04 59:59';
;-- -. . -..- - / . -. - .-. -.--
SELECT n.*, f.*, n.id nid, f.id fid, outs.id outid, outs.is_eligible,f.create_date
FROM basic_table_whys m
         INNER JOIN list_whys n on m.id = n.father_id
         left join oh_internal_monitor_factors f on n.id = f.hazard_factors_id
         left join outside_detect_harm outs on n.id = outs.hazardous_factors_id

WHERE (category_whys != null or category_whys != '')
  and (name_whys_xl != null or name_whys_xl != '')
and f.create_date is not null
  and 1 = 1
  and 1 = 1
  and f.create_date > '2023-01-04' and f.create_date <'2023-12-04 59:59';
;-- -. . -..- - / . -. - .-. -.--
SELECT n.*, f.*, n.id nid, f.id fid, outs.id outid, outs.is_eligible,f.create_date
FROM basic_table_whys m
         INNER JOIN list_whys n on m.id = n.father_id
         left join oh_internal_monitor_factors f on n.id = f.hazard_factors_id
         left join outside_detect_harm outs on n.id = outs.hazardous_factors_id

WHERE (category_whys != null or category_whys != '')
  and (name_whys_xl != null or name_whys_xl != '')
and f.create_date is not null
  and 1 = 1
  and 1 = 1
  and f.create_date > '2023-01-04' and f.create_date <'2023-12-04 23:59:00';
;-- -. . -..- - / . -. - .-. -.--
SELECT n.*, f.*, n.id nid, f.id fid, outs.id outid, outs.is_eligible,f.create_date
FROM basic_table_whys m
         INNER JOIN list_whys n on m.id = n.father_id
         left join oh_internal_monitor_factors f on n.id = f.hazard_factors_id
         left join outside_detect_harm outs on n.id = outs.hazardous_factors_id

WHERE (category_whys != null or category_whys != '')
  and (name_whys_xl != null or name_whys_xl != '')
and f.create_date is not null
  and 1 = 1
  and 1 = 1
  and (f.create_date between '2023-01-04' and '2023-12-04 23:59:59'
  or outs.create_date between '2023-01-04' and '2023-12-04');
;-- -. . -..- - / . -. - .-. -.--
SELECT n.*, n.id nid, outs.id outid, outs.is_eligible
FROM basic_table_whys m
         INNER JOIN list_whys n on m.id = n.father_id
         left join outside_detect_harm outs on n.id = outs.hazardous_factors_id;
;-- -. . -..- - / . -. - .-. -.--
select *
from outside_detect_harm where hazardous_factors_id is not null;
;-- -. . -..- - / . -. - .-. -.--
select s.is_eligible, s.id
from oh_internal_monitor m
         inner join oh_internal_monitor_factors s on m.id = s.father_id
where s.id in
      ('fb83e3b7a8d29144f6dded6d9b1211e0', '53ba5cc26e8f029c3fd9c5a531721d5b', '1183e3b7a8d29l44f6dded6d9b1211e0');
;-- -. . -..- - / . -. - .-. -.--
select s.is_eligible, s.id,hazard_factors_id
from oh_internal_monitor m
         inner join oh_internal_monitor_factors s on m.id = s.father_id
where s.id in
      ('fb83e3b7a8d29144f6dded6d9b1211e0', '53ba5cc26e8f029c3fd9c5a531721d5b', '1183e3b7a8d29l44f6dded6d9b1211e0');
;-- -. . -..- - / . -. - .-. -.--
SELECT n.*, f.*, n.id nid, f.id fid, outs.id outid, outs.is_eligible,f.create_date
FROM basic_table_whys m
         INNER JOIN list_whys n on m.id = n.father_id
         left join oh_internal_monitor_factors f on n.id = f.hazard_factors_id
         left join outside_detect_harm outs on n.id = outs.hazardous_factors_id

WHERE (category_whys != null or category_whys != '')
  and (name_whys_xl != null or name_whys_xl != '')
  and m.org_id = '${orgId_s}'
  and f.create_date between '${start_time}' and '${end_time}'
  and outs.create_date between '${start_time}' and '${end_time}';
;-- -. . -..- - / . -. - .-. -.--
SELECT n.*, f.*, n.id nid, f.id fid, outs.id outid, outs.is_eligible,f.create_date
FROM basic_table_whys m
         INNER JOIN list_whys n on m.id = n.father_id
         left join oh_internal_monitor_factors f on n.id = f.hazard_factors_id
         left join outside_detect_harm outs on n.id = outs.hazardous_factors_id

WHERE (category_whys != null or category_whys != '')
  and (name_whys_xl != null or name_whys_xl != '');
;-- -. . -..- - / . -. - .-. -.--
SELECT n.*, n.id nid, outs.id outid, outs.is_eligible
FROM basic_table_whys m
         INNER JOIN list_whys n on m.id = n.father_id
         inner join outside_detect_harm outs on n.id = outs.hazardous_factors_id;
;-- -. . -..- - / . -. - .-. -.--
SELECT n.*, n.id nid, outs.id outid, outs.is_eligible,outs.create_date
FROM basic_table_whys m
         INNER JOIN list_whys n on m.id = n.father_id
         inner join outside_detect_harm outs on n.id = outs.hazardous_factors_id;
;-- -. . -..- - / . -. - .-. -.--
select *
from outside_detect_harm
# where hazardous_factors_id is not null ;
where id='
483f210f726c491db02df4052e6ce656';
;-- -. . -..- - / . -. - .-. -.--
select *
from outside_detect_harm
# where hazardous_factors_id is not null ;
where id='483f210f726c491db02df4052e6ce656';
;-- -. . -..- - / . -. - .-. -.--
select id,is_eligible
from outside_detect_harm
# where hazardous_factors_id is not null ;
where id='483f210f726c491db02df4052e6ce656';
;-- -. . -..- - / . -. - .-. -.--
SELECT n.*, n.id nid, f.id check_id, f.is_eligible as is_eligible, f.create_date, f.org_id org_idd
FROM list_whys n
         left join oh_internal_monitor_factors f on n.id = f.hazard_factors_id
union
# 外部
SELECT n.*, n.id nid, f.id check_id, f.is_eligible as is_eligible, f.create_date, f.org_id org_idd
FROM list_whys n
         left join outside_detect_harm f on n.id = f.hazardous_factors_id;
;-- -. . -..- - / . -. - .-. -.--
SELECT n.*, n.id nid, f.id check_id, f.is_eligible as is_eligible, f.create_date, f.org_id org_idd,'inner' type
FROM list_whys n
         left join oh_internal_monitor_factors f on n.id = f.hazard_factors_id
union
# 外部
SELECT n.*, n.id nid, f.id check_id, f.is_eligible as is_eligible, f.create_date, f.org_id org_idd,'out' type
FROM list_whys n
         left join outside_detect_harm f on n.id = f.hazardous_factors_id;
;-- -. . -..- - / . -. - .-. -.--
select *
from (
         SELECT n.*,
                n.id             nid,
                f.id             check_id,
                f.is_eligible as is_eligible,
                f.create_date,
                f.org_id         org_idd,
                'inner'          type
         FROM list_whys n
                  left join oh_internal_monitor_factors f on n.id = f.hazard_factors_id
         union

         SELECT n.*, n.id nid, f.id check_id, f.is_eligible as is_eligible, f.create_date, f.org_id org_idd, 'out' type
         FROM list_whys n
                  left join outside_detect_harm f on n.id = f.hazardous_factors_id) m
WHERE (category_whys != null or category_whys != '')
  and (name_whys_xl != null or name_whys_xl != '')

  and 1 = 1
  and 1 = 1
  and (create_date between '2023-01-04' and '2023-12-06');
;-- -. . -..- - / . -. - .-. -.--
select *
from (
         SELECT n.*,
                n.id             nid,
                f.id             check_id,
                f.is_eligible as is_eligible,
                f.create_date as check_time,
                f.org_id         org_idd,
                'inner'          type
         FROM list_whys n
                  left join oh_internal_monitor_factors f on n.id = f.hazard_factors_id
         union

         SELECT n.*, n.id nid, f.id check_id, f.is_eligible as is_eligible, f.create_date, f.org_id org_idd, 'out' type
         FROM list_whys n
                  left join outside_detect_harm f on n.id = f.hazardous_factors_id) m
WHERE (category_whys != null or category_whys != '')
  and (name_whys_xl != null or name_whys_xl != '')

  and 1 = 1
  and 1 = 1
  and (check_time between '2023-01-04' and '2023-12-06');
;-- -. . -..- - / . -. - .-. -.--
select *
from (SELECT n.id             factor_id,
             n.category_whys,
             n.name_whys_xl,
             n.id             nid,
             f.id             check_id,
             f.is_eligible as is_eligible,
             f.create_date as check_time,
             f.org_id         org_idd,
             'inner'          type
      FROM list_whys n
               left join oh_internal_monitor_factors f on n.id = f.hazard_factors_id
      union

      SELECT n.id                    factor_id,
             n.category_whys,
             n.name_whys_xl,
             n.id                    nid,
             f.id                    check_id,
             CASE f.is_eligible
                 WHEN 'A03A01A01' THEN
                     '1'
                 WHEN 'A03A01A02' THEN
                     '0'
                 ELSE
                     'OTHERS' end as is_eligible,
             f.create_date,
             f.org_id                org_idd,
             'out'                   type
      FROM list_whys n
               left join outside_detect_harm f on n.id = f.hazardous_factors_id) m
WHERE (category_whys != null or category_whys != '')
  and (name_whys_xl != null or name_whys_xl != '')

  and 1 = 1
  and 1 = 1
  and (check_time between '2023-01-04' and '2023-12-06');
;-- -. . -..- - / . -. - .-. -.--
select *
from (SELECT n.id             factor_id,
             n.category_whys,
             n.name_whys_xl,
             n.id             nid,
             f.id             check_id,
             f.is_eligible as is_eligible,
             f.create_date as check_time,
             f.org_id         org_idd,
             'inner'          type
      FROM list_whys n
               left join oh_internal_monitor_factors f on n.id = f.hazard_factors_id
      union

      SELECT n.id                    factor_id,
             n.category_whys,
             n.name_whys_xl,
             n.id                    nid,
             f.id                    check_id,
             CASE f.is_eligible
                 WHEN 'A03A01A01' THEN
                     '1'
                 WHEN 'A03A01A02' THEN
                     '0'
                 ELSE
                     '0' end as is_eligible,
             f.create_date,
             f.org_id                org_idd,
             'out'                   type
      FROM list_whys n
               left join outside_detect_harm f on n.id = f.hazardous_factors_id) m
WHERE (category_whys != null or category_whys != '')
  and (name_whys_xl != null or name_whys_xl != '')

  and 1 = 1
  and 1 = 1
  and (check_time between '2023-01-04' and '2023-12-06');
;-- -. . -..- - / . -. - .-. -.--
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
  and 1 = 1
  and 1 = 1
  and (f.create_date between '2023-01-04' and '2023-12-06');
;-- -. . -..- - / . -. - .-. -.--
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
  and f.create_date is not null;
;-- -. . -..- - / . -. - .-. -.--
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
  and n.name_whys_xl = 'A26A05A01';
;-- -. . -..- - / . -. - .-. -.--
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
where
#     n.category_whys = 'A26A04A03'
#   and n.name_whys_xl = 'A26A05A01'
#   and f.create_date is not null
   f.id is not null;
;-- -. . -..- - / . -. - .-. -.--
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
where
    n.category_whys = 'A26A04A03'
  and n.name_whys_xl = 'A26A05A03'
#   and f.create_date is not null
  and 1 = 1
  and 1 = 1
  and (f.create_date between '2023-01-04' and '2023-12-06');
;-- -. . -..- - / . -. - .-. -.--
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
         left join outside_detect_harm f on n.id = f.hazardous_factors_id
where n.category_whys = 'A26A04A03'
  and n.name_whys_xl = 'A26A05A03';
;-- -. . -..- - / . -. - .-. -.--
SELECT n.*
FROM list_whys n
where name_whys_xl is not null
  and name_whys_xl != ''
  and category_whys is not null
  and category_whys != '';
;-- -. . -..- - / . -. - .-. -.--
select *
from oh_internal_monitor_factors;
;-- -. . -..- - / . -. - .-. -.--
select *
from oh_hazard_post;
;-- -. . -..- - / . -. - .-. -.--
select *
from oh_hazard_post_place;
;-- -. . -..- - / . -. - .-. -.--
select *
from oh_hazard_post op inner  join

 oh_hazard_post_place oph on op.id=oph.father_id;
;-- -. . -..- - / . -. - .-. -.--
select *
from oh_hazard_post op left  join
 oh_hazard_post_place oph on op.id=oph.father_id;
;-- -. . -..- - / . -. - .-. -.--
select *
from oh_hazard_post op inner  join
 oh_hazard_post_place oph on op.id=oph.father_id;
;-- -. . -..- - / . -. - .-. -.--
select *
from oh_hazard_post op
         inner join oh_hazard_post_place oph on op.id = oph.father_id
         inner join oh_monitor_point omp on oph.id = omp.place_id
         inner join oh_point_factors opf on oph.id = opf.point_id;
;-- -. . -..- - / . -. - .-. -.--
select *
from oh_hazard_post op
         inner join oh_hazard_post_place oph on op.id = oph.father_id
         inner join oh_monitor_point omp on oph.id = omp.place_id
         inner join oh_point_factors opf on omp.id = opf.point_id;
;-- -. . -..- - / . -. - .-. -.--
select *
from oh_hazard_post op
         inner join oh_hazard_post_place oph on op.id = oph.father_id;
;-- -. . -..- - / . -. - .-. -.--
select *
from oh_hazard_post op
         inner join oh_hazard_post_place oph on op.id = oph.father_id
         inner join oh_monitor_point omp on oph.id = omp.place_id;
;-- -. . -..- - / . -. - .-. -.--
select *
from oh_monitor_point;
;-- -. . -..- - / . -. - .-. -.--
select *
from oh_hazard_post_place where id='1b6d052fb7993b04721455603e18ed93';
;-- -. . -..- - / . -. - .-. -.--
select *
from oh_hazard_post op
         inner join oh_hazard_post_place oph on op.id = oph.father_id
         inner join oh_monitor_point omp on oph.hazard_place_id = omp.place_id
         inner join oh_point_factors opf on omp.id = opf.point_id;
;-- -. . -..- - / . -. - .-. -.--
select omp.id,op.*
from oh_hazard_post op
         inner join oh_hazard_post_place oph on op.id = oph.father_id
         inner join oh_monitor_point omp on oph.hazard_place_id = omp.place_id
         inner join oh_point_factors opf on omp.id = opf.point_id;
;-- -. . -..- - / . -. - .-. -.--
select omp.id,op.id,op.inspection_post_name
from oh_hazard_post op
         inner join oh_hazard_post_place oph on op.id = oph.father_id
         inner join oh_monitor_point omp on oph.hazard_place_id = omp.place_id
         inner join oh_point_factors opf on omp.id = opf.point_id;
;-- -. . -..- - / . -. - .-. -.--
select opf.point_id,op.org_id,op.id
from oh_hazard_post op
         inner join oh_hazard_post_place oph on op.id = oph.father_id
         inner join oh_monitor_point omp on oph.hazard_place_id = omp.place_id
         inner join oh_point_factors opf on omp.id = opf.point_id;
;-- -. . -..- - / . -. - .-. -.--
select distinct (opf.point_id,op.org_id,op.id)
from oh_hazard_post op
         inner join oh_hazard_post_place oph on op.id = oph.father_id
         inner join oh_monitor_point omp on oph.hazard_place_id = omp.place_id
         inner join oh_point_factors opf on omp.id = opf.point_id;
;-- -. . -..- - / . -. - .-. -.--
select opf.point_id, op.org_id, op.id
from oh_hazard_post op
         inner join oh_hazard_post_place oph on op.id = oph.father_id
         inner join oh_monitor_point omp on oph.hazard_place_id = omp.place_id
         inner join oh_point_factors opf on omp.id = opf.point_id;
;-- -. . -..- - / . -. - .-. -.--
select opf.point_id, op.org_id, op.id,op.inspection_post_name
from oh_hazard_post op
         inner join oh_hazard_post_place oph on op.id = oph.father_id
         inner join oh_monitor_point omp on oph.hazard_place_id = omp.place_id
         inner join oh_point_factors opf on omp.id = opf.point_id;
;-- -. . -..- - / . -. - .-. -.--
select opf.point_id, op.org_id, op.id, op.inspection_post_name
from oh_hazard_post op
         inner join oh_hazard_post_place oph on op.id = oph.father_id
         inner join oh_monitor_point omp on oph.hazard_place_id = omp.place_id
         inner join oh_point_factors opf on omp.id = opf.point_id
group by opf.point_id, op.org_id, op.id;
;-- -. . -..- - / . -. - .-. -.--
select opf.point_id, op.org_id, op.id, op.inspection_post_name
from oh_hazard_post op
         inner join oh_hazard_post_place oph on op.id = oph.father_id
         inner join oh_monitor_point omp on oph.hazard_place_id = omp.place_id
         inner join oh_point_factors opf on omp.id = opf.point_id
         inner join list_whys lw on opf.point_id=lw.id
group by opf.point_id, op.org_id, op.id;
;-- -. . -..- - / . -. - .-. -.--
select opf.point_id, op.org_id, op.id, op.inspection_post_name
from oh_hazard_post op
         inner join oh_hazard_post_place oph on op.id = oph.father_id
         inner join oh_monitor_point omp on oph.hazard_place_id = omp.place_id
         inner join oh_point_factors opf on omp.id = opf.point_id
         inner join list_whys lw on opf.factors_id=lw.id
group by opf.point_id, op.org_id, op.id;
;-- -. . -..- - / . -. - .-. -.--
select opf.point_id, op.org_id, op.id, op.inspection_post_name,lw.category_whys,lw.name_whys_xl
from oh_hazard_post op
         inner join oh_hazard_post_place oph on op.id = oph.father_id
         inner join oh_monitor_point omp on oph.hazard_place_id = omp.place_id
         inner join oh_point_factors opf on omp.id = opf.point_id
         inner join list_whys lw on opf.factors_id=lw.id
group by opf.point_id, op.org_id, op.id;
;-- -. . -..- - / . -. - .-. -.--
SELECT m.org_id
FROM basic_table_whys m
         INNER JOIN list_whys n
WHERE n.father_id = m.id;
;-- -. . -..- - / . -. - .-. -.--
select monitoring_points_id
from outside_detect m
         inner join outside_detect_harm s on m.id = s.father_id;
;-- -. . -..- - / . -. - .-. -.--
select monitoring_points_id
from outside_detect m
         inner join outside_detect_harm s on m.id = s.father_id where m.org_id='00008051';
;-- -. . -..- - / . -. - .-. -.--
select monitoring_points_id,is_eligible,m.id
from outside_detect m
         inner join outside_detect_harm s on m.id = s.father_id where m.org_id='00008051';
;-- -. . -..- - / . -. - .-. -.--
select monitoring_points_id,is_eligible,s.id
from outside_detect m
         inner join outside_detect_harm s on m.id = s.father_id where m.org_id='00008051';
;-- -. . -..- - / . -. - .-. -.--
SELECT '00008051' as org_id,n.id               factor_id,
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
         left join outside_detect_harm f on n.id = f.hazardous_factors_id
where n.category_whys = 'A26A04A03'
  and n.name_whys_xl = 'A26A05A03'
  and 1 = 1
  and f.org_id = ('00008051','00020973')
  and (f.create_date between '2023-01-04' and '2023-12-06');
;-- -. . -..- - / . -. - .-. -.--
SELECT '00008051' as org_id,n.id               factor_id,
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
         left join outside_detect_harm f on n.id = f.hazardous_factors_id
where n.category_whys = 'A26A04A03'
  and n.name_whys_xl = 'A26A05A03'
  and 1 = 1
  and f.org_id = ('00008051','00020973');
;-- -. . -..- - / . -. - .-. -.--
SELECT '00008051' as org_iddd,n.id               factor_id,
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
         left join outside_detect_harm f on n.id = f.hazardous_factors_id
where n.category_whys = 'A26A04A03'
  and n.name_whys_xl = 'A26A05A03'
  and 1 = 1
  and f.org_id = ('00008051','00020973')
  and (f.create_date between '2023-01-04' and '2023-12-06');
;-- -. . -..- - / . -. - .-. -.--
SELECT '00008051' as org_iddd,n.id               factor_id,
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
         left join outside_detect_harm f on n.id = f.hazardous_factors_id
where n.category_whys = 'A26A04A03'
  and n.name_whys_xl = 'A26A05A03';
;-- -. . -..- - / . -. - .-. -.--
SELECT '00008051' as org_iddd,n.id               factor_id,
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
         left join outside_detect_harm f on n.id = f.hazardous_factors_id
where n.category_whys = 'A26A04A03'
  and n.name_whys_xl = 'A26A05A03'
  and 1 = 1;
;-- -. . -..- - / . -. - .-. -.--
SELECT '00008051' as org_id,n.id               factor_id,
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
         left join outside_detect_harm f on n.id = f.hazardous_factors_id
where n.category_whys = 'A26A04A03'
  and n.name_whys_xl = 'A26A05A03'
  and f.org_id in ('00008051','00020973')
  and f.org_id = 00008051
  and (f.create_date between '2023-01-04' and '2023-12-06');
;-- -. . -..- - / . -. - .-. -.--
SELECT '00008051' as org_id,n.id               factor_id,
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
         left join outside_detect_harm f on n.id = f.hazardous_factors_id
where n.category_whys = 'A26A04A03'
  and n.name_whys_xl = 'A26A05A03'
  and f.org_id in ('00008051','00020973');
;-- -. . -..- - / . -. - .-. -.--
select *
from outside_detect;
;-- -. . -..- - / . -. - .-. -.--
select *
from outside_detect_harm;
;-- -. . -..- - / . -. - .-. -.--
update
 outside_detect_harm set org_id='00008051';
;-- -. . -..- - / . -. - .-. -.--
SELECT '00008051' as org_id,n.id               factor_id,
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
         left join outside_detect_harm f on n.id = f.hazardous_factors_id
where n.category_whys = 'A26A04A03'
  and n.name_whys_xl = 'A26A05A03'
  and n.org_id in ('00008051','00020973')
  and n.org_id = 00008051
  and (f.create_date between '2023-01-04' and '2023-12-06');
;-- -. . -..- - / . -. - .-. -.--
select s.is_eligible, s.id, hazard_factors_id,s.org_id
from oh_internal_monitor m
         inner join oh_internal_monitor_factors s on m.id = s.father_id
where s.id in
      ('fb83e3b7a8d29144f6dded6d9b1211e0', '53ba5cc26e8f029c3fd9c5a531721d5b', '1183e3b7a8d29l44f6dded6d9b1211e0');
;-- -. . -..- - / . -. - .-. -.--
SELECT '${orgId}'    as org_id,
       n.id             factor_id,
       n.category_whys,
       n.name_whys_xl,
       n.id             nid,
       f.id             check_id,
       f.is_eligible as is_eligible,
       f.create_date as check_time,
       f.org_id         org_idd
FROM list_whys n
         left join oh_internal_monitor_factors f on n.id = f.hazard_factors_id
         left join oh_hazard_post_place oph on f.hazardous_location_id = oph.id;
;-- -. . -..- - / . -. - .-. -.--
SELECT '${orgId}'    as org_id,
       n.id             factor_id,
       n.category_whys,
       n.name_whys_xl,
       n.id             nid,
       f.id             check_id,
       f.is_eligible as is_eligible,
       f.create_date as check_time,
       f.org_id         org_idd
FROM list_whys n
         left join oh_internal_monitor_factors f on n.id = f.hazard_factors_id
         inner join oh_hazard_post_place oph on f.hazardous_location_id = oph.id;
;-- -. . -..- - / . -. - .-. -.--
SELECT '${orgId}'    as org_id,
       n.id             factor_id,
       n.category_whys,
       n.name_whys_xl,
       n.id             nid,
       f.id             check_id,
       f.is_eligible as is_eligible,
       f.create_date as check_time,
       f.org_id         org_idd
FROM list_whys n
         left join oh_internal_monitor_factors f on n.id = f.hazard_factors_id
         inner join oh_hazard_post_place oph on f.hazardous_location_id = oph.hazard_place_id;
;-- -. . -..- - / . -. - .-. -.--
SELECT '${orgId}'    as org_id,
       n.id             factor_id,
       n.category_whys,
       n.name_whys_xl,
       n.id             nid,
       f.id             check_id,
       f.is_eligible as is_eligible,
       f.create_date as check_time,
       f.org_id         org_idd
FROM list_whys n
         left join oh_internal_monitor_factors f on n.id = f.hazard_factors_id
         inner join oh_hazard_post_place oph on f.hazardous_location_id = oph.hazard_place_id
where f.org_id='00008051';
;-- -. . -..- - / . -. - .-. -.--
SELECT '${orgId}'    as org_id,
       n.id             factor_id,
       n.category_whys,
       n.name_whys_xl,
       n.id             nid,
       f.id             check_id,
       f.is_eligible as is_eligible,
       f.create_date as check_time,
       f.org_id         org_idd,
       oph.father_id
FROM list_whys n
         left join oh_internal_monitor_factors f on n.id = f.hazard_factors_id
         inner join oh_hazard_post_place oph on f.hazardous_location_id = oph.hazard_place_id
where f.org_id='00008051';
;-- -. . -..- - / . -. - .-. -.--
SELECT '00008051'    as org_id,
       n.id             factor_id,
       n.category_whys,
       n.name_whys_xl,
       n.id             nid,
       f.id             check_id,
       f.is_eligible as is_eligible,
       f.create_date as check_time,
       f.org_id         org_idd
FROM list_whys n
         left join oh_internal_monitor_factors f on n.id = f.hazard_factors_id
         inner join oh_hazard_post_place oph on f.hazardous_location_id = oph.hazard_place_id
where n.category_whys = 'A26A05A03'
  and n.name_whys_xl = 'A26A04A03'
  and oph.father_id = 'a7ff4ce80cd848f4a88ef6a56cdc9946';
;-- -. . -..- - / . -. - .-. -.--
SELECT '00008051'    as org_id,
       n.id             factor_id,
       n.category_whys,
       n.name_whys_xl,
       n.id             nid,
       f.id             check_id,
       f.is_eligible as is_eligible,
       f.create_date as check_time,
       f.org_id         org_idd
FROM list_whys n
         left join oh_internal_monitor_factors f on n.id = f.hazard_factors_id
         inner join oh_hazard_post_place oph on f.hazardous_location_id = oph.hazard_place_id;
;-- -. . -..- - / . -. - .-. -.--
SELECT '00008051'    as org_id,
       n.id             factor_id,
       n.category_whys,
       n.name_whys_xl,
       n.id             nid,
       f.id             check_id,
       f.is_eligible as is_eligible,
       f.create_date as check_time,
       f.org_id         org_idd,
       oph.father_id
FROM list_whys n
         left join oh_internal_monitor_factors f on n.id = f.hazard_factors_id
         inner join oh_hazard_post_place oph on f.hazardous_location_id = oph.hazard_place_id
where n.category_whys = 'A26A04A05'
  and n.name_whys_xl = 'A26A05A24'
  and oph.father_id = 'a7ff4ce80cd848f4a88ef6a56cdc9946'
  and f.org_id in ('00008051','00020973')
  and 1 = 1
  and (f.create_date between '2023-01-01' and '2023-12-06');
;-- -. . -..- - / . -. - .-. -.--
SELECT '${orgId}' as org_id,n.id               factor_id,
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
         left join outside_detect_harm f on n.id = f.hazardous_factors_id
         inner join oh_hazard_post_place oph on f.hazardous_locations_id = oph.hazard_place_id;
;-- -. . -..- - / . -. - .-. -.--
SELECT '${orgId}' as org_id,n.id               factor_id,
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
       'out'              type,
       oph.father_id
FROM list_whys n
         left join outside_detect_harm f on n.id = f.hazardous_factors_id
         inner join oh_hazard_post_place oph on f.hazardous_locations_id = oph.hazard_place_id;
;-- -. . -..- - / . -. - .-. -.--
select *
from flood_season_report;
;-- -. . -..- - / . -. - .-. -.--
select *
from flood_season_report where corporate_name is null or corporate_name ='';
;-- -. . -..- - / . -. - .-. -.--
select distinct environmental_protection_facilities_type
from equipmen_basic_info;
;-- -. . -..- - / . -. - .-. -.--
select company,
       device_name,
       environmental_protection_facilities_type,
       environment_design_processing_capacity,
       environment_treated_pollution_factor,
       environment_pollutants_after_treatment
from equipmen_basic_info where 1=1
                           and  environmental_protection_facilities_type is not null;
;-- -. . -..- - / . -. - .-. -.--
select company,
       device_name,
       environmental_protection_facilities_type,
       environment_design_processing_capacity,
       environment_treated_pollution_factor,
       environment_pollutants_after_treatment
from equipmen_basic_info where 1=1;
;-- -. . -..- - / . -. - .-. -.--
select *
from analytical_instrument_equipment;
;-- -. . -..- - / . -. - .-. -.--
select *
from analytical_instrument_inspection;
;-- -. . -..- - / . -. - .-. -.--
select *,'${orgId}' as currentOrgId,
       SUBSTRING_INDEX(homework_certificate_type, ',', 1)                           class1,
       SUBSTRING_INDEX(SUBSTRING_INDEX(homework_certificate_type, ',', 2), ',', -1) class2,
       SUBSTRING_INDEX(SUBSTRING_INDEX(homework_certificate_type, ',', 3), ',', -1) class3,
       homework_certificate_type,
       if(period_validity_end < now(), '1', '0')                                 end_tag
from business_special_equipment;
;-- -. . -..- - / . -. - .-. -.--
select *
from work_task_list;
;-- -. . -..- - / . -. - .-. -.--
delete 

from work_task_list;
;-- -. . -..- - / . -. - .-. -.--
select *

from work_task_list;
;-- -. . -..- - / . -. - .-. -.--
select *
    @ApiModelProperty(value = "主表ID")fdb83759a5714cbd94e23092c548cd11
from env_risk_control_child where father_id='';
;-- -. . -..- - / . -. - .-. -.--
select *
from env_risk_control_child where father_id='fdb83759a5714cbd94e23092c548cd11';
;-- -. . -..- - / . -. - .-. -.--
select *
from annual_priority;
;-- -. . -..- - / . -. - .-. -.--
select *
from work_measures_filled;
;-- -. . -..- - / . -. - .-. -.--
select *
from work_measures_filled where year is null;
;-- -. . -..- - / . -. - .-. -.--
delete 
from work_measures_filled where year is null  or  year ='';
;-- -. . -..- - / . -. - .-. -.--
select *;
;-- -. . -..- - / . -. - .-. -.--
select *
from work_measures_filled where year is null  or  year ='';
;-- -. . -..- - / . -. - .-. -.--
delete
from flood_season_report
where sort = -10;
;-- -. . -..- - / . -. - .-. -.--
select rain, serial,flow_state
from flood_season_report
where flood_season_report.safety_environmental is null
   or flood_season_report.safety_environmental = '';
;-- -. . -..- - / . -. - .-. -.--
select rain, serial, flow_state
from flood_season_report;
;-- -. . -..- - / . -. - .-. -.--
delete
from flood_season_report
where filled_by ='905828094879746696';
;-- -. . -..- - / . -. - .-. -.--
delete
from flood_season_report
where filled_by ='-3718815558539131727';
;-- -. . -..- - / . -. - .-. -.--
delete
from flood_season_report
where filled_by ='-9199873405976231661';
;-- -. . -..- - / . -. - .-. -.--
select rain, serial, flow_state,corporate_name
from flood_season_report;
;-- -. . -..- - / . -. - .-. -.--
select *
from pollutant_project_emi_concentration;
;-- -. . -..- - / . -. - .-. -.--
select *
from dismantling_scrapping_dea_record;
;-- -. . -..- - / . -. - .-. -.--
select dept_id
from dismantling_scrapping_dea_record where dept_id='cd7f9c8d0dcc6dc6bce0d7dd4aead843';
;-- -. . -..- - / . -. - .-. -.--
select dept_id
from pollutant_project_emi_concentration where dept_id='cd7f9c8d0dcc6dc6bce0d7dd4aead843';
;-- -. . -..- - / . -. - .-. -.--
select dept_id
from dismantling_scrapping_dea_record where reported_by='cd7f9c8d0dcc6dc6bce0d7dd4aead843';
;-- -. . -..- - / . -. - .-. -.--
select reported_by
from dismantling_scrapping_dea_record where reported_by='cd7f9c8d0dcc6dc6bce0d7dd4aead843';
;-- -. . -..- - / . -. - .-. -.--
select reported_by,id
from dismantling_scrapping_dea_record where reported_by='cd7f9c8d0dcc6dc6bce0d7dd4aead843';
;-- -. . -..- - / . -. - .-. -.--
select reported_by,id
from dismantling_scrapping_dea_record;
;-- -. . -..- - / . -. - .-. -.--
select *
from new_report_requirement_child;
;-- -. . -..- - / . -. - .-. -.--
delete  from  work_task_feedback_filling where responsible_unit_name is null or responsible_unit_name ='';
;-- -. . -..- - / . -. - .-. -.--
select *
from work_task_feedback_filling where filed_by is null;
;-- -. . -..- - / . -. - .-. -.--
select *
from work_task_feedback_filling where filed_by ='';
;-- -. . -..- - / . -. - .-. -.--
select create_date
from harm_filing;
;-- -. . -..- - / . -. - .-. -.--
select date_format(create_date,'yyyy')
from harm_filing;
;-- -. . -..- - / . -. - .-. -.--
select distinct  date_format(create_date,'%Y')
from harm_filing;
;-- -. . -..- - / . -. - .-. -.--
select date_format(create_date,'%Y')
from harm_filing;
;-- -. . -..- - / . -. - .-. -.--
update
 harm_filing set filing_year=date_format(create_date,'%Y');
;-- -. . -..- - / . -. - .-. -.--
update
 harm_filing set filing_year='A26A23A20' where filing_year=2018;
;-- -. . -..- - / . -. - .-. -.--
update
 harm_filing set filing_year='A26A23A2' where filing_year=2019;
;-- -. . -..- - / . -. - .-. -.--
update
 harm_filing set filing_year='A26A23A21' where filing_year=2019;
;-- -. . -..- - / . -. - .-. -.--
update
 harm_filing set filing_year='A26A23A21' where filing_year='2019';
;-- -. . -..- - / . -. - .-. -.--
update
 harm_filing set filing_year='A26A23A01' where filing_year='2020';
;-- -. . -..- - / . -. - .-. -.--
update
 harm_filing set filing_year='A26A23A02' where filing_year='2021';
;-- -. . -..- - / . -. - .-. -.--
update
 harm_filing set filing_year='A26A23A03' where filing_year='2022';
;-- -. . -..- - / . -. - .-. -.--
update
 harm_filing set filing_year='A26A23A04' where filing_year='2023';
;-- -. . -..- - / . -. - .-. -.--
select *
from harm_filing;
;-- -. . -..- - / . -. - .-. -.--
select filing_year
from harm_filing;
;-- -. . -..- - / . -. - .-. -.--
select filing_year
from harm_filing where filing_file is null;
;-- -. . -..- - / . -. - .-. -.--
select *
from harm_filing where filing_file is null;
;-- -. . -..- - / . -. - .-. -.--
SELECT '${orgId}' as org_id,n.id             factor_id,
       n.category_whys,
       n.name_whys_xl,
       n.id             nid,
       f.id             check_id,
       f.is_eligible as is_eligible,
       f.create_date as check_time,
       f.org_id         org_idd
FROM list_whys n
         left join oh_internal_monitor_factors f on n.id = f.hazard_factors_id;
;-- -. . -..- - / . -. - .-. -.--
SELECT '' as org_id,n.id             factor_id,
       n.category_whys,
       n.name_whys_xl,
       n.id             nid,
       f.id             check_id,
       f.is_eligible as is_eligible,
       f.create_date as check_time,
       f.org_id         org_idd
FROM list_whys n
         left join oh_internal_monitor_factors f on n.id = f.hazard_factors_id
where n.category_whys = ''
  and n.name_whys_xl = ''
  and n.name_whys_xl in ('A26A05A99,A26A05A01')
  and 1 = 1
  and (f.create_date between '2023-01-01' and '2023-12-18');
;-- -. . -..- - / . -. - .-. -.--
SELECT '' as org_id,n.id             factor_id,
       n.category_whys,
       n.name_whys_xl,
       n.id             nid,
       f.id             check_id,
       f.is_eligible as is_eligible,
       f.create_date as check_time,
       f.org_id         org_idd
FROM list_whys n
         left join oh_internal_monitor_factors f on n.id = f.hazard_factors_id;
;-- -. . -..- - / . -. - .-. -.--
SELECT '' as org_id,n.id             factor_id,
       n.category_whys,
       n.name_whys_xl,
       n.id             nid,
       f.id             check_id,
       f.is_eligible as is_eligible,
       f.create_date as check_time,
       f.org_id         org_idd
FROM list_whys n
         left join oh_internal_monitor_factors f on n.id = f.hazard_factors_id
where n.category_whys = 'A26A04A07'
  and n.name_whys_xl = 'A26A05D95'
  and n.name_whys_xl in ('A26A05D95')
  and 1 = 1
  and (f.create_date between '2023-01-01' and '2023-12-18');
;-- -. . -..- - / . -. - .-. -.--
SELECT '' as org_id,n.id             factor_id,
       n.category_whys,
       n.name_whys_xl,
       n.id             nid,
       f.id             check_id,
       f.is_eligible as is_eligible,
       f.create_date as check_time,
       f.org_id         org_idd
FROM list_whys n
         left join oh_internal_monitor_factors f on n.id = f.hazard_factors_id
where n.category_whys = 'A26A04A07'
  and n.name_whys_xl = 'A26A05D95';
;-- -. . -..- - / . -. - .-. -.--
SELECT ''    as org_id,
       n.id             factor_id,
       n.category_whys,
       n.name_whys_xl,
       n.id             nid,
       f.id             check_id,
       f.is_eligible as is_eligible,
       f.create_date as check_time,
       f.org_id         org_idd
FROM list_whys n
         left join oh_internal_monitor_factors f on n.id = f.hazard_factors_id
where n.category_whys = 'A26A04A07'
  and (n.name_whys_xl = 'A26A05D95' and n.name_whys_xl in ('A26A05D95'))
  and 1 = 1
  and (f.create_date between '2023-01-01' and '2023-12-18');
;-- -. . -..- - / . -. - .-. -.--
SELECT ''    as org_id,
       n.id             factor_id,
       n.category_whys,
       n.name_whys_xl,
       n.id             nid,
       f.id             check_id,
       f.is_eligible as is_eligible,
       f.create_date as check_time,
       f.org_id         org_idd
FROM list_whys n
         left join oh_internal_monitor_factors f on n.id = f.hazard_factors_id
where n.category_whys = 'A26A04A07'
  and (n.name_whys_xl = 'A26A05D95' )
  and 1 = 1
  and (f.create_date between '2023-01-01' and '2023-12-18');
;-- -. . -..- - / . -. - .-. -.--
SELECT ''            as org_id,
       n.id             factor_id,
       n.category_whys,
       n.name_whys_xl,
       n.id             nid,
       f.id             check_id,
       f.is_eligible as is_eligible,
       f.create_date as check_time,
       f.org_id         org_idd
FROM list_whys n
         left join oh_internal_monitor_factors f on n.id = f.hazard_factors_id
where n.category_whys = 'A26A04A07'
  and n.name_whys_xl = 'A26A05D95'
  and 1 = 1
  and (f.create_date between '2023-01-01' and '2023-12-18');
;-- -. . -..- - / . -. - .-. -.--
select ''                                                       as currentOrgId,
       m.org_id,
       m.device_name,
       m.start_deactivation_time1,
       m.end_stop_time1,
       m.countermeasure1,
       m.pollutant_concentration,
       m.situation_description1,
       TIMESTAMPDIFF(DAY, m.start_deactivation_time1, m.end_stop_time1) as deactivation_time,
       m.hse_classification

from dismantling_scrapping_dea_record m
         left join pollutant_project_emi_concentration s on m.id = s.father_id
where 1 = 1
  and m.hse_classification = 'A26A19A02'
  and m.device_statu = 'A26A82A04'
  and 1 = 1;
;-- -. . -..- - / . -. - .-. -.--
SELECT n.*
FROM list_whys n
where name_whys_xl is not null
  and name_whys_xl != ''
  and category_whys is not null
  and category_whys != ''
  and n.name_whys_xl in ('A26A05B84,A26A05B01');
;-- -. . -..- - / . -. - .-. -.--
SELECT n.*
FROM list_whys n
where name_whys_xl is not null
  and name_whys_xl != ''
  and category_whys is not null
  and category_whys != ''
  and n.name_whys_xl in ('A26A05A01,A26A05D95');
;-- -. . -..- - / . -. - .-. -.--
SELECT n.*
FROM list_whys n
where
#     name_whys_xl is not null
#   and name_whys_xl != ''
#   and category_whys is not null
#   and category_whys != ''
  and n.name_whys_xl in ('A26A05A01,A26A05D95');
;-- -. . -..- - / . -. - .-. -.--
SELECT n.*
FROM list_whys n
where
#     name_whys_xl is not null
#   and name_whys_xl != ''
#   and category_whys is not null
#   and category_whys != ''
   n.name_whys_xl in ('A26A05A01,A26A05D95');
;-- -. . -..- - / . -. - .-. -.--
SELECT n.*
FROM list_whys n
where
    name_whys_xl is not null
  and name_whys_xl != ''
  and category_whys is not null
  and category_whys != ''
  and n.name_whys_xl in ('A26A05A01,A26A05D95');
;-- -. . -..- - / . -. - .-. -.--
SELECT n.*
FROM list_whys n
where
    name_whys_xl is not null
  and name_whys_xl != ''
  and category_whys is not null
  and category_whys != '';
;-- -. . -..- - / . -. - .-. -.--
SELECT n.*
FROM list_whys n
where
    name_whys_xl is not null
  and name_whys_xl != ''
  and category_whys is not null
  and category_whys != ''
  and n.name_whys_xl in ('A26A05A01','A26A05D95');
;-- -. . -..- - / . -. - .-. -.--
SELECT n.*
FROM list_whys n;
;-- -. . -..- - / . -. - .-. -.--
SELECT n.*
FROM list_whys n
where name_whys_xl is not null
  and name_whys_xl != ''
  and category_whys is not null
  and category_whys != ''
  and n.name_whys_xl in  ('A26A05A01','A26A05B20');
;-- -. . -..- - / . -. - .-. -.--
SELECT n.*
FROM list_whys n
where name_whys_xl is not null
  and name_whys_xl != ''
  and category_whys is not null
  and category_whys != ''
  and n.name_whys_xl ='A26A05A01';
;-- -. . -..- - / . -. - .-. -.--
SELECT '${orgId}'    as org_id,
       n.id             factor_id,
       n.category_whys,
       n.name_whys_xl,
       n.id             nid,
       f.id             check_id,
       f.is_eligible as is_eligible,
       f.create_date as check_time,
       f.org_id         org_idd
FROM list_whys n
         left join oh_internal_monitor_factors f on n.id = f.hazard_factors_id;
;-- -. . -..- - / . -. - .-. -.--
select *
from annual_priority
where serial='20231219131601273'
order by create_date desc;
;-- -. . -..- - / . -. - .-. -.--
select *
from work_task_list
where serial='20231219131601273';
;-- -. . -..- - / . -. - .-. -.--
select *
from work_measures_filled
# where id = '4562ac6fd8cf1cfbee9c428b1632a62a';
where serial = '20231219131601273';
;-- -. . -..- - / . -. - .-. -.--
select *
from annual_priority
where serial='20231219131451015'
order by create_date desc;
;-- -. . -..- - / . -. - .-. -.--
select *
from annual_priority
where serial='20231219135032964'
order by create_date desc;
;-- -. . -..- - / . -. - .-. -.--
select *
from work_measures_filled
# where id = '4562ac6fd8cf1cfbee9c428b1632a62a';
where serial = '20231219143504553';
;-- -. . -..- - / . -. - .-. -.--
select *
from annual_priority
where serial='20231219144143858'
order by create_date desc;
;-- -. . -..- - / . -. - .-. -.--
select *
from work_measures_filled
# where id = '4562ac6fd8cf1cfbee9c428b1632a62a';
where serial = '20231219144324121';
;-- -. . -..- - / . -. - .-. -.--
select *
from work_task_feedback_filling;
;-- -. . -..- - / . -. - .-. -.--
select *
from work_task_feedback_filling order by create_date desc;
;-- -. . -..- - / . -. - .-. -.--
select *
from work_task_preparation
# where id = 'dce02c21dee58e9d89c0a6d15efee1ed';
order by create_date desc;
;-- -. . -..- - / . -. - .-. -.--
select *
from annual_priority
where serial='20231219104249224'
order by create_date desc;
;-- -. . -..- - / . -. - .-. -.--
select *
from work_task_preparation
# where id = 'dce02c21dee58e9d89c0a6d15efee1ed';
where father_id='7d1b1d219da7fcc7e3134e8ab6b54171'
order by create_date desc;
;-- -. . -..- - / . -. - .-. -.--
select *
from new_report_requirement;
;-- -. . -..- - / . -. - .-. -.--
select *
from work_measures_filled
# where id = '4562ac6fd8cf1cfbee9c428b1632a62a';
# where serial = '20231219144324121';
order by create_date desc;
;-- -. . -..- - / . -. - .-. -.--
select *
from work_measures_filled
where year='A26A23A04'
# where id = '4562ac6fd8cf1cfbee9c428b1632a62a';
# where serial = '20231219144324121';
order by create_date desc;
;-- -. . -..- - / . -. - .-. -.--
select *
from work_measures_filled
where year='A26A23A04'
and responsible_unit='00008051'
# where id = '4562ac6fd8cf1cfbee9c428b1632a62a';
# where serial = '20231219144324121';
order by create_date desc;
;-- -. . -..- - / . -. - .-. -.--
select *
from work_measures_filled
# where year='A26A23A04'
and responsible_unit='00008051'
# where id = '4562ac6fd8cf1cfbee9c428b1632a62a';
# where serial = '20231219144324121';
order by create_date;
;-- -. . -..- - / . -. - .-. -.--
select *
from work_measures_filled
where 1 = 1
#   and year = 'A26A23A04'
  and responsible_unit = '00008051'
# where id = '4562ac6fd8cf1cfbee9c428b1632a62a';
# where serial = '20231219144324121';
order by create_date desc;
;-- -. . -..- - / . -. - .-. -.--
select *
from work_measures_filled
where 1 = 1
  and year = 'A26A23A04'
  and responsible_unit = '00008051'
# where id = '4562ac6fd8cf1cfbee9c428b1632a62a';
# where serial = '20231219144324121';
order by create_date desc;
;-- -. . -..- - / . -. - .-. -.--
select *
from work_task_modification
order by create_date desc;
;-- -. . -..- - / . -. - .-. -.--
select *
from list_measures_modification
where father_id = '33125f4eeab649f694e6c2afd8682404';
;-- -. . -..- - / . -. - .-. -.--
SELECT '${orgId}'    as org_id,
       n.id             factor_id,
       n.category_whys,
       n.name_whys_xl,
       n.id             nid,
       f.id             check_id,
       f.is_eligible as is_eligible,
       f.create_date as check_time,
       f.org_id         org_idd
FROM list_whys n;
;-- -. . -..- - / . -. - .-. -.--
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
where
#     n.category_whys = '${categoryWhys}'
#   and n.name_whys_xl = '${nameWhysXl}'
   f.org_id = '00010499';
;-- -. . -..- - / . -. - .-. -.--
SELECT n.id             factor_id,
       n.category_whys,
       n.name_whys_xl,
       n.id             nid,
       f.id             check_id,
       f.is_eligible as is_eligible,
       f.create_date as check_time,
       f.org_id         org_idd
FROM list_whys n
         left join oh_internal_monitor_factors f on n.id = f.hazard_factors_id;
;-- -. . -..- - / . -. - .-. -.--
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
where
#     n.category_whys = '${categoryWhys}'
#   and n.name_whys_xl = '${nameWhysXl}'
   f.org_id = '00008051';
;-- -. . -..- - / . -. - .-. -.--
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
         left join outside_detect_harm f on n.id = f.hazardous_factors_id
where n.category_whys = 'A26A04A08'
  and n.name_whys_xl = 'A26A05A34'
  and f.org_id = '00008051'
  and (f.create_date between '2023-01-04' and '2023-12-06');
;-- -. . -..- - / . -. - .-. -.--
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
         left join outside_detect_harm f on n.id = f.hazardous_factors_id
  and f.org_id = '00008051';
;-- -. . -..- - / . -. - .-. -.--
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
         left join outside_detect_harm f on n.id = f.hazardous_factors_id
                                                and f.create_date is not null
  and f.org_id = '00008051';
;-- -. . -..- - / . -. - .-. -.--
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
         left join outside_detect_harm f on n.id = f.hazardous_factors_id
    and f.create_date is not null
    and f.org_id = '00008051';
;-- -. . -..- - / . -. - .-. -.--
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
         left join outside_detect_harm f on n.id = f.hazardous_factors_id
    and f.create_date !=''
    and f.org_id = '00008051';
;-- -. . -..- - / . -. - .-. -.--
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
         left join outside_detect_harm f on n.id = f.hazardous_factors_id
    and f.create_date !=' '
    and f.org_id = '00008051';
;-- -. . -..- - / . -. - .-. -.--
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
         left join outside_detect_harm f on n.id = f.hazardous_factors_id
    and f.create_date  is not null
    and f.org_id = '00008051';
;-- -. . -..- - / . -. - .-. -.--
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
         inner join outside_detect_harm f on n.id = f.hazardous_factors_id
    and f.create_date  is not null
    and f.org_id = '00008051';
;-- -. . -..- - / . -. - .-. -.--
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
         inner join outside_detect_harm f on n.id = f.hazardous_factors_id
                                                 and n.name_whys_xl='A26A05A05'
    and f.create_date  is not null
    and f.org_id = '00008051';
;-- -. . -..- - / . -. - .-. -.--
select *
from outside_detect_harm where id='340b0607dfdf481f963cb27ed38211de';
;-- -. . -..- - / . -. - .-. -.--
select id,is_eligible
from outside_detect_harm where id='340b0607dfdf481f963cb27ed38211de';
;-- -. . -..- - / . -. - .-. -.--
select *
from list_whys;
;-- -. . -..- - / . -. - .-. -.--
select *
from work_task_preparation
where id = '2cd44acb4b9232ba8de59bea64c1a692';
;-- -. . -..- - / . -. - .-. -.--
select *
from work_measures_filled
where 1 = 1
#   and year = 'A26A23A04'
#   and responsible_unit = '00008051'
and id = '96003efeb23fecc7a98c64bd9c65ce0b';
;-- -. . -..- - / . -. - .-. -.--
select *
from work_measures_filled
where 1 = 1
#   and year = 'A26A23A04'
#   and responsible_unit = '00008051'
# and id = '96003efeb23fecc7a98c64bd9c65ce0b';
and serial = '20231220193001913';
;-- -. . -..- - / . -. - .-. -.--
select *
from work_task_preparation
# where father_id = '7d1b1d219da7fcc7e3134e8ab6b54171'
order by create_date desc;
;-- -. . -..- - / . -. - .-. -.--
select *
from work_task_feedback_filling
order by create_date desc;
;-- -. . -..- - / . -. - .-. -.--
select implemented_by
from work_task_preparation
# where father_id = '7d1b1d219da7fcc7e3134e8ab6b54171'
where id = '89087ec3259e613a0c527812a40c7407'
order by create_date desc;
;-- -. . -..- - / . -. - .-. -.--
select *
from work_measures_filled
where 1 = 1
#   and year = 'A26A23A04'
#   and responsible_unit = '00008051'
and id = '6a26e1aa686035d4105015d73146a05e';
;-- -. . -..- - / . -. - .-. -.--
select *
from work_measures_filled
where 1 = 1;
;-- -. . -..- - / . -. - .-. -.--
select *
from work_measures_filled
where 1 = 1
and org_id='00008051';
;-- -. . -..- - / . -. - .-. -.--
update work_measures_filled
set flow_state=3,
    flow_step='归档';
;-- -. . -..- - / . -. - .-. -.--
select responsible_unit,org_id
from work_task_feedback_filling
order by create_date desc;
;-- -. . -..- - / . -. - .-. -.--
select org_id
from work_measures_filled
where 1 = 1
group by org_id;
;-- -. . -..- - / . -. - .-. -.--
select flow_state,flow_step
from work_measures_filled
where 1 = 1
group by org_id;
;-- -. . -..- - / . -. - .-. -.--
select implemented_by
from work_task_preparation
# where father_id = '7d1b1d219da7fcc7e3134e8ab6b54171'
where id = '3845459287350201712.0'
order by create_date desc;
;-- -. . -..- - / . -. - .-. -.--
select serial
from work_measures_filled
where 1 = 1
and id='-489226097815566328.0'
group by org_id;
;-- -. . -..- - / . -. - .-. -.--
select id
from work_measures_filled
where 1 = 1
and id='-489226097815566328.0'
group by org_id;
;-- -. . -..- - / . -. - .-. -.--
select id,serial
from work_measures_filled
where 1 = 1
and id='-489226097815566328.0'
group by org_id;
;-- -. . -..- - / . -. - .-. -.--
select *
from analysis_assay_instrument_inconformity where serial='20240104091432926';
;-- -. . -..- - / . -. - .-. -.--
select *
from analytical_instrument_inspection m
         inner join
     analytical_instrument_equipment s on m.id = s.father_id;
;-- -. . -..- - / . -. - .-. -.--
select *
from analytical_instrument_inspection m
         inner join
     analytical_instrument_equipment s on m.id = s.father_id
where m.serial='20240104100800564';
;-- -. . -..- - / . -. - .-. -.--
select *
from analytical_instrument_inspection m
         inner join
     analytical_instrument_equipment s on m.id = s.father_id
# where m.serial='20240104100125481'
where m.serial='20240104100125481';
;-- -. . -..- - / . -. - .-. -.--
select *
from analytical_instrument_inspection m
         inner join
     analytical_instrument_equipment s on m.id = s.father_id
where m.serial='20240104100125481';