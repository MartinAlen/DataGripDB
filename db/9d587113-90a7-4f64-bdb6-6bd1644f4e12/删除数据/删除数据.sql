# 入库单 采购订单关联表
delete
from receving_rkd_relation;

# 第三方接口请求表
delete  from business_8b0j ;

# sap执行日志
delete  from sap_execute_log ;

#  出入库明细
delete  from goods_input_output_account ;


#  待利用物资修改记录表
delete  from wait_use_repository_record ;

# 原辅料原辅料原辅料原辅料原辅料原辅料原辅料原辅料原辅料原辅料原辅料原辅料原辅料
# 清除入库明细
delete
from business_9yth;
delete
from business_715z;


# 清除原辅料出库明细
delete
from business_vx95;
delete
from business_1dmt;

# 设备设备设备设备设备设备设备设备设备设备设备设备设备设备设备设备设备设备设备设备
# 清除入库明细

delete
from business_y339;
# 子表 物料明细
delete
from business_f7hc;


# 清除领用明细
# 领用主表
delete
from business_ij1g where id='6ad1aa4c72f44b481afa95423088d1ee';
# 领用子表
delete
from business_m3wc where father_id='6ad1aa4c72f44b481afa95423088d1ee';

# 退库
delete
from business_c927;
delete
from business_z6nu;


# 待利用物资待利用物资待利用物资待利用物资待利用物资待利用物资待利用物资待利用物资
# 清除入库
delete
from business_3on5;
delete
from business_34db;


# 出库
delete
from business_e9wr;
delete
from business_l1lc;
# 待利用物资


# 调拨调拨调拨调拨调拨调拨调拨调拨调拨调拨调拨调拨调拨调拨调拨调拨调拨调拨调拨调拨

# 股份内部物资调拨申请表
delete
from business_kj74;

# 内部交易调拨物资明细
delete
from business_l1ci;

#
# 借用物资明细
delete
from business_ie9p;

# 储备定额
delete from repository_reserve;



# 盘点
delete from business_2jet;
delete from business_pbn5;
