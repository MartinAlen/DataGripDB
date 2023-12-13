select rain, serial
from flood_season_report
where flood_season_report.safety_environmental is null
   or flood_season_report.safety_environmental = ''
;

delete
from flood_season_report
where flow_state = -10
;


update flood_season_report
set rain='A03A01A01'
where rain = 'A03A01A02';


