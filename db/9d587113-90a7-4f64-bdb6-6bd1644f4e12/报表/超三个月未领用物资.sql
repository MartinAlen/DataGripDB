select `s`.`jhbm`                          AS `sbdh`,
       `w`.`sbr`                           AS `sbr`,
       `w`.`sbbm`                          AS `sbdw`,
       `w`.`create_date`                   AS `sbsj`,
       `w`.`xqsj`                          AS `xqsj`,
       `s`.`wlbm`                          AS `wlbm`,
       `s`.`wlms`                          AS `wlms`,
       `s`.`dw`                            AS `dw`,
       `w`.`xqsl`                          AS `sbsl`,
       `s`.`fylx`                          AS `fylx`,
       `w`.`yt`                            AS `yt`,
       `m`.`txrj`                          AS `rksj`,
       `s`.`rksl`                          AS `rksl`,
       (`s`.`rksl` - ifnull(`s`.`ckl`, 0)) AS `wlysl`,
       `s`.`kmdbm`                         AS `kmdbm`,
       `s`.`kcdmc`                         AS `kcdmc`,
       `s`.`hjxx`                          AS `hjxx`,
       'SAP'                               AS `type`
from ((`purchase`.`business_f7hc` `s` inner join `purchase`.`business_y339` `m`
       on ((`s`.`father_id` = `m`.`id`))) left join `purchase`.`wzxqjh` `w` on ((`s`.`jhbm` = `w`.`xqjhbh`)))
where ((`m`.`flow_state` = 3) and (`m`.`txrj` < (curdate() - interval 3 month)) and (`s`.`jhbm` like 'CGJH%'))
having (`wlysl` > 0)
union
select `s`.`jhbm`                          AS `sbdh`,
       `cqjh`.`sbr`                        AS `sbr`,
       `cqjh`.`sbbm`                       AS `sbdw`,
       `cqjh`.`create_date`                AS `sbsj`,
       `cqjh`.`xqkssj`                     AS `xqsj`,
       `s`.`wlbm`                          AS `wlbm`,
       `s`.`wlms`                          AS `wlms`,
       `s`.`dw`                            AS `dw`,
       '-'                                 AS `sbsl`,
       `s`.`fylx`                          AS `fylx`,
       '-'                                 AS yt,
       `m`.`txrj`                          AS `rksj`,
       `s`.`rksl`                          AS `rksl`,
       (`s`.`rksl` - ifnull(`s`.`ckl`, 0)) AS `wlysl`,
       `s`.`kmdbm`                         AS `kmdbm`,
       `s`.`kcdmc`                         AS `kcdmc`,
       `s`.`hjxx`                          AS `hjxx`,
       'SAP'                               AS `type`
from ((`purchase`.`business_f7hc` `s` inner join `purchase`.`business_y339` `m`
       on ((`s`.`father_id` = `m`.`id`))) left join `purchase`.`business_wnmh` `cqjh`
      on ((`cqjh`.`cqxqxybh` = `s`.`jhbm`)))
where ((`m`.`flow_state` = 3) and (`m`.`txrj` < (curdate() - interval 3 month)) and (`s`.`jhbm` like 'CQXQXYJHH%'))
having (`wlysl` > 0)
union
select `s`.`jhbm`                          AS `sbdh`,
       '-'                                 AS `sbr`,
       '-'                                 AS `sbdw`,
       '-'                                 AS `sbsj`,
       '-'                                 AS `xqsj`,
       `s`.`wlbm`                          AS `wlbm`,
       `s`.`wlms`                          AS `wlms`,
       `s`.`dw`                            AS `dw`,
       '-'                                 AS `sbsl`,
       `s`.`fylx`                          AS `fylx`,
       '-'                                 AS yt,
       `m`.`txrj`                          AS `rksj`,
       `s`.`rksl`                          AS `rksl`,
       (`s`.`rksl` - ifnull(`s`.`ckl`, 0)) AS `wlysl`,
       `s`.`kmdbm`                         AS `kmdbm`,
       `s`.`kcdmc`                         AS `kcdmc`,
       `s`.`hjxx`                          AS `hjxx`,
       'SAP'                               AS `type`
from (`purchase`.`business_f7hc` `s` inner join `purchase`.`business_y339` `m` on ((`s`.`father_id` = `m`.`id`)))
where ((`m`.`flow_state` = 3) and (`m`.`txrj` < (curdate() - interval 3 month)) and
       ((`s`.`jhbm` is null) or (`s`.`jhbm` = '')))
having (`wlysl` > 0)



#--------------------------------------------------------------
select *
from business_f7hc where create_date  <(curdate() - interval 3 month) and org_id=0000287
