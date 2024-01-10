# 领用子表
select m.id,
       m.ckl,
       m.rksl
from business_m3wc s
         inner join business_f7hc m on m.rkdid = s.id
where m.flow_step = '归档';


# 领用主表
# select input.rksl, input.ckl, s.cksl


# 出库单出库数量统计 (计划物资) 重复出库
select sum(s.cksl) kk, count(input.rkdid) duplicateGetOut, input.rkdid
# select  count(1)
from business_ij1g m
         inner join business_m3wc s on m.id = s.father_id
         inner join business_f7hc input on s.rkdid = input.id
where m.flow_step != '领用填写'
  and s.jhbm != ''
  and input.rksl < input.ckl
group by input.rkdid
having duplicateGetOut > 1;


# 监测正常提交过填写阶段后 实际出库量回写不正确 的数据
select m.ckbm,
       m.flow_state,
       input.id,
       input.rksl,
       input.ckl as input_ckl,
       outs.cksl    actual_ckl
# select  count(1)
from business_ij1g m
         inner join business_m3wc outs on m.id = outs.father_id
         inner join business_f7hc input on outs.rkdid = input.id
where m.flow_step != '领用填写'
#   计划物资出库
  and outs.jhbm != ''
#   计划物资的出库量与实际出库量
  and input.ckl > input.ckl;

# 统计相同入库单id的数据

# 监测正常提交过填写阶段后 实际出库量回写不正确 的数据
select *
from (select outs.rkdid,
             input.ckl as   input_ckl,
             sum(outs.cksl) actual_ckl
      from business_ij1g m
               inner join business_m3wc outs on m.id = outs.father_id
               inner join business_f7hc input on outs.rkdid = input.id
      where m.flow_step != '领用填写'
        and m.flow_step is not null
        and m.flow_step != ''
        and outs.jhbm != ''
      group by outs.rkdid) x
where x.input_ckl != actual_ckl;

# 查询入库单数据
select inputMaster.id, slave.rksl, slave.ckl
from business_y339 inputMaster
         inner join business_f7hc slave on inputMaster.id = slave.father_id;


select rksl, ckl
from business_f7hc
where id = 'b37456a6bc5aee45dd0e96851b285dde'





