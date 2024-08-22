select * from ecommerce_product

create or replace function check_sales(productId numeric)
returns varchar as $$
declare 
         sales_status varchar;
         sum_of_sales numeric;
begin
        select sum(sales) into sum_of_sales from ecommerce_product where product_id = productId;
        if sum_of_sales > 1966 then sales_status:='sales is maximum';
        else sales_status :='sales is minimum';
   end if;
   return sales_status;
end;

$$ language plpgsql



select check_sales(1966)

select product_name, rating, price,sales, check_sales(rating) from ecommerce_product
