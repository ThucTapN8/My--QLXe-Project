create database QLBDX
use QLBDX
create table Nhanxe
(
idnhanxe char(10) primary key,
Ngayvao date, 
Giovao datetime, 
biensoxe char(10) references Xe(biensoxe),
)
create table Ve
(
idve char(10) primary key,
tenve varchar(45),
manhanxe char(10) references Nhanxe(idnhanxe),
idloaive char(10) references Loaive(idloaive),
)
create table Traxe
(
idtraxe char(10) primary key,
Ngayra date,
Giora datetime,
idve char(10) references Ve(idve),
)

create table Xe
(
biensoxe char(10) primary key, 
tenxe varchar(45),
idloaixe char(10) references Loaixe(idloaixe),
idtraxe char(10) references Traxe(idtraxe),
)



