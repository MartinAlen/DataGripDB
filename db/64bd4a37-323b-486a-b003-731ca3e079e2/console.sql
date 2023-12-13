select company,
       device_name,
       environmental_protection_facilities_type,
       environment_design_processing_capacity,
       environment_treated_pollution_factor,
       environment_pollutants_after_treatment
from equipmen_basic_info
where 1 = 1
  and environmental_protection_facilities_type is not null
  and ${if(len(unitCode) = 0,"1 = 1", "org_id like '%" + unitCode + "%'")}
  and ${if(len(equ_type) = 0,"1 = 1", "environmental_protection_facilities_type
  in ('" + replace(equ_type,",","','") + "')")}
order by environmental_protection_facilities_type;


select distinct environmental_protection_facilities_type
from equipmen_basic_info;