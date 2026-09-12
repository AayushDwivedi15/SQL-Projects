with cte as (select customer_id, sum(quantity*price) as total_revenue
from 
[orders ] inner join [products ]
on [orders ].product_id = [products ].product_id
group by customer_id),

cte2 as (select customer_id,
case 
when total_revenue > 1000 then 'VIP'
when total_revenue >= 500 and total_revenue <=1000 then 'STANDARD'
when total_revenue <500 then 'LOW'

END AS Customer_Tier

from cte)

select count(customer_id) as total_customers, customer_tier from cte2
group by Customer_Tier
order by total_customers desc;












