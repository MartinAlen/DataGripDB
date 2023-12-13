select s.jhbm,
       s.id,
       s.wlbm,
       s.wlms,
       s.dddj,
       s.kmdbm,
       kcdmc,
       shelf.yhjxx,
       ddhxmh,
       s.gysbm,
       s.gysmc,
       wzfj,
       hgz,
       czzm,
       bgd,
       ccjybg,
       sysm,
       tz,
       s.bz,
       dw,
       gcbm,
       cgddbh,
       hjbm,
       dwms,
       s.kclx,
       wzlx,
       je,
       s.jhlx,
       caigouddgm,

       s.cgy,
       cgddhxmh,
       pc,
       cgylxdh,
       xqjhsbr,
       sbrlxdh,
       fylx,
       syzz,
       ydlx,
       cbzx,
       jgh,
       zch,
       ggxh,
       wzjb,
       wztp,
       (rksl - IFNULL(ckl, 0)) kcl_temp,
       mp.verpr                ydpjj,
       m.rkdbh
from business_f7hc s
         inner join business_y339 m on s.father_id = m.id
         left join material_average_price mp on s.wlbm = mp.matnr and s.gcbm = mp.werks
left join `business_50t4` `shelf`
        on (((`s`.`wlbm` = `shelf`.`wlbm`) and (`s`.`org_id` = `shelf`.`org_id`) and
             (`shelf`.`kclx` = 'SAP') and
             (`s`.`kmdbm` = `shelf`.`ykcdbm`)))
where m.flow_step = '归档'
    and zt !='A18A09A02A07'
having kcl_temp > 0