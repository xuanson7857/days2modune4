CREATE DATABASE QuanLyBanHang;

use QuanLyBanHang;

CREATE TABLE Customer(
`cId`int not null primary key,
`cName` varchar(59) not null,
`cAge` int check (cAge > 0 && cAge <100)
);

insert into Customer (`cId`, `cName`, `cAge`) values (1,'Abu',8);

CREATE TABLE Orders(
`oId` int not null primary key,
`cId`int not null,
FOREIGN KEY (cId) REFERENCES Customer(cId),
`oDate` varchar(50),
`oTotalPrice` varchar(50)
);

insert into Orders (`oId`, `cId`, `oDate`, `oTotalPrice`) values (1,1,'24/01/2015',1900);

CREATE TABLE Product(
`pId`int not null primary key,
`pName` varchar(59) not null,
`pPrice` varchar(50)
);

insert into Product (`pId`, `pName`, `pPrice`) values (1,'pro1',800);

CREATE TABLE OrderDetail(
`pId`int not null,
foreign key (pId) references Product(pId),
`oId` int not null,
foreign key (oId) references Orders(oId),
`odQTY`int not null check(odQTY >0),
primary key(pId, oId)
);

insert into OrderDetail (`pId`, `oId`, `odQTY`) values (1,1,8);
