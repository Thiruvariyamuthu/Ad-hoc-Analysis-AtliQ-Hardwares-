CREATE DEFINER=`root`@`localhost` PROCEDURE `get_top_n_products_by_division_by_sold_qty`(in_fiscal_year int,in_top_n int)
BEGIN
     with cte1 as (
SELECT division,product,sum(sold_quantity) as total_qty
 FROM fact_sales_monthly s
join dim_product p
on s.product_code=p.product_code
where fiscal_year=in_fiscal_year
group by p.product
),

cte2 as (
select *,dense_rank() over(partition by division order by total_qty desc ) as dnsk
from cte1)

select division,product,total_qty from cte2
where dnsk <=in_top_n;
END