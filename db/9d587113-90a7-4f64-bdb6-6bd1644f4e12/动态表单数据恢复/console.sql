1.# 按照流程编码查找动态控制的 属性

SELECT *
FROM `form_config_control_field`
WHERE form_control_code in (select id from form_config_control WHERE form_code = 'form_219c')
    2.# 列表对应

select *
from form_config_power
where bussiness_id in (select id from form_button_info where bussiness_id = 'form_list_c1da');

3.# 列表对应权限

select *
from form_config_power
where business_id in (select id from form_button_info where business_id = 'form_list_c1da')