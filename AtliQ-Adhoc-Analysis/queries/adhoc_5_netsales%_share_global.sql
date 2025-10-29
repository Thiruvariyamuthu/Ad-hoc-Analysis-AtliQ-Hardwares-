with cte_1 as (
SELECT
c.customer,
round(sum(net_sales/1000000), 2) as net_sales_mln
FROM net_sales ns
join dim_customer c
on ns.customer_code=c.customer_code
where fiscal_year=2021
group by customer
order by net_sales_mln desc
)

select *,net_sales_mln*100/sum(net_sales_mln) over() as pct from cte_1;