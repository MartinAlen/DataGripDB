select distinct FIELD0008
from v3x.view_formmain_21963 m
         inner join v3x.view_formson_21964 s on m.ID = s.FORMMAIN_ID  ;



select *
from v3x.view_formmain_21963 order by 创建时间 desc;


select *
from v3x.view_formson_21964 ;




select *
from v3x.view_form_definition t
where t.field_info like '%formson_21964%';



select * from  v3x.view_org_unit where CODE is not null

-- 枚举
select *
from v3x.view_ctp_enum_item where ID in (select distinct FIELD0008
from v3x.view_formmain_21963 m
         inner join v3x.view_formson_21964 s on m.ID = s.FORMMAIN_ID
);
