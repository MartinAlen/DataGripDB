# 领用主表
select id,
       ttwb,
       llr,
       aqhbfy,
       ckbm,
       psdd,
       serial,
       create_date,
       update_date,
       flow_step,
       flow_state,
       ckbm,
       kcdbm
from business_ij1g
# where ckbm is null  or ckbm=''
where ckbm = 'SBCK4390202403040183';

where id = '06d2e07a156043d8a641e22f7af2bb71';
#     where psdd like '%熔%'
where serial = '20240227120025202'
# where business_ij1g.flow_step like '%总经理%';
# where business_ij1g.create_date = '2023-08-28 16:50:56';
# where serial = '20231025094042682'
order by create_date
desc;

select count(ckbm) s, ckbm
from business_ij1g
group by ckbm
having s > 1;

# 领用子表 关联入库单
select outSlave.id,
       input.hjxx,
       outSlave.cksl,
       input.rksl,
       input.ckl,
       input.dddj    as '入库单价',
       outSlave.dddj as '出库单价',
       input.id         inputId,
       outSlave.father_id,
       outSlave.org_id,
       outSlave.gcdm,
       outSlave.rkdid
from business_m3wc outSlave
         left join business_f7hc input on outSlave.rkdid = input.id
where 1 = 1
#   and outSlave.wlbm = '1000231020';
# where jhbm = 'CGJH4010202305080031';
# where rkdid !=''
# where id='112a052b8a524e0d84bab1d5f7e01abf';
  and outSlave.father_id = '5bea62d2cb0d4004940b638567c86e48';

select s.id, s.hjxx, s.wlbm, s.kcdbm
from business_ij1g m
         inner join business_m3wc s on m.id = s.father_id
where (hjxx is null or hjxx = '')
  and m.flow_step != '归档'
  and m.create_date > '2023-10-27'
order by m.create_date asc;


# 领用子表
select id,
       org_id,
       wlbm,
       dddj,
       cksl,
       father_id,
       ckpzh,
       zzkm,
       jldw,
       dwms,
       ydlx,
       fylx,
       nbddh,
       zjgc,
       zjgcms,
       nbddh,
       nbddms,
       rkdid
from business_m3wc
where 1 = 1
# and wlbm='1000152865'
  and father_id = 'c9e03742f30a44e1b6a2ea2a5b020734';
#     and ydlx=261
#     and fylx like '%有关资产%'
#   and rkdid = 'c36a39e6d083914033e123541fda982f';

# 库位及货架表
select xhjxx, yhjxx, ykcdbm
from business_50t4
where 1 = 1
#   and     gcdm = 4010
  and kclx = 'SAP'
  and wlbm = '1000152865';

# 领用子表
select id,
       jhbm,
       father_id,
       hjxx,
       cklx,
       ydlx,
       cksl,
       sfck,
       father_id,
       ktsl,
       gcdm,
       ckpzh,
       rkdid,
       cbzx,
       cbzxms
from business_m3wc
where wlbm = '1000003209';
# where father_id = '4d04cb9870f64fbebce79449c4c95a9b';
# where id = '48ab661b9d8442119f584dac1ec55d95';


select ydlx,fylx
from business_m3wc where org_id='10000600' and ydlx='935'