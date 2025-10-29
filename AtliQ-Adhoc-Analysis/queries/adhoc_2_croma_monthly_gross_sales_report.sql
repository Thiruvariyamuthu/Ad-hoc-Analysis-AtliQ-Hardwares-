select
s.date,
round(sum(g.gross_price*s.sold_quantity), 2) as gross_price_total from
fact_sales_monthly s join
fact_gross_price g
on
g.product_code=s.product_code and
g.fiscal_year=get_fiscal_year(s.date)
where customer_code=90002002
group by s.date
order by s.date asc