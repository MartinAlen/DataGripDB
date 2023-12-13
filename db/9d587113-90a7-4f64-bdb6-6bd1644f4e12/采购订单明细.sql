select sum(mx.cgdj * mx.ddsl) / 10000
from business_qq7x as mx
         inner join
     business_3k66 as dd on mx.father_id = dd.id
where dd.tsdzzt = 'A18A10A09A01'
  and dd.ddfqlx = 'A18A02A11A01'
  and dd.ddsfgb = 'A03A01A02'
  and mx.org_id like '%10003343%';



select cgwjbs.cgms, cgwjbs.cgfs, cgwjbsmx.cgjhbh
from business_1bl3 cgwjbs
         inner join business_76uh cgwjbsmx
                    on cgwjbs.id = cgwjbsmx.father_id;



select *
from sync_werk_org
where org_code = '00000004';


# A18A02A04A08 谈判采购
# A18A02A04A03 竞争性谈判
# A18A02A04A06 竞争采购
# A18A02A04A11 长协合同下订单

# 采购文件编审
select org_id
from business_1bl3
# where org_id = '10003343'
# 自采
where cgms = 'A18A01A08A02'
# group by cgms;


select *
from business_1bl3
where;


# 采购计划
select *
from business_7twq
where cggyjhbh is null;

# 临时修改值
