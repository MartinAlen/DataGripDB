# 领用主表
select id,
       ttwb,
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
where ckbm like '%SBCK4010202401020343%';

#     where psdd like '%熔%'
# where serial = '20240102175828585'
# where business_ij1g.flow_step like '%总经理%';
# where business_ij1g.create_date = '2023-08-28 16:50:56';
where id = '2f904bfffb1f423891439f5531bfb67a'
# where serial = '20231025094042682'
order by create_date desc;



# 领用子表 关联入库单
select outSlave.id,
       input.hjxx,
       outSlave.cksl,
       input.rksl,
       input.ckl
from business_m3wc outSlave
         inner join business_f7hc input on outSlave.rkdid = input.id
where outSlave.wlbm = '1000034208';
# where jhbm = 'CGJH4010202305080031';
# where rkdid !=''
# where id='112a052b8a524e0d84bab1d5f7e01abf';
# where m.father_id = '8aa364a13659499d96da526f0cb73dca';

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
cbzx,cbzxms
from business_m3wc m
where m.father_id = '3542b1ca222e485a97f46cadd7e08f5d';


select xhjxx, yhjxx, ykcdbm
from business_50t4
where gcdm = 4010
  and kclx = 'SAP'
  and wlbm = '1000098961';

# 领用子表
select id, jhbm,cksl, father_id,ydlx,ktsl, gcdm, ckpzh,rkdid,cbzx,cbzxms
from business_m3wc
# where wlbm = '1000022922';
where father_id = '48fb1cd30ae44760b9aa2f2cedbbeb6a';
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
