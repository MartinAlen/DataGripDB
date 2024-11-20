# 新逻辑 以采购订单明细为主

# SELECT cgddmx.cgjhbh          AS           jhbm,
#        cgddmx.id,
#        cgddmx.sjzt,
#        cgddmx.sfrbjs,
#        cgddmx.bhpczbh,
#        w.gccgy                AS           cgy,
#        m.sbr                  AS           sbr,
#        cgdd.gysbm             as           xdfbm,
#        cgdd.gysmc             as           xdfmc,
#        cgdd.szgcddh                        cgddh,
#        cgdd.htbh,
#        cgddmx.wlbm,
#        cgddmx.wlms,
#        cgddmx.wlzbm,
#        cgddmx.wlzms,
#        cgddmx.ddsl            AS           sl,
#        cgddmx.xxmh,
#        cgddmx.rkkw,
#        cgddmx.sm,
#        ifnull(cgddmx.cgdj, 0) as           dj,
#        cgddmx.jldw,
#        'CGJH'                              jhlx,
#        m.sjlx,
#        m.jyxm,
#        m.sbwh,
#        m.sbbmname,
#        m.fj,
#        m.fjbz,
#        m.zdyjy,
#        m.ggxh,
#        m.fylx,
#        m.ydlx,
#        m.cbzx,
#        m.jgh,
#        m.zch,
#        m.shdz,
#        m.wzjb,
#        cgddmx.zt,
#        cgddmx.rk_temp_zt,
#        cgddmx.rkl,
#        cgddmx.ddsl - ifnull(cgddmx.rkl, 0) wrksl,
#        cgdd.sapcgpz1
# FROM business_qq7x cgddmx
#          inner JOIN business_3k66 cgdd ON cgdd.id = cgddmx.father_id
#          left JOIN business_7twq m ON m.cggyjhbh = cgddmx.cgjhbh
#          left JOIN wzxqjh w ON m.xqjhbh = w.xqjhbh
# WHERE (cgddmx.rk_temp_zt = '' OR cgddmx.rk_temp_zt IS NULL)
# #   AND (cgddmx.zt != 'A18A09A02A05' OR cgddmx.zt IS NULL)
#   and cgddmx.cgjhbh like 'CGJH%'
#   and (cgdd.sapcgpz1 != null or cgdd.sapcgpz1 != '')
# #   and (cgddmx.sjzt = 'A18A07A17A03' or cgddmx.sfrbjs = 'A03A01A01')
# union
# SELECT cgddmx.cgjhbh          AS           jhbm,
#        cgddmx.id,
#        cgddmx.sjzt,
#        cgddmx.sfrbjs,
#        cgddmx.bhpczbh,
#        ''                     AS           cgy,
#        cqjh.sbr               AS           sbr,
#        cgdd.gysbm             as           xdfbm,
#        cgdd.gysmc             as           xdfmc,
#        cgdd.szgcddh                        cgddh,
#        cgdd.htbh,
#        cgddmx.wlbm,
#        cgddmx.wlms,
#        cgddmx.wlzbm,
#        cgddmx.wlzms,
#        cgddmx.ddsl            AS           sl,
#        cgddmx.xxmh,
#        cgddmx.rkkw,
#        cgddmx.sm,
#        ifnull(cgddmx.cgdj, 0) as           dj,
#        cgddmx.jldw,
#        'CQXQ'                              jhlx,
#        cqjhmx.sjlx,
#        cqjhmx.jyxm,
#        ''                     as           sbwh,
#        ''                     as           sbbmname,
#        ''                     as           fj,
#        ''                     as           fjbz,
#        ''                     as           zdyjy,
#        ''                     as           ggxh,
#        ''                     as           fylx,
#        ''                     as           ydlx,
#        ''                     as           cbzx,
#        ''                     as           jgh,
#        ''                     as           zch,
#        ''                     as           shdz,
#        ''                     as           wzjb,
#        cgddmx.zt,
#        cgddmx.rk_temp_zt,
#        cgddmx.rkl,
#        cgddmx.ddsl - ifnull(cgddmx.rkl, 0) wrksl,
#        cgdd.sapcgpz1
# FROM business_qq7x cgddmx
#          inner JOIN business_3k66 cgdd ON cgdd.id = cgddmx.father_id
#          left JOIN business_wnmh as cqjh ON cqjh.id = cgddmx.cgjhbh
#          left JOIN business_6151 AS cqjhmx ON cqjh.id = cqjhmx.father_id
# WHERE (cgddmx.rk_temp_zt = '' OR cgddmx.rk_temp_zt IS NULL)
#   AND (cgddmx.zt != 'A18A09A02A05' OR cgddmx.zt IS NULL)
#   and cgddmx.cgjhbh like 'CQXQXYJHH%'
#   and (cgdd.sapcgpz1 != null or cgdd.sapcgpz1 != '')
#   and (cgddmx.sjzt = 'A18A07A17A03' or cgddmx.sfrbjs = 'A03A01A01')
# union
# SELECT cgddmx.cgjhbh          AS           jhbm,
#        cgddmx.id,
#        cgddmx.sjzt,
#        cgddmx.sfrbjs,
#        cgddmx.bhpczbh,
#        ''                     AS           cgy,
#        ''                     AS           sbr,
#        cgdd.gysbm             as           xdfbm,
#        cgdd.gysmc             as           xdfmc,
#        cgdd.szgcddh                        cgddh,
#        cgdd.htbh,
#        cgddmx.wlbm,
#        cgddmx.wlms,
#        cgddmx.wlzbm,
#        cgddmx.wlzms,
#        cgddmx.ddsl            AS           sl,
#        cgddmx.xxmh,
#        cgddmx.rkkw,
#        cgddmx.sm,
#        ifnull(cgddmx.cgdj, 0) as           dj,
#        cgddmx.jldw,
#        ''                                  jhlx,
#        ''                                  sjlx,
#        ''                                  jyxm,
#        ''                     as           sbwh,
#        ''                     as           sbbmname,
#        ''                     as           fj,
#        ''                     as           fjbz,
#        ''                     as           zdyjy,
#        ''                     as           ggxh,
#        ''                     as           fylx,
#        ''                     as           ydlx,
#        ''                     as           cbzx,
#        ''                     as           jgh,
#        ''                     as           zch,
#        ''                     as           shdz,
#        ''                     as           wzjb,
#        cgddmx.zt,
#        cgddmx.rk_temp_zt,
#        cgddmx.rkl,
#        cgddmx.ddsl - ifnull(cgddmx.rkl, 0) wrksl,
#        cgdd.sapcgpz1
# FROM business_qq7x cgddmx
#          inner JOIN business_3k66 cgdd ON cgdd.id = cgddmx.father_id
# WHERE (cgddmx.rk_temp_zt = '' OR cgddmx.rk_temp_zt IS NULL)
#   AND (cgddmx.zt != 'A18A09A02A05' OR cgddmx.zt IS NULL)
#   and (cgddmx.cgjhbh is null or cgddmx.cgjhbh = '')
#   and (cgdd.sapcgpz1 != null or cgdd.sapcgpz1 != '')
#   and (cgddmx.sjzt = 'A18A07A17A03' or cgddmx.sfrbjs = 'A03A01A01')


