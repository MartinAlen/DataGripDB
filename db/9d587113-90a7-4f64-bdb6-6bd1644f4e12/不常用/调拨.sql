#
# 股份内部物资调拨申请表
select *
from business_kj74
order by create_date desc;


# 内部交易调拨物资明细
select *
from business_l1ci;


# 借用物资明细
select *
from business_ie9p;


# 调拨配置表
select id,
       gsmc,
       ywglbm,
       jbr,
       gh,
       lxdh,
       gsbm,
       gcbm

from business_3o18;


select m.id, m.dblx, s1.wait_use_id, s2.*
from business_kj74 m
         left join business_l1ci s1 on m.id = s1.father_id
         left join business_ie9p s2 on m.id = s2.father_id
where m.id = 'b709d969e97a452d805561292a06a47a';



# 报表


# 内部交易调拨物资明细
select *
from business_l1ci s inner  join  business_kj74 m on m.id=s.father_id;


# 借用物资明细
select *
from business_ie9p s inner  join  business_kj74 m on m.id=s.father_id;

