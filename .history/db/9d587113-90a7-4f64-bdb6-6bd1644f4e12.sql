select module_name,params,result,url
from business_8b0j
where module_name = '电子商城-采购申请单审批结果回传'
order by create_date desc
limit 10;
;-- -. . -..- - / . -. - .-. -.--
select module_name,params,result,url,fail_reason
from business_8b0j
where module_name = '电子商城-采购申请单审批结果回传'
order by create_date desc
limit 10;
;-- -. . -..- - / . -. - .-. -.--
select m.id, m.tkdbm, s.*
from business_c927 m
         inner join business_z6nu s on m.id = s.father_id

where tkdbm = 'SBTKD40102024011400';
;-- -. . -..- - / . -. - .-. -.--
select title, create_time, request, response, exception
from sap_execute_log
where title = '物资出库'
  and sap_execute_log.request like '%1000199970%'
# sap_execute_log.response like '%4913096500%'
order by create_time desc
limit 100;
;-- -. . -..- - / . -. - .-. -.--
select id,
       jhbm,
       cklx,
       ydlx,
       cksl,
       sfck,
       father_id,
       ktsl,
       gcdm,
       ckpzh,
       rkdid,
       cbzx,
       cbzxms
from business_m3wc

where wlbm = '1000199970';
;-- -. . -..- - / . -. - .-. -.--
select id,
       ddhxmh,
       rksl,
       gcbm,
       ckl,
       sapcgpz1,
       wlbm,
       dddj,
       rkpzh,
       father_id
from business_f7hc
where 1 = 1
#   and id = '51ebbf67f424fcc915d73711fc18ae9f'
#   and rksl != ckl
#   and ckl > 0
#   and father_id = '990dcfc482a388d418b7e2558803acc2';
# and org_id='00008413'
and wlbm='1000226730';
;-- -. . -..- - / . -. - .-. -.--
select id,
       ddhxmh,
       rksl,
       gcbm,
       ckl,
       sapcgpz1,
       wlbm,
       dddj,
       rkpzh,
       father_id,
       hjxx
from business_f7hc
where 1 = 1
#   and id = '51ebbf67f424fcc915d73711fc18ae9f'
#   and rksl != ckl
#   and ckl > 0
#   and father_id = '990dcfc482a388d418b7e2558803acc2';
# and org_id='00008413'
and wlbm='1000226730';
;-- -. . -..- - / . -. - .-. -.--
select id,
       ddhxmh,
       rksl,
       gcbm,
       ckl,
       sapcgpz1,
       wlbm,
       dddj,
       rkpzh,
       father_id,
       hjxx,
       kmdbm
from business_f7hc
where 1 = 1
#   and id = '51ebbf67f424fcc915d73711fc18ae9f'
#   and rksl != ckl
#   and ckl > 0
#   and father_id = '990dcfc482a388d418b7e2558803acc2';
# and org_id='00008413'
  and wlbm = '1000226730';
;-- -. . -..- - / . -. - .-. -.--
select id,
       rkdbh,
       org_id,
       htbh,
       kgy,
       htmc,
       dhysdh,
       create_date,
       rkpz,
       wlbmall
from business_y339
where 1 = 1
  and id = 'b4989a6684286ccf0a6d1a0c48fcf0a3'

# where serial = '20231226153831855'
# and sapcgpz1 = '4500365366'
#     where org_id !='00000287'
# and rkdbh = 'SBRKD4010202401190091'
# where dhysdh is null
order by create_date desc;
;-- -. . -..- - / . -. - .-. -.--
select id,
       rkdbh,
       org_id,
       htbh,
       kgy,
       htmc,
       dhysdh,
       update_date,
       rkpz,
       wlbmall
from business_y339
where 1 = 1
  and id = 'b4989a6684286ccf0a6d1a0c48fcf0a3'

# where serial = '20231226153831855'
# and sapcgpz1 = '4500365366'
#     where org_id !='00000287'
# and rkdbh = 'SBRKD4010202401190091'
# where dhysdh is null
order by create_date desc;
;-- -. . -..- - / . -. - .-. -.--
select id,
       jhbm,
       cklx,
       ydlx,
       cksl,
       sfck,
       father_id,
       ktsl,
       gcdm,
       ckpzh,
       rkdid,
       cbzx,
       cbzxms
from business_m3wc

where wlbm = '1000226730';
;-- -. . -..- - / . -. - .-. -.--
select id,
       jhbm,
       hjxx,
       cklx,
       ydlx,
       cksl,
       sfck,
       father_id,
       ktsl,
       gcdm,
       ckpzh,
       rkdid,
       cbzx,
       cbzxms
from business_m3wc

where wlbm = '1000226730';
;-- -. . -..- - / . -. - .-. -.--
select id,
       ddhxmh,
       rksl,
       gcbm,
       ckl,
       sapcgpz1,
       wlbm,
       dddj,
       rkpzh,
       father_id,
       hjxx,
       kmdbm,create_date
from business_f7hc
where 1 = 1
#   and id = '51ebbf67f424fcc915d73711fc18ae9f'
#   and rksl != ckl
#   and ckl > 0
#   and father_id = '990dcfc482a388d418b7e2558803acc2';
# and org_id='00008413'
  and wlbm = '1000226730';
;-- -. . -..- - / . -. - .-. -.--
select create_date,params,result,url,fail_reason
from business_8b0j
where module_name = '电子商城-采购申请单审批结果回传'
order by create_date desc
limit 10;
;-- -. . -..- - / . -. - .-. -.--
select *
from business_8b0j
where module_name = '电子商城-接收电子商城采购申请单'
order by create_date desc

limit 10;
;-- -. . -..- - / . -. - .-. -.--
select *
from business_8b0j
where module_name = '电子商城-接收电子商城采购申请单'
and params like '%PR240218000004%'
order by create_date desc

limit 10;
;-- -. . -..- - / . -. - .-. -.--
select *
from business_8b0j
where module_name = '电子商城-接收电子商城采购申请单'

order by create_date desc

limit 10;
;-- -. . -..- - / . -. - .-. -.--
select id,
       ttwb,
       aqhbfy,
       ckbm,
       psdd,
       serial,
       create_date,
       update_date,
       flow_step,
       flow_state,
       ckbm,
       kcdbm
from business_ij1g
# where ckbm is null  or ckbm=''
where ckbm = 'SBCK4070202402060291';
;-- -. . -..- - / . -. - .-. -.--
select id,
       father_id,
       ckpzh,
       zzkm,
       ydlx,
       fylx,
       nbddh,
       zjgc,
       zjgcms,
       nbddh,
       nbddms
from business_m3wc
where 1 = 1
  and father_id = 'e5edf4db93404fdcaf5d5cbcd6ebbef1';
;-- -. . -..- - / . -. - .-. -.--
select id,
       father_id,
       ckpzh,
       zzkm,
       dw,
       ydlx,
       fylx,
       nbddh,
       zjgc,
       zjgcms,
       nbddh,
       nbddms
from business_m3wc
where 1 = 1
  and father_id = 'e5edf4db93404fdcaf5d5cbcd6ebbef1';
;-- -. . -..- - / . -. - .-. -.--
select id,
       father_id,
       ckpzh,
       zzkm,
       jldw,
       dwms,
       ydlx,
       fylx,
       nbddh,
       zjgc,
       zjgcms,
       nbddh,
       nbddms
from business_m3wc
where 1 = 1
  and father_id = 'e5edf4db93404fdcaf5d5cbcd6ebbef1';
;-- -. . -..- - / . -. - .-. -.--
select *
from business_66o1
where 1 = 1
#                      and serial='20240205132003559'
  and dh = 'JSZZY4070202402180008';
;-- -. . -..- - / . -. - .-. -.--
select *
from sap_consignment_stock where meins='TAO';
;-- -. . -..- - / . -. - .-. -.--
select *
from sap_consignment_stock where meins='SET';
;-- -. . -..- - / . -. - .-. -.--
select *
from business_iy41
where father_id = '1759024809295003650';
;-- -. . -..- - / . -. - .-. -.--
select id,
       ttwb,
       aqhbfy,
       ckbm,
       psdd,
       serial,
       create_date,
       update_date,
       flow_step,
       flow_state,
       ckbm,
       kcdbm
from business_ij1g
# where ckbm is null  or ckbm=''
where ckbm = 'SBCK4390202402130025';
;-- -. . -..- - / . -. - .-. -.--
select create_date,params,result,url,fail_reason
from business_8b0j
where module_name = '电子商城-采购申请单审批结果回传'
order by create_date desc
limit 100;
;-- -. . -..- - / . -. - .-. -.--
select id,
       rkdbh,
       org_id,
       htbh,
       kgy,
       htmc,
       dhysdh,
       update_date,
       rkpz,
       wlbmall
from business_y339
where 1 = 1
#   and id = 'b4989a6684286ccf0a6d1a0c48fcf0a3'

where serial = '20240219103003136'
# and sapcgpz1 = '4500365366'
#     where org_id !='00000287'
# and rkdbh = 'SBRKD4010202401190091'
# where dhysdh is null
order by create_date;
;-- -. . -..- - / . -. - .-. -.--
select *
from business_66o1
where 1 = 1
#                      and serial='20240205132003559'
  and dh = 'JSZZY4070202402080008';
;-- -. . -..- - / . -. - .-. -.--
select *
from business_iy41
where father_id = '1755475436065832961';
;-- -. . -..- - / . -. - .-. -.--
select *
from business_iy41
where 1=1 and
#       father_id = '1755475436065832961';
and wlbm  = '1000228201';
;-- -. . -..- - / . -. - .-. -.--
select *
from business_iy41
where 1=1 
#       father_id = '1755475436065832961';
and wlbm  = '1000228201';
;-- -. . -..- - / . -. - .-. -.--
select *
from business_66o1
where 1 = 1
#                      and serial='20240205132003559'
  and dh = 'JSZZY4070202402080017';
;-- -. . -..- - / . -. - .-. -.--
select *
from business_iy41
where 1=1
      and father_id = '1755477717981118465';
;-- -. . -..- - / . -. - .-. -.--
select *
from business_66o1
where 1 = 1
#                      and serial='20240205132003559'
  and dh = 'JSZZY4070202402080019';
;-- -. . -..- - / . -. - .-. -.--
select *
from business_iy41
where 1=1
      and father_id = '1755479445174534146';
;-- -. . -..- - / . -. - .-. -.--
select *
from business_w988 m
         inner join business_ev48 s on m.id=s.father_id;
;-- -. . -..- - / . -. - .-. -.--
select *
from business_w988 m
         inner join business_ev48 s on m.id = s.father_id
where s.id not in (select s1.id
                   from business_8o89 m1
                            inner join business_vcch s1 on m1.id = s1.father_id and m1.flow_step = '归档');
;-- -. . -..- - / . -. - .-. -.--
select m.xqjhbh,
       m.sbdw,
       m.sbr,
       m.sbbm,
       m.sbsj,
       m.shr,
       m.shrlxfs,
       m.shdz,
       m.cgy,
       s.id,
       s.wlbm,
       s.wlms,
       s.ggxh,
       s.dw,
       s.xql,
       s.bz
from business_w988 m
         inner join business_ev48 s on m.id = s.father_id
where s.id not in (select s1.id
                   from business_8o89 m1
                            inner join business_vcch s1 on m1.id = s1.father_id and m1.flow_step = '归档');
;-- -. . -..- - / . -. - .-. -.--
select id
     , org_id
     , jcdw
     , gsdm
     , ddsfgb
     , sapcgpz1
     , user_id
     , caigouyuan
     , szgcddh
     , jyms
     , gysbm
     , gc
     , gsdm
     , shdw
     , jcdw
     , ddsfgb
     , ddfqlx
     , gysmc
     , org_id
     , user_id
     , sbr
     , htbh
     , htmc
     , create_date
     , user_id
from business_3k66
where 1 = 1

# and ddfqlx ='A18A02A11A04';
#   and sapcgpz1 = '4500368008'
#   and szgcddh like 'CGDD00001202401290165%'
  and szgcddh like 'PR240219000005'
# and jyms ='A18A05A15A02';
# and id = 'c38156588b1b4416b9c828ae5ed993f0';
# and serial = '20240125132619561';
# and htbh = 'YTH-4010-NB-GX-2022-001029-00';
# and jyms='A18A05A15A07'
#   and jyms = 'A18A05A15A06'
#   and sapcgpz1 != ''
#   and gsdm = 4010
order by create_date
        desc
limit 10;
;-- -. . -..- - / . -. - .-. -.--
select id
     , org_id
     , jcdw
     , gsdm
     , ddsfgb
     , sapcgpz1
     , user_id
     , caigouyuan
     , szgcddh
     , jyms
     , gysbm
     , gc
     , gsdm
     , shdw
     , jcdw
     , ddsfgb
     , ddfqlx
     , gysmc
     , org_id
     , user_id
     , sbr
     , htbh
     , htmc
     , create_date
     , user_id
from business_3k66
where 1 = 1

# and ddfqlx ='A18A02A11A04';
#   and sapcgpz1 = '4500368008'
#   and szgcddh like 'CGDD00001202401290165%'
  and szgcddh like 'PR%'
# and jyms ='A18A05A15A02';
# and id = 'c38156588b1b4416b9c828ae5ed993f0';
# and serial = '20240125132619561';
# and htbh = 'YTH-4010-NB-GX-2022-001029-00';
# and jyms='A18A05A15A07'
#   and jyms = 'A18A05A15A06'
#   and sapcgpz1 != ''
#   and gsdm = 4010
order by create_date
        desc
limit 10;
;-- -. . -..- - / . -. - .-. -.--
select id
     , org_id
     , jcdw
     , gsdm
     , ddsfgb
     , sapcgpz1
     , user_id
     , caigouyuan
     , szgcddh
     , jyms
     , gysbm
     , gc
     , gsdm
     , shdw
     , jcdw
     , ddsfgb
     , ddfqlx
     , gysmc
     , org_id
     , user_id
     , sbr
     , htbh
     , htmc
     , create_date
     , user_id
from business_3k66
where 1 = 1

# and ddfqlx ='A18A02A11A04';
#   and sapcgpz1 = '4500368008'
#   and szgcddh like 'CGDD00001202401290165%'
  and szgcddh like 'PO%'
