select * from business_enterprise_info;
;-- -. . -..- - / . -. - .-. -.--
select * from business_enterprise_info where short_name='青海云天化国际化肥有限公司';
;-- -. . -..- - / . -. - .-. -.--
select safety_type from business_enterprise_info where short_name='青海云天化国际化肥有限公司';
;-- -. . -..- - / . -. - .-. -.--
select safety_type
from business_enterprise_info
where id = 'feab8e444b144334b44ee0059620caad';
;-- -. . -..- - / . -. - .-. -.--
select safety_type,short_name
from business_enterprise_info
where id = 'feab8e444b144334b44ee0059620caad';
;-- -. . -..- - / . -. - .-. -.--
select *
from business_enterprise_info;
;-- -. . -..- - / . -. - .-. -.--
select safety_type
from business_enterprise_info
where short_name = '青海云天化国际化肥有限公司';
;-- -. . -..- - / . -. - .-. -.--
select safety_type,
       company,
       SUBSTRING_INDEX(safety_type, ',', 1)                           class1,
       SUBSTRING_INDEX(SUBSTRING_INDEX(safety_type, ',', 2), ',', -1) class2,
       SUBSTRING_INDEX(SUBSTRING_INDEX(safety_type, ',', 3), ',', -1) class3
from business_enterprise_info
where short_name='云南三环中化化肥有限公司';