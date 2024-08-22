select * from sales

select * from customer

---sales<400 low sale else high sale

create or replace function checksales (sales double precision)
returns varchar as $$
declare
 output varchar;
begin
   if sales < 400 then output:= 'low sale';
   else output:='high sale' cost;
 end if;
return output;
end 
$$ language plpgsql


select *, checksales(sales) from sales

---profit<2.5164 low profit else high profit
	
create or replace function checkprofit (profit double precision)
returns varchar as $$
declare
 output varchar;
begin
   if profit < 2.5164 then output:= 'low sale';
   else output:='high prof' cost;
 end if;
return output;
end 
$$ language plpgsql


select *, checkprofit(profit) from sales

--city<Eagan Minnesota ,city< Richardson Texas else california

create or replace function city_criteria(city character varying)
returns varchar as $$
declare
 city_status varchar;
begin
	case
	 when city<Eagan then city_status:= 'Minnesota';
     when city<Richardson then city_status:= 'Texas';
    else city_status:= 'California';
   end case;
return city_status;
end 
$$ language plpgsql

select *, city_criteria(city) from customer

--discount<0 negative else positive

create or replace function discount_status (discount double precision)
returns varchar as $$
declare
 output varchar;
begin
   if discount < 0 then output:= 'negative';
   else output:='positive';
 end if;
return output;
end 
$$ language plpgsql


select *, discount_status(discount) from sales

---quantity <3 low quantity else high quantity

create or replace function checkquantity (quantity int)
returns varchar as $$
declare
 output varchar;
begin
   if quantity < 3 then output:= 'low quan';
   else output:='high quan';
 end if;
return output;
end 
$$ language plpgsql

select *, checkquantity(quantity) from sales