select m.*, m.START_MEMBER_ID as USERID, m.FIELD0003 RESPONSEUSERID
from v3x.view_formmain_59016 m


select m.*, m.START_MEMBER_ID as USERID, m.FIELD0003 RESPONSEUSERID, s.NAME,s.ID oaorgid
from v3x.vieww_formmain_59016 m
         left join v3x.view_org_unit s on s.ID = m.FIELD0003;




select *
from v3x.view_org_unit where id='5226855723294999536';
select *
from v3x.VIEW_ORG_MEMBER where ID='-6487336872663628682';