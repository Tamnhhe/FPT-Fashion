
select * from Product

select * from Size

select * from Colors

select p.product_id, p.product_name, s.size_option, SUM(pd.quantity) as [So Luong] from Product as p
inner join Product_detail as pd on p.product_id = pd.product_id
inner join Size as s on pd.size_id = s.size_id
group by p.product_id, p.product_name, pd.size_id, s.size_option


select product_id, product_name from Product


select p.product_id, thumbnail from Product as p
inner join Galery as g on p.product_id = g.product_id
where p.product_id = 1


select top 5 * from Product
order by discount desc


select * from Users


select top 5 * from Product
where category_id = 1
order by quantity_sold, product_name

--select c.category_id, c.category_name, c.Desciption , COUNT(p.product_id) as NumberOfProduct from Category as c
--inner join Product as p on c.category_id = p.category_id
--group by c.category_id, c.category_name, c.Desciption


with tbl_1 as
(
select p.product_id,
case when AVG(c.rating) is null then 5
else AVG(c.rating)
end as Rating
from Product as p
left join Comment as c on p.product_id = c.product_id
group by p.product_id, p.product_name
)

select top 10 * from tbl_1 as t
inner join Product as p on t.product_id = p.product_id
order by p.quantity_sold desc, t.Rating desc, p.product_id


select g.thumbnail from Product as p
inner join Galery as g on p.product_id = g.product_id
where p.product_id = ?






select p.product_id,
case when AVG(c.rating) is null then 5
else AVG(c.rating)
end as Rating
from Product as p
left join Comment as c on p.product_id = c.product_id
where p.product_id = 1
group by p.product_id, p.product_name

select top 10 * from Product as p
order by p.quantity_sold desc, p.price - (p.price*p.discount/100) desc, p.product_id


select top 1 * from Galery

select top 1 SUBSTRING(g.thumbnail, 1, 7) from Galery as g

select top 1 SUBSTRING(g.thumbnail, 8, 200) from Galery as g


select top 1 SUBSTRING(g.thumbnail, 1, 7) + 'products/' + SUBSTRING(g.thumbnail, 8, 200) from Galery as g

update Galery
set
thumbnail = SUBSTRING(thumbnail, 1, 7) + 'products/' + SUBSTRING(thumbnail, 8, 200)


select * from Product
where product_name like '%qattk316%'


select * from Galery
where product_id = 84

delete from Galery
where galery_id = 708

select * from Roles
where role_id = ?

select * from Users
where user_id = ?

select * from FeedBack
select * from FeedBack


select * from Users


select * from Users


update Users
set
image = 'images/users/user-11.jpg'
where user_id = 11


select top 6 * from Product
where 1 = 1
order by created_at desc

select Top 6 * from Product
where category_id = ? and product_id != ?




insert into Comment(product_id, user_id, content, comment_date, rating) values(100, 12, N'Sản phẩm có chất lượng vản tốt, thoáng khí, mặc rất mát mẻ', GETDATE(), 4)


insert into Users(role_id, [user_name], pass_word, [image], created_at, deleted) values (1, 'NghiemXuanLoc', '123456', 'images/users/user-12.jpg' ,'2024-02-28',0)

select * from Users
where user_id = 12

update Users
set
image = 'images/users/user-12.jpg'
where user_id = 12


select * from Users




select p.product_id, p.product_name, c.color from Product as p
left join Product_detail as pd on p.product_id = pd.product_id
left join Colors as c on pd.color_id = c.color_id
group by p.product_id, p.product_name, c.color


select * from Colors


update Colors
set
color = 'Xanh'
where color_id = 4


select * from Size


select * from Product_detail as p
where color_id = 1 and size_id = 1 and p.product_id = 100


select * from Product
where product_name like '%aphtk457%'

select * from Galery
where product_id = 1

select SUBSTRING(g.thumbnail, 1, 7)  from Galery as g
where product_id = 1

select SUBSTRING(g.thumbnail, 1, 7) + SUBSTRING(g.thumbnail, 17, 200)  from Galery as g
where product_id = 1

