select 
	count(order_id) as total_delayed_sameday
from 
	superstore_order
where 
	ship_mode = 'Same Day'
	and ship_date != order_date