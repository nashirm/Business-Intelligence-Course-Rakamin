with
temp as 
(select 
	customer_id,
	avg(discount)
from superstore_order
group by 1
having avg(discount) >= 0.4)

select 
	region,
	count(1) as total_customer
from temp
join superstore_customer c
on temp.customer_id = c.customer_id
group by 1