update Galery
set
thumbnail = SUBSTRING(thumbnail, 1, 7) + SUBSTRING(thumbnail, 17, 200)
where product_id = 1



select case when SUM(od.quantity) is null then 0
else SUM(od.quantity)
end
as [total_quantity]
from Orders as o
inner join Order_Details as od on o.Order_id = od.order_id
where od.product_id = 100 and od.color_id = 6 and od.size_id = 3 and o.status = 1


select * from Orders


insert into Orders(user_id, order_date, note, status) values (4, GETDATE(), N'giao hàng cẩn thận', 1)

select * from Order_Details

insert into Order_Details(order_id, product_id, color_id, size_id, price, discount, quantity) values (1, 100, 6, 3, 375000.00, 57, 5)



select * from Product
where product_id = 100




select * from Product

select p.product_id from Product as p
inner join Product_detail as pd on p.product_id = pd.product_id
where 1 = 1 and price between 0.0 and 1000000.0
group by p.product_id


select p.product_id from Product as p
inner join Product_detail as pd on p.product_id = pd.product_id
where 1 = 1 and price between 0.0 and 1000000.0
group by p.product_id

select p.product_id from Product as p
inner join Product_detail as pd on p.product_id = pd.product_id
where 1 = 1 and (  category_id = 1 ) and (  size_id = 1 ) and (  color_id = 1 ) and price between 0.0 and 1000000.0
group by p.product_id


select category_id from Product
group by category_id
order by quantity_sold desc


with tbl1 as
(
select p.product_id from Product as p
inner join Product_detail as pd on p.product_id = pd.product_id
where 1 = 1 and (  category_id = 1 ) and (  size_id = 1 ) and (  color_id = 1 ) and price between 0.0 and 1000000.0
group by p.product_id
)

select * from Product as p
inner join tbl1 on p.product_id = tbl1.product_id
order by p.discount desc, p.product_id 


select * from Product as p
where product_name like '%%' or p.desciption like '%%'

select * from Product as p
where p.desciption like N'%liệu%'


select * from Product as p
where product_name like N'%áo%' or p.desciption like N'%áo%'
 order by  p.price desc , p.product_id


 select * from Category

 insert into Category(category_name, Desciption) values (N'Dao Cạo Dâu', N'Rất đẹp')


 delete from Category
 where category_id = 9

select * from Product
ORDER BY product_id asc
OFFSET 0 rows
FETCH next 9 rows ONLY



with tbl1 as
(

select p.product_id from Product as p
inner join Product_detail as pd on p.product_id = pd.product_id
where 1 = 1 and (  category_id = 2 ) and price between 99000.0 and 1049000.0
group by p.product_id
)

select * from Product as p
inner join tbl1 on p.product_id = tbl1.product_id order by  p.product_id
OFFSET (1 - 1) * 9 rows
FETCH next 9 rows ONLY



select COUNT(p.product_id) as total_filter from Product as p
inner join Product_detail as pd on p.product_id = pd.product_id
where 1 = 1 and (  category_id = 2 ) and (  size_id = 1 or size_id = 2 ) and price between 99000.0 and 1049000.0
group by p.product_id


select COUNT(distinct p.product_id) from Product as p
inner join Product_detail as pd on p.product_id = pd.product_id
where 1 = 1 and (  category_id = 6 ) and price between 99000.0 and 1049000.0
--group by p.product_id


select COUNT(distinct p.product_id) as total_filter from Product as p
inner join Product_detail as pd on p.product_id = pd.product_id
where 1 = 1 and price between 99000.0 and 1049000.0


select COUNT(distinct p.product_id) as total_query from Product as p
where product_name like N'%%' or p.desciption like N'%%'


select p.product_id from Product as p
inner join Product_detail as pd on p.product_id = pd.product_id
where 1 = 1 and (  category_id = 2 ) and price between 99000.0 and 1049000.0
group by p.product_id
 order by  p.product_id
OFFSET (1 - 1) * 9 rows
FETCH next 9 rows ONLY


select p.product_id from Product as p
inner join Product_detail as pd on p.product_id = pd.product_id
where 1 = 1 and (  category_id = 2 ) and price between 99000.0 and 1049000.0
group by p.product_id
 order by  p.price desc , p.product_id
