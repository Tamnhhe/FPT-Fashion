
--create database Fashion_Website_360
--go
--use fashion_website_360
--go



create table Roles (
role_id int identity,
[name] nvarchar(20) not null,
CONSTRAINT [PK_Roles] PRIMARY KEY(role_id)
)
go

create table Users (
[user_id] int identity(1, 1),
role_id int not null,
[user_name] nvarchar(50) not null unique,
[pass_word] nvarchar(50) not null,
[full_name] nvarchar(50) null,
birth_day date null,
[image] nvarchar(150) null,
phone_number nvarchar(11) null,
[address] nvarchar(200) null,
[email] nvarchar(50) null,
created_at date not null,
updated_at date null,
deleted bit not null

CONSTRAINT [PK_User] PRIMARY KEY([user_id]),
CONSTRAINT [FK_User_Role]  FOREIGN KEY (role_id) REFERENCES Roles (role_id) 
)
go

create table Wallets(
wallet_id int identity(1, 1),
[user_id] int not null,
balance DECIMAL(10, 2),
CONSTRAINT [PK_Wallets] PRIMARY KEY(wallet_id),
CONSTRAINT [FK_Wallets_User]  FOREIGN KEY ([user_id]) REFERENCES Users ([user_id]) 
)
go

create table FeedBack(
feedback_id int identity(1, 1),
[user_id] int not null,
subject_name nvarchar(50) not null,
note nvarchar(max) not null,
feedback_date date not null

CONSTRAINT [PK_FeedBack] PRIMARY KEY(feedback_id),
CONSTRAINT [FK_FeedBack_User]  FOREIGN KEY ([user_id]) REFERENCES Users ([user_id]) 
)
go

create table Category(
category_id int identity(1, 1),
category_name nvarchar(50) not null,
Desciption nvarchar(max) null,

CONSTRAINT [PK_Category] PRIMARY KEY(category_id)
)
go

create table Supperlier(
supperlier_id int identity(1, 1),
company_name nvarchar(100) not null,
phone_number nvarchar(11) not null,
county nvarchar(50) null,

CONSTRAINT [PK_Supperlier] PRIMARY KEY(supperlier_id)
)
go

create table Product(
product_id int identity(1, 1),
category_id int not null,
supperlier_id int not null,
product_name nvarchar(100) not null,
quantity_per_unit int not null,
quantity_stock int null,
quantity_sold int null,
price decimal(10, 2) not null,
discount int null,
desciption nvarchar(max) null,
created_at date not null,
updated_at date,
deleted bit not null,

CONSTRAINT [PK_Product] PRIMARY KEY(product_id),
CONSTRAINT [FK_Product_Category]  FOREIGN KEY (category_id) REFERENCES Category (category_id),
CONSTRAINT [FK_Product_Supperlier]  FOREIGN KEY (supperlier_id) REFERENCES Supperlier (supperlier_id) 
)
go

create table Colors(
color_id int identity(1, 1),
color nvarchar(20),

CONSTRAINT [PK_Color] PRIMARY KEY(color_id)
)
go


create table Size(
size_id int identity(1, 1),
size_option nvarchar(10) not null unique,

CONSTRAINT [PK_Size] PRIMARY KEY(size_id)
)

create table Product_detail(
product_id int,
color_id int,
size_id int,
quantity int not null,

CONSTRAINT [PK_Product_Detail] PRIMARY KEY(product_id, color_id, size_id),
CONSTRAINT [FK_Product_Detail_P]  FOREIGN KEY (product_id) REFERENCES Product (product_id),
CONSTRAINT [FK_Product_Detail_S]  FOREIGN KEY (size_id) REFERENCES Size (size_id), 
CONSTRAINT [FK_Product_Detail_C]  FOREIGN KEY (color_id) REFERENCES Colors (color_id) 
)


create table Galery(
galery_id int identity(1, 1),
product_id int not null,
thumbnail nvarchar(max) null,

CONSTRAINT [PK_Galery] PRIMARY KEY(galery_id),
CONSTRAINT [FK_Galery_Product]  FOREIGN KEY (product_id) REFERENCES Product (product_id) 
)
go


create table Comment(
product_id int not null,
[user_id] int not null,
content nvarchar(max) not null,
luot_edit int,
comment_date date not null,
comment_date_update date null,
rating int not null,

CONSTRAINT [PK_Comment] PRIMARY KEY(product_id, [user_id]),
CONSTRAINT [FK_Comment_Product]  FOREIGN KEY (product_id) REFERENCES Product (product_id),
CONSTRAINT [FK_Comment_User]  FOREIGN KEY ([user_id]) REFERENCES Users ([user_id]) 
)
go


create table Payment(
payment_id int identity(1, 1),
payment_name nvarchar(100)

CONSTRAINT [PK_Payment] PRIMARY KEY(payment_id)
)


create table Orders (
Order_id int identity(1,1),
[user_id] int not null,
full_name nvarchar(100) not null,
phone_number nvarchar(20) not null,
email nvarchar(50) null,
address nvarchar(200) not null,
order_date date not null,
note nvarchar(100) null,
payment_id int not null,
status int not null,
total_money decimal(10, 2) null

CONSTRAINT [PK_Order] PRIMARY KEY(Order_id),
CONSTRAINT [FK_Order_User]  FOREIGN KEY ([user_id]) REFERENCES Users ([user_id]),
CONSTRAINT [FK_Order_Payment]  FOREIGN KEY (payment_id) REFERENCES Payment (payment_id) 
)
go

create table Order_Details(
order_id int not null,
product_id int not null,
color_id int not null,
size_id int not null,
price decimal(10, 2) not null,
discount int not null,
quantity int not null,

CONSTRAINT [PK_Order_Detail] PRIMARY KEY(order_id, product_id, color_id, size_id),
CONSTRAINT [FK_Order_deltail_Product]  FOREIGN KEY (product_id) REFERENCES Product (product_id),
CONSTRAINT [FK_Order_detail_Order]  FOREIGN KEY (order_id) REFERENCES Orders (order_id), 
CONSTRAINT [FK_Order_detail_Colors]  FOREIGN KEY (color_id) REFERENCES Colors (color_id),
CONSTRAINT [FK_Order_detail_Size]  FOREIGN KEY (size_id) REFERENCES Size (size_id)
)
