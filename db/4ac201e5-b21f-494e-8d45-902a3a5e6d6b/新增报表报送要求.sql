select m.*, m.START_MEMBER_ID userId,f.NAME
from v3x.vieww_formmain_35620 m
         inner join V3X.view_org_unit F on M.FIELD0001 = F.ID;



select m.*,s.CODE
from  v3x.view_formmain_35620 m inner join v3x.view_org_unit s on m.发起公司ID=s.ID
select *
from v3x.view_form_definition t
where t.field_info like '%formmain_35620%';

-- 枚举
select *
from v3x.view_ctp_enum_item where ID = '4700978110665738848';