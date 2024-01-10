select *
from v3x.view_formmain_41324;
;-- -. . -..- - / . -. - .-. -.--
select *
from v3x.view_form_definition t
where t.field_info like '%vieww_formmain_59002%';
;-- -. . -..- - / . -. - .-. -.--
select *
from v3x.view_form_definition t
where t.field_info like '%formmain_59002%';
;-- -. . -..- - / . -. - .-. -.--
select *
from v3x.view_ctp_enum_item where ID = '5202960628269731760';
;-- -. . -..- - / . -. - .-. -.--
select *
from v3x.vieww_formmain_59002;
;-- -. . -..- - / . -. - .-. -.--
select *
from v3x.view_formmain_59002;
;-- -. . -..- - / . -. - .-. -.--
select *
from v3x.view_form_definition t
where t.field_info like '%formmain_41324%';
;-- -. . -..- - / . -. - .-. -.--
select * from  v3x.view_org_unit where CODE is not null;
;-- -. . -..- - / . -. - .-. -.--
select *
from v3x.view_org_unit
where CODE is not null;
;-- -. . -..- - / . -. - .-. -.--
select m.*,f.NAME
from v3x.view_formmain_59016 m
         inner join V3X.view_org_unit F on m.FIELD0001 = F.ID;
;-- -. . -..- - / . -. - .-. -.--
select M.*,f.NAME
from v3x.view_formmain_59016 M
         inner join V3X.view_org_unit F on M.FIELD0001 = F.ID;
;-- -. . -..- - / . -. - .-. -.--
select M.FIELD0001
from v3x.view_formmain_59016 M;
;-- -. . -..- - / . -. - .-. -.--
select m.FIELD0001
from v3x.view_formmain_59016 m;
;-- -. . -..- - / . -. - .-. -.--
select FIELD0001
from v3x.view_formmain_59016 ms;
;-- -. . -..- - / . -. - .-. -.--
select *
from v3x.view_formmain_59016 ms;
;-- -. . -..- - / . -. - .-. -.--
select m.*, s.NAME
from v3x.view_formmain_41324 m
         left join v3x.view_org_unit s on m.FIELD0001 = s.ID
where length(s.CODE) = 8;
;-- -. . -..- - / . -. - .-. -.--
select m.*, s.NAME
from v3x.view_formmain_41324 m
         left join v3x.view_org_unit s on m.FIELD0001 = s.ID;
;-- -. . -..- - / . -. - .-. -.--
select m.*
from v3x.vieww_formmain_59016 m;
;-- -. . -..- - / . -. - .-. -.--
select m.*
from v3x.view_formmain_59016 m;
;-- -. . -..- - / . -. - .-. -.--
select *
from view_formmain_59016;
;-- -. . -..- - / . -. - .-. -.--
select m.*, m.START_MEMBER_ID as USERID, m.FIELD0003 RESPONSEUSERID
from v3x.view_formmain_59016 m;
;-- -. . -..- - / . -. - .-. -.--
select *
from v3x.view_formmain_59016;
;-- -. . -..- - / . -. - .-. -.--
select *
from v3x.vieww_formmain_59016 ms;
;-- -. . -..- - / . -. - .-. -.--
select *
from v3x.view_form_definition t
where t.field_info like '%formmain_59016%';
;-- -. . -..- - / . -. - .-. -.--
select m.*, m.START_MEMBER_ID as USERID, m.FIELD0003 RESPONSEUSERID,s.NAME
from v3x.vieww_formmain_59016 m
         left join v3x.view_org_unit s on m.FIELD0001 = s.ID;
;-- -. . -..- - / . -. - .-. -.--
select *
from v3x.view_org_unit where ID='-6487336872663628682';
;-- -. . -..- - / . -. - .-. -.--
select *
from v3x.VIEW_YTHSH_USERINFO where ID='-6487336872663628682';
;-- -. . -..- - / . -. - .-. -.--
select *
from v3x.VIEW_YTHSH_USERINFO;
;-- -. . -..- - / . -. - .-. -.--
select *
from v3x.view_org_unit where id='-3873228250215792108';
;-- -. . -..- - / . -. - .-. -.--
select *
from v3x.VIEW_ORG_MEMBER where ID='-6487336872663628682';
;-- -. . -..- - / . -. - .-. -.--
select *
from v3x.view_org_unit where id='5226855723294999536';
;-- -. . -..- - / . -. - .-. -.--
select m.*, m.START_MEMBER_ID as USERID, m.FIELD0003 RESPONSEUSERID, s.NAME
from v3x.vieww_formmain_59016 m
         inner join v3x.VIEW_ORG_MEMBER user on m.START_MEMBER_ID = user.ID
         inner join v3x.view_org_unit s on s.ID = user.ORG_ACCOUNT_ID;
;-- -. . -..- - / . -. - .-. -.--
select m.*, m.START_MEMBER_ID as USERID, m.FIELD0003 RESPONSEUSERID, s.NAME
from v3x.vieww_formmain_59016 m
         inner join v3x.VIEW_ORG_MEMBER user on m.START_MEMBER_ID = user.ID
         left join v3x.view_org_unit s on s.ID = user.ORG_ACCOUNT_ID;
;-- -. . -..- - / . -. - .-. -.--
select m.*, m.START_MEMBER_ID as USERID, m.FIELD0003 RESPONSEUSERID, s.NAME
from v3x.vieww_formmain_59016 m
         inner join v3x.VIEW_ORG_MEMBER u on m.START_MEMBER_ID = u.ID
         left join v3x.view_org_unit s on s.ID = u.ORG_ACCOUNT_ID;
;-- -. . -..- - / . -. - .-. -.--
select m.*, m.START_MEMBER_ID as USERID, m.FIELD0003 RESPONSEUSERID, s.NAME
from v3x.vieww_formmain_59016 m
         left join v3x.view_org_unit s on s.ID = m.FIELD0003;
;-- -. . -..- - / . -. - .-. -.--
select m.*, m.START_MEMBER_ID as USERID, m.FIELD0003 RESPONSEUSERID, s.NAME,s.ID
from v3x.vieww_formmain_59016 m
         left join v3x.view_org_unit s on s.ID = m.FIELD0003;
;-- -. . -..- - / . -. - .-. -.--
select m.*, m.START_MEMBER_ID as USERID, m.FIELD0003 RESPONSEUSERID, s.NAME,s.ID oaorgid
from v3x.vieww_formmain_59016 m
         left join v3x.view_org_unit s on s.ID = m.FIELD0003;
;-- -. . -..- - / . -. - .-. -.--
select *
from v3x.view_form_definition t
where t.field_info like '%formmain_35620%';
;-- -. . -..- - / . -. - .-. -.--
select m.*, m.START_MEMBER_ID userId,f.NAME
from v3x.vieww_formmain_35620 m
         inner join V3X.view_org_unit F on M.FIELD0001 = F.ID;
;-- -. . -..- - / . -. - .-. -.--
select *
from v3x.view_form_definition t
where t.field_info like '%formmain_59004%';