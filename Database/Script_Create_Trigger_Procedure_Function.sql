
select * from Users

select * from Orders

select * from Order_Details

select * from Product

select * from Product_detail


insert into Orders(user_id, order_date, note, status) values (1, GETDATE(), N'Giao hàng cẩn thận', 0)


insert into Order_Details(order_id, product_id, color_id, size_id, price, discount, quantity) values (13, 5, 4, 1, 269000, 37, 3)


--lan 1
insert into Orders(user_id, order_date, note, status) values (7, '2024-01-15', N'Giao hàng cẩn thận', 0)

insert into Order_Details(order_id, product_id, color_id, size_id, price, discount, quantity) values (2, 1, 1, 1, 99000.00, 22, 2)

insert into Order_Details(order_id, product_id, color_id, size_id, price, discount, quantity) values (2, 1, 2, 3, 99000, 22, 3)

insert into Order_Details(order_id, product_id, color_id, size_id, price, discount, quantity) values (2, 2, 2, 1, 299000.00, 15, 2)

insert into Order_Details(order_id, product_id, color_id, size_id, price, discount, quantity) values (2, 2, 6, 1, 299000.00, 15, 5)

insert into Order_Details(order_id, product_id, color_id, size_id, price, discount, quantity) values (2, 3, 6, 2, 269000.00, 37, 3)

-- lan 2
insert into Orders(user_id, order_date, note, status) values (8, '2023-12-25', N'Ship hoa toc', 0)

insert into Order_Details(order_id, product_id, color_id, size_id, price, discount, quantity) values (3, 4, 1, 1, 315000.00, 66, 3)

insert into Order_Details(order_id, product_id, color_id, size_id, price, discount, quantity) values (3, 4, 4, 2, 315000.00, 66, 2)

insert into Order_Details(order_id, product_id, color_id, size_id, price, discount, quantity) values (3, 5, 4, 2, 315000.00, 63, 4)

insert into Order_Details(order_id, product_id, color_id, size_id, price, discount, quantity) values (3, 5, 6, 2, 315000.00, 63, 1)

insert into Order_Details(order_id, product_id, color_id, size_id, price, discount, quantity) values (3, 6, 2, 2, 349000.00, 21, 2)


-- lan 3
insert into Orders(user_id, order_date, note, status) values (9, '2024-02-25', N'Ship nhanh hộ mình', 0)

insert into Order_Details(order_id, product_id, color_id, size_id, price, discount, quantity) values (4, 7, 1, 1, 315000.00, 15, 1)

insert into Order_Details(order_id, product_id, color_id, size_id, price, discount, quantity) values (4, 7, 6, 3, 315000.00, 15, 3)

insert into Order_Details(order_id, product_id, color_id, size_id, price, discount, quantity) values (4, 8, 2, 1, 315000.00, 28, 1)

insert into Order_Details(order_id, product_id, color_id, size_id, price, discount, quantity) values (4, 8, 4, 3, 315000.00, 28, 2)

insert into Order_Details(order_id, product_id, color_id, size_id, price, discount, quantity) values (4, 9, 4, 3, 99000.00, 20, 1)



-- lan 4
insert into Orders(user_id, order_date, note, status) values (10, '2024-02-28', N'Bạn che tên sản phẩm đi giúp mình', 0)

insert into Order_Details(order_id, product_id, color_id, size_id, price, discount, quantity) values (5, 10, 3, 3, 329000.00, 68, 2)

insert into Order_Details(order_id, product_id, color_id, size_id, price, discount, quantity) values (5, 10, 6, 2, 329000.00, 68, 1)

insert into Order_Details(order_id, product_id, color_id, size_id, price, discount, quantity) values (5, 11, 2, 2, 295000.00, 57, 1)

insert into Order_Details(order_id, product_id, color_id, size_id, price, discount, quantity) values (5, 11, 5, 3, 295000.00, 57, 2)

insert into Order_Details(order_id, product_id, color_id, size_id, price, discount, quantity) values (5, 12, 1, 4, 249000.00, 46, 1)


-- lan 5
insert into Orders(user_id, order_date, note, status) values (14, '2024-03-01', N'Đặt hàng cho vui, không nhận đâu', 0)

insert into Order_Details(order_id, product_id, color_id, size_id, price, discount, quantity) values (6, 13, 5, 2, 295000.00, 21, 1)

insert into Order_Details(order_id, product_id, color_id, size_id, price, discount, quantity) values (6, 13, 6, 1, 295000.00, 21, 2)

insert into Order_Details(order_id, product_id, color_id, size_id, price, discount, quantity) values (6, 14, 1, 4, 449000.00, 33, 1)

insert into Order_Details(order_id, product_id, color_id, size_id, price, discount, quantity) values (6, 14, 5, 1, 449000.00, 33, 1)

insert into Order_Details(order_id, product_id, color_id, size_id, price, discount, quantity) values (6, 15, 2, 3, 439000.00, 4, 2)