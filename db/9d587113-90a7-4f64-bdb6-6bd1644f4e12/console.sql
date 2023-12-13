SELECT a.szgcddh  '数字工厂订单号',
       a.gysbm    '供应商编码',
       a.gysmc    '供应商名称',
       a.sbr      '采购员',
       b.wlbm     '物料编码',
       b.wlms     '物料描述',
       b.wzlx     '物资类型',
       b.xxmh     '行项目号',
       b.ddsl     '订单数量',
       b.jldw     '计量单位',
       b.cgdj     '采购单价',
       b.jexjhs   '金额小计含税',
       a.sapcgpz1 'SAP采购凭证1',
       a.sapcgpz2 'SAP采购凭证2',
       a.sapcgpz3 'SAP采购凭证3',
       b.gcrkkw   '工厂收货库位',
       b.pch      '批次号'
FROM business_3k66 a
         LEFT JOIN business_qq7x b
                   on a.id = b.father_id
WHERE trim(a.sapcgpz1) != ''