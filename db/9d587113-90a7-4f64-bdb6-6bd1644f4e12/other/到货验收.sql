# 到货验收主表
select id, cgy,org_id,dept_id,user_id
from business_hmz1
where serial = '20231212154145492';
# where sbwzdhysdbh = 'INV231110000004';
# where sbwzdhysdbh = 'DHYSD4010202312090003';
# where id = 'd977a210b49740d59b946ef58982d434';
# where org_id = '00000001';

# where sbwzdhysdbh = 'DHYSD4010202311070011';
# where id = '616dcd0d61d6414ca14860182e580a09';

# 4010 1530

# A15A47A01 质检结果 合格
# 到货验收 设备明细
select zjjg, sjzt, rk_temp_zt, zt, cgddmxid,rkl,dhsl,zt
from business_6j3g
# where id = '58b784abf338f6444602050c82eaf239';
where father_id = 'd977a210b49740d59b946ef58982d434';
# where wlms like '%滤布%';


#     主子表关联查询

select m.org_id, s.org_id, s.rk_temp_zt, s.zt,s.rkl
from business_hmz1 m
         inner join business_6j3g s
                    on m.id = s.father_id
where m.sbwzdhysdbh = 'INV231103000002'
  and (s.rk_temp_zt = '' OR s.rk_temp_zt IS NULL)
  AND (s.zt != 'A18A09A02A05' OR s.zt IS NULL or s.zt = '')
  and (s.cgjhbh is null or s.cgjhbh = '')
  and (s.sjzt = 'A18A07A17A03' or s.sfrbjs = 'A03A01A01');

# 送检状态
update business_6j3g
set zjjg='A15A47A01',
    sjzt='A18A07A17A03'
# where id = '58b784abf338f6444602050c82eaf239';
where father_id = 'f6d5ee82a02f9d6b58c9b1415104f627';


# 入库排查
select m.sbwzdhysdbh, s.dhsl, s.rkl, s.ddsl
from business_hmz1 m
         inner join business_6j3g s on m.id = s.father_id
where zjjg = 'A15A47A01'
  and sjzt = 'A18A07A17A03'
  and dhsl - s.rkl > 0
  and m.flow_step = '归档';
