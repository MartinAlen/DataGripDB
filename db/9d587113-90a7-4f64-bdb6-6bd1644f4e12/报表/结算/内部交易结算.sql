select *
from business_96z0 m
         inner join business_fhuj s on  m.id=s.father_id
where 1=1
  and ${if(len(集采单位) = 0,"1 = 1", "cgyfjsbt  like '%" + 数量质量确编号 + "%'")}
  and ${if(len(收货单位) = 0,"1 = 1", "shdw like '%" + 收货单位 + "%'")}
  and ${if(len(月份) = 0,"1 = 1", "yf  like '%" + 月份 + "%'")}
  and ${if(len(内部交易结算编号) = 0,"1 = 1", "nbjyjsbh like '%" + 内部交易结算编号 + "%'")}
