# 待利用物资 入库


# 入库
select id,rkbm,flow_step
from business_3on5
where rkbm like '%DLYWZRK4010202312260001%'
# where id= '08bf596379d5421db821d493e71f98f4'
# where business_3on5.serial like '%20230709102335244%'
order by create_date desc;


# 入库 明细
select m.id, m.wlbm, m.ckdid, m.father_id, m.rksl, m.ckl
from business_34db m
         left join business_l1lc s on m.id = s.rkd_detail_id
where m.wlbm='1000011419'
# where m.father_id='46439c736a4b4b18a4c3128c6f1d78a0';


# having  s.id is null
# where m.wlbm='1000014119';

select wlbm,kcl
from wait_use_repository where wlbm='1000011419';

select werks,
       wlbm,
       wlms,
       hjxx,
       kcdbm,
       kcdmc,
       jldw         dw,
       jldwms       dwms,
       0            jskc,
       kcl,
       'WAITUSE' as typed,
       is_history,
       wlbm_last,
       dj
from wait_use_repository
where is_history = 1
  and kcl > 0
  and org_id = '${orgId}';



# 出库查询入库
select s.jldw
from business_3on5 m
         inner join business_34db s on m.id = s.father_id;

#
select *, (rksl - IFNULL(ckl, 0)) kcl_temp
from business_34db
having kcl_temp > 0;





# 清除天安 待利用物资库存 sap物料编码

# update wait_use_repository
# set wlbm =null
# where werks = 4010
