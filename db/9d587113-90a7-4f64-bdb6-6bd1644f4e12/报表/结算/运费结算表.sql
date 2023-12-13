select *
from business_2837 m inner join business_9upl s on m.id=s.father_id

where 1 = 1
  and ${if(len(运费结算编号) = 0,"1 = 1", "jsqdbh  like '%" + 运费结算编号 + "%'")}
  and ${if(len(承运商名称) = 0,"1 = 1", "cysmc like '%" + 承运商名称 + "%'")}
  and ${if(len(承运商编码) = 0,"1 = 1", "cysbm  like '%" + 承运商编码 + "%'")}
  and ${if(len(物料描述) = 0,"1 = 1", "wlms like '%" + 物料描述 + "%'")}
  and ${if(len(物料编码) = 0,"1 = 1", "wlbm like '%" + 物料编码 + "%'")}