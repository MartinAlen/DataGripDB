# 到货验收主表
select id, szgcddh,sbwzdhysdbh,cgy, org_id, create_date,dept_id, user_id, flow_state, flow_step
from business_hmz1
# where serial = '20240125143513227';
where sbwzdhysdbh like '%INV240226000035%';
# where sbwzdhysdbh = 'DHYSD4010202312090003';
# where id = 'd977a210b49740d59b946ef58982d434';
# where org_id = '00000001';

# where sbwzdhysdbh = 'DHYSD4010202311070011';
# where id = '616dcd0d61d6414ca14860182e580a09';

# 4010 1530

# A15A47A01 质检结果 合格
# 到货验收 设备明细
select id,
       zjjg,
       sjzt,
       rk_temp_zt,
       zt,
       cgddmxid,
       rkl,
       dhsl,
       zt,
       xxmh
from business_6j3g
# where id = '58b784abf338f6444602050c82eaf239';
where father_id = '3da3f1df12ab467cb9777d5b688704c1';

#   and wlbm='1000043389'
# where wlms like '%滤布%';


#     主子表关联查询

select m.org_id, s.org_id, s.rk_temp_zt, s.zt, s.rkl
from business_hmz1 m
         inner join business_6j3g s
                    on m.id = s.father_id
where m.sbwzdhysdbh = 'DHYSD4010202402260017';

select id,rkl,rk_temp_zt
from business_6j3g where father_id='6a348224eb474d698fd48f83751c205b';

# 送检状态
update business_6j3g
set sjzt='A18A07A17A03'
# where id = '58b784abf338f6444602050c82eaf239';
where father_id = '26ddc8df39aa434f9a27276338241d3a';


# 入库排查
select m.sbwzdhysdbh, s.dhsl, s.rkl, s.ddsl, m.flow_state
from business_hmz1 m
         inner join business_6j3g s on m.id = s.father_id
where zjjg = 'A15A47A01'
  and sjzt = 'A18A07A17A03'
  and dhsl - s.rkl > 0
  and m.flow_step = '归档';
