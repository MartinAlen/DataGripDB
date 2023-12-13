select user_name,
       password,
       user_code,
       phone,
       sys_user.id,
       sys_user.org_id,
       sys_user.real_name,
       sys_user.unit_id
from sys_user
         inner join sys_user_ext on sys_user.id = sys_user_ext.user_id
# where sys_user.user_code = '10029838';
where sys_user.user_code = 'tahgadmin';
# where sys_user.real_name like '%张海林%';
# where sys_user.real_name like '%张向金%';
# where sys_user.real_name like '%张子钦%';
# where sys_user.real_name like '%耿成宇%';
# where sys_user.real_name like '%伏旭东%';
where sys_user.real_name like '%丁院巧%';


select *
from sys_unit where org_id='-2261886104294178509';

# 查询用户
select user_name,user_code,phone,id
from sys_user where real_name like '%徐瑾%';

select *
from sys_user where id='236435775381458799';
# from sys_user where user_name='30000365';


select *
from sys_unit where unit_name='云南大为制氨有限公司';

select *
from sys_unit where unit_code='10003892';

select *
from sys_unit where id='3eab0ba2af670fa285d17944a748661d';


select *
from sys_unit;