OFFSET (1 - 1) * 9 rows
FETCH next 9 rows ONLY


with tbl1 as
(
select p.product_id from Product as p
inner join Product_detail as pd on p.product_id = pd.product_id
where 1 = 1 and (  category_id = 1 ) and price between 99000.0 and 1049000.0
group by p.product_id
)
select * from Product as p
inner join tbl1 on p.product_id = tbl1.product_id
 order by p.price desc,  p.product_id
OFFSET (1 - 1) * 9 rows
FETCH next 9 rows ONLY


select * from Users


insert into Users(role_id, [user_name], pass_word, [image], created_at, deleted) values (1, 'Admin01', '123456', 'images/users/user-1' ,'2024-02-24',0)


select * from Users
where user_name = ?

select * from Roles

insert into Users(role_id, user_name, pass_word, created_at, deleted) values (2, ?, ?, GETDATE(), 0)


select * from Roles
where name = ?





declare @tong_so_luong_san_pham_theo_color_size int
declare @so_luon_san_pham_dang_chuan_bi_hang int

set @tong_so_luong_san_pham_theo_color_size = (select SUM(quantity) from Product_detail
where color_id = ? and size_id = ? and product_id = ?)

set @so_luon_san_pham_dang_chuan_bi_hang = (select SUM(od.quantity) from Orders as o
inner join Order_Details as od on o.Order_id = od.order_id
where (o.status = 0) and od.color_id = ? and od.size_id = ? and od.product_id = ?)

select (@tong_so_luong_san_pham_theo_color_size - @so_luon_san_pham_dang_chuan_bi_hang) as quantity

select * from Product

select * from Product_detail


select * from Users

select * from Orders

update Orders
set
status = 1
where Order_id = 8

select * from Order_Details



update Product_detail
set
quantity = quantity - 1
where product_id = 1 and color_id = 1 and size_id = 1

update Product
set
quantity_sold = quantity_sold + 1
where product_id = 1

update Product
set
quantity_stock = quantity_per_unit - quantity_sold
where product_id = 1


select * from Product
select * from Orders


select * from Product_detail


select * from Order_Details

update Orders
set
status = 1
where Order_id = 9



with tb1 as
(
select * from Order_Details
where product_id = 3
)

select * from tb1

select * from Product

update Product 
set
quantity_sold = 12
where product_id = 2

update Product
set
quantity_sold = 0
where product_id = 2

update Product
set
quantity_sold =(select SUM(od.quantity) from Order_Details as od 
where od.product_id = Product.product_id)
from
Product as p inner join (select * from Orders as o 
inner join Order_Details as od on o.Order_id = od.order_id
where o.Order_id = 11) as p2 on p.product_id = p2.product_id

select * from Order_Details

select * from Product

--ban cuoi cung

update Product
set
quantity_sold = p2.total
from
Product as p
inner join (select order_id, product_id, SUM(quantity) as total from Order_Details
where order_id = 12
group by order_id, product_id) as p2 on p.product_id = p2.product_id





select order_id, product_id, quantity as total from Order_Details
where order_id = 12

select order_id, product_id, SUM(quantity) as total from Order_Details
where order_id = 12
group by order_id, product_id

select * from Order_Details



create or alter  trigger trigger_insert_order_detail
on Order_Details
after insert
as
begin

declare @trang_thai_don_hang int

set @trang_thai_don_hang = (select status from Orders
where Order_id = (select top 1 i.order_id from inserted as i))

if(@trang_thai_don_hang = 1)
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


select * from Orders

select * from Product

select * from Product_detail

select * from Order_Details


select * from Orders as o
inner join Order_Details as od on o.Order_id = od.order_id

update Orders
set
status = 1
where Order_id = 3


select top 6 o.user_id, SUM(o.total_money) as total_money from Orders as o
group by o.user_id
order by SUM(o.total_money) desc


select * from Product


select * from Users

update Users
set
image = 'images/users/user-14.jpg'
where user_id = 14