# and jyms ='A18A05A15A02';
# and id = 'c38156588b1b4416b9c828ae5ed993f0';
# and serial = '20240125132619561';
# and htbh = 'YTH-4010-NB-GX-2022-001029-00';
# and jyms='A18A05A15A07'
#   and jyms = 'A18A05A15A06'
#   and sapcgpz1 != ''
#   and gsdm = 4010
order by create_date
        desc
limit 10;
;-- -. . -..- - / . -. - .-. -.--
select count(xqjhbh)
from wzxqjh group by xqjhbh;
;-- -. . -..- - / . -. - .-. -.--
select count(xqjhbh) s
from wzxqjh group by xqjhbh having s>1;
;-- -. . -..- - / . -. - .-. -.--
select count(xqjhbh) s,create_date
from wzxqjh group by xqjhbh having s>1;
;-- -. . -..- - / . -. - .-. -.--
select count(rkdbh)s
from business_y339 group by rkdbh  having s>1;
;-- -. . -..- - / . -. - .-. -.--
select count(rkdbh)s,rkdbh
from business_y339 group by rkdbh  having s>1;
;-- -. . -..- - / . -. - .-. -.--
select count(ckbm),ckbm
from business_ij1g group by ckbm  having   s>1;
;-- -. . -..- - / . -. - .-. -.--
select count(ckbm)s,ckbm
from business_ij1g group by ckbm  having   s>1;
;-- -. . -..- - / . -. - .-. -.--
select count(xqjhbh) s,xqjhbh
from wzxqjh group by xqjhbh having s>1;
;-- -. . -..- - / . -. - .-. -.--
select id
     , org_id
     , jcdw
     , gsdm
     , ddsfgb
     , sapcgpz1
     , user_id
     , caigouyuan
     , szgcddh
     , jyms
     , gysbm
     , gc
     , gsdm
     , shdw
     , jcdw
     , ddsfgb
     , ddfqlx
     , gysmc
     , org_id
     , user_id
     , sbr
     , htbh
     , htmc
     , create_date
     , user_id
from business_3k66
where 1 = 1

# and ddfqlx ='A18A02A11A04';
#   and sapcgpz1 = '4500368008'
  and szgcddh like 'CGDD00001202402050023%'
#   and szgcddh like 'PO%'
# and jyms ='A18A05A15A02';
# and id = 'c38156588b1b4416b9c828ae5ed993f0';
# and serial = '20240125132619561';
# and htbh = 'YTH-4010-NB-GX-2022-001029-00';
# and jyms='A18A05A15A07'
#   and jyms = 'A18A05A15A06'
#   and sapcgpz1 != ''
#   and gsdm = 4010
order by create_date
        desc
limit 10;
;-- -. . -..- - / . -. - .-. -.--
select *
from sync_werk_org where org_code='-2756613158297845069';
;-- -. . -..- - / . -. - .-. -.--
select id,
       ddhxmh,
       rksl,
       gcbm,
       ckl,
       sapcgpz1,
       wlbm,
       dddj,
       rkpzh,
       father_id,
       hjxx,
       kmdbm,create_date
from business_f7hc
where 1 = 1
  and id = '468579929bc2c6a2e3bfad820543a173'
#   and rksl != ckl
#   and ckl > 0
#   and father_id = '990dcfc482a388d418b7e2558803acc2';
# and org_id='00008413'
  and wlbm = '1000226730';
;-- -. . -..- - / . -. - .-. -.--
select id,
       ddhxmh,
       rksl,
       gcbm,
       ckl,
       sapcgpz1,
       wlbm,
       dddj,
       rkpzh,
       father_id,
       hjxx,
       kmdbm,create_date
from business_f7hc
where 1 = 1
  and id = '468579929bc2c6a2e3bfad820543a173';
;-- -. . -..- - / . -. - .-. -.--
select id,
       ttwb,
       aqhbfy,
       ckbm,
       psdd,
       serial,
       create_date,
       update_date,
       flow_step,
       flow_state,
       ckbm,
       kcdbm
from business_ij1g
# where ckbm is null  or ckbm=''
where ckbm = 'SBCK4010202402070174';
;-- -. . -..- - / . -. - .-. -.--
select id,
       father_id,
       ddhxmh,
       rksl,
       gcbm,
       ckl,
       sapcgpz1,
       wlbm,
       dddj,
       rkpzh,
       father_id,
       hjxx,
       kmdbm,create_date
from business_f7hc
where 1 = 1
  and id = '468579929bc2c6a2e3bfad820543a173';
;-- -. . -..- - / . -. - .-. -.--
select o.org_name        as '公司',
       t.ktext           as '资产部门',
       t.ktext           as '成本中心描述',
       t.anln1           as '固定资产编码',
       t.anln2           as '资产子编号',
       t.invnr           as '资产实物编码/存货号',
       t.txa50           as '规格型号',
       t.txt50           as '固定资产名称',
       t.txk20           as '资产类别',
       t.menge           as '数量',
       t.meins           as '计量单位',
       format(t.zcyz, 2) as '资产原值',
       format(t.zmjz, 2) as '资产净值',
       t.gdlgrp_txt      as '资产来源',
       t.ordtx           as '资产状态',
       t.afasl           as '折旧方式代码',
       t.afaslt          as '折旧方式描述',
       t.ndjar           as '折旧年限',
       t.afabg           as '折旧开始时间',
       t.aktiv           as '入账时间',
       t.herst           as '制造单位',
       t.anlhtxt         as '资产主号文件',
       t.ndabj           as '已使用年限',
       t.invzu           as '补充库存说明(库存标记 )',
       o.org_code,
       o.werks
from purchase.fixed_assets t
         left join sync_werk_org o on o.werks = t.bukrs
where anln1 = '100000005571';
;-- -. . -..- - / . -. - .-. -.--
select o.org_name        as '公司',
       t.ktext           as '资产部门',
       t.ktext           as '成本中心描述',
       t.anln1           as '固定资产编码',
       t.anln2           as '资产子编号',
       t.invnr           as '资产实物编码/存货号',
       t.txa50           as '规格型号',
       t.txt50           as '固定资产名称',
       t.txk20           as '资产类别',
       t.menge           as '数量',
       t.meins           as '计量单位',
       format(t.zcyz, 2) as '资产原值',
       format(t.zmjz, 2) as '资产净值',
       t.gdlgrp_txt      as '资产来源',
       t.ordtx           as '资产状态',
       t.afasl           as '折旧方式代码',
       t.afaslt          as '折旧方式描述',
       t.ndjar           as '折旧年限',
       t.afabg           as '折旧开始时间',
       t.aktiv           as '入账时间',
       t.herst           as '制造单位',
       t.anlhtxt         as '资产主号文件',
       t.ndabj           as '已使用年限',
       t.invzu           as '补充库存说明(库存标记 )',
       o.org_code,
       o.werks
from purchase.fixed_assets t
         left join sync_werk_org o on o.werks = t.bukrs
where t.menge > 0
#   and anln1 = '100000005571'
  and org_code = '0000287';
;-- -. . -..- - / . -. - .-. -.--
select o.org_name        as '公司',
       t.ktext           as '资产部门',
       t.ktext           as '成本中心描述',
       t.anln1           as '固定资产编码',
       t.anln2           as '资产子编号',
       t.invnr           as '资产实物编码/存货号',
       t.txa50           as '规格型号',
       t.txt50           as '固定资产名称',
       t.txk20           as '资产类别',
       t.menge           as '数量',
       t.meins           as '计量单位',
       format(t.zcyz, 2) as '资产原值',
       format(t.zmjz, 2) as '资产净值',
       t.gdlgrp_txt      as '资产来源',
       t.ordtx           as '资产状态',
       t.afasl           as '折旧方式代码',
       t.afaslt          as '折旧方式描述',
       t.ndjar           as '折旧年限',
       t.afabg           as '折旧开始时间',
       t.aktiv           as '入账时间',
       t.herst           as '制造单位',
       t.anlhtxt         as '资产主号文件',
       t.ndabj           as '已使用年限',
       t.invzu           as '补充库存说明(库存标记 )',
       o.org_code,
       o.werks
from purchase.fixed_assets t
         left join sync_werk_org o on o.werks = t.bukrs
where t.menge > 0
#   and anln1 = '100000005571'
  and org_code = '00000287';
;-- -. . -..- - / . -. - .-. -.--
select xhjxx, yhjxx, ykcdbm
from business_50t4
where 1=1 and
#       gcdm = 4010
  and kclx = 'SAP'
  and wlbm = '1000152865';
;-- -. . -..- - / . -. - .-. -.--
select xhjxx, yhjxx, ykcdbm
from business_50t4
where 1=1
#   and     gcdm = 4010
  and kclx = 'SAP'
  and wlbm = '1000152865';
;-- -. . -..- - / . -. - .-. -.--
select id,
       father_id,
       ckpzh,
       zzkm,
       jldw,
       dwms,
       ydlx,
       fylx,
       nbddh,
       zjgc,
       zjgcms,
       nbddh,
       nbddms
from business_m3wc
where 1 = 1
and wlbm='1000152865';
;-- -. . -..- - / . -. - .-. -.--
select id,
       cklx,
       father_id,
       ckpzh,
       zzkm,
       jldw,
       dwms,
       ydlx,
       fylx,
       nbddh,
       zjgc,
       zjgcms,
       nbddh,
       nbddms
from business_m3wc
where 1 = 1
and wlbm='1000152865';
;-- -. . -..- - / . -. - .-. -.--
select id,
       cksl,
       father_id,
       ckpzh,
       zzkm,
       jldw,
       dwms,
       ydlx,
       fylx,
       nbddh,
       zjgc,
       zjgcms,
       nbddh,
       nbddms
from business_m3wc
where 1 = 1
and wlbm='1000152865';
;-- -. . -..- - / . -. - .-. -.--
select id,
       org_id,
       cksl,
       father_id,
       ckpzh,
       zzkm,
       jldw,
       dwms,
       ydlx,
       fylx,
       nbddh,
       zjgc,
       zjgcms,
       nbddh,
       nbddms
from business_m3wc
where 1 = 1
and wlbm='1000152865';
;-- -. . -..- - / . -. - .-. -.--
select o.org_name        as '公司',
       t.ktext           as '资产部门',
       t.ktext           as '成本中心描述',
       t.anln1           as '固定资产编码',
       t.anln2           as '资产子编号',
       t.invnr           as '资产实物编码/存货号',
       t.txa50           as '规格型号',
       t.txt50           as '固定资产名称',
       t.txk20           as '资产类别',
       t.menge           as '数量',
       t.meins           as '计量单位',
       format(t.zcyz, 2) as '资产原值',
       format(t.zmjz, 2) as '资产净值',
       t.gdlgrp_txt      as '资产来源',
       t.ordtx           as '资产状态',
       t.afasl           as '折旧方式代码',
       t.afaslt          as '折旧方式描述',
       t.ndjar           as '折旧年限',
       t.afabg           as '折旧开始时间',
       t.aktiv           as '入账时间',
       t.herst           as '制造单位',
       t.anlhtxt         as '资产主号文件',
       t.ndabj           as '已使用年限',
       t.invzu           as '补充库存说明(库存标记 )',
       o.org_code,
       o.werks
from purchase.fixed_assets t
         left join sync_werk_org o on o.werks = t.bukrs
where t.menge > 0
  and anln1 = '100000005571';
;-- -. . -..- - / . -. - .-. -.--
select o.org_name        as '公司',
       t.ktext           as '资产部门',
       t.ktext           as '成本中心描述',
       t.anln1           as '固定资产编码',
       t.anln2           as '资产子编号',
       t.invnr           as '资产实物编码/存货号',
       t.txa50           as '规格型号',
       t.txt50           as '固定资产名称',
       t.txk20           as '资产类别',
       t.menge           as '数量',
       t.meins           as '计量单位',
       format(t.zcyz, 2) as '资产原值',
       format(t.zmjz, 2) as '资产净值',
       t.gdlgrp_txt      as '资产来源',
       t.ordtx           as '资产状态',
       t.afasl           as '折旧方式代码',
       t.afaslt          as '折旧方式描述',
       t.ndjar           as '折旧年限',
       t.afabg           as '折旧开始时间',
       t.aktiv           as '入账时间',
       t.herst           as '制造单位',
       t.anlhtxt         as '资产主号文件',
       t.ndabj           as '已使用年限',
       t.invzu           as '补充库存说明(库存标记 )',
       o.org_code,
       o.werks
from purchase.fixed_assets t
         left join sync_werk_org o on o.werks = t.bukrs
where 1=1
#   and t.menge > 0
  and anln1 = '100000005571';
;-- -. . -..- - / . -. - .-. -.--
select o.org_name        as '公司',
       t.ktext           as '资产部门',
       t.ktext           as '成本中心描述',
       t.anln1           as '固定资产编码',
       t.anln2           as '资产子编号',
       t.invnr           as '资产实物编码/存货号',
       t.txa50           as '规格型号',
       t.txt50           as '固定资产名称',
       t.txk20           as '资产类别',
       t.menge           as '数量',
       t.meins           as '计量单位',
       format(t.zcyz, 2) as '资产原值',
       format(t.zmjz, 2) as '资产净值',
       t.gdlgrp_txt      as '资产来源',
       t.ordtx           as '资产状态',
       t.afasl           as '折旧方式代码',
       t.afaslt          as '折旧方式描述',
       t.ndjar           as '折旧年限',
       t.afabg           as '折旧开始时间',
       t.aktiv           as '入账时间',
       t.herst           as '制造单位',
       t.anlhtxt         as '资产主号文件',
       t.ndabj           as '已使用年限',
       t.invzu           as '补充库存说明(库存标记 )',
       o.org_code,
       o.werks
from purchase.fixed_assets t
         left join sync_werk_org o on o.werks = t.bukrs;
;-- -. . -..- - / . -. - .-. -.--
select yhjxx,xhjxx, wlbm, ykcdbm, org_id, kclx,create_date,update_date
from business_50t4
where 1 = 1
#   and org_id = '00000287'
  and kclx = 'SAP'
#   and kclx = 'WAITUSE'
  and wlbm = '1000019962'