# 排查采购采购订单
# select s.*
# from business_qq7x s
#          inner join business_3k66 m on s.father_id = m.id
# where m.szgcddh = 'SZGCCCGDD1111111202303230023';


# ------------------------------------------------------------------------------------------------------------
# ------------------------------------------------------------------------------------------------------------
# ------------------------------------------------------------------------------------------------------------
# ------------------------------------------------------------------------------------------------------------
# ------------------------------------------------------------------------------------------------------------
# ------------------------------------------------------------------------------------------------------------
# ------------------------------------------------------------------------------------------------------------
#                                 新到货验收选取数据  （设备）
#             设备物资  计量器具
# 根据到货验收单进行数据筛选 采购计划
SELECT dhddmx.cgjhbh          AS           jhbm,
       dhddmx.id,
       dhddmx.cgddmxid,
       dhddmx.sjzt,
       dhddmx.sfrbjs,
       dhddmx.bhpczbh,
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
       dhddmx.rkkw,
       dhddmx.sm,
       dhddmx.xxmh                         rlkgy,

       dhddmx.wztp,
       dhddmx.wzfj,
       dhddmx.hgz,
       dhddmx.czzm,
       dhddmx.bgd,
       dhddmx.ccjybg,
       dhddmx.sysm,
       dhddmx.tz,
       ifnull(cgddmx.cgdj, 0) as           dj,
       dhddmx.jldw,
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
       cgjh.cbzx              as           cbzxms,
       w.cbzxmc               as           cbzxcode,
       cgjh.jgh,
       cgjh.zch,
       cgjh.shdz,
       cgjh.wzjb,
       dhddmx.zt,
       dhddmx.rk_temp_zt,
       dhddmx.rkl,
       dhddmx.dhsl,
       dhddmx.dhsl - ifnull(dhddmx.rkl, 0) wrksl,
       cgdd.sapcgpz1,
       dhysd.sbwzdhysdbh,
       dhysd.jyfl,
       dhysd.id                            dhysdid,
       dhysd.kgy
