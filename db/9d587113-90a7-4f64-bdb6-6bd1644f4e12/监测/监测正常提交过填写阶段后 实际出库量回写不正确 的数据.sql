# 计划物资入库单  出库数量与实际出库数量不一致的数据
# ************不改动************************
select *
from (select outs.rkdid,
             input.rksl,
             input.ckl as   input_ckl,
             input.wlbm,
             sum(outs.cksl) actual_ckl
      from business_ij1g m
               inner join business_m3wc outs on m.id = outs.father_id
               inner join business_f7hc input on outs.rkdid = input.id
      where m.flow_step != '领用填写'
        and m.flow_step is not null
        and m.flow_step != ''
        and outs.jhbm != ''
      group by outs.rkdid) x
where input_ckl != actual_ckl
  and rksl > actual_ckl
  and input_ckl != rksl order by wlbm


# 出库单 单独排查
select m.ckbm, m.flow_step
from business_ij1g m
         inner join business_m3wc outs on m.id = outs.father_id;


# 单独排查
select outs.rkdid,
       input.ckl as input_ckl,
       outs.cksl    actual_ckl
from business_ij1g m
         inner join business_m3wc outs on m.id = outs.father_id
         inner join business_f7hc input on outs.rkdid = input.id;



# 单独 排查 入库单 出库数量大于 入库数量的异常情况
select input.id, rksl, ckl
from business_f7hc input
where ckl > input.rksl;




# 单独 排查 入库单 出库数量大于 入库数量的异常情况
select input.id,input.wlbm, rksl, ckl
from business_f7hc input
where ckl > input.rksl;
