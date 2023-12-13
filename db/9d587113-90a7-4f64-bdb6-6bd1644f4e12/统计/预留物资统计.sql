select s.wlbm,
       s.wlms,
       s.zkc,
       s.jhbm,
       s.sbr,
       s.cgy,
       s.kcdbm as ckkcdbm,
       m.kcdbm as dbkcdbm,
       s.cksl,
       s.sfck,
       m.flow_step,
       m.flow_state,
       m.ckbm,
       m.zdr,
       m.psy,
       m.sfbd
from business_ij1g m
         left join business_m3wc s on m.id = s.father_id
where m.flow_step != '归档'
  and m.flow_step != '领用人签收'
  and m.flow_step != '填写';