# and ykcdbm='1521'
order by create_date desc;
;-- -. . -..- - / . -. - .-. -.--
select count(rkdbh)  rk,rkdbh
from
business_y339 group by rkdbh having rk>1;
;-- -. . -..- - / . -. - .-. -.--
select count(ckbm) rk, ckbm
from business_ij1g
group by ckbm
having rk > 1;
;-- -. . -..- - / . -. - .-. -.--
select count(xqjhbh) bm, xqjhbh
from wzxqjh
group by xqjhbh
having bm > 1;
;-- -. . -..- - / . -. - .-. -.--
select count(sbwzdhysdbh) bm, sbwzdhysdbh
from business_hmz1
group by sbwzdhysdbh
having bm > 1;
;-- -. . -..- - / . -. - .-. -.--
select count(rkdbh) rk, rkdbh
from business_y339
group by rkdbh
having rk > 1;
;-- -. . -..- - / . -. - .-. -.--
select count(ckbm) bm, ckbm
from business_ij1g
group by ckbm
having bm > 1;
;-- -. . -..- - / . -. - .-. -.--
select id, cgy, org_id, dept_id, user_id, flow_state, flow_step
from business_hmz1
# where serial = '20240125143513227';
where sbwzdhysdbh like '%DHYSD4070202402010013%';
;-- -. . -..- - / . -. - .-. -.--
select *
from all_repository_stock;
;-- -. . -..- - / . -. - .-. -.--
select m.ckbm, m.flow_step
from business_ij1g m
         inner join business_m3wc outs on m.id = outs.father_id
where wlbm='1000350842';
;-- -. . -..- - / . -. - .-. -.--
select m.ckbm, m.flow_step,outs.cksl
from business_ij1g m
         inner join business_m3wc outs on m.id = outs.father_id
where wlbm='1000350842';
;-- -. . -..- - / . -. - .-. -.--
select m.ckbm, m.flow_step,outs.cksl
from business_ij1g m
         inner join business_m3wc outs on m.id = outs.father_id
where 1=1
  and wlbm='1000350842'
and outs.rkdid is not null;
;-- -. . -..- - / . -. - .-. -.--
select m.ckbm, m.flow_step,outs.cksl,outs.rkdid
from business_ij1g m
         inner join business_m3wc outs on m.id = outs.father_id
where 1=1
  and wlbm='1000350842'
and outs.rkdid is not null;
;-- -. . -..- - / . -. - .-. -.--
select m.ckbm, m.flow_step,outs.cksl,outs.rkdid
from business_ij1g m
         inner join business_m3wc outs on m.id = outs.father_id
where 1=1
  and wlbm='1000350842'
and outs.rkdid is not null  and outs.rkdid  !='';
;-- -. . -..- - / . -. - .-. -.--
select m.ckbm, m.flow_step,outs.cksl,outs.rkdid
from business_ij1g m
         inner join business_m3wc outs on m.id = outs.father_id
where 1=1
  and wlbm='1000350842'
and outs.rkdid is not null  and outs.rkdid  !=''
and rkdid='2aaf09549d4d235a482be9d89e15af6c';
;-- -. . -..- - / . -. - .-. -.--
select outs.rkdid,
       input.ckl as input_ckl,
       outs.cksl    actual_ckl
from business_ij1g m
         inner join business_m3wc outs on m.id = outs.father_id
         inner join business_f7hc input on outs.rkdid = input.id
where outs.rkdid='2aaf09549d4d235a482be9d89e15af6c';
;-- -. . -..- - / . -. - .-. -.--
select input.id,input.wlbm, rksl, ckl
from business_f7hc input
where ckl > input.rksl;
;-- -. . -..- - / . -. - .-. -.--
select input.id, rksl, ckl
from business_f7hc input
where ckl > input.rksl;
;-- -. . -..- - / . -. - .-. -.--
select input_details.id, rksl, ckl
from business_f7hc input_details
where ckl > input_details.rksl;
;-- -. . -..- - / . -. - .-. -.--
select outs.id,
    outs.rkdid,
       input.ckl as input_ckl,
       outs.cksl    actual_ckl
from business_ij1g m
         inner join business_m3wc outs on m.id = outs.father_id
         inner join business_f7hc input on outs.rkdid = input.id
where outs.rkdid='2aaf09549d4d235a482be9d89e15af6c';
;-- -. . -..- - / . -. - .-. -.--
select id,
       ttwb,
       aqhbfy,
       ckbm,
       psdd,
       serial,
       create_date,
       update_date,
       flow_step,
       flow_state,
       ckbm,
       kcdbm
from business_ij1g
# where ckbm is null  or ckbm=''
# where ckbm = 'SBCK4010202402070174';
where id = '86a69f8f63084adea39959ff959b8513';
;-- -. . -..- - / . -. - .-. -.--
select outs.id,
       outs.father_id,
       outs.rkdid,
       input.ckl as input_ckl,
       outs.cksl    actual_ckl
from business_ij1g m
         inner join business_m3wc outs on m.id = outs.father_id
         inner join business_f7hc input on outs.rkdid = input.id
where outs.rkdid = '2aaf09549d4d235a482be9d89e15af6c';
;-- -. . -..- - / . -. - .-. -.--
select outs.id,
       outs.father_id,
       outs.rkdid,
       outs.wlbm,
       input.ckl as input_ckl,
       outs.cksl    actual_ckl
from business_ij1g m
         inner join business_m3wc outs on m.id = outs.father_id
         inner join business_f7hc input on outs.rkdid = input.id
where outs.rkdid = '2aaf09549d4d235a482be9d89e15af6c';
;-- -. . -..- - / . -. - .-. -.--
select xhjxx, yhjxx, ykcdbm
from business_50t4
where 1 = 1
#   and     gcdm = 4010
  and kclx = 'SAP'
  and wlbm = '1000152865';
;-- -. . -..- - / . -. - .-. -.--
select s.id, rksl, ckl, wlbm
from business_y339 m
         inner join business_f7hc s on m.id = s.father_id
where m.flow_step = '归档'
#   and rksl != ckl
#   and ckl > 0
  and wlbm = '1000152865';
;-- -. . -..- - / . -. - .-. -.--
select id,
       father_id,
       ddhxmh,
       rksl,
       gcbm,
       ckl,
       sapcgpz1,
       wlbm,
       dddj,
       rkpzh,
       father_id,
       hjxx,
       kmdbm,create_date
from business_f7hc
where 1 = 1
#   and id = '468579929bc2c6a2e3bfad820543a173'
#   and rksl != ckl
#   and ckl > 0
#   and father_id = '990dcfc482a388d418b7e2558803acc2';
# and org_id='00008413'
  and wlbm = '1000152865';
;-- -. . -..- - / . -. - .-. -.--
select *
from sap_consignment_stock where matnr='1000152865';
;-- -. . -..- - / . -. - .-. -.--
select id
     , org_id
     , jcdw
     , gsdm
     , ddsfgb
     , sapcgpz1
     , user_id
     , caigouyuan
     , szgcddh
     , jyms
     , gysbm
     , gc
     , gsdm
     , shdw
     , jcdw
     , ddsfgb
     , ddfqlx
     , gysmc
     , org_id
     , user_id
     , sbr
     , htbh
     , htmc
     , create_date
     , user_id
from business_3k66
where 1 = 1

# and ddfqlx ='A18A02A11A04';
#   and sapcgpz1 = '4500368008'
  and szgcddh like 'CGDD4010202402220039%'
#   and szgcddh like 'PO%'
# and jyms ='A18A05A15A02';
# and id = 'c38156588b1b4416b9c828ae5ed993f0';
# and serial = '20240125132619561';
# and htbh = 'YTH-4010-NB-GX-2022-001029-00';
# and jyms='A18A05A15A07'
#   and jyms = 'A18A05A15A06'
#   and sapcgpz1 != ''
#   and gsdm = 4010
order by create_date
        desc
limit 10;
;-- -. . -..- - / . -. - .-. -.--
select id
     , org_id
     , jcdw
     , gsdm
     , ddsfgb
     , sapcgpz1
     , user_id
     , caigouyuan
     , szgcddh
     , jyms
     , gysbm
     , gc
     , gsdm
     , shdw
     , jcdw
     , ddsfgb
     , ddfqlx
     , gysmc
     , org_id
     , user_id
     , sbr
     , htbh
     , htmc
     , create_date
     , user_id
from business_3k66
where 1 = 1

# and ddfqlx ='A18A02A11A04';
#   and sapcgpz1 = '4500368008'
  and szgcddh like 'CGDD4010202402220039'
#   and szgcddh like 'PO%'
# and jyms ='A18A05A15A02';
# and id = 'c38156588b1b4416b9c828ae5ed993f0';
# and serial = '20240125132619561';
# and htbh = 'YTH-4010-NB-GX-2022-001029-00';
# and jyms='A18A05A15A07'
#   and jyms = 'A18A05A15A06'
#   and sapcgpz1 != ''
#   and gsdm = 4010
order by create_date
        desc
limit 10;
;-- -. . -..- - / . -. - .-. -.--
select id,
       szgcddh,
     , org_id
     , jcdw
     , gsdm
     , ddsfgb
     , sapcgpz1
     , user_id
     , caigouyuan
     , szgcddh
     , jyms
     , gysbm
     , gc
     , gsdm
     , shdw
     , jcdw
     , ddsfgb
     , ddfqlx
     , gysmc
     , org_id
     , user_id
     , sbr
     , htbh
     , htmc
     , create_date
     , user_id
from business_3k66
where 1 = 1

# and ddfqlx ='A18A02A11A04';
#   and sapcgpz1 = '4500368008'
  and szgcddh like 'CGDD4010202402220039'
#   and szgcddh like 'PO%'
# and jyms ='A18A05A15A02';
# and id = 'c38156588b1b4416b9c828ae5ed993f0';
# and serial = '20240125132619561';
# and htbh = 'YTH-4010-NB-GX-2022-001029-00';
# and jyms='A18A05A15A07'
#   and jyms = 'A18A05A15A06'
#   and sapcgpz1 != ''
#   and gsdm = 4010
order by create_date
        desc
limit 10;
;-- -. . -..- - / . -. - .-. -.--
select id
     , szgcddh
     
     , org_id
     , jcdw
     , gsdm
     , ddsfgb
     , sapcgpz1
     , user_id
     , caigouyuan
     , jyms
     , gysbm
     , gc
     , gsdm
     , shdw
     , jcdw
     , ddsfgb
     , ddfqlx
     , gysmc
     , org_id
     , user_id
     , sbr
     , htbh
     , htmc
     , create_date
     , user_id
from business_3k66
where 1 = 1

# and ddfqlx ='A18A02A11A04';
#   and sapcgpz1 = '4500368008'
  and szgcddh like 'CGDD4010202402220039'
#   and szgcddh like 'PO%'
# and jyms ='A18A05A15A02';
# and id = 'c38156588b1b4416b9c828ae5ed993f0';
# and serial = '20240125132619561';
# and htbh = 'YTH-4010-NB-GX-2022-001029-00';
# and jyms='A18A05A15A07'
#   and jyms = 'A18A05A15A06'
#   and sapcgpz1 != ''
#   and gsdm = 4010
order by create_date
        desc
limit 10;
;-- -. . -..- - / . -. - .-. -.--
select id
     , szgcddh
     , org_id
     , jcdw
     , gsdm
     , ddsfgb
     , sapcgpz1
     , user_id
     , caigouyuan
     , jyms
     , gysbm
     , gc
     , gsdm
     , shdw
     , jcdw
     , ddsfgb
     , ddfqlx
     , gysmc
     , org_id
     , user_id
     , sbr
     , htbh
     , htmc
     , create_date
     , user_id
from business_3k66
where 1 = 1

# and ddfqlx ='A18A02A11A04';
#   and sapcgpz1 = '4500368008'
  and szgcddh = 'CGDD4010202402220039'
#   and szgcddh like 'PO%'
# and jyms ='A18A05A15A02';
# and id = 'c38156588b1b4416b9c828ae5ed993f0';
# and serial = '20240125132619561';
# and htbh = 'YTH-4010-NB-GX-2022-001029-00';
# and jyms='A18A05A15A07'
#   and jyms = 'A18A05A15A06'
#   and sapcgpz1 != ''
#   and gsdm = 4010
order by create_date
        desc
limit 10;
;-- -. . -..- - / . -. - .-. -.--
select id
     , szgcddh
     , org_id
     , jcdw
     , gsdm
     , ddsfgb
     , sapcgpz1
     , user_id
     , caigouyuan
     , jyms
     , gysbm
     , gc
     , gsdm
     , shdw
     , jcdw
     , ddsfgb
     , ddfqlx
     , gysmc
     , org_id
     , user_id
     , sbr
     , htbh
     , htmc
     , create_date
     , user_id,
       org_id
from business_3k66
where 1 = 1

# and ddfqlx ='A18A02A11A04';
#   and sapcgpz1 = '4500368008'
  and szgcddh = 'CGDD4010202402220039'
#   and szgcddh like 'PO%'
# and jyms ='A18A05A15A02';
# and id = 'c38156588b1b4416b9c828ae5ed993f0';
# and serial = '20240125132619561';
# and htbh = 'YTH-4010-NB-GX-2022-001029-00';
# and jyms='A18A05A15A07'
#   and jyms = 'A18A05A15A06'
#   and sapcgpz1 != ''
#   and gsdm = 4010
order by create_date
        desc
