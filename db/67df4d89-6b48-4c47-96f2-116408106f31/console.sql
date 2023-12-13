select safety_type,
       company,
       SUBSTRING_INDEX(safety_type, ',', 1)                           class1,
       SUBSTRING_INDEX(SUBSTRING_INDEX(safety_type, ',', 2), ',', -1) class2,
       SUBSTRING_INDEX(SUBSTRING_INDEX(safety_type, ',', 3), ',', -1) class3
from business_enterprise_info
where short_name='云南三环中化化肥有限公司'



select *
from business_enterprise_info;


