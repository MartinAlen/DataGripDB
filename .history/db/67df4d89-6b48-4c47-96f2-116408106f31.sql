select * from business_enterprise_info;
;-- -. . -..- - / . -. - .-. -.--
select * from business_enterprise_info where short_name='青海云天化国际化肥有限公司';
;-- -. . -..- - / . -. - .-. -.--
select safety_type from business_enterprise_info where short_name='青海云天化国际化肥有限公司';
;-- -. . -..- - / . -. - .-. -.--
select safety_type
from business_enterprise_info
where id = 'feab8e444b144334b44ee0059620caad';
;-- -. . -..- - / . -. - .-. -.--
select safety_type,short_name
from business_enterprise_info
where id = 'feab8e444b144334b44ee0059620caad';
;-- -. . -..- - / . -. - .-. -.--
select *
from business_enterprise_info;
;-- -. . -..- - / . -. - .-. -.--
select safety_type
from business_enterprise_info
where short_name = '青海云天化国际化肥有限公司';
;-- -. . -..- - / . -. - .-. -.--
select safety_type,
       company,
       SUBSTRING_INDEX(safety_type, ',', 1)                           class1,
       SUBSTRING_INDEX(SUBSTRING_INDEX(safety_type, ',', 2), ',', -1) class2,
       SUBSTRING_INDEX(SUBSTRING_INDEX(safety_type, ',', 3), ',', -1) class3
from business_enterprise_info
where short_name='云南三环中化化肥有限公司';
;-- -. . -..- - / . -. - .-. -.--
select *,'${orgId}' as currentOrgId,
       SUBSTRING_INDEX(homework_certificate_type, ',', 1)                           class1,
       SUBSTRING_INDEX(SUBSTRING_INDEX(homework_certificate_type, ',', 2), ',', -1) class2,
       SUBSTRING_INDEX(SUBSTRING_INDEX(homework_certificate_type, ',', 3), ',', -1) class3,
       homework_certificate_type,
       if(period_validity_end < now(), '1', '0')                                 end_tag
from business_special_equipment;
;-- -. . -..- - / . -. - .-. -.--
select '' as currentOrgId,*,
       SUBSTRING_INDEX(certificate_category, ',', 1)                           class1,
       SUBSTRING_INDEX(SUBSTRING_INDEX(certificate_category, ',', 2), ',', -1) class2,
       SUBSTRING_INDEX(SUBSTRING_INDEX(certificate_category, ',', 3), ',', -1) class3,
       certificate_category
from business_special_operation_certificate
where 1 = 1
  and 1 = 1
order by company_name;
;-- -. . -..- - / . -. - .-. -.--
select *,'' as currentOrgId,
       SUBSTRING_INDEX(certificate_category, ',', 1)                           class1,
       SUBSTRING_INDEX(SUBSTRING_INDEX(certificate_category, ',', 2), ',', -1) class2,
       SUBSTRING_INDEX(SUBSTRING_INDEX(certificate_category, ',', 3), ',', -1) class3,
       certificate_category
from business_special_operation_certificate
where 1 = 1
  and 1 = 1
order by company_name;
;-- -. . -..- - / . -. - .-. -.--
select *,
       '' as                                                                              currentOrgId,
       SUBSTRING_INDEX(homework_certificate_type, ',', 1)                                 class1,
       SUBSTRING_INDEX(SUBSTRING_INDEX(homework_certificate_type, ',', 2), ',', -1)       class2,
       SUBSTRING_INDEX(SUBSTRING_INDEX(homework_certificate_type, ',', 3), ',', -1)       class3,
       homework_certificate_type,
       if(certificate_status = '2', '1',
          if(period_validity_end < date_add(2023 - 01 - 01, INTERVAL 2 MONTH), '1', '0')) end_tag