limit 10;
;-- -. . -..- - / . -. - .-. -.--
select id,
       gsmc,
       xqjhbh,
       cgyfpfs,
       sbr,
       sbbm,
       xqbm,
       sfywlbm,
       yt,
       wzlb,
       wlbm,
       wlms,
       wlzbm,
       wlzms,
       jldw,
       xqsl,
       xqsj,
       jjcd,
       sapkc,
       dlykc,
       drkkc,
       jskc,
       wzjb,
       sydw,
       zzmc,
       sbwh,
       sbmc,
       ccpmc,
       scjh,
       dh,
       llxq,
       xqxzz,
       scjhdh,
       fylx,
       ydlx,
       cbzx,
       jgh,
       zch,
       jxgdh,
       xqdwlxr,
       cgjhsl,
       gyjhsl,
       yacgwlbm,
       yacgwlms,
       jszbyq,
       shr,
       shrlxfs,
       shdz,
       yzyq,
       sjlx,
       jyxm,
       bz,
       spyj,
       cgms,
       gccgjhfp,
       gccgy,
       jcdw,
       jcdwjhfp,
       jcdwcgy,
       org_id,
       dept_id,
       user_id,
       create_date,
       update_date,
       sort,
       serial,
       flow_state,
       sfya,
       xqly,
       zd,
       xqdwlxrfs,
       sbrlxfs,
       wllb,
       sbgsname,
       sbbmname,
       sbrname,
       xqdwmc,
       xqdwlxrjlxfs,
       sbrsfmc,
       xqdwsfmc,
       xqsjz,
       flow_step,
       bczt,
       fj,
       sfzdyzj,
       zdyjy,
       field_h1,
       field_h2,
       field_h3,
       field_h4,
       field_h5,
       field_h6,
       field_h7,
       field_h8,
       field_h9,
       field_h10,
       field_h11,
       field_h12,
       lcjsr,
       cbzxmc,
       cgjhzt,
       dbzt,
       sdkc,
       ggkc,
       zbmchwh
from wzxqjh
where wzxqjh = 'XQJH4010202402220593';
;-- -. . -..- - / . -. - .-. -.--
select id,
       gsmc,
       xqjhbh,
       cgyfpfs,
       sbr,
       sbbm,
       xqbm,
       sfywlbm,
       yt,
       wzlb,
       wlbm,
       wlms,
       wlzbm,
       wlzms,
       jldw,
       xqsl,
       xqsj,
       jjcd,
       sapkc,
       dlykc,
       drkkc,
       jskc,
       wzjb,
       sydw,
       zzmc,
       sbwh,
       sbmc,
       ccpmc,
       scjh,
       dh,
       llxq,
       xqxzz,
       scjhdh,
       fylx,
       ydlx,
       cbzx,
       jgh,
       zch,
       jxgdh,
       xqdwlxr,
       cgjhsl,
       gyjhsl,
       yacgwlbm,
       yacgwlms,
       jszbyq,
       shr,
       shrlxfs,
       shdz,
       yzyq,
       sjlx,
       jyxm,
       bz,
       spyj,
       cgms,
       gccgjhfp,
       gccgy,
       jcdw,
       jcdwjhfp,
       jcdwcgy,
       org_id,
       dept_id,
       user_id,
       create_date,
       update_date,
       sort,
       serial,
       flow_state,
       sfya,
       xqly,
       zd,
       xqdwlxrfs,
       sbrlxfs,
       wllb,
       sbgsname,
       sbbmname,
       sbrname,
       xqdwmc,
       xqdwlxrjlxfs,
       sbrsfmc,
       xqdwsfmc,
       xqsjz,
       flow_step,
       bczt,
       fj,
       sfzdyzj,
       zdyjy,
       field_h1,
       field_h2,
       field_h3,
       field_h4,
       field_h5,
       field_h6,
       field_h7,
       field_h8,
       field_h9,
       field_h10,
       field_h11,
       field_h12,
       lcjsr,
       cbzxmc,
       cgjhzt,
       dbzt,
       sdkc,
       ggkc,
       zbmchwh
from wzxqjh
where xqjhbh = 'XQJH4010202402220593';
;-- -. . -..- - / . -. - .-. -.--
select create_date,params,result,url,fail_reason
from business_8b0j
where module_name = '电子商城-采购申请单审批结果回传'
and params like '%PR240221000003%'
order by create_date desc
limit 100;
;-- -. . -..- - / . -. - .-. -.--
select create_date,params,result,url,fail_reason
from business_8b0j
where module_name = '电子商城-采购申请单审批结果回传'
and params like '%PR240221000025%'
order by create_date desc
limit 100;
;-- -. . -..- - / . -. - .-. -.--
select *
from sap_consignment_stock where matnr='1000212961';
;-- -. . -..- - / . -. - .-. -.--
select id
     , szgcddh
     , org_id
     , jcdw
     , gsdm
     , ddsfgb
     , sapcgpz1
     , user_id
     , caigouyuan
     , jyms
     , gysbm
     , gc
     , gsdm
     , shdw
     , jcdw
     , ddsfgb
     , ddfqlx
     , gysmc
     , org_id
     , user_id
     , sbr
     , htbh
     , htmc
     , create_date
     , user_id,
       org_id
from business_3k66
where 1 = 1

# and ddfqlx ='A18A02A11A04';
#   and sapcgpz1 = '4500368008'
  and szgcddh = 'CGDD00001202402050023'
#   and szgcddh like 'PO%'
# and jyms ='A18A05A15A02';
# and id = 'c38156588b1b4416b9c828ae5ed993f0';
# and serial = '20240125132619561';
# and htbh = 'YTH-4010-NB-GX-2022-001029-00';
# and jyms='A18A05A15A07'
#   and jyms = 'A18A05A15A06'
#   and sapcgpz1 != ''
#   and gsdm = 4010
order by create_date
        desc
limit 10;
;-- -. . -..- - / . -. - .-. -.--
select *
from sync_werk_org where werks='3390';
;-- -. . -..- - / . -. - .-. -.--
select id,
       father_id,
       ddhxmh,
       rksl,
       gcbm,
       ckl,
       sapcgpz1,
       wlbm,
       dddj,
       rkpzh,
       father_id,
       hjxx,
       kmdbm,create_date
from business_f7hc
where 1 = 1
#   and id = '468579929bc2c6a2e3bfad820543a173'
#   and rksl != ckl
#   and ckl > 0
#   and father_id = '990dcfc482a388d418b7e2558803acc2';
# and org_id='00008413'
  and wlbm = '1000039214';
;-- -. . -..- - / . -. - .-. -.--
select id,
       father_id,
       ddhxmh,
       rksl,
       gcbm,
       ckl,
       sapcgpz1,
       wlbm,
       dddj,
       rkpzh,
       father_id,
       hjxx,
       kmdbm,create_date
from business_f7hc
where 1 = 1
#   and id = '468579929bc2c6a2e3bfad820543a173'
#   and rksl != ckl
#   and ckl > 0
#   and father_id = '990dcfc482a388d418b7e2558803acc2';
# and org_id='00008413'
  and wlbm = '1000022661';
;-- -. . -..- - / . -. - .-. -.--
select id,
       father_id,
       ddhxmh,
       rksl,
       gcbm,
       ckl,
       sapcgpz1,
       wlbm,
       dddj,
       rkpzh,
       father_id,
       hjxx,
       kmdbm,create_date
from business_f7hc
where 1 = 1
#   and id = '468579929bc2c6a2e3bfad820543a173'
#   and rksl != ckl
#   and ckl > 0
#   and father_id = '990dcfc482a388d418b7e2558803acc2';
# and org_id='00008413'
  and wlbm = '1000034816';
;-- -. . -..- - / . -. - .-. -.--
select id,
       ttwb,
       llr,
       aqhbfy,
       ckbm,
       psdd,
       serial,
       create_date,
       update_date,
       flow_step,
       flow_state,
       ckbm,
       kcdbm
from business_ij1g
# where ckbm is null  or ckbm=''
# where ckbm = 'SBCK4010202402070174';
where id = '86a69f8f63084adea39959ff959b8513';
;-- -. . -..- - / . -. - .-. -.--
select *
from goods_input_output_account limit 10;
;-- -. . -..- - / . -. - .-. -.--
select *
from sap_consignment_stock where matnr='1000369556';
;-- -. . -..- - / . -. - .-. -.--
select *
from sap_goods_year where matnr='1000369556';
;-- -. . -..- - / . -. - .-. -.--
select *
from p_product_master where werks=3092 and matnr=1000369556;
;-- -. . -..- - / . -. - .-. -.--
delete 
from purchase_sulfur_number_confirm;
;-- -. . -..- - / . -. - .-. -.--
select factory
from purchase_sulfur_number_confirm where org_id='10000600';
;-- -. . -..- - / . -. - .-. -.--
select *
from purchase_sulfur_number_confirm where org_id='10000600';
;-- -. . -..- - / . -. - .-. -.--
delete
from purchase_sulfur_number_confirm;
;-- -. . -..- - / . -. - .-. -.--
select *
from purchase_sulfur_number_confirm where factory='10000600';
;-- -. . -..- - / . -. - .-. -.--
select *
from purchase_sulfur_number_confirm;
;-- -. . -..- - / . -. - .-. -.--
select count(1)
from purchase_sulfur_number_confirm;
;-- -. . -..- - / . -. - .-. -.--
select yhjxx,xhjxx, wlbm, ykcdbm, org_id, kclx,create_date,update_date
from business_50t4
where 1 = 1
#   and org_id = '00000287'
  and kclx = 'SAP'
#   and kclx = 'WAITUSE'
  and wlbm = '1000025353'
# and ykcdbm='1521'
order by create_date desc;
;-- -. . -..- - / . -. - .-. -.--
select yhjxx,xhjxx, wlbm, ykcdbm, org_id, kclx,create_date,update_date
from business_50t4
where 1 = 1
#   and org_id = '00000287'
#   and kclx = 'SAP'
#   and kclx = 'WAITUSE'
  and wlbm = '1000025353'
# and ykcdbm='1521'
order by create_date desc;
;-- -. . -..- - / . -. - .-. -.--
select m.org_id, s.org_id, s.rk_temp_zt, s.zt, s.rkl
from business_hmz1 m
         inner join business_6j3g s
                    on m.id = s.father_id
where m.sbwzdhysdbh = 'INV240225000001'
  and (s.rk_temp_zt = '' OR s.rk_temp_zt IS NULL)
  AND (s.zt != 'A18A09A02A05' OR s.zt IS NULL or s.zt = '')
  and (s.cgjhbh is null or s.cgjhbh = '')
  and (s.sjzt = 'A18A07A17A03' or s.sfrbjs = 'A03A01A01');
;-- -. . -..- - / . -. - .-. -.--
select yhjxx,xhjxx, wlbm, ykcdbm, org_id, kclx,create_date,update_date
from business_50t4
where 1 = 1
#   and org_id = '00000287'
#   and kclx = 'SAP'
#   and kclx = 'WAITUSE'
  and wlbm = '1000005197'
# and ykcdbm='1521'
order by create_date desc;
;-- -. . -..- - / . -. - .-. -.--
select create_date,params,result,url,fail_reason
from business_8b0j
where module_name = '电子商城-电子商城发货单同步'
and params like '%INV240225000001%'
order by create_date desc
limit 100;
;-- -. . -..- - / . -. - .-. -.--
select id, cgy, org_id, dept_id, user_id, flow_state, flow_step
from business_hmz1
# where serial = '20240125143513227';
where sbwzdhysdbh like '%INV240225000001%';
;-- -. . -..- - / . -. - .-. -.--
select id
     , szgcddh
     , org_id
     , jcdw
     , gsdm
     , ddsfgb
     , sapcgpz1
     , user_id
     , caigouyuan
     , jyms
     , gysbm
     , gc
     , gsdm
     , shdw
     , jcdw
     , ddsfgb
     , ddfqlx
     , gysmc
     , org_id
     , user_id
     , sbr
     , htbh
     , htmc
     , create_date
     , user_id,
       org_id
from business_3k66
where 1 = 1

# and ddfqlx ='A18A02A11A04';
#   and sapcgpz1 = '4500368008'
  and szgcddh = 'PO240222000023'
#   and szgcddh like 'PO%'
# and jyms ='A18A05A15A02';
# and id = 'c38156588b1b4416b9c828ae5ed993f0';
# and serial = '20240125132619561';
# and htbh = 'YTH-4010-NB-GX-2022-001029-00';
# and jyms='A18A05A15A07'
#   and jyms = 'A18A05A15A06'
#   and sapcgpz1 != ''
#   and gsdm = 4010
order by create_date
        desc
limit 10;
;-- -. . -..- - / . -. - .-. -.--
select id
     , szgcddh
     ,caigouyuan
     ,sbr
     , org_id
     , jcdw
     , gsdm
     , ddsfgb
     , sapcgpz1
     , user_id
     , caigouyuan
     , jyms
     , gysbm
     , gc
     , gsdm
     , shdw
     , jcdw
     , ddsfgb
     , ddfqlx
     , gysmc
     , org_id
     , user_id
     , sbr
     , htbh
     , htmc
     , create_date
     , user_id,
       org_id
from business_3k66
where 1 = 1

# and ddfqlx ='A18A02A11A04';
#   and sapcgpz1 = '4500368008'
  and szgcddh = 'PO240222000023'
#   and szgcddh like 'PO%'
# and jyms ='A18A05A15A02';
# and id = 'c38156588b1b4416b9c828ae5ed993f0';
# and serial = '20240125132619561';
# and htbh = 'YTH-4010-NB-GX-2022-001029-00';
# and jyms='A18A05A15A07'
#   and jyms = 'A18A05A15A06'
#   and sapcgpz1 != ''
#   and gsdm = 4010
order by create_date
        desc
limit 10;
;-- -. . -..- - / . -. - .-. -.--
select id
     , szgcddh
     ,caigouyuan
     ,sbr
     , org_id
     , jcdw
     , gsdm
     , ddsfgb
     , sapcgpz1
     , user_id
     , caigouyuan
     , jyms
     , gysbm
     , gc
     , gsdm
     , shdw
     , jcdw
     , ddsfgb
     , ddfqlx
     , gysmc
     , org_id
     , user_id
     , sbr
     , htbh
     , htmc
     , create_date
     , user_id,
       org_id
from business_3k66
where 1 = 1

