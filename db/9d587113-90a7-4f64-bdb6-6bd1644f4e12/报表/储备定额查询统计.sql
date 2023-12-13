select rr.*, sto.clabs, (map.verpr * sto.clabs) as zje, map.verpr,swo.org_name
from repository_reserve rr
         left join material_average_price map on rr.org_id = map.org_id and rr.wlbm = map.matnr
         inner join (select sum(clabs) as clabs, max(matnr) matnr, max(org_id) org_id
                     from sap_consignment_stock
                     group by matnr) sto on rr.org_id = sto.org_id and rr.wlbm = sto.matnr
         left join sync_werk_org swo on map.org_id = swo.org_code
where 1=1
  and ${if(len(物料编码) = 0,"1 = 1", "rr.wlbm like '%" + 物料编码 + "%'")}
  and ${if(len(物料描述) = 0,"1 = 1", "rr.wlms like '%" + 物料描述 + "%'")}




