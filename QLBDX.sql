use QLBDX
create table Nhanvien 
(
idnv char(10) primary key,
tennv nvarchar(50),
ngaysinh datetime,
diachi nvarchar(50),
)

create table Loaive 
(
idloaive char(10) primary key,
tenve varchar(45),
)

create table Xe 
(
biensoxe char(10) primary key ,
tenxe varchar(45),
idloaive char(10) references Loaive(idloaive),
giovao datetime,
ngayvao date,
giora datetime, 
ngayra date,
idnv char(10) references Nhanvien(idnv),
)



create table ChitietVe
(
idve char(10) primary key,
tenve varchar(45),
idloaive char(10) references Loaive(idloaive),
trangthai nvarchar(50),
biensoxe char(10) references Xe(biensoxe),
)
