Create database DauGia
Go
use DauGia
Go


--PHAN TAO BANG 
--1. Tao bang THAMSO
Create table THAMSO
(
	IDThamSo Integer not null,
	TenThamSo nvarchar(50),
	GiaTri nvarchar(50),
	Constraint PK_IDTHAMSO Primary key(IDThamSo),
)

--2. Tao bang GIAODIEN -- DELETED

--3. Tao bang PHANQUYEN
Create Table PhanQuyen
(
	MaPhanQuyen Integer not null,
	TenQuyen nvarchar(50),
	Primary key(MaPhanQuyen),
)
--4.

Create table ChiTietPhanQuyen
(
	MaChiTietPhanQuyen Integer not null,
	MaLoaiTaiKhoan varchar(10),
	MaPhanQuyen Integer,
	Primary key(MaChiTietPhanQuyen),
)
--5. 
Create table LoaiTaiKhoan
(
	MaLoaiTaiKhoan varchar(10)not null,
	TenLoaiTaiKhoan nvarchar(50),
	primary key(MaLoaiTaiKhoan),
)
--6.
Create table TaiKhoan
(
	MaTaiKhoan Integer not null,
	TenTaiKhoan nvarchar(50),
	MatKhau varchar(50),
	MaLoaiTaiKhoan varchar(10),
	Avatar nvarchar(50),
	DiemTinCayBan float,
	DiemTinCayMua float,
	BiKhoa bit default (0),
	ThoiDiemUnlock datetime,
	BiXoa bit default (0),
	primary key (MaTaiKhoan),
)
--7. 
Create table ThongTinTaiKhoan
(
	MaTaiKhoan Integer not null,
	HoTen nvarchar(50),
	NgaySinh datetime,
	NoiSinh nvarchar(50),
	DiaChi nvarchar(50),
	SoDienThoai nvarchar(50),
	MaTheTinhDung nvarchar(50),
	GioiTinh nvarchar(10),--aaaaaa
	Email nvarchar(50),
	primary key (MaTaiKhoan),
)
--8
Create table TinhTrangSanPham
(
	MaTinhTrangSanPham Integer not null,
	TenTinhTrangSanPham nvarchar(50),
	primary key (MaTinhTrangSanPham),
)
--9
Create table LoaiSanPham
(
	MaLoaiSanPham varchar(10) not null,
	TenLoaiSanPham nvarchar(50),
	primary key (MaLoaiSanPham),
)
--10.SanPham
Create table SanPham
(
	MaSanPham varchar(10) not null,
	TenSanPham nvarchar(50),
	MaLoaiSanPham varchar(10),
	MaTaiKhoan Integer,
	GiaKhoiDiem varchar(20),
	GiaHienTai varchar(20),
	NgayDang datetime,
	NgayHetHan datetime,
	MaTinhTrangSanPham Integer,
	MoTaSanPham nvarchar(50),
	MaHinhMoTa integer,
	primary key (MaSanPham),
)

--11. Comment
Create table Comment
(
	MaComment Integer not null,
	NoiDungComment nvarchar (500),
	NgayComment datetime,
	MaTaiKhoan Integer,
	MaSanPham varchar(10),
	primary key(MaComment),
)
--12.
Create table LoaiMultimedia
(
	MaLoaiMT integer not null,
	TenLoaiMT nvarchar(50),
	Primary key (MaLoaiMT),
)
--13.
Create table Multimedia 
(
	MaMT integer not null,
	TenMT nvarchar(50),
	MaLoaiMT integer,
	DungLuong float,
	KichThuoc float,
	LinkURL nvarchar(50),
	primary key(MaMT),
)
--14. 
create table SanPham_Multimedia
(
	MaChiTietMT integer not null,
	MaSanPham varchar(10),
	MaMT integer,
	primary key(MaChiTietMT),
)
--15.
create table ChiTietDauGia
(
	MaChiTietDauGia varchar(10) not null,
	MaTaiKhoan Integer,
	GiaGiaoDich Integer,
	ThoiGianGiaoDich datetime,
	TinhTrang nvarchar(50),
	MaSanPham varchar(10),
	primary key(MaChiTietDauGia),
	
)
--16. 
create table DauGiaThanhCong
(
	MaDauGiaThanhCong varchar(10) not null,
	MaTaiKhoan Integer,
	GiaKhopLenh integer,
	MaChiTietGiaoDich varchar(10),
	Comment nvarchar(500),
	primary key(MaDauGiaThanhCong),
)

