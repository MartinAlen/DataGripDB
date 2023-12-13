# 设备物资入库单 到货验收审批记录
select spjl.*
from business_l5ej spjl
where spjl.bussiness_key in (select dhys.id
                             from business_y339 rkd
                                      inner join business_hmz1 dhys on rkd.dhysdh = dhys.sbwzdhysdbh
                             where rkd.id = '${id}')