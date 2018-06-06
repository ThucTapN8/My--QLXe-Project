select @@VERSION
select @@ERROR
select @@CURSOR_ROWS
select @@ROWCOUNT
--Tim trong bang NhanVien co MaPB la TC
Select *from NhanVien
where MaPB='GD'

--
Select distinct MaNV
From PhanCong
Select *from PhongBan

--In ra TenNV, MaNV o phong Nghien Cuu
Select TenNV, MaNV
from NhanVien, PhongBan
where TenPB = N'Nghien Cuu' and NhanVien.MaPB=PhongBan.MaPB

--In ra MaNV, TenNV, TenPB ma NV la truong phong
Select MaNV, TenNV, TenPB
from NhanVien, PhongBan
where MaNV=MaTP

--In ra MaNV, TenNV, TenPB tuong ung cua NhanVien
Select MaNV, TenNV, TenPB
from NhanVien as n, PhongBan as p
where n.MaPB = p.MaPB

--Phep noi trong
Select MaNV, TenNV, TenPB
from NhanVien n inner join PhongBan p
on n.MaPB = p.MaPB

--Dua ra NV sinh sau nam 1980 va la nu
Select MaNV, TenNV, NgaySinh, GioiTinh
from NhanVien
where GioiTinh = N'Nu' and year(NgaySinh) > 1980 --NgaySinh > '1980-12-31'

--Dua ra MaNV, TenNV cua nhan vien tham gia DA va tenDA
select nv.MaNV, TenNV, TenDA 
from NhanVien nv , DuAn da, PhanCong pc 
where nv.MaNV = pc.MaNV and pc.MaDA = da.MaDA

--In ra MaNV, TenNV co luong > 20tr va la nam
select MaNV, TenNV, Luong, GioiTinh
from NhanVien
where Luong >19000000 and GioiTinh = N'Nam'

--In ra MaPB, TenPB, TenDA ma phong ban phu trach
select pb.MaPB, TenPB, TenDA
from PhongBan pb, DuAn da
where pb.MaPB = da.MaPB

--In ra MaNV, TenNV, Ten than nhan, GioiTinh, moi quan he vs NV
select tn.MaNV, TenNV, Ten, tn.GioiTinh, QuanHe
from NhanVien nv, ThanNhan tn
where tn.MaNV = nv.MaNV

--In ra MaNV, TenNV, TenDA ma NV la truong phong tham gia
select MaTP, TenNV, TenDA
from NhanVien nv, PhongBan pb, DuAn da
where nv.MaNV = pb.MaTP and pb.MaPB = da.MaPB

--In ra MaNV, TenNV la truong phong
select MaNV, TenNV
from NhanVien
where MaNV in (select MaTP from PhongBan)

--In ra NV la NGS
select nv.MaNV, nv.TenNV
from NhanVien nv, NhanVien gs
where nv.MaNV = gs.MaGS

select MaNV, TenNV
from NhanVien
where MaNV in (select MaGS from NhanVien) --truy van long

--In ra MaNV, TenNV, MaDA, Sogio tham gia DuAn, sap xep gio theo thu tu giam dan
select nv.MaNV, TenNV, SoGio, MaDA
from NhanVien nv, PhanCong pc
where nv.MaNV = pc.MaNV 
order by SoGio DESC --DESC giam dan, ASC tang dan(mac dinh)

--MaNV, Hoten, Luong co gioitinh Nu, luong giam dan
select MaNV, TenNV, Luong
from NhanVien
where GioiTinh = N'Nu'
order by Luong DESC

--NV o phong Ketoan, la Nam, co luong > 10tr, dsach luong tang dan
select MaNV, TenNV, Luong, pb.TenPB
from NhanVien as nv, PhongBan as pb
where nv.MaPB = pb.MaPB and pb.MaPB = 'KT' and GioiTinh = N'Nam' and Luong > 10000000
order by Luong ASC

--MaNV, TenNV, TenPB tuong ung
select MaNV, TenNV, TenPB
from NhanVien, PhongBan
where NhanVien.MaPB = PhongBan.MaPB

--MaNV, TenNV, TenPB tuong ung va nhan vien chua thuoc PB nao
select MaNV, TenNV, TenPB
from NhanVien left join PhongBan on NhanVien.MaPB = PhongBan.MaPB

