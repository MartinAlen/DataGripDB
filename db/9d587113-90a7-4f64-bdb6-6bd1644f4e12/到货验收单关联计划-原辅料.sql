------------------------------------------------------------------------------------------------------------------------
#                     原辅料采购订单明细
SELECT dhddmx.cgjhh           AS           jhbm,
       dhddmx.id,
       dhddmx.cgddmxid,
       dhddmx.zjsfhg                       sjzt,
       cgjh.cgr               AS           cgy,
       cgjh.sbr               AS           sbr,
       cgdd.gysbm             as           xdfbm,
       cgdd.gysmc             as           xdfmc,
       cgdd.szgcddh                        cgddh,
       cgdd.htbh,
       cgdd.htmc,
       dhddmx.wlbm,
       dhddmx.wlms,
       dhddmx.wlzbm,
       dhddmx.wlzms,
       dhddmx.ddsl            AS           sl,
       cgddmx.xxmh,
       cgddmx.rkkw,
       dhddmx.sm,
       ifnull(cgddmx.cgdj, 0) as           dj,
       cqjhmx.jldw,
       'CGJH'                              jhlx,
       cgjh.sjlx,
       cgjh.jyxm,
       cgjh.sbwh,
       cgjh.sbbmname,
       cgjh.fj,
       cgjh.fjbz,
       cgjh.zdyjy,
       cgjh.ggxh,
       cgjh.fylx,
       cgjh.ydlx,
       cgjh.cbzx,
       cgjh.jgh,
       cgjh.zch,
       cgjh.shdz,
       cgjh.wzjb,
       dhddmx.zt,
       dhddmx.rk_temp_zt,
       dhddmx.rkl,
       dhddmx.shsl,
       dhddmx.shsl - ifnull(dhddmx.rkl, 0) wrksl,
       cgdd.sapcgpz1,
       dhysd.sbwzdhysdbh,
       dhysd.jyfl,
       dhysd.id                            dhysdid,
       dhysd.kgy
FROM business_qux5 dhddmx
         inner join business_hmz1 dhysd on dhddmx.father_id = dhysd.id and dhysd.jyfl = 'A18A01A01A03A01'
         inner JOIN business_3k66 cgdd on dhysd.szgcddh = cgdd.szgcddh
         inner join business_qq7x cgddmx on cgdd.id = cgddmx.father_id
         left JOIN business_7twq cgjh ON cgjh.cggyjhbh = dhddmx.cgjhh
         left JOIN wzxqjh w ON cgjh.xqjhbh = w.xqjhbh
         left JOIN business_6151 AS cqjhmx ON cgjh.id = cqjhmx.father_id

WHERE (dhddmx.rk_temp_zt = '' OR dhddmx.rk_temp_zt IS NULL)
#   未入库
  AND (dhddmx.zt != 'A18A09A02A05' OR dhddmx.zt IS NULL)
  and dhddmx.cgjhh like 'CGJH%'
  and (cgdd.sapcgpz1 != null OR cgdd.sapcgpz1 != '')

#   质检结果合格
# and  (dhddmx.zjjg = 'A15A47A01' or dhddmx.sfrbjs = 'A03A01A01')
union


# 根据到货验收单进行数据筛选 长期需求计划
SELECT dhddmx.cgjhh          AS           jhbm,
       dhddmx.id,
       dhddmx.cgddmxid,
       dhddmx.zjsfhg sjzt,
       ''                     AS           cgy,
       cqjh.sbr               AS           sbr,
       cgdd.gysbm             as           xdfbm,
       cgdd.gysmc             as           xdfmc,
       cgdd.szgcddh                        cgddh,
       cgdd.htbh,
       cgdd.htmc,
       dhddmx.wlbm,
       dhddmx.wlms,
       dhddmx.wlzbm,
       dhddmx.wlzms,
       dhddmx.ddsl            AS           sl,
       cgddmx.xxmh,
       cgddmx.rkkw,
       dhddmx.sm,
       ifnull(cgddmx.cgdj, 0) as           dj,
       cqjhmx.jldw,
       'CQXQ'                              jhlx,
       cqjhmx.sjlx,
       cqjhmx.jyxm,
       ''                     as           sbwh,
       ''                     as           sbbmname,
       ''                     as           fj,
       ''                     as           fjbz,
       ''                     as           zdyjy,
       ''                     as           ggxh,
       ''                     as           fylx,
       ''                     as           ydlx,
       ''                     as           cbzx,
       ''                     as           jgh,
       ''                     as           zch,
       ''                     as           shdz,
       ''                     as           wzjb,
       dhddmx.zt,
       dhddmx.rk_temp_zt,
       dhddmx.rkl,
       dhddmx.shsl,
       dhddmx.shsl - ifnull(dhddmx.rkl, 0) wrksl,
       cgdd.sapcgpz1,
       dhysd.sbwzdhysdbh,
       dhysd.jyfl,
       dhysd.id                            dhysdid,
       dhysd.kgy
FROM business_qux5 dhddmx
         inner join business_hmz1 dhysd on dhddmx.father_id = dhysd.id
         inner JOIN business_3k66 cgdd on dhysd.szgcddh = cgdd.szgcddh
         inner join business_qq7x cgddmx on cgdd.id = cgddmx.father_id
         left JOIN business_wnmh as cqjh ON cqjh.id = dhddmx.cgjhh
         left JOIN business_6151 AS cqjhmx ON cqjh.id = cqjhmx.father_id
WHERE (dhddmx.rk_temp_zt = '' OR dhddmx.rk_temp_zt IS NULL)
  AND (dhddmx.zt != 'A18A09A02A05' OR dhddmx.zt IS NULL)
  and dhddmx.cgjhh like 'CQXQXYJHH%'
  and (cgdd.sapcgpz1 != null or cgdd.sapcgpz1 != '');


select *
from business_qux5;



select *
from business_7twq
where cggyjhbh = 'CGJH3090202306020035';


select *
from business_3k66
where szgcddh = 'SZGCCCGDD1111111202306190001';