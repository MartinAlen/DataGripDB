select *
from analysis_assay_instrument_inconformity
where serial = '20240104091432926';

#分析化验室-分析仪器管理
select *
from analysis_assay_instrument;


# 分析仪器检查
select *
from analytical_instrument_inspection m
         inner join
     analytical_instrument_equipment s on m.id = s.father_id
where m.serial='20240104100125481'


# 子表
select *
from analytical_instrument_equipment;

