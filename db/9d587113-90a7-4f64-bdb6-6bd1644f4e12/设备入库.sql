select s.dw, dhysmx.wgjcjsy, dhysmx.update_date, dhysmx.sjzt
from business_f7hc as s
         inner join business_6j3g dhysmx
                    on s.rkdid = dhysmx.id and s.father_id = '541ea66864bb1bdc481ec9d1160064d1'


# 主表
select id,
       rkdbh,
       dhysdh,
       sapcgpz1,
       kgy,
       flow_step,
       org_id,
       htbh,
       kgy,
       htmc,
       dhysdh,
       update_date,
       rkpz,
       wlbmall
from business_y339
where 1 = 1
#   and id = '259ba9cf927a0e68f1857167448ab92b'
# and serial = '20231124132105027'
# and sapcgpz1 = '4500365366'
#     where org_id !='00000287'
  and rkdbh = 'SBRKD4390202403030001'
# where dhysdh is null
order by create_date desc;

# limit 10;

# 子表
select id,
       father_id,
       ddhxmh,
       rksl,
       rkpzh,
       gcbm,
       ckl,
       sapcgpz1,
       wlbm,
       dddj,
       father_id,
       hjxx,
       kmdbm,
       create_date
from business_f7hc
where 1 = 1
#   and id = '468579929bc2c6a2e3bfad820543a173'
#   and rksl != ckl
#   and ckl > 0
#   and father_id = '67c031ab09b7dc07d08d8e50403786f4';
# and org_id='00008413'
  and wlbm = '1000003645'
having rksl != business_f7hc.ckl;

#
# and rkpzh='5006306102'
# and sapcgpz1='4500360355'




# and dddj =135


select s.id, rksl, ckl, wlbm
from business_y339 m
         inner join business_f7hc s on m.id = s.father_id
where m.flow_step = '归档'
#   and rksl != ckl
#   and ckl > 0
  and wlbm = '1000152865';



