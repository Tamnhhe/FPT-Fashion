
create or alter  trigger trigger_insert_order_detail
on Order_Details
after insert
as
begin

if((select total_money from Orders where Order_id = (select i.order_id from inserted as i)) is null)
begin
update Orders
set
total_money = 0
where Order_id = (select i.order_id from inserted as i)
end

update Orders
set
total_money += ((select top 1 i.price from inserted as i) * (select top 1 i.quantity from inserted as i))
where Order_id = (select i.order_id from inserted as i)


declare @trang_thai_don_hang int

set @trang_thai_don_hang = (select status from Orders
where Order_id = (select top 1 i.order_id from inserted as i))

if(@trang_thai_don_hang = 1 or @trang_thai_don_hang = 0)
begin

declare @product_id int
declare @color_id int
declare @size_id int
declare @quantity_da_mua int

set @product_id = (select i.product_id from inserted as i)
set @color_id = (select i.color_id from inserted as i)
set @size_id = (select i.size_id from inserted as i)
set @quantity_da_mua = (select i.quantity from inserted as i)

update Product_detail
set
quantity = quantity - @quantity_da_mua
where product_id = @product_id and color_id = @color_id and size_id = @size_id

if(@trang_thai_don_hang = 1)
begin
update Product
set
quantity_sold = quantity_sold + @quantity_da_mua
where product_id = @product_id

update Product
set
quantity_stock = quantity_per_unit - quantity_sold
where product_id = @product_id
end
end
end

go




create or alter trigger trigger_update_order
on Orders
after update
as
begin
declare @trang_thai_don_hang int
set @trang_thai_don_hang = (select status from inserted)

declare @total_money_cu int
declare @total_money_moi int

set @total_money_cu = (select d.total_money from deleted as d)
set @total_money_moi = (select i.total_money from inserted as i)

if(@trang_thai_don_hang = 1 and ((@total_money_cu = @total_money_moi) or @total_money_moi is null))
begin

update Product_detail
set
quantity = p.quantity - pu.quantity
from 
Product_detail as p
inner join (select o.product_id, o.color_id, o.size_id, o.quantity from inserted as i
inner join Order_Details as o on i.Order_id = o.order_id) as pu
on p.product_id = pu.product_id and p.color_id = pu.color_id and p.size_id = pu.size_id


update Product
set
quantity_sold += p2.total_da_mua
from
Product as p
inner join (select od.order_id, od.product_id, SUM(od.quantity) as total_da_mua from Order_Details as od
inner join inserted as i on od.order_id = i.Order_id
group by od.order_id, od.product_id) as p2 on p.product_id = p2.product_id

update Product
set
quantity_stock = p.quantity_per_unit - p.quantity_sold
from 
Product as p
inner join (select od.order_id, od.product_id from Order_Details as od
inner join inserted as i on od.order_id = i.Order_id
group by od.order_id, od.product_id) as p2 on p.product_id = p2.product_id
end


if(@trang_thai_don_hang = 2 and ((@total_money_cu = @total_money_moi) or @total_money_moi is null))
begin

update Product_detail
set
quantity = p.quantity + pu.quantity
from 
Product_detail as p
inner join (select o.product_id, o.color_id, o.size_id, o.quantity from inserted as i
inner join Order_Details as o on i.Order_id = o.order_id) as pu
on p.product_id = pu.product_id and p.color_id = pu.color_id and p.size_id = pu.size_id

end
end


--viet update total money cho orders