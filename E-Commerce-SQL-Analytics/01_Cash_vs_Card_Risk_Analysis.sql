
---value of payment

select 
sum(case when payment_method = 'Card' then price else 0 end ) as card_paymentsvalue,
sum(case when payment_method = 'Cash' then price else 0 end ) as cash_paymentsvalue,
sum(case when payment_method = 'Online' then price else 0 end ) as online_paymentsvalue

from [orders ] inner join [products ]
on [orders ].product_id = [products ].product_id


----times when payment has been done 

select 
sum(case when payment_method = 'Card' then 1  end ) as card_payments,
sum(case when payment_method = 'Cash' then 1 end ) as cash_payments,
sum(case when payment_method = 'Online' then 1  end ) as online_payments

from [orders ] inner join [products ]
on [orders ].product_id = [products ].product_id