select top 3 * from Product
order by quantity_sold desc, product_id
Áo Polo từ thương hiệu 360 Boutique không chỉ là một sản phẩm thời trang, mà còn là biểu tượng của phong cách và đẳng cấp. Với chất liệu cao cấp, thiết kế tinh tế và sự chăm sóc đặt biệt vào từng chi tiết, áo Polo của 360 Boutique không chỉ mang lại sự thoải mái và phong cách cho người mặc mà còn thể hiện sự sang trọng và đẳng cấp. Sự đa dạng trong mẫu mã và màu sắc cùng với sự độc đáo trong từng bộ sưu tập làm cho sản phẩm trở nên đặc biệt và thu hút người yêu thời trang. Với áo Polo từ 360 Boutique, bạn không chỉ mặc một chiếc áo, mà còn trải nghiệm một phong cách sống đẳng cấp và độc đáo.

select * from Category

update Category
set
Desciption = N'Quần Âu từ thương hiệu 360 Boutique'
where category_id = 8


select SUM(total_money) as revenue from Orders
where status = 1

select * from Users as u
inner join Roles as r on u.role_id = r.role_id
where r.name = 'user'


select * from Supperlier
where supperlier_id = ?

select * from Orders as o
inner join Order_Details as od on o.Order_id = od.order_id


update Orders
set
status = 2
where Order_id = 4

select c.category_id, SUM(p.quantity_sold) as total_product_sold from Category as c
inner join Product as p on c.category_id = p.category_id
group by c.category_id

select * from Roles
where name = ?

select * from Users


insert into Users(role_id, user_name, pass_word, full_name, birth_day, image, phone_number, address, email, created_at, deleted)
values (2, 'nghiemthiha', '123456', N'Nghiêm Thị Hà', '2000-12-25', null, null, null, null, GETDATE(), 0)

insert into Users(role_id, user_name, pass_word, full_name, birth_day, image, phone_number, address, email, created_at, deleted)
values (2, 'abcd', '123456', null, null, null, null, null, null, GETDATE(), 0)


select * from Users

update Users
set
image = null
where user_id >= 15

delete from Users
where user_id = 32

select * from Colors
where color_id = ?


select u.user_id, COUNT(od.product_id) as total_buy from Users as u
left join Orders as o on u.user_id = o.user_id
left join Order_Details as od on o.Order_id = od.order_id
group by u.user_id


select * from Users

update Users
set
full_name = N'Nghiêm Xuân Lộc'
where user_id = 12


select * from Users


update Users
set
birth_day = '2003-11-02',
phone_number = '0337783926',
address = N'Minh Tân, Phú Xuyên, Hà Nội',
email = 'nghiemxuanloc02@gmail.com',
updated_at = GETDATE()
where user_id = 12


select * from Orders
where user_id = 7

select * from Order_Details
where order_id = 2

select * from Users

select * from Orders

select * from Order_Details
where order_id = ?

update Orders
set
user_id = 12
where Order_id = 5


select * from Product_detail
where product_id = 1 and color_id = 1 and size_id = 1

select * from Product_detail
where product_id =  12 and color_id = 2 and size_id = 3

select * from Orders as o
inner join Order_Details as od on o.Order_id = od.order_id
where o.user_id = 12


select * from Orders

update Orders
set
status = 1
where Order_id = 5


select * from Product

select * from Orders as o
inner join Order_Details as od on o.Order_id = od.order_id
where o.user_id = 12 and o.status = 1

select * from Orders

select * from Users

select * from Category

update Users
set
pass_word = '123456'



select * from Product



select * from Product

select * from Payment
where payment_id = ?


update Users
set
pass_word = ?,
full_name = ?,
birth_day = ?,
image = ?,
phone_number = ?,
address = ?,
email = ?,
updated_at = GETDATE()
where user_id = ?




with tbl1 as
(
select c.category_id, c.category_name, COUNT(distinct p.product_id) as total_product from Category as c
left join Product as p on c.category_id = p.category_id
group by c.category_id, c.category_name
), tbl2 as
(
select c.category_id, c.category_name, COUNT(p.product_id) as total_product_sold from Orders as o
inner join Order_Details as od on o.Order_id = od.order_id
inner join Product as p on od.product_id = p.product_id
inner join Category as c on p.category_id = c.category_id
where o.status = 1
group by c.category_id, c.category_name
)

