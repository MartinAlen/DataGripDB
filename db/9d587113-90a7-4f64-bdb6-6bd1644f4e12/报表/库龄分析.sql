SELECT s.*, ppm.maktx, swo.org_name, sap_stock.clabs, sap_stock.clabs * s.zdj as je,msl.lgobe
FROM `sap_goods_year` s
         INNER JOIN p_product_master ppm on s.matnr = ppm.matnr and s.werks = ppm.werks
    and s.werks = ppm.werks
         inner join sync_werk_org swo on s.werks = swo.werks
         inner join sap_consignment_stock sap_stock
                    on s.lgort = sap_stock.lgort
                        and s.matnr = sap_stock.matnr and s.werks = sap_stock.werks
         inner join m_store_location msl on s.lgort = msl.lgort and s.werks = msl.werks
where (z1msl > 0 ||
       z2msl > 0 ||
       z3msl > 0 ||
       z4msl > 0 ||
       z5msl > 0 ||
       z6msl > 0 ||
       z1ysl > 0 ||
       z2ysl > 0 ||
       z3ysl > 0 ||
       znysl > 0)
    and ${if(len(工厂名称) = 0,"1 = 1", "swo.org_name like '%" + 工厂名称 + "%'")}
and ${if(len(物料编码) = 0,"1 = 1", "s.matnr like '%" + 物料编码 + "%'")}
and ${if(len(物料描述) = 0,"1 = 1", "ppm.maktx like '%" + 物料描述 + "%'")}
and ${if(len(库位编码) = 0,"1 = 1", "s.lgort like '%" + 库位编码 + "%'")}
and ${if(len(库位名称) = 0,"1 = 1", "msl.lgobe like '%" + 库位名称 + "%'")}
    ;