--khóa ngoại cho các bảng
--ThongTinTaiKhoan-TaiKhoan
ALTER TABLE ThongTinTaiKhoan 
ADD CONSTRAINT FK_THONGTINTAIKHOAN_TAIKHOAN
FOREIGN KEY (MaTaiKhoan)  
REFERENCES TaiKhoan(MaTaiKhoan) 

--TaiKhoan-LoaiTaiKhoan
ALTER TABLE TaiKhoan
ADD CONSTRAINT FK_TAIKHOAN_LOAITAIKHOAN
FOREIGN KEY (MaLoaiTaiKhoan)  
REFERENCES LoaiTaiKhoan(MaLoaiTaiKhoan) 

--ChiTetPhanQuyen-LoaiTaiKhoan
ALTER TABLE ChiTietPhanQuyen
ADD CONSTRAINT FK_CHITIETPHANQUYEN_LOAITAIKHOAN
FOREIGN KEY (MaLoaiTaiKhoan)  
REFERENCES LoaiTaiKhoan(MaLoaiTaiKhoan) 

--ChiTetPhanQuyen-PhanQuyen
ALTER TABLE ChiTietPhanQuyen
ADD CONSTRAINT FK_CHITIETPHANQUYEN_PHANQUYEN
FOREIGN KEY (MaPhanQuyen)  
REFERENCES PhanQuyen(MaPhanQuyen) 

--Comment-TaiKhoan
ALTER TABLE Comment
ADD CONSTRAINT FK_COMMENT_TAIKHOAN
FOREIGN KEY (MaTaiKhoan)  
REFERENCES TaiKhoan(MaTaiKhoan) 

--Comment-SanPham
ALTER TABLE Comment 
ADD CONSTRAINT FK_COMMENT_SANPHAM
FOREIGN KEY (MaSanPham)  
REFERENCES SanPham(MaSanPham) 

--SanPham-TaiKhoan
ALTER TABLE SanPham
ADD CONSTRAINT FK_SANPHAM_TAIKHOAN
FOREIGN KEY (MaTaiKhoan)  
REFERENCES TaiKhoan(MaTaiKhoan) 

--SanPham-TinhTrangSanPham
ALTER TABLE SanPham
ADD CONSTRAINT FK_SANPHAM_TINHTRANGSANPHAM
FOREIGN KEY (MaTinhTrangSanPham)  
REFERENCES TinhTrangSanPham(MaTinhTrangSanPham) 

--SanPham-LoaiSanPham
ALTER TABLE SanPham
ADD CONSTRAINT FK_SANPHAM_LOAISANPHAM
FOREIGN KEY (MaLoaiSanPham)  
REFERENCES LoaiSanPham(MaLoaiSanPham) 

--SanPham-MaHinhMoTa
ALTER TABLE SanPham
ADD CONSTRAINT FK_SANPHAM_MULTIMEDIA
FOREIGN KEY (MaHinhMoTa)
REFERENCES Multimedia(MaMT)

--SanPhamMult-SanPham
ALTER TABLE SanPham_Multimedia
ADD CONSTRAINT FK_SANPHAMMULTI_SANPHAM
FOREIGN KEY (MaSanPham)  
REFERENCES SanPham(MaSanPham) 

--Multi-LoaiMuilti
ALTER TABLE Multimedia
ADD CONSTRAINT FK_MULTIMEDIA_LOAIMULTIMEDIA
FOREIGN KEY (MaLoaiMT)  
REFERENCES LoaiMultimedia(MaLoaiMT)

--SanPhamMulti-Multi
ALTER TABLE SanPham_Multimedia
ADD CONSTRAINT FK_SANPHAMMULTI_MULTIMEDIA
FOREIGN KEY (MaMT)  
REFERENCES Multimedia(MaMT)

--DauGiaThanhCong-TaiKhoan
ALTER TABLE DauGiaThanhCong
ADD CONSTRAINT FK_DAUGIATHANHCONG_TAIKHOAN
FOREIGN KEY (MaTaiKhoan)  
REFERENCES TaiKhoan(MaTaiKhoan)

--ChiTietDauGia-SanPham
ALTER TABLE ChiTietDauGia
ADD CONSTRAINT FK_CHITIETDAUGIA_SANPHAM
FOREIGN KEY (MaSanPham)  
REFERENCES SanPham(MaSanPham)

--ChiTietDauGia-TaiKhoan
ALTER TABLE ChiTietDauGia
ADD CONSTRAINT FK_CHITIETDAUGIA_TAIKHOAN
FOREIGN KEY (MaTaiKhoan)  
REFERENCES TaiKhoan(MaTaiKhoan)

--Phat sinh tai khoan Account: vBay; Pass: Admin
