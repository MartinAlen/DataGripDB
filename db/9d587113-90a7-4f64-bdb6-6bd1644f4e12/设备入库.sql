select s.dw, dhysmx.wgjcjsy, dhysmx.update_date, dhysmx.sjzt
from business_f7hc as s
         inner join business_6j3g dhysmx
                    on s.rkdid = dhysmx.id and s.father_id = '541ea66864bb1bdc481ec9d1160064d1'


# 主表
select id,rkdbh
from business_y339
# where id = '4818e4db5f0c2f1210d4779b5fd99e35'
where serial = '20231212091143912'
order by create_date desc
limit 10;


# 子表
select *
from business_f7hc;
