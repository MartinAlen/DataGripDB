select id, gysbm, gysmc, registeredszgc, gysdh
from business_kw1n
where gysbm != ''
  and gysbm is not null
  and gysmc like '%永修滇东煤炭有限公司%';

select *
from m_supplier where name1='云南能投绿色新材有限责任公司';


select *
from sync_werk_org where org_code='00000287';

select *
from wlcyd;