# 出库
select id,ckbm
from business_e9wr
where ckbm = 'DLYWZCK4010202401150005'
# where serial = '20240111120147526'
order by create_date desc;

# 出库 明细
select *
from business_l1lc
# where father_id = '85008822338c4f8caa6f8882e4151a2d';
# where wlbm = '1000014117';
# where  rkd_detail_id= '168fabf698914b3bb52775c2e379f056';
where wlbm='1000011419'