--MaNV, TenNV, TenPB tuong ung va nhan vien k la truong phong
select MaNV, TenNV, TenPB
from NhanVien left join PhongBan on MaNV = MaTP

--MaNV, TenNV thuoc phong ban co dia diem o TPHCM
select MaNV, TenNV
from NhanVien
where MaPB in (select MaPB from PhongBan where DiaDiem = 'TPHCM') --lồng phân cấp

--MaNV, TenNV la nu co luong > tat ca cac nhan vien la nam
select MaNV, TenNV, Luong
from NhanVien
where GioiTinh = N'Nu' and Luong > all(select Luong from NhanVien where GioiTinh = N'Nam') --lồng tương quan

select MaNV, TenNV
from NhanVien
where Luong >  (select Top 1 Luong							
				from NhanVien
				where GioiTinh = N'Nam'
				order by Luong DESC)

--MaNV, TenNV la nu co luong > it nhat 1 nhan vien la nam
select MaNV, TenNV, Luong
from NhanVien
where GioiTinh = N'Nu' and Luong > any(select Luong from NhanVien where GioiTinh = N'Nam')

--MaNV, TenNV, Luong, TenPB co GT = Nam
select MaNV, TenNV, Luong, TenPB
from NhanVien,(select MaPB, TenPB from PhongBan) PB
where GioiTinh = N'Nam' and NhanVien.MaPB = PB.MaPB

--MaNV, TenNV co nguoi than, tham gia du an
select MaNV, TenNV
from NhanVien
where MaNV in (select MaNV from ThanNhan where MaNV in (select MaNV from PhanCong))

select NhanVien.MaNV, TenNV
from NhanVien, ThanNhan
where NhanVien.MaNV = ThanNhan.MaNV
intersect --giao
select NhanVien.MaNV, TenNV
from NhanVien, PhanCong
where NhanVien.MaNV = PhanCong.MaNV

--MaNV, TenNV co nguoi than hoac tham gia du an
select NhanVien.MaNV, TenNV
from NhanVien, ThanNhan
where NhanVien.MaNV = ThanNhan.MaNV
union --hợp
select NhanVien.MaNV, TenNV
from NhanVien, PhanCong
where NhanVien.MaNV = PhanCong.MaNV

--MaNV, TenNV co nguoi than k tham gia du an
select NhanVien.MaNV, TenNV
from NhanVien, ThanNhan
where NhanVien.MaNV = ThanNhan.MaNV
except --trừ
select NhanVien.MaNV, TenNV
from NhanVien, PhanCong
where NhanVien.MaNV = PhanCong.MaNV

--Dem tong so ban ghi trong bang NhanVien
select Count(*)
from NhanVien

--Dem so nhan vien la nu
select Count(*)
from NhanVien
where GioiTinh = N'Nu'

--Dem tong so ban ghi trong bang chua co phong ban
select Count(*)
from NhanVien
where MaPB is NULL

--Dem so ban ghi TenNV khac NULL
select Count(TenNV)
from NhanVien

--Dem so ban ghi co gia tri Luong khac nhau va khac NULL
select Count(distinct Luong)
from NhanVien

--Dem so nhan vien trong tung phong ban
select NhanVien.MaPB, TenPB, count(MaNV) as SoNV
from NhanVien, PhongBan
where NhanVien.MaPB = PhongBan.MaPB
group by NhanVien.MaPB, TenPB

--Dua ra SUM, MIN, MAX, AVG(trung binh) Luong
select TongLuong = SUM(Luong), MAX(Luong) as MaxLuong, MIN(Luong) as MinLuong, AVG(Luong) as TBLuong 
from NhanVien

declare @LuongMax int, @LuongMin int, @TongLuong int, @LuongTB int
select @TongLuong = SUM(Luong), @LuongMax = MAX(Luong), @LuongMin = MIN(Luong), @LuongTB = AVG(Luong)
from NhanVien
where MaPB = 'KT'
print N'Lương lớn nhất là: ' + convert(varchar, @LuongMax)
print N'Lương nhỏ nhất là: ' + convert(varchar(10), @LuongMin)
print N'Tổng lương là: ' + cast(@TongLuong as varchar)
print N'Lương TB là: ' + convert(varchar, @LuongTB)

--//Dua ra NV co Luong MAX theo tung PB
select MaNV, TenNV, Luong
from NhanVien, (select TenPB, MAX(Luong) as MaxLuong 
				from NhanVien, PhongBan
				where NhanVien.MaPB = PhongBan.MaPB) PB

