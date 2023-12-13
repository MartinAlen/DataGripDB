select wlbm, wlms, djlx, wlpz, bussiness_user,djbm,kclx
from goods_input_output_account
# where djbm like '%SBRKD4010202307030001%'
where djlx='A18A06A04A01'
and  kclx='SAP'
# where wlpz='A18A06A04A01'
order by create_date desc limit 100;


select *
from goods_input_output_account
where kclx = 'WAITUSE'
  and djlx = 'A18A06A04A01';


select spjl.*
from business_l5ej spjl
         inner join business_hmz1 dhys on spjl.bussiness_key = dhys.id
where dhys.sbwzdhysdbh='${dhysdh}'