select t1.category_id, t1.total_product,
case when t2.total_product_sold is null then 0
else t2.total_product_sold
end
as total_product_sold
from tbl1 as t1
left join tbl2 as t2 on t1.category_id = t2.category_id


update Category
set
category_name = ?,
Desciption = ?
where category_id = ?


select * from Category


delete from Category
where category_id = 16


select * from Product

select * from Colors 
where color = ?

select top 1 product_id from Product
order by product_id desc


insert into Product(category_id, supperlier_id, product_name, quantity_per_unit, quantity_stock, quantity_sold, price, discount, desciption, created_at, deleted)
values(?, ?, ?, ?, ?, ?, ?, ?, ?, GETDATE(), 0)



select * from Product


where product_id >= 103


select * from Product_detail

select * from Galery

select * from Product_detail


select * from Galery



update Galery
set
thumbnail = 'images/products/newproduct/product-preview.jpg'
where product_id = 111



insert into Galery(product_id, thumbnail) values(?, 'images/products/newproduct/' + ?)


insert into Product_detail(product_id, color_id, size_id, quantity) values (?, ?, ?, ?)




select COUNT(od.product_id) as product_pending from Orders as o
inner join Order_Details as od on o.Order_id = od.order_id
where o.status = 0 and od.product_id = ?

select * from Product_detail
where product_id = ?


select * from Galery
where product_id = 2

update Galery
set
thumbnail = ?
where thumbnail = ? and product_id = ?

update Product
set
category_id = ?,
supperlier_id = ?,
product_name = ?,
quantity_per_unit = ?,
quantity_stock = ?,
price = ?,
discount = ?,
desciption = ?,
updated_at = GETDATE(),
deleted = 0
where product_id = ?


update Product_detail
set
quantity = ?
where product_id = ? and color_id = ? and size_id = ?

select * from Product_detail
where product_id = 2


select * from Product
where product_id = 2


delete from Product_detail
where product_id = ? and color_id = ? and size_id = ?


select * from Comment

select * from Users

update Users
set
full_name = null,
birth_day = null,
image = null,
phone_number = null,
address = null,
email = null
where user_id = 3

select * from Roles
select * from Comment

select * from Order_Details


select *  from Orders as o
inner join Order_Details as od on o.Order_id = od.order_id
where o.user_id = 12


insert into Comment(product_id, user_id, content, luot_edit, comment_date, comment_date_update, rating) values(1, 7, N'Sản phẩm ok', 1, GETDATE(), null, 5)
insert into Comment(product_id, user_id, content, luot_edit, comment_date, comment_date_update, rating) values(3, 7, N'Sản phẩm tạm được', 1, GETDATE(), null, 4)


insert into Comment(product_id, user_id, content, luot_edit, comment_date, comment_date_update, rating) values(13, 12, N'Tôi rất hài lòng về sản phẩm', 1, GETDATE(), null, 5)

delete from Comment

update Comment 
set
luot_edit = 1
where user_id = 12


select * from Product


select * from Comment

select * from Orders



update Comment
set
luot_edit = 1
where product_id = 1 and user_id = 7


delete from Comment
where user_id = ? and product_id = ?


insert into Comment(product_id, user_id, content, luot_edit, comment_date, comment_date_update, rating) 
values(?, ?, ?, 1, GETDATE(), null, ?)


select * from Users


insert into Wallets(user_id, balance) values (1, 0)
insert into Wallets(user_id, balance) values (2, 0)
insert into Wallets(user_id, balance) values (3, 0)
insert into Wallets(user_id, balance) values (4, 0)
insert into Wallets(user_id, balance) values (5, 0)
insert into Wallets(user_id, balance) values (6, 0)
insert into Wallets(user_id, balance) values (7, 0)
insert into Wallets(user_id, balance) values (8, 0)
insert into Wallets(user_id, balance) values (9, 0)
insert into Wallets(user_id, balance) values (10, 0)
insert into Wallets(user_id, balance) values (11, 0)
insert into Wallets(user_id, balance) values (44, 0)
insert into Wallets(user_id, balance) values (14, 0)


