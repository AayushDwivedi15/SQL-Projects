--select * from customers
--select * from [orders ]
--select * from [products ]




with cte as (select customers.city as city_name,[products ].category as category_name,
sum([orders ].quantity*[products ].price) as total_revenue
from [orders ] inner join customers 
on [orders ].customer_id = customers.customer_id
inner join [products ] on
[orders ].product_id = [products ].product_id
group by city,category),

cte2 as ( select *, DENSE_RANK() over(partition by city_name order by total_revenue desc) as rank_ from cte)

select * from cte2
where rank_ = 1

