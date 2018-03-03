select min(DateTime) as Starting_Value, max(DateTime) as Ending_Value, count(*) as Total_Records, grp_nbr as Group_Nbr
from
(
select DateTime, ntile(10) over (order by DateTime) grp_nbr
from schemaName.tableName
) as temp
group by grp_nbr
;
