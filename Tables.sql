CREATE SCHEMA ProjectES;
USE ProjectES;

create table account(
	accname varchar(20) primary key,
    accrole varchar(20),
    accpassword varchar(50)
);

create table customer(
	cusid varchar(10) primary key,
    accname varchar(20),
    cusname nvarchar(100),
    cusaddrress nvarchar(300),
    cusphone varchar(10),
    cusmail varchar(200),
    foreign key (accname) references account(accname)
    on update cascade
    on delete cascade
);

create table employee(
    empid varchar(10) primary key,
    accname varchar(10),
    empname nvarchar(100),
    empaddress nvarchar(300),
    empphone varchar(10),
    empdob datetime,
    empjob nvarchar(100),
    empsalary float,
    foreign key (accname) references account(accname)
    on update cascade
    on delete cascade
);

create table admin(
    adid varchar(10) primary key,
    accname varchar(10),
    adname nvarchar(100),
    adphone varchar(10),
    foreign key (accname) references account(accname)
    on update cascade
    on delete cascade
);

create table provider(
	pvdno varchar(10) primary key,
    pvdname nvarchar(50),
    pvdaddress nvarchar(300),
    pvdphone varchar(10)
);

create table type(
	typeno varchar(10) primary key,
    typename nvarchar(200),
    owntype varchar(10),
    foreign key (owntype) references type(typeno)
);

create table product(
	pdtno varchar(10) primary key,
    pdtname nvarchar(50),
    typeno varchar(10),
    pvdno varchar(10),
    quantityinstore int,
    cost float, -- giá gốc sản phẩm
    description nvarchar(300),
    pdtstate nvarchar(20),
    constraint product_fk1 foreign key (typeno) references type(typeno)
    on update cascade
	on delete cascade,
    constraint product_fk2 foreign key (pvdno) references provider(pvdno)
    on update cascade
	on delete cascade
);

create table bill(
	billno varchar(10) primary key,
    empid varchar(10),
    billdate datetime,
    billtotal float,
    cusid varchar(10) not null,
    recepname nvarchar(200),
    recepaddress nvarchar(300),
    recepphone varchar(10),
    note nvarchar(50),
    status nvarchar(50),
    foreign key (empid) references employee(empid)
    on update cascade
    on delete cascade,
    foreign key (cusid) references customer(cusid)
    on update cascade
    on delete cascade
);

create table detailbill(
	billno varchar(10) not null,
    pdtno varchar(10) not null,
    quantity int,
    price float,
    constraint db_fk1 foreign key (billno) references bill(billno)
    on update cascade
    on delete cascade,
    constraint db_fk2 foreign key (pdtno) references product(pdtno)
    on update cascade
    on delete cascade
);

create table cart(
	cartid int primary key,
    cusid varchar(10),
    totalamount int,
    foreign key (cusid) references customer(cusid)
    on update cascade
    on delete cascade
);

create table detailcart(
	cartid int,
	pdtno varchar(10),
    quantity int,
    price float, -- giá bán
    constraint cart_fk1 foreign key (cartid) references cart(cartid)
    on update cascade
    on delete cascade,
    constraint cart_fk2 foreign key (pdtno) references product(pdtno)
    on update cascade
    on delete cascade
);

create table usual_questions(
	id int primary key,
    adid varchar(10),
    question nvarchar(500),
    answer nvarchar(500),
    foreign key (adid) references admin(adid)
);

create table feedback(
	feedbackid int primary key,
    cusid varchar(10),
    pdtno varchar(10),
    score int,
    comment nvarchar(300),
    constraint fb_fk1 foreign key (cusid) references customer(cusid)
    on update cascade
    on delete cascade,
    constraint fb_fk2 foreign key (pdtno) references product(pdtno)
    on update cascade
    on delete cascade
);