--//Dem so NV lm GS trong tung PhongBan
select NhanVien.MaPB, TenPB, count(MaGS) as SoGS
from NhanVien, PhongBan
where NhanVien.MaPB = PhongBan.MaPB
group by NhanVien.MaPB, TenPB

--Phong Ban co nhieu NV nhat
--create view Ten as --tao bang tam
select MaPB, COUNT(MaNV) as SoNV
from NhanVien
group by MaPB
having COUNT(MaNV)	=	(select max(SoNV) as MaxNV
						 from(select NhanVien.MaPB, count(MaNV) as SoNV
							  from NhanVien 
							  group by NhanVien.MaPB) soNV)

select top 1 with ties MaPB, count(MaNV) as SoNV
from NhanVien
group by MaPB
order by SoNV desc

--Tong so gio lm duan cua tung NV
select NhanVien.MaNV, TenNV, sum(SoGio) TongGio
from NhanVien, PhanCong
where NhanVien.MaNV = PhanCong.MaNV
group by NhanVien.MaNV, TenNV

--Tong so gio cua tung duan
select DuAn.MaDA, TenDA, sum(SoGio) TongGio
from DuAn, PhanCong
where DuAn.MaDA = PhanCong.MaDA
group by DuAn.MaDA, TenDA

--Phong Ban co >=9 NV
select MaPB, COUNT(MaNV) as SoNV
from NhanVien
group by MaPB
having COUNT(MaNV) >= 9

--Dua ra PB phu trach >=2 du an
select MaPB, COUNT(MaDA) as SoDA
from DuAn
group by MaPB
having COUNT(MaDA) >= 2

--Dem so Than nhan cua truong phong
select MaTP, TenNV as TenTP, count(Ten) as SoTN
from  PhongBan, NhanVien, ThanNhan
where NhanVien.MaNV = MaTP and MaTP = ThanNhan.MaNV
group by MaTP, TenNV

--Dem so Than Nhan cua NV co Ten la '...'
select NhanVien.MaNV, count(Ten) as SoTN
from NhanVien, ThanNhan
where TenNV = N'Tạ Quỳnh Anh' and NhanVien.MaNV = ThanNhan.MaNV 
group by NhanVien.MaNV 

--Tang 500k Luong cho tat ca cac nhanvien
update NhanVien
set Luong = Luong +500000

--Tang 1000k cho NV lm GS
update NhanVien
set Luong = Luong +1000000
where MaNV in (select MaGS from NhanVien)

--Tang 1500k cho NV lm TP
update NhanVien
set Luong = Luong +1500000
where MaNV in  (select MaNV
				from NhanVien, PhongBan
				where NhanVien.MaNV = PhongBan.MaTP)

--Dùng lệnh thêm trường tổng số NV kiểu int vào bảng PB
Alter table PhongBan 
Add TongNV int

/*Cập nhật giá trị cho trường tổng số NV trong bảng PB 
= số lượng NV tương ứng trong bảng NV*/
update PhongBan
set TongNV = 0 

update PhongBan
set TongNV = (select count (MaNV)
				from NhanVien
				group by MaPB
				having MaPB = PhongBan.MaPB)

select *From PhongBan --view

--Đếm số dự án theo từng phòng ban( mỗi phòng ban có bao nhiêu dự án)
select Count(MaDA) SoDuAn,TenPB
From DuAn,PhongBan
where DuAn.MaPB = PhongBan.MaPB
Group by TenPB

--Đếm số dự án mà nhân viên tham gia theo từng phòng ban
select PhongBan.TenPB, PhanCong.MaNV, count(DuAn.MaDA) SoDuAn
from DuAn, PhanCong, PhongBan 
where DuAn.MaDA = PhanCong.MaDA and PhongBan.MaPB = DuAn.MaPB 
group by  PhanCong.MaNV, PhongBan.TenPB

--Tăng 500k cho những nhân viên nào 2 thân nhân trở lên
update NhanVien
set Luong = Luong +500000
where MaNV in  (select ThanNhan.MaNV
				from ThanNhan
				group by ThanNhan.MaNV
				having COUNT(MaNV) >= 2)

update NhanVien
set Luong = Luong +500000
where exists	(select *
				from ThanNhan 
				group by MaNV 
				having count(Ten) >=2)

