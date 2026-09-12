with Customer_Spent as (SELECT 
    customers.Customer_Name,
    (COALESCE(sales.Total_Amount, 0)) AS Total_Amount
FROM
    customers
        LEFT JOIN
    sales ON customers.ï»¿Customer_ID = sales.Customer_ID
WHERE
    Total_Amount > 0)

select customers.State,
        Customer_Spent.Customer_Name,(customers.ï»¿Customer_ID) AS CustomerID ,
        Customer_Spent.Total_Amount,dense_rank() over(partition by customers.State order by Customer_Spent.Total_Amount desc) as Customer_Rank
from Customer_Spent left join 
customers on customers.Customer_Name = Customer_Spent.Customer_Name;


