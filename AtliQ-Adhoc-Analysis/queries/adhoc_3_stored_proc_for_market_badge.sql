CREATE DEFINER=`root`@`localhost` PROCEDURE `get_market_badge`(  in in_market varchar(45),
   in in_fiscal_year year)
BEGIN


#SET DEFAULT VALUE TO BE INDIA
  if in_market="" then
       set in_market ="India";
    end if;
    
Select market,sum(s.sold_quantity) as total_qty_sold , 
if(sum(sold_quantity)>5000000,"Gold","Silver") as badge
from
fact_sales_monthly s
join dim_customer c 
     on s.customer_code=c.customer_code
where  c.market= in_market
and year(date_add(s.date, interval 4 month))=in_fiscal_year ;
END