select user_name,
       password,
       user_code,
       phone,
       sys_user.id,
       sys_user.org_id,
       sys_user.real_name,
       sys_user.unit_id,
       sys_user.identity
from sys_user
         inner join sys_user_ext on sys_user.id = sys_user_ext.user_id
# where sys_user.id = '3590293504613697115';


# where sys_user.user_code = 'admin_lhyxzx';

# where sys_user.user_code = '10030522';
# where sys_user.user_code = 'tahgadmin';
# where sys_user.real_name like '%徐瑾%';
# where sys_user.real_name like '%张向金%';
where sys_user.real_name like '%张子钦%';
# where sys_user.real_name like '%叶凤权%';
# where sys_user.real_name like '%张颖华%';
# where sys_user.real_name like '%伏旭东%';
# where sys_user.real_name like '%丁院巧%';
# where sys_user.real_name like '%凌宏梅%';
# where sys_user.real_name like '%赵煜%';
# where sys_user.real_name like '%张向金%'
# where sys_user.real_name like '%孙丽%';

# where sys_user.real_name like '%巴芳%';
where sys_user.real_name like '%夏闯%';


select *
from sys_unit
where org_id = '-2261886104294178509';

# 查询用户
select user_name, user_code, phone, id
from sys_user
where real_name like '%徐瑾%';

select *
from sys_user
where id = '236435775381458799';
# from sys_user where user_name='30000365';


select *
from sys_unit
where unit_name = '天安化工磷酸亚铁分部';

select *
from sys_unit
where unit_code = '530180013';

select *
from sys_unit
where id = '10001943';

select *
from sys_unit
where id = '10000700';

select *
from sys_unit
where unit_code = '2015233856688047346';


select *
from sys_unit;