FROM business_6j3g dhddmx
         inner join business_hmz1 dhysd on dhddmx.father_id = dhysd.id
         inner join business_qq7x cgddmx on dhddmx.cgddmxid = cgddmx.id and dhddmx.cgddmxid = cgddmx.id
         inner JOIN business_3k66 cgdd on dhysd.szgcddh = cgdd.szgcddh
         left JOIN business_7twq cgjh ON cgjh.cggyjhbh = dhddmx.cgjhbh
         left JOIN wzxqjh w ON cgjh.xqjhbh = w.xqjhbh
WHERE (dhddmx.rk_temp_zt = '' OR dhddmx.rk_temp_zt IS NULL)
#   未入库
  AND (dhddmx.zt != 'A18A09A02A05' OR dhddmx.zt IS NULL)
  and (dhddmx.cgjhbh like 'CGJH%' or  dhddmx.cgjhbh like 'CGWJ%')
  and (cgdd.sapcgpz1 != null OR cgdd.sapcgpz1 != '')
#   质检结果合格
  and (dhddmx.sjzt = 'A18A07A17A03' or dhddmx.sfrbjs = 'A03A01A01')
union


# 根据到货验收单进行数据筛选 长期需求计划
SELECT dhddmx.cgjhbh          AS           jhbm,
       dhddmx.id,
       dhddmx.cgddmxid,

       dhddmx.sjzt,
       dhddmx.sfrbjs,
       dhddmx.bhpczbh,
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
       dhddmx.rkkw,
       dhddmx.sm,
       dhddmx.xxmh                         rlkgy,
       dhddmx.wztp,
       dhddmx.wzfj,
       dhddmx.hgz,
       dhddmx.czzm,
       dhddmx.bgd,
       dhddmx.ccjybg,
       dhddmx.sysm,
       dhddmx.tz,
       ifnull(cgddmx.cgdj, 0) as           dj,
       dhddmx.jldw,
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
       ''                     as           cbzxms,
       ''                     as           cbzxcode,
       ''                     as           jgh,
       ''                     as           zch,
       ''                     as           shdz,
       ''                     as           wzjb,
       dhddmx.zt,
       dhddmx.rk_temp_zt,
       dhddmx.rkl,
       dhddmx.dhsl,
       dhddmx.dhsl - ifnull(dhddmx.rkl, 0) wrksl,
       cgdd.sapcgpz1,
       dhysd.sbwzdhysdbh,
       dhysd.jyfl,
       dhysd.id                            dhysdid,
       dhysd.kgy
FROM business_6j3g dhddmx
         inner join business_hmz1 dhysd on dhddmx.father_id = dhysd.id
         inner join business_qq7x cgddmx on dhddmx.cgddmxid = cgddmx.id and dhddmx.cgddmxid = cgddmx.id
         inner JOIN business_3k66 cgdd on dhysd.szgcddh = cgdd.szgcddh
         left JOIN business_wnmh as cqjh ON cqjh.id = dhddmx.cgjhbh
         left JOIN business_6151 AS cqjhmx ON cqjh.id = cqjhmx.father_id
WHERE 1 = 1
  and (dhddmx.rk_temp_zt = '' OR dhddmx.rk_temp_zt IS NULL)
  AND (dhddmx.zt != 'A18A09A02A05' OR dhddmx.zt IS NULL)
  and dhddmx.cgjhbh like 'CQXQXYJH%'
#   and (cgdd.sapcgpz1 != null or cgdd.sapcgpz1 != '')
#   and (dhddmx.sjzt = 'A18A07A17A03' or dhddmx.sfrbjs = 'A03A01A01')

union


