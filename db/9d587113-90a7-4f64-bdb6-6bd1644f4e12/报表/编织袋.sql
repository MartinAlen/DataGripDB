select *
from goods_input_output_account m
         inner join business_bro4 s on m.wlbm = s.wlbm
where m.kclx = 'WAITUSE'
  and m.create_date between ${thetime}
    and LAST_DAY(${thetime})
  and ${if(len(wlbm) == 0,"1=1","wlbm like '"+ wlbm + "'")}
  and ${if(len(wlms) == 0,"1=1","wlms like '"+ wlms + "'")};

