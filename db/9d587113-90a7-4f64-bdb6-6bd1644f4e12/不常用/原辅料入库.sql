# A18A01A01A03A01 原料
# A18A01A01A03A02 设备
# A18A01A01A03A05 待利用物资

#           .eq("wzlx","A18A01A01A03A01")//原辅料
#                 .ne("zt","A18A09A02A05")//到货状态
select *
from goods_repository;


# 库存
select m.id      id,
       burks     工厂,
       matkl     物料组,
       m.matnr   物料编码,
       p.wgbez   物料组描述,
       m.maktx   物料描述,
       lgort     库存编码,
       lgobe     库存地点,
       unit_name 单位,
       m.meins   单位编码,
       stock     库存
from m_sap_stock m
         inner JOIN p_product_master p on m.matnr = p.matnr
where m.matnr = '';

# 根据入库单 进行出库
select hjbm, (rksl - IFNULL(ckl, 0)) kcl_temp
from business_715z
where kcdbm is not null
having kcl_temp > 0;


# 到货验收明细
select s.dddj,
       s.zt,
       m.id,
       s.wlbm,
       m.sbwzdhysdbh,
       m.create_date,
       m.wlcydh,
       s.wzlx,
       s.zt,
       m.gysbm,
       m.gysmc,
       m.htbh,
       s.fhsl,
       s.shsl,
       s.rkl,
       s.dw,
       s.cgjhh,
       s.dddj
from business_hmz1 m
         left join business_qux5 s on m.id = s.father_id
order by s.zt desc;

select *
from goods_input_output_account;

select sbwzdhysdbh
from business_hmz1
where id = 'd205613c74fc4c0aa86e5ae3b348bff5';



# where wzlx is not null;

# 入库明细
select m.id,m.zt,m.org_id
from business_9yth m
         inner join business_715z s on m.id = s.father_id
# where s.id = '8e917eef604846ba83bbb6fef5109b95'
where m.szgcdd='CGDD00001202401240005'
order by m.create_date desc;

select *
from business_715z
where id = '8b2741f402384c6cbe4687a78001bf65'
order by create_date desc;


# 出库主表
select *
from business_vx95
order by create_date desc;
# 出库子表
select *
from business_1dmt;


# 出库明细
select m.dept_id, m.org_id
from business_vx95 m
         left join business_1dmt s on m.id = s.father_id;


# 荣国入库单查询出库单主表信息
select s.material_incoming_id
from business_vx95 m
         left join business_1dmt s on m.id = s.father_id
where s.material_incoming_id in (select s.id
                                 from business_9yth m
                                          left join business_715z s on m.id = s.father_id
                                 where m.id = '0a6d4af01cd9764c30b36e00735627d6');

select s.material_incoming_id
from business_vx95 m
         left join business_1dmt s on m.id = s.father_id
where s.material_incoming_id in (select s.id
                                 from business_9yth m
                                          left join business_715z s on m.id = s.father_id
                                 where m.id = '0a6d4af01cd9764c30b36e00735627d6';


# 领用主表
select *
from business_vx95 m
         left join business_1dmt s
                   on m.id = s.father_id;


# 领用子表
select *
from business_1dmt;



select *
from business_hmz1 m
         left join business_qux5 s on m.id = s.father_id
where wzlx = 'A18A01A01A03A01'


