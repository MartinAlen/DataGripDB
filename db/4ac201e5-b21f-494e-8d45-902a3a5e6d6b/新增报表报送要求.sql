select *
from v3x.view_formmain_35620;


select m.*,s.CODE
from  v3x.view_formmain_35620 m inner join v3x.view_org_unit s on m.发起公司ID=s.ID
select *
from v3x.view_form_definition t
where t.field_info like '%formmain_35620%';

-- 枚举
select *
from v3x.view_ctp_enum_item where ID = '4700978110665738848';