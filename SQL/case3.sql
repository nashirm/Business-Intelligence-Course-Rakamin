select 
	category,
	sub_category,
	avg(profit) as avg_profit,
	avg(discount) as avg_discount
from superstore_order o
join superstore_product p
on o.product_id = p.product_id
group by 1, 2
order by 4 desc
limit 5