--Đưa ra các nhân viên giám sát từ 3 người trở lên
select MaNV, TenNV
from NhanVien
where MaNV in	(select MaGS from NhanVien) and	exists (select * 
														from NhanVien 
														group by MaGS 
														having count(MaNV) >5)
--Đưa ra nhân viên có người thân 
Select NhanVien.MaNV, TenNV
From NhanVien, ThanNhan
where NhanVien.MaNV = ThanNhan.MaNV
 
Select MaNV, TenNV
From NhanVien
where MaNV in (select MaNV from ThanNhan)
--Tạo thủ tục
CREATE PROC THEMPB(@Ma char(10),@Ten nvarchar(50))
as
begin
insert into PhongBan(MaPB,TenPB)
values (@Ma,@Ten)
end

exec THEMPB 'PB51','Gau Gau'
EXEC THEMPB 'PB53','Meo Meo'
THEMPB @Ten = 'Con Ga', @Ma = 'PB54'

-- them du an , cho tat ca cac nhan vien tham gia du an
create proc duanday(@MADA CHAR(15) ,@TENDA NVARCHAR(50))
AS
BEGIN
INSERT INTO DUAN(MADA,TENDA)
VALUES(@MADA,@TENDA)
END
create proc duanday(@MADA CHAR(15) ,@TENDA NVARCHAR(50),@PB01 CHAR(15))
AS
BEGIN
INSERT INTO PHANCONG(MANV,MADA,MAPB)
SELECT MANV, @MADA
FROM NHANVIEN
WHERE MAPB = @PB01
END
duanday 'da03' , 'hihi'
--exec duanday 'da03' , 'hihi'
--duanday @TENDA = 'hihi' , @MADA = 'da03'
--tao thu tuc than nhan
CREATE PROC THEMDA(@MADACHAR(15),@TENDA NVARCHAR(30), @TENPB NVARCHAR(30))
AS
BEGIN
-- sua thu tuc : alter proc
-- Xoa than nhan cua nhan vien co ho ten :

alter PROC deleteThanNhan(@NameTN nvarchar(50))
as begin
delete  from THANNHAN
where @NameTN = TEN
end
--
alter PROC deleteThanNhan(@NameTN nvarchar(50))
as begin
delete  from THANNHAN
where @NameTN = TEN
end
delete ThanNhan'Nguyen dinh duc'
--
alter PROC delete ThanNhan(@NameTN nvarchar(30))
as begin
delete THANNHAN where TEN =@NameTN and MANV in (Select MaNV from NhanVien)
end
delete ThanNhan 'Nhat dep trai'

--xoa da co ten
create proc XOADA(@MADA CHAR(15))
as
BEGIN
DELETE DUAN
FROM DUAN
WHERE MADA=@MADA 
END
XOADA 'DA03'
--CHO TAT CA CAC NHAN VIEN THAM GIA VAO DU AN 
CREATE PROC THEMDA(@MAD CHAR @TEN NVARCHAR(50)@MAPB1 CHAR(10) ) 
AS
INSERT INTO DUAN( MA DA, TENPB,MAPB) 
VALUES(@MA,@TEN,@MAPB1)
INSERT INTO PHANCONG( MANV,MADA) 
SELECT MANV,@MADA
FROM NHANVIEN 
WHERE MAPB = @MAPB1 
END 


-- TAO MOT THU TUC THEM THAN NHAN CHO MOT NHAN VIEN
CREATE PROC THEMTN(@MANV CHAR @HOTEN NVARCHAR (50) ) @NSINH DATE @GT CHAR(3))
BEGIN 
INSERT INTO THANNHAN(TENTN,NSINH,GT,MANV)
VALUES (@TENTN @NSINH @GT @MANV)
END 

-- TAO MOT THU TUC XOA DI MOT DU AN 
CREATE PROC XOADA(@MADA CHAR(15))
as
BEGIN 
DELETE DUAN 
WHERE MADA = @MADA
END 
XOADA 'DA01'

-----Tạo thủ tục sửa đổi thông tin cho 1 dự án k sửa mã
CREATE PROC SUADA (@Ma char(10),@Ten nvarchar(50), @MaP char(10))
as
BEGIN
UPDATE DuAn
Set TenDA = @Ten, MaPB = @MaP
where MaDA = @Ma
END


