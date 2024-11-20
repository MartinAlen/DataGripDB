# 入库单
select count(rkdbh) rk, rkdbh
from business_y339
group by rkdbh
having rk > 1;

# 出库单
select count(ckbm) bm, ckbm
from business_ij1g
group by ckbm
having bm > 1;



# 需求计划
select count(xqjhbh) bm, xqjhbh
from wzxqjh
group by xqjhbh
having bm > 1;


# 需求计划
select count(sbwzdhysdbh) bm, sbwzdhysdbh
from business_hmz1
group by sbwzdhysdbh
having bm > 1;
