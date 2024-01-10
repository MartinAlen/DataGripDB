select s.dw, dhysmx.wgjcjsy, dhysmx.update_date, dhysmx.sjzt
from business_f7hc as s
         inner join business_6j3g dhysmx
                    on s.rkdid = dhysmx.id and s.father_id = '541ea66864bb1bdc481ec9d1160064d1'


# 主表
select id,
       rkdbh,
       org_id,
       htbh,
       htmc,
       dhysdh,
       create_date,
       rkpz,
       wlbmall
from business_y339
where id = 'b4c9a2a8e8573bed147b2be544734cd7';

# where serial = '20231226153831855'
# where sapcgpz1 = '4500357582'
    where org_id !='00000287'
# where rkdbh = 'SBRKD4010202312250029'
# where dhysdh is null
order by create_date desc;

# limit 10;


# 子表
select id, rksl, ckl, sapcgpz1, wlbm, rkpzh, father_id
from business_f7hc
where 1 = 1
#   and rksl != ckl
#   and ckl > 0
#   and id = '2694928a2b6bf2305eb78c54bacf2b90';

  and wlbm = '1000157656'
and dddj =135


select s.id, rksl, ckl, wlbm
from business_y339 m
         inner join business_f7hc s on m.id = s.father_id
where m.flow_step = '归档'
#   and rksl != ckl
#   and ckl > 0
  and wlbm = '1000034208';









