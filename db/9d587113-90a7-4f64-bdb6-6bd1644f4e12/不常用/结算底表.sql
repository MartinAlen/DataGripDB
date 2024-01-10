select *
from business_97n8
where wlms like '%液碱%'
order by create_date desc;


select count(1)
from business_97n8
where wlms like '%硫酸%'
order by create_date desc;
# where wlbm = '1000001587';

select id,fhrq,shrq,wlbm,wlms,ywlx,create_date
from business_97n8
where wlms like '%油%'
order by create_date desc;
# where wlbm = '1000001587';

select id,wlbm,wlms,ywlx
from business_97n8
where wlms like '%煤%'
order by create_date desc;







select *
from material_master_v where maktx like '%原煤%';


SELECT jcdw,
       wlms,
       shdw,
       gysmc,
       gysbm,

       wlbm                                                                                        field_h6,
       wlms                                                                                        field_h7,
       min(fhrq)                                                                                   ghrqq,
       max(fhrq)                                                                                   ghrqz,
       min(shrq)                                                                                   shrqq,
       max(shrq)                                                                                   shrqz,
       sum(fhsl)                                                                                   ghsl,
       sum(shsl)                                                                                   shsl,
       sum(fhsl - shsl)                                                                            gxbcl,
       cysmc                                                                                       cysmc,
       cysbm,
       sum(hkjssl)                                                                                 hkjssl,
       hkjsdj                                                                                      hkdj,
       sum(hkjssl * hkjsdj)                                                                        hkjsje,
       sum(yfjssl)                                                                                 yfjssl,
       yfjsdj                                                                                      yfdj,
       sum(yfjssl * yfjsdj)                                                                        yfjsje,
       sum(hkjssl)                                                                                 dcjssl,
       sum(
               (hkjssl * hkjsdj) + (IFNULL(yfjssl, 0) * IFNULL(yfjsdj, 0))
           )                                                                                       dcjsje,
       sum(
               hkjssl * hkjsdj + (IFNULL(yfjssl, 0) * IFNULL(yfjsdj, 0))
           ) / sum(hkjssl)                                                                         dcdj,
       (sum(yfjssl * yfjsdj)) / 1.09 * (0.13 - 0.09 + 0.0048) / (sum(hkjssl))                      yfsccb,
       sum(
               hkjssl * hkjsdj + yfjssl * yfjsdj
           ) / sum(hkjssl) + (sum(yfjssl * yfjsdj)) / 1.09 * (0.13 - 0.9 + 0.0048) / (sum(hkjssl)) dqsjcgjg
FROM business_97n8
WHERE 1 = 1
  and wlms like '%油%'
GROUP BY jcdw,
         shdw,
         wlbm,
         wlms,
         gysmc,
         gysbm,
         cysmc,
         cysbm,
         hkjsdj,
         yfjsdj
ORDER BY shdw,
         gysmc,
         gysbm,
         cysmc,
         hkjsdj,
         yfjsdj,
         min(fhrq) DESC