from business_special_equipment
where 1 = 1
order by company_name;
;-- -. . -..- - / . -. - .-. -.--
select  if('2023-02-01' < date_add(2023 - 01 - 01, INTERVAL 2 MONTH), '1', '0') end_tag;
;-- -. . -..- - / . -. - .-. -.--
select if('2023-02-01' >= date_add(2023 - 01 - 01, INTERVAL 2 MONTH), '1', '0') end_tag;
;-- -. . -..- - / . -. - .-. -.--
select if('2023-02-01' >= date_add('2023-01-01', INTERVAL 2 MONTH), '1', '0') end_tag;
;-- -. . -..- - / . -. - .-. -.--
select date_add('2023-01-01', INTERVAL 2 MONTH);
;-- -. . -..- - / . -. - .-. -.--
select if('2023-04-01' >= date_add('2023-01-01', INTERVAL 2 MONTH), '1', '0') end_tag;
;-- -. . -..- - / . -. - .-. -.--
select *,
       '' as                                                                                    currentOrgId,
       SUBSTRING_INDEX(homework_certificate_type, ',', 1)                                               class1,
       SUBSTRING_INDEX(SUBSTRING_INDEX(homework_certificate_type, ',', 2), ',', -1)                     class2,
       SUBSTRING_INDEX(SUBSTRING_INDEX(homework_certificate_type, ',', 3), ',', -1)                     class3,
       homework_certificate_type,
       if(certificate_status = '2', '1',
          if(period_validity_end >= date_add('2023-12-18', INTERVAL 2 MONTH), '1', '0')) end_tag
from business_special_equipment
where 1 = 1
order by company_name;
;-- -. . -..- - / . -. - .-. -.--
select *,
       '' as                                                                                    currentOrgId,
       SUBSTRING_INDEX(homework_certificate_type, ',', 1)                                               class1,
       SUBSTRING_INDEX(SUBSTRING_INDEX(homework_certificate_type, ',', 2), ',', -1)                     class2,
       SUBSTRING_INDEX(SUBSTRING_INDEX(homework_certificate_type, ',', 3), ',', -1)                     class3,
       homework_certificate_type,
       period_validity_end,
       if(certificate_status = '2', '1',
          if(period_validity_end >= date_add('2023-12-18', INTERVAL 2 MONTH), '1', '0')) end_tag
from business_special_equipment
where 1 = 1
order by company_name;
;-- -. . -..- - / . -. - .-. -.--
select *,
       '' as                                                                                   currentOrgId,
       SUBSTRING_INDEX(certificate_category, ',', 1)                                                   class1,
       SUBSTRING_INDEX(SUBSTRING_INDEX(certificate_category, ',', 2), ',', -1)                         class2,
       SUBSTRING_INDEX(SUBSTRING_INDEX(certificate_category, ',', 3), ',', -1)                         class3,
       certificate_category,
       if(certificate_status = '2', '1',
          if(end_expire_date < date_add('2023-12-18', INTERVAL 2 MONTH), '1', '0')) end_tag
from business_special_operation_certificate
where 1 = 1
order by company_name;
;-- -. . -..- - / . -. - .-. -.--
select *,
       '' as                                                                                   currentOrgId,
       SUBSTRING_INDEX(certificate_category, ',', 1)                                                   class1,
       SUBSTRING_INDEX(SUBSTRING_INDEX(certificate_category, ',', 2), ',', -1)                         class2,
       SUBSTRING_INDEX(SUBSTRING_INDEX(certificate_category, ',', 3), ',', -1)                         class3,
       certificate_category,
       end_expire_date,
       if(certificate_status = '2', '1',
          if(end_expire_date < date_add('2023-12-18', INTERVAL 2 MONTH), '1', '0')) end_tag
from business_special_operation_certificate
where 1 = 1
order by company_name;
;-- -. . -..- - / . -. - .-. -.--
select *,
       '' as                                                                                   currentOrgId,
       SUBSTRING_INDEX(certificate_category, ',', 1)                                                   class1,
       SUBSTRING_INDEX(SUBSTRING_INDEX(certificate_category, ',', 2), ',', -1)                         class2,
       SUBSTRING_INDEX(SUBSTRING_INDEX(certificate_category, ',', 3), ',', -1)                         class3,
       certificate_category,
       end_expire_date,
       if(certificate_status = '2', '1',
          if(end_expire_date < date_add('2023-12-18', INTERVAL 2 MONTH), '1', '0')) end_tag
from business_special_operation_certificate
where 1 = 1
 and company_name='云南三环中化化肥有限公司'
order by company_name;
;-- -. . -..- - / . -. - .-. -.--
select *,
       '' as                                                                               currentOrgId,
       SUBSTRING_INDEX(certificate_category, ',', 1)                                               class1,
       SUBSTRING_INDEX(SUBSTRING_INDEX(certificate_category, ',', 2), ',', -1)                     class2,
       SUBSTRING_INDEX(SUBSTRING_INDEX(certificate_category, ',', 3), ',', -1)                     class3,
       certificate_category,
       if(certificate_status = '2', '1',
          if(end_expire_date < date_add('2023-01-01', INTERVAL 2 MONTH), '1', '0')) end_tag
from business_special_operation_certificate
where 1 = 1
  and 1 = 1
having end_tag = 1
order by company_name;