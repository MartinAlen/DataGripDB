# 领用主表
select id,
       ttwb,
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
where ckbm = 'SBCK4390202401290237';
# where id = 'e6d984faf68c4f50ae851be843bc472c';
#     where psdd like '%熔%'
where serial = '20240105120936050'
# where business_ij1g.flow_step like '%总经理%';
# where business_ij1g.create_date = '2023-08-28 16:50:56';
# where serial = '20231025094042682'
order by create_date
        desc;


# 领用子表 关联入库单
select outSlave.id,
       input.hjxx,
       outSlave.cksl,
       input.rksl,
       input.ckl,
       input.dddj as '入库单价',
       outSlave.dddj as '出库单价',
       input.id inputId,
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
select m.id,
       m.father_id,
       m.kcdbm,
       gdzc,
       zzkm,
       ydlx,
       fylx,
       cbzx,
       cbzxms,
       nbddh,
       nbddms
from business_m3wc m
where 1 = 1
  and m.father_id = 'fd122b7651194af1abdb2b65c07edb93';
#   and rkdid = 'c36a39e6d083914033e123541fda982f';


select xhjxx, yhjxx, ykcdbm
from business_50t4
where gcdm = 4010
  and kclx = 'SAP'
  and wlbm = '1000098961';

# 领用子表
select id,
       jhbm,
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
from business_m3wc;

# where wlbm = '1000022922';
# where father_id = '4d04cb9870f64fbebce79449c4c95a9b';
# where id = '48ab661b9d8442119f584dac1ec55d95';


select s.wlbm,
       s.wlms,
       s.hjxx,
       s.rkdid,
       s.zkc,
       s.jhbm,
       s.kcdbm as ckkcdbm,
       s.cksl,
       s.sfck

from business_ij1g m
         left join business_m3wc s on m.id = s.father_id
where m.flow_step != '归档'
  and (s.hjxx = null or s.hjxx = '')
  and s.rkdid is not null
  and rkdid != '';



# where s.wlbm = '1000002669';
# where m.id = '8fad034462f35239add2fcc54a68329a';
# where m.ckbm = '8fad034462f35239add2fcc54a68329a';

# 领用主表
select ckbm, count(1) ss
from business_ij1g
# where ckbm='SBCK4010202306150041';
# where business_ij1g.flow_step like '%总经理%';
group by ckbm
having ss > 1;



where 1=1
#   and    business_m3wc.wlbm = '1000231020'
#       fylx like '%大师%'
group by  father_id
 having ss >20
