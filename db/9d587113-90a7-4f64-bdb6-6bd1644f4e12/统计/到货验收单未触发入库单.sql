select dhysd.id, dhysd.sbwzdhysdbh, dhysd.create_date, dhysd.sort
from business_hmz1 dhysd
         left join business_y339 machine on dhysd.sbwzdhysdbh = machine.dhysdh
where dhysd.flow_state = 3
  and dhysd.flow_step = '归档'
  and dhysd.sort != '-1'
  and machine.dhysdh is null;