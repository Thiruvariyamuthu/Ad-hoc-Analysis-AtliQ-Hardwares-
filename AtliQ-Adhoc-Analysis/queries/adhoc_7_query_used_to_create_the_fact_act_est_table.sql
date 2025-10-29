create table fact_act_est (
select
s.date,
s.fiscal_year,
s.product_code,
s.customer_code,
s.sold_quantity,
f.forecast_quantity
from fact_sales_monthly s
left join fact_forecast_monthly f
using (date, customer_code, product_code)
union
select
f.date,
f.fiscal_year,
f.product_code,
f.customer_code,
s.sold_quantity,
f.forecast_quantity
from fact_sales_monthly s
right join fact_forecast_monthly f
using (date, customer_code, product_code)
);


update fact_act_est
set sold_quantity = 0
where sold_quantity is null;

update fact_act_est
set forecast_quantity = 0
where forecast_quantity is null;

SELECT * FROM fact_act_est;