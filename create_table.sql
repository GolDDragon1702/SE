CREATE SCHEMA ProjectES;
USE ProjectES;

create table users(
	userid varchar(10) primary key,
    usernameid varchar(20) not null,
    userrole varchar(20) not null,
    userpassword varchar(50),
    username nvarchar(100),
    useraddrress nvarchar(300),
    userphone varchar(10),
    usermail varchar(200)
);

create table provider(
	providerno varchar(10) primary key,
    providername nvarchar(50),
    provideraddress nvarchar(300),
    providerphone varchar(10)
);

create table type(
	typeno varchar(10) primary key,
    typename nvarchar(200),
    owntype varchar(10),
    foreign key (owntype) references type(typeno)
);

create table product(
	productno varchar(10) primary key,
    productname nvarchar(50),
    typeno varchar(10),
    providerno varchar(10),
    quantityinstore int,
    price float,
    description nvarchar(300),
    productstate nvarchar(20),
    constraint product_fk1 foreign key (typeno) references type(typeno)
    on update cascade
	on delete cascade,
    constraint product_fk2 foreign key (providerno) references provider(providerno)
    on update cascade
	on delete cascade
);

create table bill(
	billno varchar(10) primary key,
    billdate datetime,
    billuserid varchar(10) not null,
    billtotal float,
    billusername nvarchar(200),
    billuseraddress nvarchar(300),
    billuserphone varchar(10),
    billnote nvarchar(50)
);

create table detail_bill(
	billno varchar(10) not null,
    productno varchar(10) not null,
    quantity int,
    note nvarchar(50),
    constraint db_fk1 foreign key (billno) references bill(billno)
    on update cascade
    on delete cascade,
    constraint db_fk2 foreign key (productno) references product(productno)
    on update cascade
    on delete cascade
);

create table shoppingcart(
	scid int primary key,
    scdate datetime,
    userid varchar(10),
    totalamount int,
    constraint shoppingcart_fk foreign key (userid) references users(userid)
    on update cascade
    on delete cascade
);

create table cart(
	cartid int primary key,
    scid int,
	productno varchar(10),
    quantity int,
    price int,
    constraint cart_fk1 foreign key (scid) references shoppingcart(scid)
    on update cascade
    on delete cascade,
    constraint cart_fk2 foreign key (productno) references product(productno)
    on update cascade
    on delete cascade
);

create table usual_questions(
	id int primary key,
    question nvarchar(500),
    answer nvarchar(500)
);

create table feedback(
	feedbackid int primary key,
    userid varchar(10),
    productno varchar(10),
    score int,
    comment nvarchar(300),
    constraint fb_fk1 foreign key (userid) references users(userid)
    on update cascade
    on delete cascade,
    constraint fb_fk2 foreign key (productno) references product(productno)
    on update cascade
    on delete cascade
);

create table employee(
    empid varchar(10) primary key,
    empname nvarchar(100),
    empaddress nvarchar(300),
    empdob datetime,
    empjob nvarchar(100),
    empsalary float
);
---

