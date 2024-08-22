select * from ecommerce_product

select distinct max(rating) from ecommerce_product

---------------------

create or replace function checkRating(rating numeric)
returns varchar as $$
declare
   output varchar;
begin
  if rating >3.00 then output:='good rating';
  else output:='low rating';
 end if;
return output;
end
$$ language plpgsql

select checkRating(3.6)

select rating, checkRating(rating) from ecommerce_product
--------------------


create or replace function check_product_name_price(product_name varchar)
returns varchar as $$
declare
      output varchar;
begin
     case
                   when product_name = 'Headphones' then output := 'its a normal price product';
                   when product_name = 'Smartwatch' then output := 'its a best price product';
                   when product_name = 'Laptop' then output := 'its a good price product';
                   Else product_name := 'normal range product';
       end case;
       return output;

end
$$ language plpgsql

select check_product_name_price('Headphones')

select check_product_name_price('Laptop')


