with cte as (select datename(MONTH,order_date) as month_name, sum(quantity*price) as total_revenue,
case 
	when loyalty_member = 1 then 'yes' else 'no'
end as loyalty_pass

from [orders ] inner join customers
on [orders ].customer_id = customers.customer_id
inner join [products ] 
on [orders ].product_id = [products ].product_id
group by datename(MONTH,order_date) ,loyalty_member
)

select month_name,
SUM(case when loyalty_pass = 'yes' then total_revenue else 0 end) as loyalty_member_revenue,
SUM(case when loyalty_pass = 'no' then total_revenue else 0 end) as non_loyalty_member_revenue


from cte

group by month_name





