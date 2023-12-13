select *
from business_20ta m inner join business_938j s on m.id=s.father_id
where 1 = 1
  and ${if(len(制单单位) = 0,"1 = 1", "field_h1  like '%" + 制单单位 + "%'")}
  and ${if(len(标题) = 0,"1 = 1", "field_h5 like '%" + 标题 + "%'")}
  and ${if(len(月份) = 0,"1 = 1", "jsyuefen  like '%" + 月份 + "%'")}
  and ${if(len(数量质量确认编号) = 0,"1 = 1", "field_h11 like '%" + 数量质量确认编号 + "%'")}