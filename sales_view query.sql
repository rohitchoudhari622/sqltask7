select * from sales

create view sales_view as select * from sales

select * from sales_view

---update 

update sales_view set ship_mode = 'second_class'  where order_id = 'CA-2016-152156'
select * from sales_view where order_id = 'CA-2016-152156'

---alter

alter table sales_view add id serial;

--ERROR:  This operation is not supported for views.ALTER action ADD COLUMN cannot be performed on relation "sales_view" 

--ERROR:  ALTER action ADD COLUMN cannot be performed on relation "sales_view"
--SQL state: 42809
--Detail: This operation is not supported for views.

alter table sales_view rename column quantity to "s_quantity"

alter table sales_view alter discount type int

--ERROR:  This operation is not supported for views.ALTER action ALTER COLUMN ... SET DATA TYPE cannot be performed on relation "sales_view" 

--ERROR:  ALTER action ALTER COLUMN ... SET DATA TYPE cannot be performed on relation "sales_view"
--SQL state: 42809
--Detail: This operation is not supported for views.

-----delete

delete from sales_view where order_line = 3

