select m.*,
       ifnull(c.scyf_id, '00000001')         as org_code,
       ifnull(u.scyf_id, 'admin')          as user_code,
       ifnull(cd.h3_unit_id, '00000001')        as dept_code,
       IF(m.flow_state < 100, -10, m.flow_state) as flow_state_tag,
       s.field_h2
from form_table_a3e343de9eb235ef m
         left join kettle_company_tmp c on m.org_id = c.id
         left join kettle_unit_tmp cd on m.dept_id = cd.h2_unit_id
         left join kettle_user_tmp u on m.user_id = u.id
         inner  join form_table_f6c742799aa33f5b s on m.id=s.father_id