# and ddfqlx ='A18A02A11A04';
#   and sapcgpz1 = '4500368008'
#   and szgcddh = 'PO240222000023'/**/
#   and szgcddh like 'PO%'
# and jyms ='A18A05A15A02';
# and id = 'c38156588b1b4416b9c828ae5ed993f0';
and serial = '20240222084546841';
;-- -. . -..- - / . -. - .-. -.--
select create_date,params,result,url,fail_reason
from business_8b0j
where module_name = '电子商城-电子商城发货单同步'
order by create_date desc
limit 100;
;-- -. . -..- - / . -. - .-. -.--
select create_date,params,result,url,fail_reason
from business_8b0j
where module_name = '电子商城-电子商城采购订单同步'
order by create_date desc
limit 100;
;-- -. . -..- - / . -. - .-. -.--
select id
     , szgcddh
     ,caigouyuan
     ,sbr
     , org_id
     , jcdw
     , gsdm
     , ddsfgb
     , sapcgpz1
     , user_id
     , caigouyuan
     , jyms
     , gysbm
     , gc
     , gsdm
     , shdw
     , jcdw
     , ddsfgb
     , ddfqlx
     , gysmc
     , org_id
     , user_id
     , sbr
     , htbh
     , htmc
     , create_date
     , user_id,
       org_id
from business_3k66
where 1 = 1

# and ddfqlx ='A18A02A11A04';
#   and sapcgpz1 = '4500368008'
#   and szgcddh = 'PO240222000023'/**/
#   and szgcddh like 'PO%'
# and jyms ='A18A05A15A02';
# and id = 'c38156588b1b4416b9c828ae5ed993f0';
and serial = '20240226133037180';
;-- -. . -..- - / . -. - .-. -.--
select id
     , szgcddh
     ,org_id
     ,caigouyuan
     ,sbr
     , org_id
     , jcdw
     , gsdm
     , ddsfgb
     , sapcgpz1
     , user_id
     , caigouyuan
     , jyms
     , gysbm
     , gc
     , gsdm
     , shdw
     , jcdw
     , ddsfgb
     , ddfqlx
     , gysmc
     , org_id
     , user_id
     , sbr
     , htbh
     , htmc
     , create_date
     , user_id,
       org_id
from business_3k66
where 1 = 1

# and ddfqlx ='A18A02A11A04';
#   and sapcgpz1 = '4500368008'
#   and szgcddh = 'PO240222000023'/**/
#   and szgcddh like 'PO%'
# and jyms ='A18A05A15A02';
# and id = 'c38156588b1b4416b9c828ae5ed993f0';
and serial = '20240226133037180';
;-- -. . -..- - / . -. - .-. -.--
select id
     , szgcddh
     ,org_id
     ,caigouyuan
     ,sbr
     , org_id
     , jcdw
     , gsdm
     , ddsfgb
     , sapcgpz1
     , user_id
     , caigouyuan
     , jyms
     , gysbm
     , gc
     , gsdm
     , shdw
     , jcdw
     , ddsfgb
     , ddfqlx
     , gysmc
     , org_id
     , user_id
     , sbr
     , htbh
     , htmc
     , create_date
     , user_id,
       org_id
from business_3k66
where 1 = 1

# and ddfqlx ='A18A02A11A04';
#   and sapcgpz1 = '4500368008'
#   and szgcddh = 'PO240222000023'/**/
#   and szgcddh like 'PO%'
# and jyms ='A18A05A15A02';
# and id = 'c38156588b1b4416b9c828ae5ed993f0';
and serial = '20240226134505166';
;-- -. . -..- - / . -. - .-. -.--
select id,
       ttwb,
       llr,
       aqhbfy,
       ckbm,
       psdd,
       serial,
       create_date,
       update_date,
       flow_step,
       flow_state,
       ckbm,
       kcdbm
from business_ij1g
# where ckbm is null  or ckbm=''
# where ckbm = 'SBCK4010202402070174';
# where id = '86a69f8f63084adea39959ff959b8513';
#     where psdd like '%熔%'
where serial = '20240226140717141'
# where business_ij1g.flow_step like '%总经理%';
# where business_ij1g.create_date = '2023-08-28 16:50:56';
# where serial = '20231025094042682'
order by create_date
desc;
;-- -. . -..- - / . -. - .-. -.--
select id,
       org_id,
       cksl,
       father_id,
       ckpzh,
       zzkm,
       jldw,
       dwms,
       ydlx,
       fylx,
       nbddh,
       zjgc,
       zjgcms,
       nbddh,
       nbddms
from business_m3wc
where 1 = 1
# and wlbm='1000152865'
  and father_id = 'c9e03742f30a44e1b6a2ea2a5b020734';
;-- -. . -..- - / . -. - .-. -.--
select id,
       org_id,
       dddj,
       cksl,
       father_id,
       ckpzh,
       zzkm,
       jldw,
       dwms,
       ydlx,
       fylx,
       nbddh,
       zjgc,
       zjgcms,
       nbddh,
       nbddms
from business_m3wc
where 1 = 1
# and wlbm='1000152865'
  and father_id = 'c9e03742f30a44e1b6a2ea2a5b020734';
;-- -. . -..- - / . -. - .-. -.--
select id,
       org_id,
       dddj,
       cksl,
       father_id,
       ckpzh,
       zzkm,
       jldw,
       dwms,
       ydlx,
       fylx,
       nbddh,
       zjgc,
       zjgcms,
       nbddh,
       nbddms,
       rkdid
from business_m3wc
where 1 = 1
# and wlbm='1000152865'
  and father_id = 'c9e03742f30a44e1b6a2ea2a5b020734';
;-- -. . -..- - / . -. - .-. -.--
select id,
       org_id,
       wlbm,
       dddj,
       cksl,
       father_id,
       ckpzh,
       zzkm,
       jldw,
       dwms,
       ydlx,
       fylx,
       nbddh,
       zjgc,
       zjgcms,
       nbddh,
       nbddms,
       rkdid
from business_m3wc
where 1 = 1
# and wlbm='1000152865'
  and father_id = 'c9e03742f30a44e1b6a2ea2a5b020734';
;-- -. . -..- - / . -. - .-. -.--
select id,
       father_id,
       ddhxmh,
       rksl,
       gcbm,
       ckl,
       sapcgpz1,
       wlbm,
       dddj,
       rkpzh,
       father_id,
       hjxx,
       kmdbm,create_date
from business_f7hc
where 1 = 1
#   and id = '468579929bc2c6a2e3bfad820543a173'
#   and rksl != ckl
#   and ckl > 0
#   and father_id = '990dcfc482a388d418b7e2558803acc2';
# and org_id='00008413'
  and wlbm = '1000132699';
;-- -. . -..- - / . -. - .-. -.--
select count(1)
from purchase_sulfur_number_confirm where factory='10000600';
;-- -. . -..- - / . -. - .-. -.--
select *
from material_average_price where werks=4070;
;-- -. . -..- - / . -. - .-. -.--
select *
from sync_werk_org_copy1 where werks=4070;
;-- -. . -..- - / . -. - .-. -.--
select count(1)
from purchase_sulfur_number_confirm
where 1 = 1
#   and factory = '10000600';
  and factory = '00000287';
;-- -. . -..- - / . -. - .-. -.--
10000600;
;-- -. . -..- - / . -. - .-. -.--
select count(1)
from purchase_sulfur_number_confirm
where 1 = 1
  and factory = '10000600';
;-- -. . -..- - / . -. - .-. -.--
select supply_date
from purchase_sulfur_number_confirm
where 1 = 1
  and factory = '10000600';
;-- -. . -..- - / . -. - .-. -.--
select s.id,s.wlbm
from business_3k66 m
         inner join business_qq7x s on m.id = s.father_id
where m.szgcddh='PO240222000023';
;-- -. . -..- - / . -. - .-. -.--
select s.id,s.wlbm,s.wlms
from business_3k66 m
         inner join business_qq7x s on m.id = s.father_id
where m.szgcddh='PO240222000023';
;-- -. . -..- - / . -. - .-. -.--
select s.*
from business_3k66 m
         inner join business_qq7x s on m.id = s.father_id
where m.szgcddh='PO240222000023';
;-- -. . -..- - / . -. - .-. -.--
select id, apply_item_code, remark, purchase_user_work_number
from ele_shop_purchase_apply_detail
where father_id = '036fff8f6c76b0b97721936738f2843a';
;-- -. . -..- - / . -. - .-. -.--
select id,cgy_ids,user_id
from ele_shop_purchase_apply
where apply_code = 'PR240222000013';
;-- -. . -..- - / . -. - .-. -.--
select id,product_name,apply_item_code, remark, purchase_user_work_number
from ele_shop_purchase_apply_detail
where father_id = '036fff8f6c76b0b97721936738f2843a';
;-- -. . -..- - / . -. - .-. -.--
select s.xxmh, s.apply_item_code, s.apply_code
from business_3k66 m
         inner join business_qq7x s on m.id = s.father_id
where szgcddh = 'PO231110000003';
;-- -. . -..- - / . -. - .-. -.--
select s.xxmh, s.apply_item_code, s.apply_code
from business_3k66 m
         inner join business_qq7x s on m.id = s.father_id
where szgcddh = 'PO240222000023';
;-- -. . -..- - / . -. - .-. -.--
select s.xxmh, s.apply_item_code, s.apply_code,s.apply_item_code
from business_3k66 m
         inner join business_qq7x s on m.id = s.father_id
where szgcddh = 'PO240222000023';
;-- -. . -..- - / . -. - .-. -.--
select s.id,s.wlbm s.xxmh, s.apply_item_code, s.apply_code,s.apply_item_code
from business_3k66 m
         inner join business_qq7x s on m.id = s.father_id
where szgcddh = 'PO240222000023';
;-- -. . -..- - / . -. - .-. -.--
select id,apply_item_code,product_name,apply_item_code, remark, purchase_user_work_number
from ele_shop_purchase_apply_detail
where father_id = '036fff8f6c76b0b97721936738f2843a';
;-- -. . -..- - / . -. - .-. -.--
select s.*
from business_3k66 m
         inner join business_qq7x s on m.id = s.father_id
where m.szgcddh = 'PO240222000023';
;-- -. . -..- - / . -. - .-. -.--
select s.id,s.wlbm ,s.xxmh, s.apply_item_code, s.apply_code,s.apply_item_code
from business_3k66 m
         inner join business_qq7x s on m.id = s.father_id
where szgcddh = 'PO240222000023';
;-- -. . -..- - / . -. - .-. -.--
select s.id,s.wlbm ,s.xxmh, s.apply_item_code, s.apply_code,s.apply_item_code
from business_3k66 m
         inner join business_qq7x s on m.id = s.father_id
where szgcddh = 'PO240221000037';
;-- -. . -..- - / . -. - .-. -.--
select s.id,s.wlbm ,s.xxmh, s.apply_item_code, s.apply_code,s.apply_item_code
from business_3k66 m
         inner join business_qq7x s on m.id = s.father_id
where szgcddh = 'PO240221000038';
;-- -. . -..- - / . -. - .-. -.--
select s.id,s.wlbm ,s.xxmh, s.apply_item_code, s.apply_code,s.apply_item_code
from business_3k66 m
         inner join business_qq7x s on m.id = s.father_id
where szgcddh = 'PO240221000006';
;-- -. . -..- - / . -. - .-. -.--
select s.id,s.wlbm ,s.xxmh, s.apply_item_code, s.apply_code,s.apply_item_code
from business_3k66 m
         inner join business_qq7x s on m.id = s.father_id
where szgcddh = 'PO240219000001';
;-- -. . -..- - / . -. - .-. -.--
select s.id,s.wlbm ,s.xxmh, s.apply_item_code, s.apply_code,s.apply_item_code
from business_3k66 m
         inner join business_qq7x s on m.id = s.father_id
where szgcddh = 'PO240219000003';
;-- -. . -..- - / . -. - .-. -.--
select s.id,s.wlbm ,s.xxmh, s.apply_item_code, s.apply_code,s.apply_item_code
from business_3k66 m
         inner join business_qq7x s on m.id = s.father_id
where szgcddh = 'PO240204000008';
;-- -. . -..- - / . -. - .-. -.--
select id, cgy, org_id, dept_id, user_id, flow_state, flow_step
from business_hmz1
# where serial = '20240125143513227';
where sbwzdhysdbh like '%INV%';
;-- -. . -..- - / . -. - .-. -.--
select *
from business_hmz1 m
         inner join business_6j3g s on m.id = s.father_id
where sbwzdhysdbh like '%INV%';
;-- -. . -..- - / . -. - .-. -.--
select s.id,s.wlbm,s.wlms
from business_hmz1 m
         inner join business_6j3g s on m.id = s.father_id
where sbwzdhysdbh like '%INV%';
;-- -. . -..- - / . -. - .-. -.--
select s.id,s.wlbm,s.wlms,s.xxmh
from business_hmz1 m
         inner join business_6j3g s on m.id = s.father_id
where sbwzdhysdbh like '%INV%';
;-- -. . -..- - / . -. - .-. -.--
select s.id,s.wlbm,s.wlms,s.send_order_item_code
from business_hmz1 m
         inner join business_6j3g s on m.id = s.father_id
where sbwzdhysdbh like '%INV%';
;-- -. . -..- - / . -. - .-. -.--
select s.id,s.wlbm,s.wlms,s.cgddmxid
from business_hmz1 m
         inner join business_6j3g s on m.id = s.father_id
where sbwzdhysdbh like '%INV%';
;-- -. . -..- - / . -. - .-. -.--
select s.id,s.wlbm,s.wlms,s.cgddmxid,dd.wlbm
from business_hmz1 m
         inner join business_6j3g s on m.id = s.father_id
inner join business_qq7x dd on s.cgddmxid=dd.id
where sbwzdhysdbh like '%INV%';
;-- -. . -..- - / . -. - .-. -.--
select s.id,s.wlbm,s.wlms,s.cgddmxid
from business_hmz1 m
         inner join business_6j3g s on m.id = s.father_id
inner join business_qq7x dd on s.cgddmxid=dd.id
where sbwzdhysdbh like '%INV%';
;-- -. . -..- - / . -. - .-. -.--
select *
from business_76uh where cgjhbh='CGJH4110202402260349';
;-- -. . -..- - / . -. - .-. -.--
select *
from business_1bl3 where cgwjbh='CGJH4110202402260349';
;-- -. . -..- - / . -. - .-. -.--
select *
from business_7twq where cggyjhbh='CGJH4110202402260349';
;-- -. . -..- - / . -. - .-. -.--
select id,cgr
from business_7twq where cggyjhbh='CGJH4110202402260349';
;-- -. . -..- - / . -. - .-. -.--
select id
     , szgcddh
     ,org_id
     ,caigouyuan
     ,sbr
     , org_id
     , jcdw
     , gsdm
     , ddsfgb
     , sapcgpz1
     , user_id
     , caigouyuan
     , jyms
     , gysbm
     , gc
     , gsdm
     , shdw
     , jcdw
     , ddsfgb
     , ddfqlx
     , gysmc
     , org_id
     , user_id
     , sbr
     , htbh
     , htmc
     , create_date
     , user_id,
       org_id
