select *,swo.org_name
from goods_input_output_account
         inner join sync_werk_org swo on goods_input_output_account.werks = swo.werks
where djlx = 'A18A06A04A02'
  and ${if(len(成本中心) = 0,"1 = 1", "cbzx like '%" + 成本中心 + "%'")}
  and ${if(len(工厂订单号) = 0,"1 = 1", "zjgc like '%" + 工厂订单号 + "%'")}
  and ${if(len(固定资产号) = 0,"1 = 1", "gdzc like '%" + 固定资产号 + "%'")}
  and ${if(len(工厂名称) = 0,"1 = 1", "swo.org_name like '%" + 工厂名称 + "%'")}
order by bussiness_time desc;