select
	case when discount < 0.2 then 'Low'
		 when discount < 0.4 then 'Moderate'
		 else 'High'
	end as level_discount,
	avg(profit) as average_profit
from superstore_order
group by level_discount
order by average_profit desc