# 领用主表
select id,
       ttwb,
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
where ckbm like '%112200%'
#     where psdd like '%熔%'
# where serial = '20231116082504859'
# where business_ij1g.flow_step like '%总经理%';
# where business_ij1g.create_date = '2023-08-28 16:50:56';

# where id = '0e5aa350c6ae4db0b8415332aaddd043'
# where serial = '20231025094042682'
order by create_date desc;


select *
from business_f7hc;


# 领用子表
select m.id,
       m.father_id,
       m.kcdbm,
       m.hjxx,
       s.hjxx,
       m.ckpzh,
       m.zkc,
       m.cksl,
       m.ktsl,
       m.wlbm,
       m.wlms,
       m.gcdm,
       m.jhbm,
       m.father_id,
       m.rkdid,
       m.sfck,
       m.ydlx

from business_m3wc m
         inner join business_f7hc s on m.rkdid = s.id
# where wlbm = '9900013889';
# where jhbm = 'CGJH4010202305080031';
# where rkdid !=''
# where id='112a052b8a524e0d84bab1d5f7e01abf';
# where m.father_id = '8aa364a13659499d96da526f0cb73dca';

select s.id, s.hjxx, s.wlbm, s.kcdbm
from business_ij1g m
         inner join business_m3wc s on m.id = s.father_id
where  (hjxx is null or hjxx = '')  and  m.flow_step!='归档' and m.create_date>'2023-10-27' order by m.create_date asc ;


# where cgddbh='CGDD4010202307180013';
select m.id,
       m.father_id,
       m.kcdbm,
       m.hjxx,
       m.ckpzh,
       m.zkc,
       m.cksl,
       m.ktsl,
       m.wlbm,
       m.wlms,
       m.gcdm,
       m.jhbm,
       m.father_id,
       m.rkdid,
       m.sfck,
       m.ydlx

from business_m3wc m
where m.ck = 'f77b1a88f70c4b61ae0d2be4a1b43798';


select xhjxx, yhjxx, ykcdbm
from business_50t4
where gcdm = 4010
  and kclx = 'SAP'
  and wlbm = '1000098961';

# 领用子表
select id, cksl, ktsl, gcdm, ckpzh
from business_m3wc
# where wlbm = '1000022922';

where father_id = 'a4515bdab0c54c249d4aa259f8b31d29';


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

# 设置抬头文本

update
    business_ij1g
set zt ='A18A09A02A08';