from business_3k66
where 1 = 1

# and ddfqlx ='A18A02A11A04';
#   and sapcgpz1 = '4500368008'
#   and szgcddh = 'PO240222000023'/**/
#   and szgcddh like 'PO%'
# and jyms ='A18A05A15A02';
# and id = 'c38156588b1b4416b9c828ae5ed993f0';
and serial = '20240226175844214';
;-- -. . -..- - / . -. - .-. -.--
select id,
       ttwb,
       llr,
       aqhbfy,
       ckbm,
       psdd,
       serial,
       create_date,
       update_date,
       flow_step,
       flow_state,
       ckbm,
       kcdbm
from business_ij1g
# where ckbm is null  or ckbm=''
# where ckbm = 'SBCK4010202402070174';
# where id = '86a69f8f63084adea39959ff959b8513';
#     where psdd like '%熔%'
where serial = '20240227120025202'
# where business_ij1g.flow_step like '%总经理%';
# where business_ij1g.create_date = '2023-08-28 16:50:56';
# where serial = '20231025094042682'
order by create_date
desc;
;-- -. . -..- - / . -. - .-. -.--
select create_date, params, result, url, fail_reason
from business_8b0j
where module_name = '电子商城-电子商城发货单同步'
and params like '%INV240227000020%'
order by create_date desc
limit 100;
;-- -. . -..- - / . -. - .-. -.--
select s.id,s.wlbm,s.wlms,s.cgddmxid
from business_hmz1 m
         inner join business_6j3g s on m.id = s.father_id
inner join business_qq7x dd on s.cgddmxid=dd.id
where sbwzdhysdbh like '%INV240227000020%';
;-- -. . -..- - / . -. - .-. -.--
select id,wlbm
from business_qq7x where id='ef6f304ec5efe2780c51561c1ab4c5fe';
;-- -. . -..- - / . -. - .-. -.--
select id, cgy, org_id, dept_id, user_id, flow_state, flow_step
from business_hmz1
# where serial = '20240125143513227';
where sbwzdhysdbh like '%INV240227000020%';
;-- -. . -..- - / . -. - .-. -.--
select id, cgy, org_id, create_date,dept_id, user_id, flow_state, flow_step
from business_hmz1
# where serial = '20240125143513227';
where sbwzdhysdbh like '%INV240227000020%';
;-- -. . -..- - / . -. - .-. -.--
select *
from business_8b0j
where module_name = '电子商城-接收电子商城采购申请单'
order by create_date desc
limit 10;
;-- -. . -..- - / . -. - .-. -.--
select id,
       rkdbh,
       org_id,
       htbh,
       kgy,
       htmc,
       dhysdh,
       update_date,
       rkpz,
       wlbmall
from business_y339
where 1 = 1
#   and id = 'b4989a6684286ccf0a6d1a0c48fcf0a3'

and serial = '20240219103003136'
# and sapcgpz1 = '4500365366'
#     where org_id !='00000287'
# and rkdbh = 'SBRKD4010202401190091'
# where dhysdh is null
order by create_date desc;
;-- -. . -..- - / . -. - .-. -.--
select id,
       rkdbh,
       org_id,
       htbh,
       kgy,
       htmc,
       dhysdh,
       update_date,
       rkpz,
       wlbmall
from business_y339
where 1 = 1
#   and id = 'b4989a6684286ccf0a6d1a0c48fcf0a3'

# and serial = '20240219103003136'
# and sapcgpz1 = '4500365366'
#     where org_id !='00000287'
# and rkdbh = 'SBRKD4010202401190091'
# where dhysdh is null
order by create_date desc;
;-- -. . -..- - / . -. - .-. -.--
select id,
       rkdbh,
       flow_step,
       org_id,
       htbh,
       kgy,
       htmc,
       dhysdh,
       update_date,
       rkpz,
       wlbmall
from business_y339
where 1 = 1
#   and id = 'b4989a6684286ccf0a6d1a0c48fcf0a3'

# and serial = '20240219103003136'
# and sapcgpz1 = '4500365366'
#     where org_id !='00000287'
# and rkdbh = 'SBRKD4010202401190091'
# where dhysdh is null
order by create_date desc;
;-- -. . -..- - / . -. - .-. -.--
select id,
       rkdbh,
       kgy,
       flow_step,
       org_id,
       htbh,
       kgy,
       htmc,
       dhysdh,
       update_date,
       rkpz,
       wlbmall
from business_y339
where 1 = 1
#   and id = 'b4989a6684286ccf0a6d1a0c48fcf0a3'

# and serial = '20240219103003136'
# and sapcgpz1 = '4500365366'
#     where org_id !='00000287'
# and rkdbh = 'SBRKD4010202401190091'
# where dhysdh is null
order by create_date desc;
;-- -. . -..- - / . -. - .-. -.--
select m.org_id, s.org_id, s.rk_temp_zt, s.zt, s.rkl
from business_hmz1 m
         inner join business_6j3g s
                    on m.id = s.father_id
where m.sbwzdhysdbh = 'DHYSD4010202402260017'
  and (s.rk_temp_zt = '' OR s.rk_temp_zt IS NULL)
  AND (s.zt != 'A18A09A02A05' OR s.zt IS NULL or s.zt = '')
  and (s.cgjhbh is null or s.cgjhbh = '')
  and (s.sjzt = 'A18A07A17A03' or s.sfrbjs = 'A03A01A01');
;-- -. . -..- - / . -. - .-. -.--
select m.org_id, s.org_id, s.rk_temp_zt, s.zt, s.rkl
from business_hmz1 m
         inner join business_6j3g s
                    on m.id = s.father_id
where m.sbwzdhysdbh = 'DHYSD4010202402260017'
  AND (s.zt != 'A18A09A02A05' OR s.zt IS NULL or s.zt = '')
  and (s.cgjhbh is null or s.cgjhbh = '')
  and (s.sjzt = 'A18A07A17A03' or s.sfrbjs = 'A03A01A01');
;-- -. . -..- - / . -. - .-. -.--
select m.org_id, s.org_id, s.rk_temp_zt, s.zt, s.rkl
from business_hmz1 m
         inner join business_6j3g s
                    on m.id = s.father_id
where m.sbwzdhysdbh = 'DHYSD4010202402260017'
  and (s.cgjhbh is null or s.cgjhbh = '')
  and (s.sjzt = 'A18A07A17A03' or s.sfrbjs = 'A03A01A01');
;-- -. . -..- - / . -. - .-. -.--
select m.org_id, s.org_id, s.rk_temp_zt, s.zt, s.rkl
from business_hmz1 m
         inner join business_6j3g s
                    on m.id = s.father_id
where m.sbwzdhysdbh = 'DHYSD4010202402260017';
;-- -. . -..- - / . -. - .-. -.--
select id,rkl,rk_temp_zt
from business_6j3g where father_id='6a348224eb474d698fd48f83751c205b';
;-- -. . -..- - / . -. - .-. -.--
select id, cgy, org_id, create_date,dept_id, user_id, flow_state, flow_step
from business_hmz1
# where serial = '20240125143513227';
where sbwzdhysdbh like '%DHYSD4010202402260017%';
;-- -. . -..- - / . -. - .-. -.--
select id, sbwzdhysdbh,cgy, org_id, create_date,dept_id, user_id, flow_state, flow_step
from business_hmz1
# where serial = '20240125143513227';
where sbwzdhysdbh like '%DHYSD4010202402260017%';
;-- -. . -..- - / . -. - .-. -.--
select id,
       rkdbh,
       kgy,
       flow_step,
       org_id,
       htbh,
       kgy,
       htmc,
       dhysdh,
       update_date,
       rkpz,
       wlbmall
from business_y339
where 1 = 1
#   and id = 'b4989a6684286ccf0a6d1a0c48fcf0a3'

# and serial = '20240219103003136'
# and sapcgpz1 = '4500365366'
#     where org_id !='00000287'
and rkdbh = 'SBRKD4010202402080011'
# where dhysdh is null
order by create_date desc;
;-- -. . -..- - / . -. - .-. -.--
select id,
       rkdbh,
       kgy,
       flow_step,
       org_id,
       htbh,
       kgy,
       htmc,
       dhysdh,
       update_date,
       rkpz,
       wlbmall
from business_y339
where 1 = 1
#   and id = 'b4989a6684286ccf0a6d1a0c48fcf0a3'

# and serial = '20240219103003136'
# and sapcgpz1 = '4500365366'
#     where org_id !='00000287'
and rkdbh = 'SBRKD4010202306050007'
# where dhysdh is null
order by create_date desc;
;-- -. . -..- - / . -. - .-. -.--
select id,
       rkdbh,
       kgy,
       flow_step,
       org_id,
       htbh,
       kgy,
       htmc,
       dhysdh,
       update_date,
       rkpz,
       wlbmall
from business_y339
where 1 = 1
#   and id = 'b4989a6684286ccf0a6d1a0c48fcf0a3'

and serial = '20230605091702644'
# and sapcgpz1 = '4500365366'
#     where org_id !='00000287'
# and rkdbh = 'SBRKD4010202306050007'
# where dhysdh is null
order by create_date desc;
;-- -. . -..- - / . -. - .-. -.--
select id,
       rkdbh,
       kgy,
       flow_step,
       org_id,
       htbh,
       kgy,
       htmc,
       dhysdh,
       update_date,
       rkpz,
       wlbmall
from business_y339
where 1 = 1
#   and id = 'b4989a6684286ccf0a6d1a0c48fcf0a3'

and serial = '20230519092308964'
# and sapcgpz1 = '4500365366'
#     where org_id !='00000287'
# and rkdbh = 'SBRKD4010202306050007'
# where dhysdh is null
order by create_date desc;
;-- -. . -..- - / . -. - .-. -.--
select id,
       rkdbh,
       kgy,
       flow_step,
       org_id,
       htbh,
       kgy,
       htmc,
       dhysdh,
       update_date,
       rkpz,
       wlbmall
from business_y339
where 1 = 1
#   and id = 'b4989a6684286ccf0a6d1a0c48fcf0a3'
# and serial = '20230519092308964'
# and sapcgpz1 = '4500365366'
#     where org_id !='00000287'
and rkdbh = 'SBRKD4010202306110001'
# where dhysdh is null
order by create_date desc;
;-- -. . -..- - / . -. - .-. -.--
select id, sbwzdhysdbh,cgy, org_id, create_date,dept_id, user_id, flow_state, flow_step
from business_hmz1
# where serial = '20240125143513227';
where sbwzdhysdbh like '%DHYSD4010202402080021%';
;-- -. . -..- - / . -. - .-. -.--
select id,
       zjjg,
       sjzt,
       rk_temp_zt,
       zt,
       cgddmxid,
       rkl,
       dhsl,
       zt,
       xxmh
from business_6j3g
# where id = '58b784abf338f6444602050c82eaf239';
where father_id = '3da3f1df12ab467cb9777d5b688704c1';
;-- -. . -..- - / . -. - .-. -.--
select *
from sap_goods_year where org_id='00018024';
;-- -. . -..- - / . -. - .-. -.--
select *
from sap_goods_year;
;-- -. . -..- - / . -. - .-. -.--
select *
from sap_goods_year where werks='4390';
;-- -. . -..- - / . -. - .-. -.--
select *
from sap_consignment_stock where org_id='00018024';
;-- -. . -..- - / . -. - .-. -.--
select *
from wait_use_repository where org_id='00018024';
;-- -. . -..- - / . -. - .-. -.--
select *
from sync_werk_org where org_id='00018024';
;-- -. . -..- - / . -. - .-. -.--
select *
from sync_werk_org;
;-- -. . -..- - / . -. - .-. -.--
select *
from sync_werk_org where org_name like '云';
;-- -. . -..- - / . -. - .-. -.--
select *
from sync_werk_org where org_name like '%云%';
;-- -. . -..- - / . -. - .-. -.--
select *
from sync_werk_org where org_name like '%云聚%';
;-- -. . -..- - / . -. - .-. -.--
select *
from wait_use_repository
where org_id = '00018024';
;-- -. . -..- - / . -. - .-. -.--
select `wait_use_repository`.`id`                                                                               AS `id`,
       `wait_use_repository`.`wlbm`                                                                             AS `wlbm`,
       `wait_use_repository`.`wlms`                                                                             AS `wlms`,
       `wait_use_repository`.`hjxx`                                                                             AS `hjxx`,
       `wait_use_repository`.`hjxx`                                                                             AS `yhjxx`,
       `wait_use_repository`.`hjxx`                                                                             AS `xhjxx`,
       `wait_use_repository`.`kcdbm`                                                                            AS `kcdbm`,
       `wait_use_repository`.`kcdmc`                                                                            AS `kcdmc`,
       `wait_use_repository`.`jldw`                                                                             AS `dw`,
       `wait_use_repository`.`jldwms`                                                                           AS `dwms`,
       `wait_use_repository`.`pch`                                                                              AS `pch`,
       0                                                                                                        AS `jskc`,
       `wait_use_repository`.`kcl`                                                                              AS `kcl`,
       'WAITUSE'                                                                                                AS `typed`,
       `wait_use_repository`.`is_history`                                                                       AS `is_history`,
       `wait_use_repository`.`werks`                                                                            AS `werks`,
       `wait_use_repository`.`org_id`                                                                           AS `org_id`,
       ifnull(`wait_use_repository`.`dj`, 0)                                                                    AS `verpr`,
       `wait_use_repository`.`wlbm_last`                                                                        AS `wlbm_last`,
       `swo`.`org_name`                                                                                         AS `org_name`,
       concat_ws('_', `wait_use_repository`.`wlbm`, `wait_use_repository`.`kcdbm`,
                 `wait_use_repository`.`pch`)                                                                   AS `qrcode`