--Tạo thủ tục thêm thân nhân cho nhân viên có mã tùy chọn
CREATE PROC THEMTN (@Manv char(10),@ten nvarchar(50),@NS date,@GT nchar(10),@QH nvarchar(50))
as
begin
DECLARE @MANV
SELECT @MANV=MANV
FROM THANNHAN
WHERE MANV
insert into ThanNhan(Ten,NgaySinh,GioiTinh,QuanHe,MaNV) 
values (@Ten,@NS,@GT,@QH,@Ma)
end


--Tạo thủ tục thêm 1 dự án cho 1 phòng ban nào đó có tên là ... phụ trách
CREATE PROC THEMDAn (@TenPB nvarchar(50),@Ten nvarchar(50),@Ma char(10))
AS
BEGIN
DECLARE @MaP char(10) 
Select @MaP = MaPB
from PhongBan
where TenPB = @TenPB
INSERT INTO DuAn(MaDA,TenDA,MaPB)
 values (@TenPB,@Ma,@Ten)
END

--Tạo thủ tục xóa thân nhân của 1 nhân viên có tên là ...
alter PROC XOATN (@TenNV nvarchar(50))
AS 
BEGIN
DELETE From ThanNhan
where MaNV in  (Select MaNV 
				From NhanVien
				Where TenNV = @TenNV) 
END
 exec XOATN 'AN'
-- function :cu phap
--BT 1: Viết hàm tính tổng số nhanvien trong phongban.

create function sumNV1() 
returns int
manv sql data
begin
    declare tong int default 0;
    select sum( film_id ) into tong
    from NHANVIEN;

    return tong;
end 
-- dua ra nhan vien o phong ban có ten
ALTER proc innv( @ten nvarchar(30))
AS
BEGIN
SELECT NV.MANV, NV.HOTENNV, TENPB 
FROM NHANVIEN NV, PHONGBAN PB
WHERE NV.MAPB=PB.MAPB AND PB.TENPB = @ten

--funtion 
CREATE function thongkenv(@tenpb nvarchar(30))
returns table
as
return(select TENPB, NV.MANV 
        FROM PHONGBAN PB, NHANVIEN NV 
        WHERE PB.MAPB = NV.MAPB AND PB.TENPB=@tenpb)
--DUA RA DU AN Ở PB CO TEN LÀ GÌ CHO PT
CREATE FUNCTION THONGKEDA( @TENPB NVARCHAR(30))
RETURNS TABLE
AS
RETURN(SELECT TENPB, MADA FROM PHANCONG PC , PHONGBAN PB
WHERE PC.MAPB = PB.MAPB AND TENPB=@TENPB)-

-- DUA RA LIST NV , NẾU TENPB K TON TAI THI DUA RA NV TOÀN BỘ CTY
CREATE FUNCTION db.LIST(@TENPB CHAR(15))
RETURNS @THONGKE TABLE
( MAPB CHAR(15),
TONGNV INT
--TENPB NVARCHAR(30),
--MANV CHAR(25)
)
AS
BEGIN
DECLARE @DEM INT
SELECT @DEM= COUNT(*) 
FROM PHONGBAN WHERE TENPB=@TENPB
IF(@TENPB ='') OR(@TENPB IS NULL) OR @DEM =0
INSERT INTO @THONGKE
SELECT MAPB, COUNT(MANV) 
FROM NHANVIEN 
GROUP BY MAPB
ESLE 
INSERT INTO @THONGKE
SELECT MAPB, COUNT(MANV)
FROM NHANVIEN
WHERE MAPB IN (SELECT MAPB FROM PHONGBAN WHERE TENPB=@TENPB)
END


--TAO HAM TK SL DU AN DO 1 NV LÀ GI DO
CREATE FUNCTION LIST(@manv CHAR(15))
RETURNS @THONGKE TABLE
( 
MANV CHAR(15),
HOTENNV NVARCHAR(30),
SODA INT)
AS
BEGIN
DECLARE @DEM INT
SELECT  @DEM=COUNT(*)
FROM PHANCONG 
WHERE MANV=@MANV
IF(@DEM=0)
INSERT INTO @THONGKE
SELECT NV.MANV, NV.HOTENNV, COUNT(PC.MADA)
FROM NHANVIEN NV , PHANCONG PC
WHERE NV.MANV= PC.MANV
GROUP BY NV.MANV, NV.HOTENNV
ELSE

