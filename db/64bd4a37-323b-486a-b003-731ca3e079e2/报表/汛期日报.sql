select rain, serial, flow_state,corporate_name
from flood_season_report;


delete
from flood_season_report
where filled_by ='-9199873405976231661'
;


update flood_season_report
set rain='A03A01A01'
where rain = 'A03A01A02';