from (`wait_use_repository` left join `sync_werk_org` `swo` on ((`wait_use_repository`.`org_id` = `swo`.`org_code`)))
where swo.org_id='00018024'
having (`wait_use_repository`.`kcl` > 0);
;-- -. . -..- - / . -. - .-. -.--
select `wait_use_repository`.`id`                                                                               AS `id`,
       `wait_use_repository`.`wlbm`                                                                             AS `wlbm`,
       `wait_use_repository`.`wlms`                                                                             AS `wlms`,
       `wait_use_repository`.`hjxx`                                                                             AS `hjxx`,
       `wait_use_repository`.`hjxx`                                                                             AS `yhjxx`,
       `wait_use_repository`.`hjxx`                                                                             AS `xhjxx`,
       `wait_use_repository`.`kcdbm`                                                                            AS `kcdbm`,
       `wait_use_repository`.`kcdmc`                                                                            AS `kcdmc`,
       `wait_use_repository`.`jldw`                                                                             AS `dw`,
       `wait_use_repository`.`jldwms`                                                                           AS `dwms`,
       `wait_use_repository`.`pch`                                                                              AS `pch`,
       0                                                                                                        AS `jskc`,
       `wait_use_repository`.`kcl`                                                                              AS `kcl`,
       'WAITUSE'                                                                                                AS `typed`,
       `wait_use_repository`.`is_history`                                                                       AS `is_history`,
       `wait_use_repository`.`werks`                                                                            AS `werks`,
       `wait_use_repository`.`org_id`                                                                           AS `org_id`,
       ifnull(`wait_use_repository`.`dj`, 0)                                                                    AS `verpr`,
       `wait_use_repository`.`wlbm_last`                                                                        AS `wlbm_last`,
       `swo`.`org_name`                                                                                         AS `org_name`,
       concat_ws('_', `wait_use_repository`.`wlbm`, `wait_use_repository`.`kcdbm`,
                 `wait_use_repository`.`pch`)                                                                   AS `qrcode`
from (`wait_use_repository` left join `sync_werk_org` `swo` on ((`wait_use_repository`.`org_id` = `swo`.`org_code`)))
where swo.werks='4390'
having (`wait_use_repository`.`kcl` > 0);
;-- -. . -..- - / . -. - .-. -.--
select id,
       rkdbh,
       kgy,
       flow_step,
       org_id,
       htbh,
       kgy,
       htmc,
       dhysdh,
       update_date,
       rkpz,
       wlbmall
from business_y339
where 1 = 1
#   and id = 'b4989a6684286ccf0a6d1a0c48fcf0a3'
and serial = '20230706083850378'
# and sapcgpz1 = '4500365366'
#     where org_id !='00000287'
# and rkdbh = 'SBRKD4010202306110001'
# where dhysdh is null
order by create_date desc;
;-- -. . -..- - / . -. - .-. -.--
select id,
       rkdbh,
       kgy,
       flow_step,
       org_id,
       htbh,
       kgy,
       htmc,
       dhysdh,
       update_date,
       rkpz,
       wlbmall
from business_y339
where 1 = 1
#   and id = 'b4989a6684286ccf0a6d1a0c48fcf0a3'
and serial = '20230706083836238'
# and sapcgpz1 = '4500365366'
#     where org_id !='00000287'
# and rkdbh = 'SBRKD4010202306110001'
# where dhysdh is null
order by create_date desc;
;-- -. . -..- - / . -. - .-. -.--
select id,
       rkdbh,
       kgy,
       flow_step,
       org_id,
       htbh,
       kgy,
       htmc,
       dhysdh,
       update_date,
       rkpz,
       wlbmall
from business_y339
where 1 = 1
#   and id = 'b4989a6684286ccf0a6d1a0c48fcf0a3'
and serial = '20230625154033261'
# and sapcgpz1 = '4500365366'
#     where org_id !='00000287'
# and rkdbh = 'SBRKD4010202306110001'
# where dhysdh is null
order by create_date desc;
;-- -. . -..- - / . -. - .-. -.--
select id,
       rkdbh,
       kgy,
       flow_step,
       org_id,
       htbh,
       kgy,
       htmc,
       dhysdh,
       update_date,
       rkpz,
       wlbmall
from business_y339
where 1 = 1
#   and id = 'b4989a6684286ccf0a6d1a0c48fcf0a3'
and serial = '20230629103533799'
# and sapcgpz1 = '4500365366'
#     where org_id !='00000287'
# and rkdbh = 'SBRKD4010202306110001'
# where dhysdh is null
order by create_date desc;
;-- -. . -..- - / . -. - .-. -.--
select id,
       rkdbh,
       kgy,
       flow_step,
       org_id,
       htbh,
       kgy,
       htmc,
       dhysdh,
       update_date,
       rkpz,
       wlbmall
from business_y339
where 1 = 1
#   and id = 'b4989a6684286ccf0a6d1a0c48fcf0a3'
and serial = '20230629103525082'
# and sapcgpz1 = '4500365366'
#     where org_id !='00000287'
# and rkdbh = 'SBRKD4010202306110001'
# where dhysdh is null
order by create_date desc;
;-- -. . -..- - / . -. - .-. -.--
select id,
       rkdbh,
       kgy,
       flow_step,
       org_id,
       htbh,
       kgy,
       htmc,
       dhysdh,
       update_date,
       rkpz,
       wlbmall
from business_y339
where 1 = 1
#   and id = 'b4989a6684286ccf0a6d1a0c48fcf0a3'
and serial = '20230629103515070'
# and sapcgpz1 = '4500365366'
#     where org_id !='00000287'
# and rkdbh = 'SBRKD4010202306110001'
# where dhysdh is null
order by create_date desc;
;-- -. . -..- - / . -. - .-. -.--
select id,
       rkdbh,
       kgy,
       flow_step,
       org_id,
       htbh,
       kgy,
       htmc,
       dhysdh,
       update_date,
       rkpz,
       wlbmall
from business_y339
where 1 = 1
#   and id = 'b4989a6684286ccf0a6d1a0c48fcf0a3'
and serial = '20230727112423149'
# and sapcgpz1 = '4500365366'
#     where org_id !='00000287'
# and rkdbh = 'SBRKD4010202306110001'
# where dhysdh is null
order by create_date desc;
;-- -. . -..- - / . -. - .-. -.--
select id,
       rkdbh,
       kgy,
       flow_step,
       org_id,
       htbh,
       kgy,
       htmc,
       dhysdh,
       update_date,
       rkpz,
       wlbmall
from business_y339
where 1 = 1
#   and id = 'b4989a6684286ccf0a6d1a0c48fcf0a3'
and serial = '20230807093233203'
# and sapcgpz1 = '4500365366'
#     where org_id !='00000287'
# and rkdbh = 'SBRKD4010202306110001'
# where dhysdh is null
order by create_date desc;
;-- -. . -..- - / . -. - .-. -.--
select id,
       rkdbh,
       kgy,
       flow_step,
       org_id,
       htbh,
       kgy,
       htmc,
       dhysdh,
       update_date,
       rkpz,
       wlbmall
from business_y339
where 1 = 1
#   and id = 'b4989a6684286ccf0a6d1a0c48fcf0a3'
and serial = '20230830111050330'
# and sapcgpz1 = '4500365366'
#     where org_id !='00000287'
# and rkdbh = 'SBRKD4010202306110001'
# where dhysdh is null
order by create_date desc;
;-- -. . -..- - / . -. - .-. -.--
select id,
       rkdbh,
       kgy,
       flow_step,
       org_id,
       htbh,
       kgy,
       htmc,
       dhysdh,
       update_date,
       rkpz,
       wlbmall
from business_y339
where 1 = 1
#   and id = 'b4989a6684286ccf0a6d1a0c48fcf0a3'
and serial = '20230831162931790'
# and sapcgpz1 = '4500365366'
#     where org_id !='00000287'
# and rkdbh = 'SBRKD4010202306110001'
# where dhysdh is null
order by create_date desc;
;-- -. . -..- - / . -. - .-. -.--
select id,
       rkdbh,
       kgy,
       flow_step,
       org_id,
       htbh,
       kgy,
       htmc,
       dhysdh,
       update_date,
       rkpz,
       wlbmall
from business_y339
where 1 = 1
#   and id = 'b4989a6684286ccf0a6d1a0c48fcf0a3'
and serial = '20230914104847741'
# and sapcgpz1 = '4500365366'
#     where org_id !='00000287'
# and rkdbh = 'SBRKD4010202306110001'
# where dhysdh is null
order by create_date desc;
;-- -. . -..- - / . -. - .-. -.--
select id,
       rkdbh,
       kgy,
       flow_step,
       org_id,
       htbh,
       kgy,
       htmc,
       dhysdh,
       update_date,
       rkpz,
       wlbmall
from business_y339
where 1 = 1
#   and id = 'b4989a6684286ccf0a6d1a0c48fcf0a3'
and serial = '20231025142646267'
# and sapcgpz1 = '4500365366'
#     where org_id !='00000287'
# and rkdbh = 'SBRKD4010202306110001'
# where dhysdh is null
order by create_date desc;
;-- -. . -..- - / . -. - .-. -.--
select id,
       rkdbh,
       kgy,
       flow_step,
       org_id,
       htbh,
       kgy,
       htmc,
       dhysdh,
       update_date,
       rkpz,
       wlbmall
from business_y339
where 1 = 1
#   and id = 'b4989a6684286ccf0a6d1a0c48fcf0a3'
and serial = '20231124091535412'
# and sapcgpz1 = '4500365366'
#     where org_id !='00000287'
# and rkdbh = 'SBRKD4010202306110001'
# where dhysdh is null
order by create_date desc;
;-- -. . -..- - / . -. - .-. -.--
select id,
       rkdbh,
       kgy,
       flow_step,
       org_id,
       htbh,
       kgy,
       htmc,
       dhysdh,
       update_date,
       rkpz,
       wlbmall
from business_y339
where 1 = 1
#   and id = 'b4989a6684286ccf0a6d1a0c48fcf0a3'
and serial = '20231124132105027'
# and sapcgpz1 = '4500365366'
#     where org_id !='00000287'
# and rkdbh = 'SBRKD4010202306110001'
# where dhysdh is null
order by create_date desc;
;-- -. . -..- - / . -. - .-. -.--
select *
from material_average_price where werks=4390;
;-- -. . -..- - / . -. - .-. -.--
select *
from m_supplier order by create_time desc limit 10;
;-- -. . -..- - / . -. - .-. -.--
select *
from fixed_assets order by create_time desc limit 10;
;-- -. . -..- - / . -. - .-. -.--
select
#     count(matnr) sum1,
matnr,
maktx,
clabs,
lgort,
charg,
werks,
create_date,
org_id
from sap_consignment_stock
where 1 = 1
  and werks = 3280;
;-- -. . -..- - / . -. - .-. -.--
select *
from material_average_price
where matnr = '1000455528';
;-- -. . -..- - / . -. - .-. -.--
select *
from m_cost_center where bukrs=4010;
;-- -. . -..- - / . -. - .-. -.--
select *
from material_average_price
where werks = 4070
order by create_date desc;
;-- -. . -..- - / . -. - .-. -.--
select *
from sync_werk_org_copy1;
;-- -. . -..- - / . -. - .-. -.--
select create_date, params, result, url, fail_reason
from business_8b0j
where module_name = '电子商城-入库数量推送'
order by create_date desc
limit 100;
;-- -. . -..- - / . -. - .-. -.--
select create_date, params, result, url, fail_reason
from business_8b0j
where module_name like '电子商城'
order by create_date desc
limit 100;
;-- -. . -..- - / . -. - .-. -.--
select create_date, params, result, url, fail_reason
from business_8b0j
where module_name like '%电子商城%'
order by create_date desc
limit 100;
;-- -. . -..- - / . -. - .-. -.--
select type,create_date, params, result, url, fail_reason
from business_8b0j
where module_name like '%电子商城%'
order by create_date desc
limit 100;
;-- -. . -..- - / . -. - .-. -.--
select type,create_date, params, result, url, fail_reason
from business_8b0j
where module_name like '%电子商城%'
and  business_8b0j.type = 'out'
order by create_date desc
limit 100;
;-- -. . -..- - / . -. - .-. -.--
select type,create_date, params, result, url, fail_reason
from business_8b0j
where module_name like '%电子商城%'
and  business_8b0j.type = 'out'
and url like '%outDigitalaFactoryResultSync%'
order by create_date desc
limit 100;
;-- -. . -..- - / . -. - .-. -.--
select *
from sync_werk_org_copy1 where werks='5000';
;-- -. . -..- - / . -. - .-. -.--
select *
from fixed_assets
where bukrs = 5000;
;-- -. . -..- - / . -. - .-. -.--
select *
from form_table_128c473299949c8b where org_id ='00000287';
;-- -. . -..- - / . -. - .-. -.--
select fylx,ydlx
from business_m3wc where org_id='10000600' group by ydlx;
;-- -. . -..- - / . -. - .-. -.--
select ydlx
from business_m3wc where org_id='10000600' group by ydlx;
;-- -. . -..- - / . -. - .-. -.--
select ydlx,fylx
from business_m3wc where org_id='10000600' and ydlx='935';
;-- -. . -..- - / . -. - .-. -.--
select *
from business_rq69;
;-- -. . -..- - / . -. - .-. -.--
select wzlb
from business_rq69;
;-- -. . -..- - / . -. - .-. -.--
select wzlb,yt
from business_rq69;
;-- -. . -..- - / . -. - .-. -.--
select
#     count(matnr) sum1,
matnr,
maktx,
clabs,
lgort,
charg,
werks,
create_date,
org_id
from sap_consignment_stock
where 1 = 1
  and werks = 5000;
;-- -. . -..- - / . -. - .-. -.--
select type,create_date, params, result, url, fail_reason
from business_8b0j
where module_name like '%电子商城%'
and  business_8b0j.type = 'out'
and url like '%create%'
order by create_date desc
limit 100;
;-- -. . -..- - / . -. - .-. -.--
select id,
       jhbm,
       hjxx,
       cklx,
       ydlx,
       cksl,
       sfck,
       father_id,
       ktsl,
       gcdm,
       ckpzh,
       rkdid,
       cbzx,
       cbzxms
from business_m3wc

