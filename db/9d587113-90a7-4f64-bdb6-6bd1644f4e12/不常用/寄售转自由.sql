# 主表
select *
from business_66o1
where 1 = 1
#                      and serial='20240205132003559'
  and dh = 'JSZZY4070202402080019';

# 明细
select *
from business_iy41
where 1=1
      and father_id = '1755479445174534146';
# and wlbm  = '1000228201';



select *
from business_66o1 m
         left join business_iy41 s on m.id = s.father_id;



select *
from sap_consignment_stock
where matnr = '1000214915';

