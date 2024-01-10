select m.*, s.NAME
from v3x.view_formmain_41324 m
         left join v3x.view_org_unit s on m.FIELD0001 = s.ID;




select distinct FIELD0005
from v3x.view_formmain_41324 m
         inner join v3x.view_org_unit s on m.FIELD0001 = s.ID;

select *
from v3x.view_form_definition t
where t.field_info like '%formmain_41324%';



select *
from v3x.view_org_unit
where CODE is not null


-- 枚举
select *
from v3x.view_ctp_enum_item
where ID in (select distinct FIELD0005
             from v3x.view_formmain_41324 m
                      inner join v3x.view_org_unit s on m.FIELD0001 = s.ID);