where wlbm = '1000230997';
;-- -. . -..- - / . -. - .-. -.--
select id,
       jhbm,
       hjxx,
       cklx,
       ydlx,
       cksl,
       sfck,
       father_id,
       ktsl,
       gcdm,
       ckpzh,
       rkdid,
       cbzx,
       cbzxms
from business_m3wc

where wlbm = '1000003209';
;-- -. . -..- - / . -. - .-. -.--
select id,
       jhbm,
       hjxx,
       cklx,
       ydlx,
       cksl,
       sfck,
       father_id,
       ktsl,
       gcdm,
       ckpzh,
       rkdid,
       cbzx,
       cbzxms
from business_m3wc

where wlbm = '1000146850';
;-- -. . -..- - / . -. - .-. -.--
select id,
       jhbm,
       father_id,
       hjxx,
       cklx,
       ydlx,
       cksl,
       sfck,
       father_id,
       ktsl,
       gcdm,
       ckpzh,
       rkdid,
       cbzx,
       cbzxms
from business_m3wc

where wlbm = '1000146850';
;-- -. . -..- - / . -. - .-. -.--
select id,
       ttwb,
       llr,
       aqhbfy,
       ckbm,
       psdd,
       serial,
       create_date,
       update_date,
       flow_step,
       flow_state,
       ckbm,
       kcdbm
from business_ij1g
# where ckbm is null  or ckbm=''
# where ckbm = 'SBCK4010202402070174';
where id = '06d2e07a156043d8a641e22f7af2bb71';
;-- -. . -..- - / . -. - .-. -.--
select id,
       jhbm,
       father_id,
       hjxx,
       cklx,
       ydlx,
       cksl,
       sfck,
       father_id,
       ktsl,
       gcdm,
       ckpzh,
       rkdid,
       cbzx,
       cbzxms
from business_m3wc

where wlbm = '1000230997';
;-- -. . -..- - / . -. - .-. -.--
select id, sbwzdhysdbh,cgy, org_id, create_date,dept_id, user_id, flow_state, flow_step
from business_hmz1
# where serial = '20240125143513227';
where sbwzdhysdbh like '%INV240226000016%';
;-- -. . -..- - / . -. - .-. -.--
select id, szgcddh,sbwzdhysdbh,cgy, org_id, create_date,dept_id, user_id, flow_state, flow_step
from business_hmz1
# where serial = '20240125143513227';
where sbwzdhysdbh like '%INV240226000016%';
;-- -. . -..- - / . -. - .-. -.--
select id,
       jhbm,
       father_id,
       hjxx,
       cklx,
       ydlx,
       cksl,
       sfck,
       father_id,
       ktsl,
       gcdm,
       ckpzh,
       rkdid,
       cbzx,
       cbzxms
from business_m3wc
where wlbm = '1000230997';
;-- -. . -..- - / . -. - .-. -.--
select id,
       jhbm,
       father_id,
       hjxx,
       cklx,
       ydlx,
       cksl,
       sfck,
       father_id,
       ktsl,
       gcdm,
       ckpzh,
       rkdid,
       cbzx,
       cbzxms
from business_m3wc
where wlbm = '1000003209';
;-- -. . -..- - / . -. - .-. -.--
select id,
       father_id,
       ddhxmh,
       rksl,
       gcbm,
       ckl,
       sapcgpz1,
       wlbm,
       dddj,
       rkpzh,
       father_id,
       hjxx,
       kmdbm,create_date
from business_f7hc
where 1 = 1
#   and id = '468579929bc2c6a2e3bfad820543a173'
#   and rksl != ckl
#   and ckl > 0
#   and father_id = '990dcfc482a388d418b7e2558803acc2';
# and org_id='00008413'
  and wlbm = '1000430654';
;-- -. . -..- - / . -. - .-. -.--
select id,
       rkdbh,
       kgy,
       flow_step,
       org_id,
       htbh,
       kgy,
       htmc,
       dhysdh,
       update_date,
       rkpz,
       wlbmall
from business_y339
where 1 = 1
  and id = '259ba9cf927a0e68f1857167448ab92b'
# and serial = '20231124132105027'
# and sapcgpz1 = '4500365366'
#     where org_id !='00000287'
# and rkdbh = 'SBRKD4010202306110001'
# where dhysdh is null
order by create_date desc;
;-- -. . -..- - / . -. - .-. -.--
select id,
       rkdbh,
       dhysdh,
       kgy,
       flow_step,
       org_id,
       htbh,
       kgy,
       htmc,
       dhysdh,
       update_date,
       rkpz,
       wlbmall
from business_y339
where 1 = 1
  and id = '259ba9cf927a0e68f1857167448ab92b'
# and serial = '20231124132105027'
# and sapcgpz1 = '4500365366'
#     where org_id !='00000287'
# and rkdbh = 'SBRKD4010202306110001'
# where dhysdh is null
order by create_date desc;
;-- -. . -..- - / . -. - .-. -.--
select type,create_date, params, result, url, fail_reason
from business_8b0j
where module_name = '%SAP采购订单号同步%'
order by create_date desc
limit 100;
;-- -. . -..- - / . -. - .-. -.--
select id,
       rkdbh,
       dhysdh,
       kgy,
       flow_step,
       org_id,
       htbh,
       kgy,
       htmc,
       dhysdh,
       update_date,
       rkpz,
       wlbmall
from business_y339
where 1 = 1
#   and id = '259ba9cf927a0e68f1857167448ab92b'
# and serial = '20231124132105027'
# and sapcgpz1 = '4500365366'
#     where org_id !='00000287'
and rkdbh = 'SBRKD4010202403010009'
# where dhysdh is null
order by create_date desc;
;-- -. . -..- - / . -. - .-. -.--
select id,
       father_id,
       ddhxmh,
       rksl,
       gcbm,
       ckl,
       sapcgpz1,
       wlbm,
       dddj,
       rkpzh,
       father_id,
       hjxx,
       kmdbm,create_date
from business_f7hc
where 1 = 1
#   and id = '468579929bc2c6a2e3bfad820543a173'
#   and rksl != ckl
#   and ckl > 0
  and father_id = '259ba9cf927a0e68f1857167448ab92b';
;-- -. . -..- - / . -. - .-. -.--
select type,create_date, params, result, url, fail_reason
from business_8b0j
where module_name = '电子商城-SAP采购订单号同步'
order by create_date desc
limit 100;
;-- -. . -..- - / . -. - .-. -.--
select id,
       rkdbh,
       dhysdh,
       kgy,
       flow_step,
       org_id,
       htbh,
       kgy,
       htmc,
       dhysdh,
       update_date,
       rkpz,
       wlbmall
from business_y339
where 1 = 1
#   and id = '259ba9cf927a0e68f1857167448ab92b'
# and serial = '20231124132105027'
# and sapcgpz1 = '4500365366'
#     where org_id !='00000287'
and rkdbh = 'SBRKD4390202403030001'
# where dhysdh is null
order by create_date desc;
;-- -. . -..- - / . -. - .-. -.--
select id,
       rkdbh,
       dhysdh,
       sapcgpz1,
       kgy,
       flow_step,
       org_id,
       htbh,
       kgy,
       htmc,
       dhysdh,
       update_date,
       rkpz,
       wlbmall
from business_y339
where 1 = 1
#   and id = '259ba9cf927a0e68f1857167448ab92b'
# and serial = '20231124132105027'
# and sapcgpz1 = '4500365366'
#     where org_id !='00000287'
and rkdbh = 'SBRKD4390202403030001'
# where dhysdh is null
order by create_date desc;
;-- -. . -..- - / . -. - .-. -.--
select id,
       father_id,
       ddhxmh,
       rksl,
       gcbm,
       ckl,
       sapcgpz1,
       wlbm,
       dddj,
       rkpzh,
       father_id,
       hjxx,
       kmdbm,create_date
from business_f7hc
where 1 = 1
#   and id = '468579929bc2c6a2e3bfad820543a173'
#   and rksl != ckl
#   and ckl > 0
  and father_id = '67c031ab09b7dc07d08d8e50403786f4';
;-- -. . -..- - / . -. - .-. -.--
select id,
       father_id,
       ddhxmh,
       rksl,
        rkpzh,
       gcbm,
       ckl,
       sapcgpz1,
       wlbm,
       dddj,
       rkpzh,
       father_id,
       hjxx,
       kmdbm,create_date
from business_f7hc
where 1 = 1
#   and id = '468579929bc2c6a2e3bfad820543a173'
#   and rksl != ckl
#   and ckl > 0
  and father_id = '67c031ab09b7dc07d08d8e50403786f4';
;-- -. . -..- - / . -. - .-. -.--
select id,
       father_id,
       ddhxmh,
       rksl,
       rkpzh,
       gcbm,
       ckl,
       sapcgpz1,
       wlbm,
       dddj,
       father_id,
       hjxx,
       kmdbm,
       create_date
from business_f7hc
where 1 = 1
#   and id = '468579929bc2c6a2e3bfad820543a173'
#   and rksl != ckl
#   and ckl > 0
  and father_id = '67c031ab09b7dc07d08d8e50403786f4';
;-- -. . -..- - / . -. - .-. -.--
select *
from gys_gc where gysbm='0020000034';
;-- -. . -..- - / . -. - .-. -.--
select *
from gys_gc where;
;-- -. . -..- - / . -. - .-. -.--
select *
from gys_gc;
;-- -. . -..- - / . -. - .-. -.--
select *
from gys_gc where gysbm='20000034';
;-- -. . -..- - / . -. - .-. -.--
select id,
       ttwb,
       llr,
       aqhbfy,
       ckbm,
       psdd,
       serial,
       create_date,
       update_date,
       flow_step,
       flow_state,
       ckbm,
       kcdbm
from business_ij1g
# where ckbm is null  or ckbm=''
where ckbm = 'SBRKD4390202403030001';
;-- -. . -..- - / . -. - .-. -.--
select id,
       ttwb,
       llr,
       aqhbfy,
       ckbm,
       psdd,
       serial,
       create_date,
       update_date,
       flow_step,
       flow_state,
       ckbm,
       kcdbm
from business_ij1g
# where ckbm is null  or ckbm=''
where ckbm = 'SBCK4390202403040183';
;-- -. . -..- - / . -. - .-. -.--
select id,
       rkdbh,
       dhysdh,
       sapcgpz1,
       kgy,
       flow_step,
       org_id,
       htbh,
       kgy,
       htmc,
       dhysdh,
       update_date,
       rkpz,
       wlbmall
from business_y339
where 1 = 1
#   and id = '259ba9cf927a0e68f1857167448ab92b'
# and serial = '20231124132105027'
# and sapcgpz1 = '4500365366'
#     where org_id !='00000287'
  and rkdbh = 'SBRKD4390202403030001'
# where dhysdh is null
order by create_date desc;
;-- -. . -..- - / . -. - .-. -.--
select id, szgcddh,sbwzdhysdbh,cgy, org_id, create_date,dept_id, user_id, flow_state, flow_step
from business_hmz1
# where serial = '20240125143513227';
where sbwzdhysdbh like '%INV240227000020%';
;-- -. . -..- - / . -. - .-. -.--
select id, szgcddh,sbwzdhysdbh,cgy, org_id, create_date,dept_id, user_id, flow_state, flow_step
from business_hmz1
# where serial = '20240125143513227';
where sbwzdhysdbh like '%INV240226000035%';
;-- -. . -..- - / . -. - .-. -.--
select type,create_date,status, params, result, url, fail_reason
from business_8b0j
where module_name = '电子商城-SAP采购订单号同步'
order by create_date desc
limit 100;
;-- -. . -..- - / . -. - .-. -.--
select m.id, m.tkdbm, s.*
from business_c927 m
         inner join business_z6nu s on m.id = s.father_id

# where tkdbm = 'SBTKD40102024011400-';
where m.serial='20240304110717734';
;-- -. . -..- - / . -. - .-. -.--
select m.id,tkpzh, m.tkdbm, s.*
from business_c927 m
         inner join business_z6nu s on m.id = s.father_id

# where tkdbm = 'SBTKD40102024011400-';
where m.serial='20240304105838052';
;-- -. . -..- - / . -. - .-. -.--
select m.id,tkpzh, m.tkdbm, s.*
from business_c927 m
         inner join business_z6nu s on m.id = s.father_id

# where tkdbm = 'SBTKD40102024011400-';
where m.serial='20240304110717734';
;-- -. . -..- - / . -. - .-. -.--
select wzlb,yt

from business_rq69 where xqjhbh='XQJH5000202403050042';
;-- -. . -..- - / . -. - .-. -.--
select create_date, params, result, url, fail_reason
from business_8b0j
where module_name = '电子商城-采购申请单审批结果回传'
  and params like '%PR240221000025%'
order by create_date desc
limit 100;
;-- -. . -..- - / . -. - .-. -.--
show global status like 'Thread%';
;-- -. . -..- - / . -. - .-. -.--
select id,
       father_id,
       ddhxmh,
       rksl,
       rkpzh,
       gcbm,
       ckl,
       sapcgpz1,
       wlbm,
       dddj,
       father_id,
       hjxx,
       kmdbm,
       create_date
from business_f7hc
where 1 = 1
#   and id = '468579929bc2c6a2e3bfad820543a173'
#   and rksl != ckl
#   and ckl > 0
#   and father_id = '67c031ab09b7dc07d08d8e50403786f4';
# and org_id='00008413'
and  wlbm = '1000003645';
;-- -. . -..- - / . -. - .-. -.--
select id,
       father_id,
       ddhxmh,
       rksl,
       rkpzh,
       gcbm,
       ckl,
       sapcgpz1,
       wlbm,
       dddj,
       father_id,
       hjxx,
       kmdbm,
       create_date
from business_f7hc
where 1 = 1
#   and id = '468579929bc2c6a2e3bfad820543a173'
#   and rksl != ckl
#   and ckl > 0
#   and father_id = '67c031ab09b7dc07d08d8e50403786f4';
# and org_id='00008413'
  and wlbm = '1000003645'
having rksl != business_f7hc.ckl;
;-- -. . -..- - / . -. - .-. -.--
select id,wzlb,yt

from business_rq69 where xqjhbh='XQJH5000202403050042';