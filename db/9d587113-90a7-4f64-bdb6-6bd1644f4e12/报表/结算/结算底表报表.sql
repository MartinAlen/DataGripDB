select *
from business_97n8;



select   ak.*
from business_97n8 ak
where 1 = 1
  and ${if(len(集采单位) = 0,"1 = 1", "jcdw  like '%" + 集采单位 + "%'")}
  and ${if(len(收货单位) = 0,"1 = 1", "shdw like '%" + 收货单位 + "%'")}
  and ${if(len(结算模块) = 0,"1 = 1", "jsmk  like '%" + 结算模块 + "%'")}
  and ${if(len(采购合同编号) = 0,"1 = 1", "cghtbh like '%" + 采购合同编号 + "%'")}
  and ${if(len(采购合同补充编号) = 0,"1 = 1", "cghtbcbh like '%" + 采购合同补充编号 + "%'")}
  and ${if(len(供应商名称) = 0,"1 = 1", "gysmc like '%" + 供应商名称 + "%'")}
  and ${if(len(供应商编码) = 0,"1 = 1", "gysbm like '%" + 供应商编码 + "%'")}
  and ${if(len(运输合同编号) = 0,"1 = 1", "yshtbh like '%" + 运输合同编号 + "%'")}
  and ${if(len(运输合同补充编号) = 0,"1 = 1", "yshtbcbh like '%" + 运输合同补充编号 + "%'")}
  and ${if(len(承运商名称) = 0,"1 = 1", "cysmc like '%" + 承运商名称 + "%'")}
  and ${if(len(承运商编码) = 0,"1 = 1", "cysbm like '%" + 承运商编码 + "%'")}
  and ${if(len(数字工厂订单号) = 0,"1 = 1", "szgcddh like '%" + 数字工厂订单号 + "%'")}
  and ${if(len(供应商至采购单位SAP凭证) = 0,"1 = 1", "gyszcgdwsappz like '%" + 供应商至采购单位SAP凭证 + "%'")}
  and ${if(len(集采单位至股份SAP凭证) = 0,"1 = 1", "jcdwzgfsappz like '%" + 集采单位至股份SAP凭证 + "%'")}
  and ${if(len(股份至收货单位SAP凭证) = 0,"1 = 1", "gfzshdwsappz like '%" + 股份至收货单位SAP凭证 + "%'")}
  and ${if(len(物料编码) = 0,"1 = 1", "wlbm like '%" + 物料编码 + "%'")}
  and ${if(len(物料描述) = 0,"1 = 1", "wlms like '%" + 物料描述 + "%'")};

select *
from business_97n8;
select *
from sync_werk_org
where org_code = '';