# 根据到货验收单进行数据筛选 无计划订单
SELECT dhddmx.cgjhbh          AS           jhbm,
       dhddmx.id,
       dhddmx.cgddmxid,
       dhddmx.sjzt,
       dhddmx.sfrbjs,
       dhddmx.bhpczbh,
       ''                     AS           cgy,
       ''                     AS           sbr,
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
       dhddmx.rkkw,
       dhddmx.sm,
       dhddmx.xxmh                         rlkgy,
       dhddmx.wztp,
       dhddmx.wzfj,
       dhddmx.hgz,
       dhddmx.czzm,
       dhddmx.bgd,
       dhddmx.ccjybg,
       dhddmx.sysm,
       dhddmx.tz,
       ifnull(cgddmx.cgdj, 0) as           dj,
       dhddmx.jldw,
       ''                                  jhlx,
       ''                                  sjlx,
       ''                                  jyxm,
       ''                     as           sbwh,
       ''                     as           sbbmname,
       ''                     as           fj,
       ''                     as           fjbz,
       ''                     as           zdyjy,
       ''                     as           ggxh,
       ''                     as           fylx,
       ''                     as           ydlx,
       ''                     as           cbzxms,
       ''                     as           cbzxcode,
       ''                     as           jgh,
       ''                     as           zch,
       ''                     as           shdz,
       ''                     as           wzjb,
       dhddmx.zt,
       dhddmx.rk_temp_zt,
       dhddmx.rkl,
       dhddmx.dhsl,
       dhddmx.dhsl - ifnull(dhddmx.rkl, 0) wrksl,
       cgdd.sapcgpz1,
       dhysd.sbwzdhysdbh,
       dhysd.jyfl,
       dhysd.id                            dhysdid,
       dhysd.kgy
FROM business_6j3g dhddmx
         inner join business_hmz1 dhysd on dhddmx.father_id = dhysd.id
         inner join business_qq7x cgddmx on dhddmx.cgddmxid = cgddmx.id and dhddmx.cgddmxid = cgddmx.id
         inner JOIN business_3k66 cgdd on dhysd.szgcddh = cgdd.szgcddh
WHERE (dhddmx.rk_temp_zt = '' OR dhddmx.rk_temp_zt IS NULL)
  AND (dhddmx.zt != 'A18A09A02A05' OR dhddmx.zt IS NULL or dhddmx.zt = '')
  and (dhddmx.cgjhbh is null or dhddmx.cgjhbh = '')
  and (cgdd.sapcgpz1 != null or cgdd.sapcgpz1 != '')
  and (dhddmx.sjzt = 'A18A07A17A03' or dhddmx.sfrbjs = 'A03A01A01')

# 电子商城订单 无sap采购凭证
union
SELECT dhddmx.cgjhbh          AS           jhbm,
       dhddmx.id,
       dhddmx.cgddmxid,
       dhddmx.sjzt,
       dhddmx.sfrbjs,
       dhddmx.bhpczbh,
       ''                     AS           cgy,
       ''                     AS           sbr,
       dhysd.gysbm            as           xdfbm,
       dhysd.gysmc            as           xdfmc,
       dhysd.szgcddh                       cgddh,
       dhysd.htbh,
       dhysd.htmc,
       dhddmx.wlbm,
       dhddmx.wlms,
       dhddmx.wlzbm,
       dhddmx.wlzms,
       dhddmx.ddsl            AS           sl,
       dhddmx.send_order_item_code as xxmh,
       dhddmx.rkkw,
       dhddmx.sm,
       dhddmx.xxmh                         rlkgy,
       dhddmx.wztp,
       dhddmx.wzfj,
       dhddmx.hgz,
       dhddmx.czzm,
       dhddmx.bgd,
       dhddmx.ccjybg,
       dhddmx.sysm,
       dhddmx.tz,
       ifnull(cgddmx.cgdj, 0) as           dj,
       dhddmx.jldw,
       ''                                  jhlx,
       ''                                  sjlx,
       ''                                  jyxm,
       ''                     as           sbwh,
       ''                     as           sbbmname,
       ''                     as           fj,
       ''                     as           fjbz,
       ''                     as           zdyjy,
       ''                     as           ggxh,
       ''                     as           fylx,
       ''                     as           ydlx,
       ''                     as           cbzxms,
       ''                     as           cbzxcode,
       ''                     as           jgh,
       ''                     as           zch,
       ''                     as           shdz,
       ''                     as           wzjb,
       dhddmx.zt,
       dhddmx.rk_temp_zt,
       dhddmx.rkl,
       dhddmx.dhsl,
       dhddmx.dhsl - ifnull(dhddmx.rkl, 0) wrksl,
       ''                                  sapcgpz1,
       dhysd.sbwzdhysdbh,
       dhysd.jyfl,
       dhysd.id                            dhysdid,
       dhysd.kgy