INSERT INTO @THONGKE
SELECT NV.MANV,NV.HOTENNV, COUNT(PC.MADA)
FROM NHANVIEN NV, PHANCONG PC
WHERE NV.MANV=PC.MANV AND NV.MANV = @MANV
GROUP BY NV.MANV,NV.HOTENNV
RETURN
END
-- TRIGGER --VỚI UPDATE :DATA CŨ LƯU VÀO DELETED CÒN BẢN MỚI LƯU VÀO INSERTED 
alter TRIGGER TRG_THEMNV ON NHANVIEN
FOR INSERT
AS
DECLARE @MA CHAR(15)
BEGIN
SELECT @MA = MANV FROM INSERTED
PRINT ' MA NV VUA  THEM LA'+@MA
END
INSERT INTO NHANVIEN(MANV)
VALUES ('NV03')

DISABLE TRIGGER TRG_THEMNV ON NHANVIEN

--TẠO TRIGGER VÀ XOA BỎ 1 A NV 
ALTER TRIGGER TRG_XOANV ON NHANVIEN
FOR DELETE 
AS
DECLARE @MA CHAR(15)
BEGIN 
SELECT @MA = MANV FROM DELETED
PRINT ' MA NV VUA XOA LA'+@MA
END
DELETE FROM NHANVIEN
 WHERE MANV= 'NV03'
 -- tao trigger update nv
 ALTER TRIGGER KTRA_NV ON NHANVIEN
 FOR UPDATE
 AS 
 DECLARE @MA CHAR(15)
 BEGIN 
 SELECT @MA = MANV FROM DELETED
 IF UPDATE(MANV)
  PRINT' MANV UPDATED'+@MA
  END
-- THEM DA 
create TRIGGER TRG_THEMDA ON DUAN
FOR INSERT
AS
DECLARE @MA CHAR(15)
BEGIN
SELECT @MA=MADA FROM INSERTED
PRINT ' DU AN VUA THEM LA' +@MA
END
INSERT INTO DUAN(MADA)
VALUES ('da00')
-- xoa da cho nv co manv 
create trigger trg_xoada on DUAN
for delete
as
declare @ma char(15)
begin
select @ma= MADA from deleted
print ' da dc xoa la' +@ma
end
delete from DUAN
where MADA in( select MADA from PHANCONG )


 -- XOA NV , XOA THONG TIN LQ ĐẾN BẢNG CON, UPDATE VỀ NULL CHO NHUWNXG BẢNG LQ
ALTER TRIGGER trg_delnhanvien
ON NHANVIEN
INSTEAD OF DELETE
AS
DECLARE @MA CHAR(10)
BEGIN 
SELECT  @MA = MANV FROM DELETED
DELETE FROM PHANCONG WHERE MANV=@MA
DELETE FROM THANNHAN WHERE MANV=@MA
DELETE FROM NHANVIEN WHERE MANV=@MA
UPDATE NHANVIEN SET MAGS= NULL WHERE MAGS=@MA
UPDATE PHONGBAN SET MATP = NULL WHERE MATP = @MA
END
DELETE FROM NHANVIEN WHERE MANV = 'NV03'

ALTER TABLE PHONGBAN ADD  TONGSONV INT


 -- TU DONG CAP NHAT SO NV CỦA PB
 ALTER TRIGGER UPDATE_SUM ON PHONGBAN
 FOR UPDATE AS
 IF UPDATE (TONGSONV)
 BEGIN
 DECLARE @DEM INT,
  @TONGSONV INT,
  @MA CHAR(10)
  SET @MA = (SELECT MAPB FROM PHONGBAN)
  SET @DEM =( SELECT COUNT(NV.MANV) FROM NHANVIEN NV , PHONGBAN PB WHERE NV.MAPB=PB.MAPB)
  SET @TONGSONV = (SELECT TONGSONV FROM PHONGBAN)
  IF(@DEM != @TONGSONV)
  BEGIN UPDATE PHONGBAN SET TONGSONV = @DEM WHERE MAPB=@MA END
   END
  INSERT INTO NHANVIEN(MANV,MAPB) VALUES ('MA07', '001')


  -- DEM SO NV TRONG TUNG PB
  SELECT SONV= COUNT(MANV), PHONGBAN.MAPB FROM NHANVIEN , PHONGBAN WHERE NHANVIEN.MAPB = PHONGBAN.MAPB
  GROUP BY PHONGBAN.MAPB
  -- sử dụng cho insert
