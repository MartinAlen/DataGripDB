select *,
       '${orgId}' as                                                                               currentOrgId,
       SUBSTRING_INDEX(certificate_category, ',', 1)                                               class1,
       SUBSTRING_INDEX(SUBSTRING_INDEX(certificate_category, ',', 2), ',', -1)                     class2,
       SUBSTRING_INDEX(SUBSTRING_INDEX(certificate_category, ',', 3), ',', -1)                     class3,
       certificate_category,
       if(certificate_status = '2', '1',
          if(end_expire_date < date_add('${start_time}', INTERVAL ${limit_time} MONTH), '1', '0')) end_tag
from business_special_operation_certificate
where ${if(len(orgIds) = 0,"1 = 1", "org_id in " + orgIds)}
order by company_name;



select *,
       '' as                                                                               currentOrgId,
       SUBSTRING_INDEX(certificate_category, ',', 1)                                               class1,
       SUBSTRING_INDEX(SUBSTRING_INDEX(certificate_category, ',', 2), ',', -1)                     class2,
       SUBSTRING_INDEX(SUBSTRING_INDEX(certificate_category, ',', 3), ',', -1)                     class3,
       certificate_category,
       if(certificate_status = '2', '1',
          if(end_expire_date < date_add('2023-01-01', INTERVAL 2 MONTH), '1', '0')) end_tag,
    end_expire_date
from business_special_operation_certificate
where 1 = 1
  and 1 = 1
having end_tag = 1
order by company_name;