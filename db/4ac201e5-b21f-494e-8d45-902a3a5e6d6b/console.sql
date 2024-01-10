select m.*, m.START_MEMBER_ID userId,f.NAME
from v3x.vieww_formmain_35620 m
         inner join V3X.view_org_unit F on M.FIELD0001 = F.ID




select m.*, m.START_MEMBER_ID as  USERID,m.FIELD0003 RESPONSEUSERID
from v3x.view_formmain_59004 m
  inner join V3X.view_org_unit F on M.FIELD0001 = F.ID