alter trigger insert_add_sonv
on NhanVien
for insert
as
begin
declare @nvinsert int 
set @nvinsert = (select count(MaNV) from inserted , PhongBan
where inserted.MaPB=PhongBan.MaPB
group by PhongBan.MaPB
)

update PhongBan
set TongSoNV = TongSoNV + @nvinsert
from inserted, PhongBan
where PhongBan.MaPB=inserted.MaPB
print'da update'
end
-- sử dụng cho delete
alter trigger insert_delete_sonv
on NhanVien
for delete
as
begin
declare @nvdelete int 
set @nvdelete = (select count(MaNV) from deleted , PhongBan
where deleted.MaPB=PhongBan.MaPB
group by PhongBan.MaPB
)

update PhongBan
set TongSoNV = TongSoNV - @nvdelete
from deleted, PhongBan
where PhongBan.MaPB=deleted.MaPB
print'da update'
end
-- sử dụng cho update
alter trigger auto_update_sovn
on NhanVien
for update
as
begin
declare @dataafter int , @databefore int
set @dataafter = (select count(MaNV) from deleted , PhongBan
where deleted.MaPB=PhongBan.MaPB
group by PhongBan.MaPB
)
set @databefore = (select count(MaNV) from inserted , PhongBan
where inserted.MaPB=PhongBan.MaPB
group by PhongBan.MaPB
)
if update(MaPB)
begin
update PhongBan
set TongSoNV=(select count(MaNV) from NhanVien
group by MaPB
having MaPB=PhongBan.MaPB)
update PhongBan
set TongSoNV=((TongSoNV-@dataafter)+@databefore)
from PhongBan,inserted,deleted
where PhongBan.MaPB=deleted.MaPB and PhongBan.MaPB=inserted.MaPB
end
print'done'
end
--test--
insert into NhanVien(MaNV,MaPB)values('hihi',1)
delete from NhanVien where MaNV='hihi'

update NhanVien 
set MaPB=NULL
where MaNV='NV08'


update PhongBan
set TongSoNV=(select count(MaNV) from NhanVien
group by MaPB
having MaPB=PhongBan.MaPB)

-- con trỏ
create table danhsach(sobd nchar(10),manv nchar(10), hoten nvarchar(50), ngaysinh datetime) 
declare @manv nchar(10), @hoten nvarchar(50),@ns datetime,@i int 
set @i=1
 DECLARE cur_tro CURSOR FORWARD_ONLY
 FOR 
     SELECT manv,hotennv,ngaysinh from nhanvien 
 OPEN cur_tro 
 WHILE 0=0
-- @@FETCH_STATUS=0 
 BEGIN 
 FETCH NEXT FROM cur_tro INTO @ma,@ten,@ns
 IF @@FETCH_STATUS<>0 
 BREAK
 insert into danhsach  values('SBD'+convert(nchar(7),@i),@ma,@ten,@ns) 
 set @i=@i+1 
 end
 CLOSE cur_tro DEALLOCATE cur_tro
 end
 -- tong so da 
 DECLARE @ma char(10),@tsg
  int DECLARE tro CURSOR FORWARD_ONLY 
  FOR
      Select mada,sum(sogio) 
      From Phancong 
     Group by mada 
  OPEN tro 
  FETCH FIRST FROM tro  @ma , @tsg 
  WHILE @@FETCH_STATUS=0 
     BEGIN update duan    
	 set tongsogio =@tsg    
	 where mada=@ma 
	 Print 'Đang cập nhật mã dự án '+@ma 
     FETCH NEXT 
	 FROM tro  
	 INTO @ma,@tsg 
	 END

	 -- lay ra nv có luong lon nhat trong tung pb
	 
	 select manv, hotennv ,luong, tenpb
	 from NHANVIEN nv, PHONGBAN pb,
	 ( select mapb , max(luong) luong_max 
	    from NHANVIEN 
		group by MAPB) as b 
	 where nv.mapb= pb.mapb 
	      and b.mapb = pb.mapb
		  and luong = luong_max
-- lay ra nv có pb
select manv , hotennv,tenpb
from NHANVIEN nv inner join PHONGBAN pb
on  nv.MAPB = pb.MAPB
--lay ra nv có pb và cac nv chưa có pb
select manv , hotennv, tenpb
from NHANVIEN nv right join PHONGBAN pb
on nv.MAPB = pb.MAPB
