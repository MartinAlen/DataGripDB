select id, cgy_ids, user_id
from ele_shop_purchase_apply
where apply_code = 'PR240222000013';



select id, apply_user_id, cgy_ids
from ele_shop_purchase_apply;

# 3323393954345927179 丁院巧 人员id
# 3921ab955321d20e2e341f98cc5b3c5b 天安管理员id 人员id

select id, apply_item_code, product_name, apply_item_code, remark, purchase_user_work_number
from ele_shop_purchase_apply_detail
where father_id = '036fff8f6c76b0b97721936738f2843a';

# 采购订单
select s.id, s.wlbm, s.xxmh, s.apply_item_code, s.apply_code, s.apply_item_code
from business_3k66 m
         inner join business_qq7x s on m.id = s.father_id
where szgcddh = 'PO240204000008';

select id,wlbm
from business_qq7x where id='ef6f304ec5efe2780c51561c1ab4c5fe';
# 到货验收主表
select id, cgy, org_id, dept_id, user_id, ysbz
from business_hmz1
# where serial = '20230810152123924';
where sbwzdhysdbh = 'INV231110000004';
# where sbwzdhysdbh = 'DHYSD4010202312090003';
# where id = 'd977a210b49740d59b946ef58982d434';
# where org_id = '00000001';


# 到货验收 设备明细
select zjjg,
       sjzt,
       rk_temp_zt,
       zt,
       cgddmxid,
       rkl,
       dhsl,
       zt,
       wgjcjsy
from business_6j3g
# where id = '58b784abf338f6444602050c82eaf239';
where father_id = '1feea6da9060b82e813a75c06e37abb0';

select s.id,s.wlbm,s.wlms,s.cgddmxid
from business_hmz1 m
         inner join business_6j3g s on m.id = s.father_id
inner join business_qq7x dd on s.cgddmxid=dd.id
where sbwzdhysdbh like '%INV240227000020%'


select ap.apply_user_id, ap.proposer_code, apd.*, qq7x.id as purchase_order_item_id, purm.szgcddh, qq7x.xxmh
from ele_shop_purchase_apply ap
         inner join ele_shop_purchase_apply_detail apd on ap.id = apd.father_id
         inner join business_qq7x qq7x
                    on apd.apply_code = qq7x.apply_code and qq7x.apply_item_code = apd.apply_item_code
         inner join business_3k66 purm on purm.id = qq7x.father_id;

