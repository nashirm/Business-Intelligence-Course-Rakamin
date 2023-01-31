select
	c.segment,
	sum(o.sales) as total_sales,
	avg(o.profit) as avg_profit
from superstore_order o
join superstore_customer c
on o.customer_id = c.customer_id
where c.state in ('California', 'Texas', 'Georgia') 
and date_part('year', o.order_date) = '2016'
group by 1 
order by 3 desc