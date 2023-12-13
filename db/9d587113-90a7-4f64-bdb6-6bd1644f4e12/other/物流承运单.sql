select m.wlcydbh,m.fhzjdh,m.create_date
from wlcyd m
         inner join wlcydxx s on m.id = s.father_id order by m.create_date desc ;



select id
from wlcyd where wlcydbh='HCYS2308156064113';