select * from Wallets


select * from Wallets

update Wallets
set
user_id = 12
where wallet_id = 12

select * from Orders as o
inner join Order_Details as od on o.Order_id = od.order_id
where o.Order_id = 3


select * from Orders

update Orders
set
status = 2
where Order_id = 3

select * from Product_detail


select * from Product

select * from Product

select * from Product_detail

select * from Galery


delete from Galery


select * from Galery

select SUBSTRING(g.thumbnail, 1, 15) from Galery as g

select SUBSTRING(g.thumbnail, 16, 200) from Galery as g


select SUBSTRING(thumbnail, 1, 7) + SUBSTRING(thumbnail, 8, 200) from Galery

update Galery
set
thumbnail = SUBSTRING(thumbnail, 1, 15) + '/' + SUBSTRING(thumbnail, 16, 200)



select * from Product

select * from Orders

update Orders 
set
status = 2
where Order_id = 3


select * from Product

insert into Orders(user_id, order_date, full_name, phone_number, email, address, payment_id, note, status)
values (?, GETDATE(), ?, ?, ?, ?, ?, ?, ?)


select top 1  order_id from Orders
order by Order_id desc


select * from Order_Details

insert into Order_Details(order_id, product_id, color_id, size_id, price, discount, quantity)
values(?, ?, ?, ?, ?, ?, ?)

select * from Product

select * from Orders

select * from Order_Details

select * from Product_detail
where product_id = 68 and color_id = 1 and size_id = 3



select * from Orders

update Orders 
set
status = 2
where Order_id = 7


select * from Product
where product_name like '%QKBTK311%'

select * from Colors

select * from Size


select * from Users


select * from FeedBack


select * from Product_detail
where product_id = 50 and color_id = 2 and size_id = 3

insert into FeedBack(user_id, subject_name, feedback_date, note) values(?, ?, GETDATE(), ?)


select * from FeedBack
order by feedback_date desc


select * from Category


select * from Product
where category_id = 24


select * from Category as c
inner join Product as p on c.category_id = p.category_id
where c.category_id = 24


select COUNT(distinct p.product_id) as total_filter from Product as p
inner join Product_detail as pd on p.product_id = pd.product_id
where 1 = 1 and (  category_id = 24 ) and price between 43.0 and 1049000.0

select * from Product
where product_id = 121

select * from Product_detail
where product_id = 123


select * from Product_detail
where product_id = 123 and color_id = 1 and size_id = 3

select * from FeedBack

update FeedBack
set
subject_name = ?,
note = ?
where feedback_id = ?



select * from Product as p
where p.deleted = 0 

update Product
set
deleted = 0
where product_id >= 122


update Product
set
quantity_sold = 0
where product_id >= 122

select * from Category


update Category
set
deleted = 0
where category_id = 5


select * from Product_detail


delete from Product
where product_id = ?

select * from Galery
where product_id = 124


select * from Product
where product_name = N'áo đẹp'


select * from Product
where category_id = ?


select * from Users


select * from Product

select * from Wallets

select SUM(quantity_sold) from Product


select * from Product_detail
where product_id = 29 and color_id = 1 and size_id = 4


select * from Product


update Product
set
quantity_per_unit = 100,
quantity_stock = 100,
quantity_sold = 0

select * from Product_detail





select COUNT(Order_id) as total_order from Orders
where status = 0


select c.category_id, c.category_name, count(pd.product_id) as total_ton_kho from Category as c
inner join Product as p on c.category_id = p.category_id
inner join Product_detail as pd on p.product_id = pd.product_id
group by c.category_id, c.category_name


select * from Orders


select YEAR(GETDATE()) as year


select sum(total_money) as revennueByMonth  from Orders
where (MONTH(order_date) = 3) and (YEAR(order_date) = 2024) and status = 1


select count(product_id) as total_start from Comment
where MONTH(comment_date) = 3 and YEAR(comment_date) = 2024 and rating = 4


select * from Comment

update Comment
set
comment_date = '2024-03-11'
where product_id = 4 and user_id = 8


select * from Users


select * from Users


select * from Category




select * from Galery