FROM business_6j3g dhddmx
         inner join business_hmz1 dhysd on dhddmx.father_id = dhysd.id
         inner join business_qq7x cgddmx on dhddmx.cgddmxid = cgddmx.id
WHERE (dhddmx.rk_temp_zt = '' OR dhddmx.rk_temp_zt IS NULL)
  and dhysd.sbwzdhysdbh like 'INV%'
  and (dhddmx.sjzt = 'A18A07A17A03' or dhddmx.sfrbjs = 'A03A01A01');

SELECT dhddmx.cgjhbh               AS      jhbm,
       dhddmx.id,
       dhddmx.cgddmxid,
       dhddmx.sjzt,
       dhddmx.sfrbjs,
       dhddmx.bhpczbh,
       ''                          AS      cgy,
       ''                          AS      sbr,
       dhysd.gysbm                 as      xdfbm,
       dhysd.gysmc                 as      xdfmc,
       dhysd.szgcddh                       cgddh,
       dhysd.htbh,
       dhysd.htmc,
       dhddmx.wlbm,
       dhddmx.wlms,
       dhddmx.wlzbm,
       dhddmx.wlzms,
       dhddmx.ddsl                 AS      sl,
       dhddmx.send_order_item_code as      xxmh,
       dhddmx.rkkw,
       dhddmx.sm,
       dhddmx.xxmh                         rlkgy,
       dhddmx.wztp,
       dhddmx.wzfj,
       dhddmx.hgz,
       dhddmx.czzm,
       dhddmx.bgd,
       dhddmx.ccjybg,
       dhddmx.sysm,
       dhddmx.tz,
       ifnull(cgddmx.cgdj, 0)      as      dj,
       dhddmx.jldw,
       ''                                  jhlx,
       ''                                  sjlx,
       ''                                  jyxm,
       ''                          as      sbwh,
       ''                          as      sbbmname,
       ''                          as      fj,
       ''                          as      fjbz,
       ''                          as      zdyjy,
       ''                          as      ggxh,
       ''                          as      fylx,
       ''                          as      ydlx,
       ''                          as      cbzxms,
       ''                          as      cbzxcode,
       ''                          as      jgh,
       ''                          as      zch,
       ''                          as      shdz,
       ''                          as      wzjb,
       dhddmx.zt,
       dhddmx.rk_temp_zt,
       dhddmx.rkl,
       dhddmx.dhsl,
       dhddmx.dhsl - ifnull(dhddmx.rkl, 0) wrksl,
       ''                                  sapcgpz1,
       dhysd.sbwzdhysdbh,
       dhysd.jyfl,
       dhysd.id                            dhysdid,
       dhysd.kgy

FROM business_6j3g dhddmx
         inner join business_hmz1 dhysd on dhddmx.father_id = dhysd.id
         inner join business_qq7x cgddmx on dhddmx.cgddmxid = cgddmx.id
WHERE (dhddmx.rk_temp_zt = '' OR dhddmx.rk_temp_zt IS NULL)
  and dhysd.sbwzdhysdbh like 'INV%'
  and (dhddmx.sjzt = 'A18A07A17A03' or dhddmx.sfrbjs = 'A03A01A01')
  and dhysd.sbwzdhysdbh = 'DHYSD4010202312060003';

# 总计 搜索
select *
from cgjh_cqxq_receving_v
where (jyfl = 'A18A01A01A03A02' or jyfl = 'A18A01A01A03A03' or
       jyfl = 'A18A01A01A03A04')
  and sbwzdhysdbh = 'DHYSD4010202305310003';



select *
from business_hmz1;
select *
from business_6j3g;


select *
from business_6j3g
order by create_date desc;


