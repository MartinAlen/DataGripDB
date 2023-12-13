select m.org_id,
       m.monitoring_point,
       m.monitoring_type,
       s.standard_name,
       s.monitoring_frequency,
       time_date.*
from environment_monitoring_unusual_hourly_data time_date
left join environment_monitoring_point_maintenance m on m.equipment_code = time_date.equipment_code
left join environment_monitoring_item_maintenance s on  m.id = s.father_id and s.monitoring_item_code = time_date.monitoring_item_code