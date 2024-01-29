select s.dw, dhysmx.wgjcjsy, dhysmx.update_date, dhysmx.sjzt
from business_f7hc as s
         inner join business_6j3g dhysmx
                    on s.rkdid = dhysmx.id and s.father_id = '541ea66864bb1bdc481ec9d1160064d1'


# 主表
select id,
       rkdbh,
       org_id,
       htbh,
       kgy,
       htmc,
       dhysdh,
       create_date,
       rkpz,
       wlbmall
from business_y339
where 1 = 1
  and id = '17f44848e47a85d10feccafc277b1a35'

# where serial = '20231226153831855'
# and sapcgpz1 = '4500365366'
#     where org_id !='00000287'
# and rkdbh = 'SBRKD4010202401190091'
# where dhysdh is null
order by create_date desc;


# limit 10;


# 子表
select id,
       ddhxmh,
       rksl,
       gcbm,
       ckl,
       sapcgpz1,
       wlbm,
       dddj,
       rkpzh,
       father_id
from business_f7hc
where 1 = 1
    and id='51ebbf67f424fcc915d73711fc18ae9f'
#   and rksl != ckl
#   and ckl > 0
#   and father_id = '990dcfc482a388d418b7e2558803acc2';
# and org_id='00008413'
# and rkpzh='5006306102'
# and sapcgpz1='4500360355'
#   and wlbm = '1000394281'


# and dddj =135


select s.id, rksl, ckl, wlbm
from business_y339 m
         inner join business_f7hc s on m.id = s.father_id
where m.flow_step = '归档'
#   and rksl != ckl
#   and ckl > 0
  and wlbm = '1000034208';