# 排查 采购计划到货验收明细
SELECT dhddmx.cgjhbh          AS           jhbm,
       dhddmx.id,
       dhddmx.cgddmxid,
       dhddmx.sjzt,
       dhddmx.sfrbjs,
       dhddmx.bhpczbh,
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
       dhddmx.rkkw,
       dhddmx.sm,
       dhddmx.xxmh                         rlkgy,
       ifnull(cgddmx.cgdj, 0) as           dj,
       dhddmx.jldw,
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
       dhddmx.dhsl,
       dhddmx.dhsl - ifnull(dhddmx.rkl, 0) wrksl,
       cgdd.sapcgpz1,
       dhysd.sbwzdhysdbh,
       dhysd.jyfl,
       dhysd.id                            dhysdid,
       dhysd.kgy
FROM business_6j3g dhddmx
         inner join business_hmz1 dhysd on dhddmx.father_id = dhysd.id
         inner join business_qq7x cgddmx on dhddmx.cgddmxid = cgddmx.id and dhddmx.cgddmxid = cgddmx.id
         inner JOIN business_3k66 cgdd on dhysd.szgcddh = cgdd.szgcddh
         left JOIN business_7twq cgjh ON cgjh.cggyjhbh = dhddmx.cgjhbh
         left JOIN wzxqjh w ON cgjh.xqjhbh = w.xqjhbh
WHERE 1 = 1
#   and (dhddmx.rk_temp_zt = '' OR dhddmx.rk_temp_zt IS NULL)
#   未入库
  AND (dhddmx.zt != 'A18A09A02A05' OR dhddmx.zt IS NULL)
  and (dhddmx.cgjhbh like 'CGJH%' or    dhddmx.cgjhbh like 'CWJH%')
  and (cgdd.sapcgpz1 != null OR cgdd.sapcgpz1 != '')
#   质检结果合格
  and (dhddmx.zjjg = 'A15A47A01' or dhddmx.sfrbjs = 'A03A01A01')
  and dhysd.sbwzdhysdbh = 'DHYSD4010202311100001';
# and dhysd.flow_step='归档';
select *
from business_hmz1;

# 到货验收单id
select *
from business_hmz1
where szgcddh = 'SZGCCCGDD1111111202305250005';


select *
from business_3k66 cgdd
where cgdd.sapcgpz1 = '4500327086';



select *
from business_6j3g dhddmx
order by create_date desc;


# 采购订单明细 检查

SELECT dhddmx.cgjhbh          AS           jhbm,
       dhddmx.id,
       dhddmx.cgddmxid,
       dhddmx.sjzt,
       dhddmx.sfrbjs,
       dhddmx.bhpczbh,
       ''                     AS           cgy,
       ''                     AS           sbr,
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
       dhddmx.rkkw,
       dhddmx.sm,
       dhddmx.xxmh                         rlkgy,
       ifnull(cgddmx.cgdj, 0) as           dj,
       dhddmx.jldw,
       ''                                  jhlx,
       ''                                  sjlx,
       ''                                  jyxm,
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
       dhddmx.dhsl,
       dhddmx.dhsl - ifnull(dhddmx.rkl, 0) wrksl,
       cgdd.sapcgpz1,
       dhysd.sbwzdhysdbh,
       dhysd.jyfl,
       dhysd.id                            dhysdid,
       dhysd.kgy

FROM business_6j3g dhddmx
         inner join business_hmz1 dhysd on dhddmx.father_id = dhysd.id
         inner join business_qq7x cgddmx on dhddmx.cgddmxid = cgddmx.id and dhddmx.cgddmxid = cgddmx.id
         inner JOIN business_3k66 cgdd on dhysd.szgcddh = cgdd.szgcddh
WHERE (dhddmx.rk_temp_zt = '' OR dhddmx.rk_temp_zt IS NULL)
  AND (dhddmx.zt != 'A18A09A02A05' OR dhddmx.zt IS NULL or dhddmx.zt = '')
  and (dhddmx.cgjhbh is null or dhddmx.cgjhbh = '')
  and (cgdd.sapcgpz1 != null or cgdd.sapcgpz1 != '')
  and (dhddmx.sjzt = 'A18A07A17A03' or dhddmx.sfrbjs = 'A03A01A01')
  and dhysd.id = '7cb21eb802fe4271badfea5985a446df';



select cbzxcode, cbzxms
from cgjh_cqxq_receving_v
where sbwzdhysdbh = 'DHYSD4010202309050005';