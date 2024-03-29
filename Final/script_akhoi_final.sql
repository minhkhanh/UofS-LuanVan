USE [DauGia]
GO
/****** Object:  Role [aspnet_Membership_BasicAccess]    Script Date: 06/19/2011 06:53:46 ******/
CREATE ROLE [aspnet_Membership_BasicAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Membership_FullAccess]    Script Date: 06/19/2011 06:53:46 ******/
CREATE ROLE [aspnet_Membership_FullAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Membership_ReportingAccess]    Script Date: 06/19/2011 06:53:46 ******/
CREATE ROLE [aspnet_Membership_ReportingAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Personalization_BasicAccess]    Script Date: 06/19/2011 06:53:46 ******/
CREATE ROLE [aspnet_Personalization_BasicAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Personalization_FullAccess]    Script Date: 06/19/2011 06:53:46 ******/
CREATE ROLE [aspnet_Personalization_FullAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Personalization_ReportingAccess]    Script Date: 06/19/2011 06:53:46 ******/
CREATE ROLE [aspnet_Personalization_ReportingAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Profile_BasicAccess]    Script Date: 06/19/2011 06:53:46 ******/
CREATE ROLE [aspnet_Profile_BasicAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Profile_FullAccess]    Script Date: 06/19/2011 06:53:46 ******/
CREATE ROLE [aspnet_Profile_FullAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Profile_ReportingAccess]    Script Date: 06/19/2011 06:53:46 ******/
CREATE ROLE [aspnet_Profile_ReportingAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Roles_BasicAccess]    Script Date: 06/19/2011 06:53:46 ******/
CREATE ROLE [aspnet_Roles_BasicAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Roles_FullAccess]    Script Date: 06/19/2011 06:53:46 ******/
CREATE ROLE [aspnet_Roles_FullAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Roles_ReportingAccess]    Script Date: 06/19/2011 06:53:46 ******/
CREATE ROLE [aspnet_Roles_ReportingAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_WebEvent_FullAccess]    Script Date: 06/19/2011 06:53:46 ******/
CREATE ROLE [aspnet_WebEvent_FullAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Schema [aspnet_Membership_BasicAccess]    Script Date: 06/19/2011 06:53:39 ******/
CREATE SCHEMA [aspnet_Membership_BasicAccess] AUTHORIZATION [aspnet_Membership_BasicAccess]
GO
/****** Object:  Schema [aspnet_Membership_FullAccess]    Script Date: 06/19/2011 06:53:39 ******/
CREATE SCHEMA [aspnet_Membership_FullAccess] AUTHORIZATION [aspnet_Membership_FullAccess]
GO
/****** Object:  Schema [aspnet_Membership_ReportingAccess]    Script Date: 06/19/2011 06:53:39 ******/
CREATE SCHEMA [aspnet_Membership_ReportingAccess] AUTHORIZATION [aspnet_Membership_ReportingAccess]
GO
/****** Object:  Schema [aspnet_Personalization_BasicAccess]    Script Date: 06/19/2011 06:53:39 ******/
CREATE SCHEMA [aspnet_Personalization_BasicAccess] AUTHORIZATION [aspnet_Personalization_BasicAccess]
GO
/****** Object:  Schema [aspnet_Personalization_FullAccess]    Script Date: 06/19/2011 06:53:39 ******/
CREATE SCHEMA [aspnet_Personalization_FullAccess] AUTHORIZATION [aspnet_Personalization_FullAccess]
GO
/****** Object:  Schema [aspnet_Personalization_ReportingAccess]    Script Date: 06/19/2011 06:53:39 ******/
CREATE SCHEMA [aspnet_Personalization_ReportingAccess] AUTHORIZATION [aspnet_Personalization_ReportingAccess]
GO
/****** Object:  Schema [aspnet_Profile_BasicAccess]    Script Date: 06/19/2011 06:53:39 ******/
CREATE SCHEMA [aspnet_Profile_BasicAccess] AUTHORIZATION [aspnet_Profile_BasicAccess]
GO
/****** Object:  Schema [aspnet_Profile_FullAccess]    Script Date: 06/19/2011 06:53:39 ******/
CREATE SCHEMA [aspnet_Profile_FullAccess] AUTHORIZATION [aspnet_Profile_FullAccess]
GO
/****** Object:  Schema [aspnet_Profile_ReportingAccess]    Script Date: 06/19/2011 06:53:39 ******/
CREATE SCHEMA [aspnet_Profile_ReportingAccess] AUTHORIZATION [aspnet_Profile_ReportingAccess]
GO
/****** Object:  Schema [aspnet_Roles_BasicAccess]    Script Date: 06/19/2011 06:53:39 ******/
CREATE SCHEMA [aspnet_Roles_BasicAccess] AUTHORIZATION [aspnet_Roles_BasicAccess]
GO
/****** Object:  Schema [aspnet_Roles_FullAccess]    Script Date: 06/19/2011 06:53:39 ******/
CREATE SCHEMA [aspnet_Roles_FullAccess] AUTHORIZATION [aspnet_Roles_FullAccess]
GO
/****** Object:  Schema [aspnet_Roles_ReportingAccess]    Script Date: 06/19/2011 06:53:39 ******/
CREATE SCHEMA [aspnet_Roles_ReportingAccess] AUTHORIZATION [aspnet_Roles_ReportingAccess]
GO
/****** Object:  Schema [aspnet_WebEvent_FullAccess]    Script Date: 06/19/2011 06:53:39 ******/
CREATE SCHEMA [aspnet_WebEvent_FullAccess] AUTHORIZATION [aspnet_WebEvent_FullAccess]
GO
/****** Object:  Table [dbo].[aspnet_Applications]    Script Date: 06/19/2011 06:53:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Applications](
	[ApplicationName] [nvarchar](256) COLLATE Vietnamese_CI_AS NOT NULL,
	[LoweredApplicationName] [nvarchar](256) COLLATE Vietnamese_CI_AS NOT NULL,
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[Description] [nvarchar](256) COLLATE Vietnamese_CI_AS NULL,
PRIMARY KEY NONCLUSTERED 
(
	[ApplicationId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[LoweredApplicationName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[ApplicationName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE CLUSTERED INDEX [aspnet_Applications_Index] ON [dbo].[aspnet_Applications] 
(
	[LoweredApplicationName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
INSERT [dbo].[aspnet_Applications] ([ApplicationName], [LoweredApplicationName], [ApplicationId], [Description]) VALUES (N'/', N'/', N'53471200-a967-4f75-9fab-29190aa0db5a', NULL)
/****** Object:  Table [dbo].[aspnet_WebEvent_Events]    Script Date: 06/19/2011 06:53:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[aspnet_WebEvent_Events](
	[EventId] [char](32) COLLATE Vietnamese_CI_AS NOT NULL,
	[EventTimeUtc] [datetime] NOT NULL,
	[EventTime] [datetime] NOT NULL,
	[EventType] [nvarchar](256) COLLATE Vietnamese_CI_AS NOT NULL,
	[EventSequence] [decimal](19, 0) NOT NULL,
	[EventOccurrence] [decimal](19, 0) NOT NULL,
	[EventCode] [int] NOT NULL,
	[EventDetailCode] [int] NOT NULL,
	[Message] [nvarchar](1024) COLLATE Vietnamese_CI_AS NULL,
	[ApplicationPath] [nvarchar](256) COLLATE Vietnamese_CI_AS NULL,
	[ApplicationVirtualPath] [nvarchar](256) COLLATE Vietnamese_CI_AS NULL,
	[MachineName] [nvarchar](256) COLLATE Vietnamese_CI_AS NOT NULL,
	[RequestUrl] [nvarchar](1024) COLLATE Vietnamese_CI_AS NULL,
	[ExceptionType] [nvarchar](256) COLLATE Vietnamese_CI_AS NULL,
	[Details] [ntext] COLLATE Vietnamese_CI_AS NULL,
PRIMARY KEY CLUSTERED 
(
	[EventId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Setup_RestorePermissions]    Script Date: 06/19/2011 06:53:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Setup_RestorePermissions]
    @name   sysname
AS
BEGIN
    DECLARE @object sysname
    DECLARE @protectType char(10)
    DECLARE @action varchar(60)
    DECLARE @grantee sysname
    DECLARE @cmd nvarchar(500)
    DECLARE c1 cursor FORWARD_ONLY FOR
        SELECT Object, ProtectType, [Action], Grantee FROM #aspnet_Permissions where Object = @name

    OPEN c1

    FETCH c1 INTO @object, @protectType, @action, @grantee
    WHILE (@@fetch_status = 0)
    BEGIN
        SET @cmd = @protectType + ' ' + @action + ' on ' + @object + ' TO [' + @grantee + ']'
        EXEC (@cmd)
        FETCH c1 INTO @object, @protectType, @action, @grantee
    END

    CLOSE c1
    DEALLOCATE c1
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Setup_RemoveAllRoleMembers]    Script Date: 06/19/2011 06:53:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Setup_RemoveAllRoleMembers]
    @name   sysname
AS
BEGIN
    CREATE TABLE #aspnet_RoleMembers
    (
        Group_name      sysname,
        Group_id        smallint,
        Users_in_group  sysname,
        User_id         smallint
    )

    INSERT INTO #aspnet_RoleMembers
    EXEC sp_helpuser @name

    DECLARE @user_id smallint
    DECLARE @cmd nvarchar(500)
    DECLARE c1 cursor FORWARD_ONLY FOR
        SELECT User_id FROM #aspnet_RoleMembers

    OPEN c1

    FETCH c1 INTO @user_id
    WHILE (@@fetch_status = 0)
    BEGIN
        SET @cmd = 'EXEC sp_droprolemember ' + '''' + @name + ''', ''' + USER_NAME(@user_id) + ''''
        EXEC (@cmd)
        FETCH c1 INTO @user_id
    END

    CLOSE c1
    DEALLOCATE c1
END
GO
/****** Object:  Table [dbo].[aspnet_SchemaVersions]    Script Date: 06/19/2011 06:53:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_SchemaVersions](
	[Feature] [nvarchar](128) COLLATE Vietnamese_CI_AS NOT NULL,
	[CompatibleSchemaVersion] [nvarchar](128) COLLATE Vietnamese_CI_AS NOT NULL,
	[IsCurrentVersion] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Feature] ASC,
	[CompatibleSchemaVersion] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'common', N'1', 1)
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'health monitoring', N'1', 1)
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'membership', N'1', 1)
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'personalization', N'1', 1)
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'profile', N'1', 1)
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'role manager', N'1', 1)
/****** Object:  Table [dbo].[LoaiTaiKhoan]    Script Date: 06/19/2011 06:53:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiTaiKhoan](
	[MaLoaiTaiKhoan] [int] IDENTITY(1,1) NOT NULL,
	[TenLoaiTaiKhoan] [nvarchar](50) COLLATE Vietnamese_CI_AS NULL,
 CONSTRAINT [PK__LoaiTaiKhoan__0425A276] PRIMARY KEY CLUSTERED 
(
	[MaLoaiTaiKhoan] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiSanPham]    Script Date: 06/19/2011 06:53:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSanPham](
	[MaLoaiSanPham] [int] IDENTITY(1,1) NOT NULL,
	[TenLoaiSanPham] [nvarchar](50) COLLATE Vietnamese_CI_AS NULL,
 CONSTRAINT [PK__LoaiSanPham__0BC6C43E] PRIMARY KEY CLUSTERED 
(
	[MaLoaiSanPham] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[LoaiSanPham] ON
INSERT [dbo].[LoaiSanPham] ([MaLoaiSanPham], [TenLoaiSanPham]) VALUES (1, N'Nhà cửa - Đồ dùng')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSanPham], [TenLoaiSanPham]) VALUES (2, N'Thời trang')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSanPham], [TenLoaiSanPham]) VALUES (3, N'Tranh ảnh')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSanPham], [TenLoaiSanPham]) VALUES (4, N'Máy tính xách tay')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSanPham], [TenLoaiSanPham]) VALUES (5, N'Sách')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSanPham], [TenLoaiSanPham]) VALUES (6, N'Camera')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSanPham], [TenLoaiSanPham]) VALUES (7, N'Phim ảnh')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSanPham], [TenLoaiSanPham]) VALUES (8, N'Loại khác...')
SET IDENTITY_INSERT [dbo].[LoaiSanPham] OFF
/****** Object:  Table [dbo].[LoaiMultimedia]    Script Date: 06/19/2011 06:53:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiMultimedia](
	[MaLoaiMT] [int] IDENTITY(1,1) NOT NULL,
	[TenLoaiMT] [nvarchar](50) COLLATE Vietnamese_CI_AS NULL,
 CONSTRAINT [PK__LoaiMultimedia__117F9D94] PRIMARY KEY CLUSTERED 
(
	[MaLoaiMT] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[LoaiMultimedia] ON
INSERT [dbo].[LoaiMultimedia] ([MaLoaiMT], [TenLoaiMT]) VALUES (1, N'Picture')
SET IDENTITY_INSERT [dbo].[LoaiMultimedia] OFF
/****** Object:  Table [dbo].[GioiTinh]    Script Date: 06/19/2011 06:53:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GioiTinh](
	[MaGioiTinh] [int] IDENTITY(1,1) NOT NULL,
	[TenGioiTinh] [nvarchar](10) COLLATE Vietnamese_CI_AS NULL,
 CONSTRAINT [PK_GioiTinh] PRIMARY KEY CLUSTERED 
(
	[MaGioiTinh] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[GioiTinh] ON
INSERT [dbo].[GioiTinh] ([MaGioiTinh], [TenGioiTinh]) VALUES (1, N'Nam')
INSERT [dbo].[GioiTinh] ([MaGioiTinh], [TenGioiTinh]) VALUES (2, N'Nữ')
SET IDENTITY_INSERT [dbo].[GioiTinh] OFF
/****** Object:  Table [dbo].[GiaoDien]    Script Date: 06/19/2011 06:53:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GiaoDien](
	[MaGiaoDien] [int] IDENTITY(1,1) NOT NULL,
	[TenTheme] [nvarchar](50) COLLATE Vietnamese_CI_AS NULL,
 CONSTRAINT [PK_GIAODIEN] PRIMARY KEY CLUSTERED 
(
	[MaGiaoDien] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThongTinDauGia]    Script Date: 06/19/2011 06:53:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThongTinDauGia](
	[MaThongTinDauGia] [int] IDENTITY(1,1) NOT NULL,
	[DiemTinCayMua] [float] NULL,
	[DiemTinCayBan] [float] NULL,
 CONSTRAINT [PK_ThongTinDauGia] PRIMARY KEY CLUSTERED 
(
	[MaThongTinDauGia] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ThongTinDauGia] ON
INSERT [dbo].[ThongTinDauGia] ([MaThongTinDauGia], [DiemTinCayMua], [DiemTinCayBan]) VALUES (1, 0, 0)
INSERT [dbo].[ThongTinDauGia] ([MaThongTinDauGia], [DiemTinCayMua], [DiemTinCayBan]) VALUES (2, 0, 0)
INSERT [dbo].[ThongTinDauGia] ([MaThongTinDauGia], [DiemTinCayMua], [DiemTinCayBan]) VALUES (3, 0, 0)
INSERT [dbo].[ThongTinDauGia] ([MaThongTinDauGia], [DiemTinCayMua], [DiemTinCayBan]) VALUES (4, 0, 0)
INSERT [dbo].[ThongTinDauGia] ([MaThongTinDauGia], [DiemTinCayMua], [DiemTinCayBan]) VALUES (5, 0, 0)
INSERT [dbo].[ThongTinDauGia] ([MaThongTinDauGia], [DiemTinCayMua], [DiemTinCayBan]) VALUES (6, 0, 0)
INSERT [dbo].[ThongTinDauGia] ([MaThongTinDauGia], [DiemTinCayMua], [DiemTinCayBan]) VALUES (7, 0, 0)
INSERT [dbo].[ThongTinDauGia] ([MaThongTinDauGia], [DiemTinCayMua], [DiemTinCayBan]) VALUES (8, 0, 0)
INSERT [dbo].[ThongTinDauGia] ([MaThongTinDauGia], [DiemTinCayMua], [DiemTinCayBan]) VALUES (9, 0, 0)
INSERT [dbo].[ThongTinDauGia] ([MaThongTinDauGia], [DiemTinCayMua], [DiemTinCayBan]) VALUES (10, 0, 0)
INSERT [dbo].[ThongTinDauGia] ([MaThongTinDauGia], [DiemTinCayMua], [DiemTinCayBan]) VALUES (11, 0, 0)
INSERT [dbo].[ThongTinDauGia] ([MaThongTinDauGia], [DiemTinCayMua], [DiemTinCayBan]) VALUES (12, 0, 0)
INSERT [dbo].[ThongTinDauGia] ([MaThongTinDauGia], [DiemTinCayMua], [DiemTinCayBan]) VALUES (13, 0, 0)
INSERT [dbo].[ThongTinDauGia] ([MaThongTinDauGia], [DiemTinCayMua], [DiemTinCayBan]) VALUES (14, 0, 0)
INSERT [dbo].[ThongTinDauGia] ([MaThongTinDauGia], [DiemTinCayMua], [DiemTinCayBan]) VALUES (15, 0, 0)
INSERT [dbo].[ThongTinDauGia] ([MaThongTinDauGia], [DiemTinCayMua], [DiemTinCayBan]) VALUES (16, 0, 0)
INSERT [dbo].[ThongTinDauGia] ([MaThongTinDauGia], [DiemTinCayMua], [DiemTinCayBan]) VALUES (17, 0, 0)
INSERT [dbo].[ThongTinDauGia] ([MaThongTinDauGia], [DiemTinCayMua], [DiemTinCayBan]) VALUES (18, 0, 0)
INSERT [dbo].[ThongTinDauGia] ([MaThongTinDauGia], [DiemTinCayMua], [DiemTinCayBan]) VALUES (19, 0, 0)
INSERT [dbo].[ThongTinDauGia] ([MaThongTinDauGia], [DiemTinCayMua], [DiemTinCayBan]) VALUES (20, 0, 0)
INSERT [dbo].[ThongTinDauGia] ([MaThongTinDauGia], [DiemTinCayMua], [DiemTinCayBan]) VALUES (21, NULL, NULL)
INSERT [dbo].[ThongTinDauGia] ([MaThongTinDauGia], [DiemTinCayMua], [DiemTinCayBan]) VALUES (22, NULL, NULL)
INSERT [dbo].[ThongTinDauGia] ([MaThongTinDauGia], [DiemTinCayMua], [DiemTinCayBan]) VALUES (23, NULL, NULL)
SET IDENTITY_INSERT [dbo].[ThongTinDauGia] OFF
/****** Object:  Table [dbo].[THAMSO]    Script Date: 06/19/2011 06:53:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[THAMSO](
	[IDThamSo] [int] IDENTITY(1,1) NOT NULL,
	[TenThamSo] [nvarchar](200) COLLATE Vietnamese_CI_AS NULL,
	[GiaTri] [nvarchar](200) COLLATE Vietnamese_CI_AS NULL,
 CONSTRAINT [PK_IDTHAMSO] PRIMARY KEY CLUSTERED 
(
	[IDThamSo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[THAMSO] ON
INSERT [dbo].[THAMSO] ([IDThamSo], [TenThamSo], [GiaTri]) VALUES (1, N'MucPhi', N'10000')
INSERT [dbo].[THAMSO] ([IDThamSo], [TenThamSo], [GiaTri]) VALUES (2, N'Logo', N'~/Images/Logo.gif')
INSERT [dbo].[THAMSO] ([IDThamSo], [TenThamSo], [GiaTri]) VALUES (3, N'Slogan', N'Bán hàng là chín nhận tiền là mười')
INSERT [dbo].[THAMSO] ([IDThamSo], [TenThamSo], [GiaTri]) VALUES (4, N'StyleSheet', N'../Styles/Site.css')
SET IDENTITY_INSERT [dbo].[THAMSO] OFF
/****** Object:  Table [dbo].[TinhTrangSanPham]    Script Date: 06/19/2011 06:53:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TinhTrangSanPham](
	[MaTinhTrangSanPham] [int] IDENTITY(1,1) NOT NULL,
	[TenTinhTrangSanPham] [nvarchar](50) COLLATE Vietnamese_CI_AS NULL,
 CONSTRAINT [PK__TinhTrangSanPham__09DE7BCC] PRIMARY KEY CLUSTERED 
(
	[MaTinhTrangSanPham] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[TinhTrangSanPham] ON
INSERT [dbo].[TinhTrangSanPham] ([MaTinhTrangSanPham], [TenTinhTrangSanPham]) VALUES (1, N'Chưa đấu giá')
INSERT [dbo].[TinhTrangSanPham] ([MaTinhTrangSanPham], [TenTinhTrangSanPham]) VALUES (2, N'Đang đấu giá')
INSERT [dbo].[TinhTrangSanPham] ([MaTinhTrangSanPham], [TenTinhTrangSanPham]) VALUES (3, N'Đã bán')
SET IDENTITY_INSERT [dbo].[TinhTrangSanPham] OFF
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 06/19/2011 06:53:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[TenTaiKhoan] [nvarchar](50) COLLATE Vietnamese_CI_AS NULL,
	[MatKhau] [varchar](50) COLLATE Vietnamese_CI_AS NULL,
	[MaLoaiTaiKhoan] [int] NOT NULL,
	[Avatar] [nvarchar](50) COLLATE Vietnamese_CI_AS NULL,
	[TrangThai] [nvarchar](50) COLLATE Vietnamese_CI_AS NULL,
	[DiemTinCayBan] [float] NULL,
	[DiemTinCayMua] [float] NULL,
	[BiXoa] [bit] NULL,
	[MaTaiKhoan] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_TaiKhoan_1] PRIMARY KEY CLUSTERED 
(
	[MaTaiKhoan] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PhanQuyen]    Script Date: 06/19/2011 06:53:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhanQuyen](
	[MaPhanQuyen] [int] IDENTITY(1,1) NOT NULL,
	[TenQuyen] [nvarchar](50) COLLATE Vietnamese_CI_AS NULL,
 CONSTRAINT [PK__PhanQuyen__00551192] PRIMARY KEY CLUSTERED 
(
	[MaPhanQuyen] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Multimedia]    Script Date: 06/19/2011 06:53:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Multimedia](
	[MaMT] [int] IDENTITY(1,1) NOT NULL,
	[TenMT] [nvarchar](50) COLLATE Vietnamese_CI_AS NULL,
	[MaLoaiMT] [int] NULL,
	[DungLuong] [float] NULL,
	[KichThuoc] [float] NULL,
	[LinkURL] [nvarchar](50) COLLATE Vietnamese_CI_AS NULL,
	[FileName] [nvarchar](100) COLLATE Vietnamese_CI_AS NULL,
 CONSTRAINT [PK__Multimedia__1367E606] PRIMARY KEY CLUSTERED 
(
	[MaMT] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Multimedia] ON
INSERT [dbo].[Multimedia] ([MaMT], [TenMT], [MaLoaiMT], [DungLuong], [KichThuoc], [LinkURL], [FileName]) VALUES (1, N'denban', 1, 2, 2, N'../Imagine/denban.jpg', N'abc')
INSERT [dbo].[Multimedia] ([MaMT], [TenMT], [MaLoaiMT], [DungLuong], [KichThuoc], [LinkURL], [FileName]) VALUES (2, N'aochelsea', 1, 2, 2, N'../Imagine/cheleas.jpg', N'abc')
INSERT [dbo].[Multimedia] ([MaMT], [TenMT], [MaLoaiMT], [DungLuong], [KichThuoc], [LinkURL], [FileName]) VALUES (3, N'giaythethao', 1, 2, 2, N'../Imagine/adidas.jpg', N'abc')
INSERT [dbo].[Multimedia] ([MaMT], [TenMT], [MaLoaiMT], [DungLuong], [KichThuoc], [LinkURL], [FileName]) VALUES (4, N'sachvo', 1, 2, 2, N'../Imagine/sachvo.jpg', N'abc')
INSERT [dbo].[Multimedia] ([MaMT], [TenMT], [MaLoaiMT], [DungLuong], [KichThuoc], [LinkURL], [FileName]) VALUES (5, N'aobamboo', 1, 2, 2, N'../Imagine/bamboo.jpg', N'abc')
INSERT [dbo].[Multimedia] ([MaMT], [TenMT], [MaLoaiMT], [DungLuong], [KichThuoc], [LinkURL], [FileName]) VALUES (6, N'nokia', 1, 2, 2, N'../Imagine/nokia.jpg', N'abc')
INSERT [dbo].[Multimedia] ([MaMT], [TenMT], [MaLoaiMT], [DungLuong], [KichThuoc], [LinkURL], [FileName]) VALUES (7, N'samsung', 1, 2, 2, N'../Imagine/samsung.jpg', N'abc')
INSERT [dbo].[Multimedia] ([MaMT], [TenMT], [MaLoaiMT], [DungLuong], [KichThuoc], [LinkURL], [FileName]) VALUES (8, N'laptopsony', 1, 2, 2, N'../Imagine/laptopsony.jpg', N'abc')
INSERT [dbo].[Multimedia] ([MaMT], [TenMT], [MaLoaiMT], [DungLuong], [KichThuoc], [LinkURL], [FileName]) VALUES (9, N'macbookpro', 1, 2, 2, N'../Imagine/macbook.jpg', N'abc')
INSERT [dbo].[Multimedia] ([MaMT], [TenMT], [MaLoaiMT], [DungLuong], [KichThuoc], [LinkURL], [FileName]) VALUES (10, N'iphone', 1, 2, 2, N'../Imagine/iphone.jpg', N'abc')
INSERT [dbo].[Multimedia] ([MaMT], [TenMT], [MaLoaiMT], [DungLuong], [KichThuoc], [LinkURL], [FileName]) VALUES (11, N'bongden', 1, 2, 2, N'../Imagine/bongden.jpg', N'abc')
INSERT [dbo].[Multimedia] ([MaMT], [TenMT], [MaLoaiMT], [DungLuong], [KichThuoc], [LinkURL], [FileName]) VALUES (12, N'tivilg', 1, 2, 2, N'../Imagine/tivilg.jpg', N'abc')
INSERT [dbo].[Multimedia] ([MaMT], [TenMT], [MaLoaiMT], [DungLuong], [KichThuoc], [LinkURL], [FileName]) VALUES (13, N'butbithanglong', 1, 2, 2, N'../Imagine/butbithanglong.jpg', N'abc')
INSERT [dbo].[Multimedia] ([MaMT], [TenMT], [MaLoaiMT], [DungLuong], [KichThuoc], [LinkURL], [FileName]) VALUES (14, N'canon', 1, 2, 2, N'../Imagine/canon.jpg', N'abc')
INSERT [dbo].[Multimedia] ([MaMT], [TenMT], [MaLoaiMT], [DungLuong], [KichThuoc], [LinkURL], [FileName]) VALUES (15, N'bango', 1, 2, 2, N'../Imagine/bango.jpg', N'abc')
SET IDENTITY_INSERT [dbo].[Multimedia] OFF
/****** Object:  Table [dbo].[ChiTietPhanQuyen]    Script Date: 06/19/2011 06:53:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietPhanQuyen](
	[MaChiTietPhanQuyen] [int] IDENTITY(1,1) NOT NULL,
	[MaLoaiTaiKhoan] [int] NULL,
	[MaPhanQuyen] [int] NULL,
 CONSTRAINT [PK__ChiTietPhanQuyen__023D5A04] PRIMARY KEY CLUSTERED 
(
	[MaChiTietPhanQuyen] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_WebEvent_LogEvent]    Script Date: 06/19/2011 06:53:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_WebEvent_LogEvent]
        @EventId         char(32),
        @EventTimeUtc    datetime,
        @EventTime       datetime,
        @EventType       nvarchar(256),
        @EventSequence   decimal(19,0),
        @EventOccurrence decimal(19,0),
        @EventCode       int,
        @EventDetailCode int,
        @Message         nvarchar(1024),
        @ApplicationPath nvarchar(256),
        @ApplicationVirtualPath nvarchar(256),
        @MachineName    nvarchar(256),
        @RequestUrl      nvarchar(1024),
        @ExceptionType   nvarchar(256),
        @Details         ntext
AS
BEGIN
    INSERT
        dbo.aspnet_WebEvent_Events
        (
            EventId,
            EventTimeUtc,
            EventTime,
            EventType,
            EventSequence,
            EventOccurrence,
            EventCode,
            EventDetailCode,
            Message,
            ApplicationPath,
            ApplicationVirtualPath,
            MachineName,
            RequestUrl,
            ExceptionType,
            Details
        )
    VALUES
    (
        @EventId,
        @EventTimeUtc,
        @EventTime,
        @EventType,
        @EventSequence,
        @EventOccurrence,
        @EventCode,
        @EventDetailCode,
        @Message,
        @ApplicationPath,
        @ApplicationVirtualPath,
        @MachineName,
        @RequestUrl,
        @ExceptionType,
        @Details
    )
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UnRegisterSchemaVersion]    Script Date: 06/19/2011 06:53:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_UnRegisterSchemaVersion]
    @Feature                   nvarchar(128),
    @CompatibleSchemaVersion   nvarchar(128)
AS
BEGIN
    DELETE FROM dbo.aspnet_SchemaVersions
        WHERE   Feature = LOWER(@Feature) AND @CompatibleSchemaVersion = CompatibleSchemaVersion
END
GO
/****** Object:  View [dbo].[vw_aspnet_Applications]    Script Date: 06/19/2011 06:53:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE VIEW [dbo].[vw_aspnet_Applications]
  AS SELECT [dbo].[aspnet_Applications].[ApplicationName], [dbo].[aspnet_Applications].[LoweredApplicationName], [dbo].[aspnet_Applications].[ApplicationId], [dbo].[aspnet_Applications].[Description]
  FROM [dbo].[aspnet_Applications]
GO
/****** Object:  Table [dbo].[ThongTinTaiKhoan]    Script Date: 06/19/2011 06:53:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThongTinTaiKhoan](
	[MaThongTinTaiKhoan] [int] IDENTITY(1,1) NOT NULL,
	[MaGioiTinh] [int] NULL,
	[HoTen] [nvarchar](50) COLLATE Vietnamese_CI_AS NULL,
	[NgaySinh] [datetime] NULL,
	[DiaChi] [nvarchar](50) COLLATE Vietnamese_CI_AS NULL,
	[SoDienThoai] [nvarchar](50) COLLATE Vietnamese_CI_AS NULL,
	[Avatar] [nvarchar](50) COLLATE Vietnamese_CI_AS NULL,
	[BiXoa] [bit] NULL,
	[ThoiGianUnlock] [datetime] NULL,
	[ThongTinThe_FirstName] [nvarchar](50) COLLATE Vietnamese_CI_AS NULL,
	[ThongTinThe_LastName] [nvarchar](50) COLLATE Vietnamese_CI_AS NULL,
	[ThongTinThe_Address] [nvarchar](100) COLLATE Vietnamese_CI_AS NULL,
	[ThongTinThe_State] [nvarchar](100) COLLATE Vietnamese_CI_AS NULL,
	[ThongTinThe_ZipCode] [nvarchar](50) COLLATE Vietnamese_CI_AS NULL,
	[ThongTinThe_Country] [nvarchar](100) COLLATE Vietnamese_CI_AS NULL,
	[ThongTinThe_CardType] [nvarchar](50) COLLATE Vietnamese_CI_AS NULL,
	[ThongTinThe_CardNumber] [nvarchar](20) COLLATE Vietnamese_CI_AS NULL,
	[ThongTinThe_ExpireTime] [datetime] NULL,
	[ThongTinThe_CVV2] [nvarchar](20) COLLATE Vietnamese_CI_AS NULL,
 CONSTRAINT [PK_ThongTinTaiKhoan] PRIMARY KEY CLUSTERED 
(
	[MaThongTinTaiKhoan] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ThongTinTaiKhoan] ON
INSERT [dbo].[ThongTinTaiKhoan] ([MaThongTinTaiKhoan], [MaGioiTinh], [HoTen], [NgaySinh], [DiaChi], [SoDienThoai], [Avatar], [BiXoa], [ThoiGianUnlock], [ThongTinThe_FirstName], [ThongTinThe_LastName], [ThongTinThe_Address], [ThongTinThe_State], [ThongTinThe_ZipCode], [ThongTinThe_Country], [ThongTinThe_CardType], [ThongTinThe_CardNumber], [ThongTinThe_ExpireTime], [ThongTinThe_CVV2]) VALUES (1, 1, N'NA Khôi', CAST(0x000080EB00000000 AS DateTime), N'227 NVC', N'07930 58 397 1021-4020', N'389757', 0, CAST(0x000080EB00000000 AS DateTime), N'Nguyen', N'Luyen', N'Go Vap', N'Khong co', N'08', N'Viet Nam', N'Visa', N'12345678911121231', CAST(0x000080EB00000000 AS DateTime), N'123')
INSERT [dbo].[ThongTinTaiKhoan] ([MaThongTinTaiKhoan], [MaGioiTinh], [HoTen], [NgaySinh], [DiaChi], [SoDienThoai], [Avatar], [BiXoa], [ThoiGianUnlock], [ThongTinThe_FirstName], [ThongTinThe_LastName], [ThongTinThe_Address], [ThongTinThe_State], [ThongTinThe_ZipCode], [ThongTinThe_Country], [ThongTinThe_CardType], [ThongTinThe_CardNumber], [ThongTinThe_ExpireTime], [ThongTinThe_CVV2]) VALUES (2, 1, N'ND Luyến', CAST(0x000086C900000000 AS DateTime), N'P.O. Box 317, 2126 Cras Rd.', N'0 43 420 8355-5770', N'694546', 0, CAST(0x000080EB00000000 AS DateTime), N'Nguyen', N'Luyen', N'Go Vap', N'Khong co', N'08', N'Viet Nam', N'Visa', N'12345678911121231', CAST(0x000080EB00000000 AS DateTime), N'123')
INSERT [dbo].[ThongTinTaiKhoan] ([MaThongTinTaiKhoan], [MaGioiTinh], [HoTen], [NgaySinh], [DiaChi], [SoDienThoai], [Avatar], [BiXoa], [ThoiGianUnlock], [ThongTinThe_FirstName], [ThongTinThe_LastName], [ThongTinThe_Address], [ThongTinThe_State], [ThongTinThe_ZipCode], [ThongTinThe_Country], [ThongTinThe_CardType], [ThongTinThe_CardNumber], [ThongTinThe_ExpireTime], [ThongTinThe_CVV2]) VALUES (3, 1, N'TM Khánh', CAST(0x000081BD00000000 AS DateTime), N'178-1010 Accumsan St.', N'0 72 574 6019-4958', N'407209', 0, CAST(0x000080EB00000000 AS DateTime), N'Nguyen', N'Luyen', N'Go Vap', N'Khong co', N'08', N'Viet Nam', N'Visa', N'12345678911121231', CAST(0x000080EB00000000 AS DateTime), N'123')
INSERT [dbo].[ThongTinTaiKhoan] ([MaThongTinTaiKhoan], [MaGioiTinh], [HoTen], [NgaySinh], [DiaChi], [SoDienThoai], [Avatar], [BiXoa], [ThoiGianUnlock], [ThongTinThe_FirstName], [ThongTinThe_LastName], [ThongTinThe_Address], [ThongTinThe_State], [ThongTinThe_ZipCode], [ThongTinThe_Country], [ThongTinThe_CardType], [ThongTinThe_CardNumber], [ThongTinThe_ExpireTime], [ThongTinThe_CVV2]) VALUES (4, 1, N'PD Khoa', CAST(0x0000827A00000000 AS DateTime), N'822-4438 Posuere St.', N'0 93 970 1311-7115', N'519006', 0, CAST(0x000080EB00000000 AS DateTime), N'Nguyen', N'Luyen', N'Go Vap', N'Khong co', N'08', N'Viet Nam', N'Visa', N'12345678911121231', CAST(0x000080EB00000000 AS DateTime), N'123')
INSERT [dbo].[ThongTinTaiKhoan] ([MaThongTinTaiKhoan], [MaGioiTinh], [HoTen], [NgaySinh], [DiaChi], [SoDienThoai], [Avatar], [BiXoa], [ThoiGianUnlock], [ThongTinThe_FirstName], [ThongTinThe_LastName], [ThongTinThe_Address], [ThongTinThe_State], [ThongTinThe_ZipCode], [ThongTinThe_Country], [ThongTinThe_CardType], [ThongTinThe_CardNumber], [ThongTinThe_ExpireTime], [ThongTinThe_CVV2]) VALUES (5, 1, N'TA Khoa', CAST(0x0000881900000000 AS DateTime), N'05/24/1995', N'0 31 270 7646-7841', N'819732', 0, CAST(0x000080EB00000000 AS DateTime), N'Nguyen', N'Luyen', N'Go Vap', N'Khong co', N'08', N'Viet Nam', N'Visa', N'12345678911121231', CAST(0x000080EB00000000 AS DateTime), N'123')
INSERT [dbo].[ThongTinTaiKhoan] ([MaThongTinTaiKhoan], [MaGioiTinh], [HoTen], [NgaySinh], [DiaChi], [SoDienThoai], [Avatar], [BiXoa], [ThoiGianUnlock], [ThongTinThe_FirstName], [ThongTinThe_LastName], [ThongTinThe_Address], [ThongTinThe_State], [ThongTinThe_ZipCode], [ThongTinThe_Country], [ThongTinThe_CardType], [ThongTinThe_CardNumber], [ThongTinThe_ExpireTime], [ThongTinThe_CVV2]) VALUES (6, 1, N'AKhoi', CAST(0x00007D9A00000000 AS DateTime), N'0 99 471 5262-4557', N'0 99 471 5262-4557', N'699960', 0, CAST(0x000080EB00000000 AS DateTime), N'Nguyen', N'Luyen', N'Go Vap', N'Khong co', N'08', N'Viet Nam', N'Visa', N'12345678911121231', CAST(0x000080EB00000000 AS DateTime), N'123')
INSERT [dbo].[ThongTinTaiKhoan] ([MaThongTinTaiKhoan], [MaGioiTinh], [HoTen], [NgaySinh], [DiaChi], [SoDienThoai], [Avatar], [BiXoa], [ThoiGianUnlock], [ThongTinThe_FirstName], [ThongTinThe_LastName], [ThongTinThe_Address], [ThongTinThe_State], [ThongTinThe_ZipCode], [ThongTinThe_Country], [ThongTinThe_CardType], [ThongTinThe_CardNumber], [ThongTinThe_ExpireTime], [ThongTinThe_CVV2]) VALUES (7, 1, N'Nguyễn Đình Luyến', CAST(0x00007D3B00000000 AS DateTime), N'4255 Mus. Rd.', N'0 21 190 6183-3325', N'332237', 0, CAST(0x000080EB00000000 AS DateTime), N'Nguyen', N'Luyen', N'Go Vap', N'Khong co', N'08', N'Viet Nam', N'Visa', N'12345678911121231', CAST(0x000080EB00000000 AS DateTime), N'123')
INSERT [dbo].[ThongTinTaiKhoan] ([MaThongTinTaiKhoan], [MaGioiTinh], [HoTen], [NgaySinh], [DiaChi], [SoDienThoai], [Avatar], [BiXoa], [ThoiGianUnlock], [ThongTinThe_FirstName], [ThongTinThe_LastName], [ThongTinThe_Address], [ThongTinThe_State], [ThongTinThe_ZipCode], [ThongTinThe_Country], [ThongTinThe_CardType], [ThongTinThe_CardNumber], [ThongTinThe_ExpireTime], [ThongTinThe_CVV2]) VALUES (8, 1, N'Khánh hậu giang', CAST(0x00007D3B00000000 AS DateTime), N'4255 Mus. Rd.', N'0 27 124 7080-6631', N'285242', 0, CAST(0x000080EB00000000 AS DateTime), N'Nguyen', N'Luyen', N'Go Vap', N'Khong co', N'08', N'Viet Nam', N'Visa', N'12345678911121231', CAST(0x000080EB00000000 AS DateTime), N'123')
INSERT [dbo].[ThongTinTaiKhoan] ([MaThongTinTaiKhoan], [MaGioiTinh], [HoTen], [NgaySinh], [DiaChi], [SoDienThoai], [Avatar], [BiXoa], [ThoiGianUnlock], [ThongTinThe_FirstName], [ThongTinThe_LastName], [ThongTinThe_Address], [ThongTinThe_State], [ThongTinThe_ZipCode], [ThongTinThe_Country], [ThongTinThe_CardType], [ThongTinThe_CardNumber], [ThongTinThe_ExpireTime], [ThongTinThe_CVV2]) VALUES (9, 1, N'Khoa home', CAST(0x0000834F00000000 AS DateTime), N'614-1249 Iaculis Rd.', N'0 27 124 7080-6631', N'285242', 0, CAST(0x000080EB00000000 AS DateTime), N'Nguyen', N'Luyen', N'Go Vap', N'Khong co', N'08', N'Viet Nam', N'Visa', N'12345678911121231', CAST(0x000080EB00000000 AS DateTime), N'123')
INSERT [dbo].[ThongTinTaiKhoan] ([MaThongTinTaiKhoan], [MaGioiTinh], [HoTen], [NgaySinh], [DiaChi], [SoDienThoai], [Avatar], [BiXoa], [ThoiGianUnlock], [ThongTinThe_FirstName], [ThongTinThe_LastName], [ThongTinThe_Address], [ThongTinThe_State], [ThongTinThe_ZipCode], [ThongTinThe_Country], [ThongTinThe_CardType], [ThongTinThe_CardNumber], [ThongTinThe_ExpireTime], [ThongTinThe_CVV2]) VALUES (10, 1, N'On my way', CAST(0x0000819500000000 AS DateTime), N'179-416 Aliquam Av.', N'0 49 431 3759-1103', N'903423', 0, CAST(0x000080EB00000000 AS DateTime), N'Nguyen', N'Luyen', N'Go Vap', N'Khong co', N'08', N'Viet Nam', N'Visa', N'12345678911121231', CAST(0x000080EB00000000 AS DateTime), N'123')
INSERT [dbo].[ThongTinTaiKhoan] ([MaThongTinTaiKhoan], [MaGioiTinh], [HoTen], [NgaySinh], [DiaChi], [SoDienThoai], [Avatar], [BiXoa], [ThoiGianUnlock], [ThongTinThe_FirstName], [ThongTinThe_LastName], [ThongTinThe_Address], [ThongTinThe_State], [ThongTinThe_ZipCode], [ThongTinThe_Country], [ThongTinThe_CardType], [ThongTinThe_CardNumber], [ThongTinThe_ExpireTime], [ThongTinThe_CVV2]) VALUES (11, 1, NULL, NULL, NULL, NULL, NULL, 0, CAST(0x000080EB00000000 AS DateTime), N'Nguyen', N'Luyen', N'Go Vap', N'Khong co', N'08', N'Viet Nam', N'Visa', N'12345678911121231', CAST(0x000080EB00000000 AS DateTime), N'123')
INSERT [dbo].[ThongTinTaiKhoan] ([MaThongTinTaiKhoan], [MaGioiTinh], [HoTen], [NgaySinh], [DiaChi], [SoDienThoai], [Avatar], [BiXoa], [ThoiGianUnlock], [ThongTinThe_FirstName], [ThongTinThe_LastName], [ThongTinThe_Address], [ThongTinThe_State], [ThongTinThe_ZipCode], [ThongTinThe_Country], [ThongTinThe_CardType], [ThongTinThe_CardNumber], [ThongTinThe_ExpireTime], [ThongTinThe_CVV2]) VALUES (12, 1, NULL, NULL, NULL, NULL, NULL, 0, CAST(0x000080EB00000000 AS DateTime), N'Nguyen', N'Luyen', N'Go Vap', N'Khong co', N'08', N'Viet Nam', N'Visa', N'12345678911121231', CAST(0x000080EB00000000 AS DateTime), N'123')
INSERT [dbo].[ThongTinTaiKhoan] ([MaThongTinTaiKhoan], [MaGioiTinh], [HoTen], [NgaySinh], [DiaChi], [SoDienThoai], [Avatar], [BiXoa], [ThoiGianUnlock], [ThongTinThe_FirstName], [ThongTinThe_LastName], [ThongTinThe_Address], [ThongTinThe_State], [ThongTinThe_ZipCode], [ThongTinThe_Country], [ThongTinThe_CardType], [ThongTinThe_CardNumber], [ThongTinThe_ExpireTime], [ThongTinThe_CVV2]) VALUES (13, 1, NULL, NULL, NULL, NULL, NULL, 0, CAST(0x000080EB00000000 AS DateTime), N'Nguyen', N'Luyen', N'Go Vap', N'Khong co', N'08', N'Viet Nam', N'Visa', N'12345678911121231', CAST(0x000080EB00000000 AS DateTime), N'123')
INSERT [dbo].[ThongTinTaiKhoan] ([MaThongTinTaiKhoan], [MaGioiTinh], [HoTen], [NgaySinh], [DiaChi], [SoDienThoai], [Avatar], [BiXoa], [ThoiGianUnlock], [ThongTinThe_FirstName], [ThongTinThe_LastName], [ThongTinThe_Address], [ThongTinThe_State], [ThongTinThe_ZipCode], [ThongTinThe_Country], [ThongTinThe_CardType], [ThongTinThe_CardNumber], [ThongTinThe_ExpireTime], [ThongTinThe_CVV2]) VALUES (14, 1, NULL, NULL, NULL, NULL, NULL, 0, CAST(0x000080EB00000000 AS DateTime), N'Nguyen', N'Luyen', N'Go Vap', N'Khong co', N'08', N'Viet Nam', N'Visa', N'12345678911121231', CAST(0x000080EB00000000 AS DateTime), N'123')
INSERT [dbo].[ThongTinTaiKhoan] ([MaThongTinTaiKhoan], [MaGioiTinh], [HoTen], [NgaySinh], [DiaChi], [SoDienThoai], [Avatar], [BiXoa], [ThoiGianUnlock], [ThongTinThe_FirstName], [ThongTinThe_LastName], [ThongTinThe_Address], [ThongTinThe_State], [ThongTinThe_ZipCode], [ThongTinThe_Country], [ThongTinThe_CardType], [ThongTinThe_CardNumber], [ThongTinThe_ExpireTime], [ThongTinThe_CVV2]) VALUES (15, 1, NULL, NULL, NULL, NULL, NULL, 0, CAST(0x000080EB00000000 AS DateTime), N'Nguyen', N'Luyen', N'Go Vap', N'Khong co', N'08', N'Viet Nam', N'Visa', N'12345678911121231', CAST(0x000080EB00000000 AS DateTime), N'123')
INSERT [dbo].[ThongTinTaiKhoan] ([MaThongTinTaiKhoan], [MaGioiTinh], [HoTen], [NgaySinh], [DiaChi], [SoDienThoai], [Avatar], [BiXoa], [ThoiGianUnlock], [ThongTinThe_FirstName], [ThongTinThe_LastName], [ThongTinThe_Address], [ThongTinThe_State], [ThongTinThe_ZipCode], [ThongTinThe_Country], [ThongTinThe_CardType], [ThongTinThe_CardNumber], [ThongTinThe_ExpireTime], [ThongTinThe_CVV2]) VALUES (16, 1, NULL, NULL, NULL, NULL, NULL, 0, CAST(0x000080EB00000000 AS DateTime), N'Nguyen', N'Luyen', N'Go Vap', N'Khong co', N'08', N'Viet Nam', N'Visa', N'12345678911121231', CAST(0x000080EB00000000 AS DateTime), N'123')
INSERT [dbo].[ThongTinTaiKhoan] ([MaThongTinTaiKhoan], [MaGioiTinh], [HoTen], [NgaySinh], [DiaChi], [SoDienThoai], [Avatar], [BiXoa], [ThoiGianUnlock], [ThongTinThe_FirstName], [ThongTinThe_LastName], [ThongTinThe_Address], [ThongTinThe_State], [ThongTinThe_ZipCode], [ThongTinThe_Country], [ThongTinThe_CardType], [ThongTinThe_CardNumber], [ThongTinThe_ExpireTime], [ThongTinThe_CVV2]) VALUES (17, 1, NULL, NULL, NULL, NULL, NULL, 0, CAST(0x000080EB00000000 AS DateTime), N'Nguyen', N'Luyen', N'Go Vap', N'Khong co', N'08', N'Viet Nam', N'Visa', N'12345678911121231', CAST(0x000080EB00000000 AS DateTime), N'123')
INSERT [dbo].[ThongTinTaiKhoan] ([MaThongTinTaiKhoan], [MaGioiTinh], [HoTen], [NgaySinh], [DiaChi], [SoDienThoai], [Avatar], [BiXoa], [ThoiGianUnlock], [ThongTinThe_FirstName], [ThongTinThe_LastName], [ThongTinThe_Address], [ThongTinThe_State], [ThongTinThe_ZipCode], [ThongTinThe_Country], [ThongTinThe_CardType], [ThongTinThe_CardNumber], [ThongTinThe_ExpireTime], [ThongTinThe_CVV2]) VALUES (18, 1, NULL, NULL, NULL, NULL, NULL, 0, CAST(0x000080EB00000000 AS DateTime), N'Nguyen', N'Luyen', N'Go Vap', N'Khong co', N'08', N'Viet Nam', N'Visa', N'12345678911121231', CAST(0x000080EB00000000 AS DateTime), N'123')
INSERT [dbo].[ThongTinTaiKhoan] ([MaThongTinTaiKhoan], [MaGioiTinh], [HoTen], [NgaySinh], [DiaChi], [SoDienThoai], [Avatar], [BiXoa], [ThoiGianUnlock], [ThongTinThe_FirstName], [ThongTinThe_LastName], [ThongTinThe_Address], [ThongTinThe_State], [ThongTinThe_ZipCode], [ThongTinThe_Country], [ThongTinThe_CardType], [ThongTinThe_CardNumber], [ThongTinThe_ExpireTime], [ThongTinThe_CVV2]) VALUES (19, 1, NULL, NULL, NULL, NULL, NULL, 0, CAST(0x000080EB00000000 AS DateTime), N'Nguyen', N'Luyen', N'Go Vap', N'Khong co', N'08', N'Viet Nam', N'Visa', N'12345678911121231', CAST(0x000080EB00000000 AS DateTime), N'123')
INSERT [dbo].[ThongTinTaiKhoan] ([MaThongTinTaiKhoan], [MaGioiTinh], [HoTen], [NgaySinh], [DiaChi], [SoDienThoai], [Avatar], [BiXoa], [ThoiGianUnlock], [ThongTinThe_FirstName], [ThongTinThe_LastName], [ThongTinThe_Address], [ThongTinThe_State], [ThongTinThe_ZipCode], [ThongTinThe_Country], [ThongTinThe_CardType], [ThongTinThe_CardNumber], [ThongTinThe_ExpireTime], [ThongTinThe_CVV2]) VALUES (20, 1, NULL, NULL, NULL, NULL, NULL, 0, CAST(0x000080EB00000000 AS DateTime), N'Nguyen', N'Luyen', N'Go Vap', N'Khong co', N'08', N'Viet Nam', N'Visa', N'12345678911121231', CAST(0x000080EB00000000 AS DateTime), N'123')
INSERT [dbo].[ThongTinTaiKhoan] ([MaThongTinTaiKhoan], [MaGioiTinh], [HoTen], [NgaySinh], [DiaChi], [SoDienThoai], [Avatar], [BiXoa], [ThoiGianUnlock], [ThongTinThe_FirstName], [ThongTinThe_LastName], [ThongTinThe_Address], [ThongTinThe_State], [ThongTinThe_ZipCode], [ThongTinThe_Country], [ThongTinThe_CardType], [ThongTinThe_CardNumber], [ThongTinThe_ExpireTime], [ThongTinThe_CVV2]) VALUES (21, 1, N'', NULL, N'', N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ThongTinTaiKhoan] ([MaThongTinTaiKhoan], [MaGioiTinh], [HoTen], [NgaySinh], [DiaChi], [SoDienThoai], [Avatar], [BiXoa], [ThoiGianUnlock], [ThongTinThe_FirstName], [ThongTinThe_LastName], [ThongTinThe_Address], [ThongTinThe_State], [ThongTinThe_ZipCode], [ThongTinThe_Country], [ThongTinThe_CardType], [ThongTinThe_CardNumber], [ThongTinThe_ExpireTime], [ThongTinThe_CVV2]) VALUES (22, 1, N'', NULL, N'', N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ThongTinTaiKhoan] ([MaThongTinTaiKhoan], [MaGioiTinh], [HoTen], [NgaySinh], [DiaChi], [SoDienThoai], [Avatar], [BiXoa], [ThoiGianUnlock], [ThongTinThe_FirstName], [ThongTinThe_LastName], [ThongTinThe_Address], [ThongTinThe_State], [ThongTinThe_ZipCode], [ThongTinThe_Country], [ThongTinThe_CardType], [ThongTinThe_CardNumber], [ThongTinThe_ExpireTime], [ThongTinThe_CVV2]) VALUES (23, 1, N'', NULL, N'', N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[ThongTinTaiKhoan] OFF
/****** Object:  Table [dbo].[aspnet_Paths]    Script Date: 06/19/2011 06:53:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Paths](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[PathId] [uniqueidentifier] NOT NULL,
	[Path] [nvarchar](256) COLLATE Vietnamese_CI_AS NOT NULL,
	[LoweredPath] [nvarchar](256) COLLATE Vietnamese_CI_AS NOT NULL,
PRIMARY KEY NONCLUSTERED 
(
	[PathId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE UNIQUE CLUSTERED INDEX [aspnet_Paths_index] ON [dbo].[aspnet_Paths] 
(
	[ApplicationId] ASC,
	[LoweredPath] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[aspnet_Roles]    Script Date: 06/19/2011 06:53:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Roles](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
	[RoleName] [nvarchar](256) COLLATE Vietnamese_CI_AS NOT NULL,
	[LoweredRoleName] [nvarchar](256) COLLATE Vietnamese_CI_AS NOT NULL,
	[Description] [nvarchar](256) COLLATE Vietnamese_CI_AS NULL,
PRIMARY KEY NONCLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE UNIQUE CLUSTERED INDEX [aspnet_Roles_index1] ON [dbo].[aspnet_Roles] 
(
	[ApplicationId] ASC,
	[LoweredRoleName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
INSERT [dbo].[aspnet_Roles] ([ApplicationId], [RoleId], [RoleName], [LoweredRoleName], [Description]) VALUES (N'53471200-a967-4f75-9fab-29190aa0db5a', N'00e4514b-0207-48fb-8736-27384c47cc04', N'Administrator', N'administrator', NULL)
INSERT [dbo].[aspnet_Roles] ([ApplicationId], [RoleId], [RoleName], [LoweredRoleName], [Description]) VALUES (N'53471200-a967-4f75-9fab-29190aa0db5a', N'eb26ac46-1ec8-4e79-90a0-1d4b09e91839', N'Manager', N'manager', NULL)
INSERT [dbo].[aspnet_Roles] ([ApplicationId], [RoleId], [RoleName], [LoweredRoleName], [Description]) VALUES (N'53471200-a967-4f75-9fab-29190aa0db5a', N'df5600db-c157-4273-b73a-5134b7727600', N'Member', N'member', NULL)
/****** Object:  StoredProcedure [dbo].[aspnet_RegisterSchemaVersion]    Script Date: 06/19/2011 06:53:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_RegisterSchemaVersion]
    @Feature                   nvarchar(128),
    @CompatibleSchemaVersion   nvarchar(128),
    @IsCurrentVersion          bit,
    @RemoveIncompatibleSchema  bit
AS
BEGIN
    IF( @RemoveIncompatibleSchema = 1 )
    BEGIN
        DELETE FROM dbo.aspnet_SchemaVersions WHERE Feature = LOWER( @Feature )
    END
    ELSE
    BEGIN
        IF( @IsCurrentVersion = 1 )
        BEGIN
            UPDATE dbo.aspnet_SchemaVersions
            SET IsCurrentVersion = 0
            WHERE Feature = LOWER( @Feature )
        END
    END

    INSERT  dbo.aspnet_SchemaVersions( Feature, CompatibleSchemaVersion, IsCurrentVersion )
    VALUES( LOWER( @Feature ), @CompatibleSchemaVersion, @IsCurrentVersion )
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_CheckSchemaVersion]    Script Date: 06/19/2011 06:53:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_CheckSchemaVersion]
    @Feature                   nvarchar(128),
    @CompatibleSchemaVersion   nvarchar(128)
AS
BEGIN
    IF (EXISTS( SELECT  *
                FROM    dbo.aspnet_SchemaVersions
                WHERE   Feature = LOWER( @Feature ) AND
                        CompatibleSchemaVersion = @CompatibleSchemaVersion ))
        RETURN 0

    RETURN 1
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Applications_CreateApplication]    Script Date: 06/19/2011 06:53:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Applications_CreateApplication]
    @ApplicationName      nvarchar(256),
    @ApplicationId        uniqueidentifier OUTPUT
AS
BEGIN
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName

    IF(@ApplicationId IS NULL)
    BEGIN
        DECLARE @TranStarted   bit
        SET @TranStarted = 0

        IF( @@TRANCOUNT = 0 )
        BEGIN
	        BEGIN TRANSACTION
	        SET @TranStarted = 1
        END
        ELSE
    	    SET @TranStarted = 0

        SELECT  @ApplicationId = ApplicationId
        FROM dbo.aspnet_Applications WITH (UPDLOCK, HOLDLOCK)
        WHERE LOWER(@ApplicationName) = LoweredApplicationName

        IF(@ApplicationId IS NULL)
        BEGIN
            SELECT  @ApplicationId = NEWID()
            INSERT  dbo.aspnet_Applications (ApplicationId, ApplicationName, LoweredApplicationName)
            VALUES  (@ApplicationId, @ApplicationName, LOWER(@ApplicationName))
        END


        IF( @TranStarted = 1 )
        BEGIN
            IF(@@ERROR = 0)
            BEGIN
	        SET @TranStarted = 0
	        COMMIT TRANSACTION
            END
            ELSE
            BEGIN
                SET @TranStarted = 0
                ROLLBACK TRANSACTION
            END
        END
    END
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Personalization_GetApplicationId]    Script Date: 06/19/2011 06:53:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Personalization_GetApplicationId] (
    @ApplicationName NVARCHAR(256),
    @ApplicationId UNIQUEIDENTIFIER OUT)
AS
BEGIN
    SELECT @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Paths_CreatePath]    Script Date: 06/19/2011 06:53:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Paths_CreatePath]
    @ApplicationId UNIQUEIDENTIFIER,
    @Path           NVARCHAR(256),
    @PathId         UNIQUEIDENTIFIER OUTPUT
AS
BEGIN
    BEGIN TRANSACTION
    IF (NOT EXISTS(SELECT * FROM dbo.aspnet_Paths WHERE LoweredPath = LOWER(@Path) AND ApplicationId = @ApplicationId))
    BEGIN
        INSERT dbo.aspnet_Paths (ApplicationId, Path, LoweredPath) VALUES (@ApplicationId, @Path, LOWER(@Path))
    END
    COMMIT TRANSACTION
    SELECT @PathId = PathId FROM dbo.aspnet_Paths WHERE LOWER(@Path) = LoweredPath AND ApplicationId = @ApplicationId
END
GO
/****** Object:  Table [dbo].[aspnet_PersonalizationAllUsers]    Script Date: 06/19/2011 06:53:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_PersonalizationAllUsers](
	[PathId] [uniqueidentifier] NOT NULL,
	[PageSettings] [image] NOT NULL,
	[LastUpdatedDate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PathId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[aspnet_Users]    Script Date: 06/19/2011 06:53:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Users](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[UserName] [nvarchar](256) COLLATE Vietnamese_CI_AS NOT NULL,
	[LoweredUserName] [nvarchar](256) COLLATE Vietnamese_CI_AS NOT NULL,
	[MobileAlias] [nvarchar](16) COLLATE Vietnamese_CI_AS NULL,
	[IsAnonymous] [bit] NOT NULL,
	[LastActivityDate] [datetime] NOT NULL,
	[MaThongTinTaiKhoan] [int] NULL,
	[MaThongTinDauGia] [int] NULL,
 CONSTRAINT [PK__aspnet_U__1788CC4D403A8C7D] PRIMARY KEY NONCLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [aspnet_Users_Index3] UNIQUE NONCLUSTERED 
(
	[MaThongTinTaiKhoan] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [aspnet_Users_Index4] UNIQUE NONCLUSTERED 
(
	[MaThongTinDauGia] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE UNIQUE CLUSTERED INDEX [aspnet_Users_Index] ON [dbo].[aspnet_Users] 
(
	[ApplicationId] ASC,
	[LoweredUserName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [aspnet_Users_Index2] ON [dbo].[aspnet_Users] 
(
	[ApplicationId] ASC,
	[LastActivityDate] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate], [MaThongTinTaiKhoan], [MaThongTinDauGia]) VALUES (N'53471200-a967-4f75-9fab-29190aa0db5a', N'fcb1d572-28d0-4b3b-a395-428db775ba4c', N'admin01', N'admin01', NULL, 0, CAST(0x00009F0601889D98 AS DateTime), 21, 21)
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate], [MaThongTinTaiKhoan], [MaThongTinDauGia]) VALUES (N'53471200-a967-4f75-9fab-29190aa0db5a', N'8a7db9f4-70a9-475e-b381-7777fe67a78f', N'akhoi90', N'akhoi90', NULL, 0, CAST(0x00009EF10175A2C8 AS DateTime), 6, 6)
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate], [MaThongTinTaiKhoan], [MaThongTinDauGia]) VALUES (N'53471200-a967-4f75-9fab-29190aa0db5a', N'7960f9d8-2a2e-4c24-96d4-6fc815a6a4f6', N'anhkhoahome', N'anhkhoahome', NULL, 0, CAST(0x00009EF10175A2C8 AS DateTime), 9, 9)
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate], [MaThongTinTaiKhoan], [MaThongTinDauGia]) VALUES (N'53471200-a967-4f75-9fab-29190aa0db5a', N'c4d30ed2-6cad-4d5c-885d-f4e0b60ebff5', N'chuvuachuoi', N'chuvuachuoi', NULL, 0, CAST(0x00009EF10175A2C8 AS DateTime), 12, 12)
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate], [MaThongTinTaiKhoan], [MaThongTinDauGia]) VALUES (N'53471200-a967-4f75-9fab-29190aa0db5a', N'ab9e6186-cf52-4018-9800-1788c6c7b088', N'dkhoapc', N'dkhoapc', NULL, 0, CAST(0x00009EF10175A2C8 AS DateTime), 18, 18)
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate], [MaThongTinTaiKhoan], [MaThongTinDauGia]) VALUES (N'53471200-a967-4f75-9fab-29190aa0db5a', N'5ab2c426-e525-402c-9f50-105e500c45f1', N'khanhxin', N'khanhxin', NULL, 0, CAST(0x00009EF10175A2C8 AS DateTime), 15, 15)
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate], [MaThongTinTaiKhoan], [MaThongTinDauGia]) VALUES (N'53471200-a967-4f75-9fab-29190aa0db5a', N'43a14f48-3ed8-4749-b533-15724e8ffb4a', N'khigianguyen', N'khigianguyen', NULL, 0, CAST(0x00009EF10175A2C8 AS DateTime), 11, 11)
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate], [MaThongTinTaiKhoan], [MaThongTinDauGia]) VALUES (N'53471200-a967-4f75-9fab-29190aa0db5a', N'0cfc1438-65e4-45e3-92de-694fc8066d0f', N'khoamap', N'khoamap', NULL, 0, CAST(0x00009EF10175A2C8 AS DateTime), 19, 19)
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate], [MaThongTinTaiKhoan], [MaThongTinDauGia]) VALUES (N'53471200-a967-4f75-9fab-29190aa0db5a', N'779a2d6e-c98c-40ed-8f1b-1eea4ec867ed', N'khoasniper', N'khoasniper', NULL, 0, CAST(0x00009EF10175A2C8 AS DateTime), 13, 13)
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate], [MaThongTinTaiKhoan], [MaThongTinDauGia]) VALUES (N'53471200-a967-4f75-9fab-29190aa0db5a', N'02ac08d0-8219-4fcc-a3a0-ea72b90999c5', N'luyenpc', N'luyenpc', NULL, 0, CAST(0x00009EF10175A2C8 AS DateTime), 20, 20)
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate], [MaThongTinTaiKhoan], [MaThongTinDauGia]) VALUES (N'53471200-a967-4f75-9fab-29190aa0db5a', N'ac822908-f7cf-4479-8e24-155774333fc3', N'luyentocon', N'luyentocon', NULL, 0, CAST(0x00009EF10175A2C8 AS DateTime), 14, 14)
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate], [MaThongTinTaiKhoan], [MaThongTinDauGia]) VALUES (N'53471200-a967-4f75-9fab-29190aa0db5a', N'5dd5572d-f482-443e-97e6-a0a606d4b3fd', N'manager01', N'manager01', NULL, 0, CAST(0x00009F060188CC08 AS DateTime), 22, 22)
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate], [MaThongTinTaiKhoan], [MaThongTinDauGia]) VALUES (N'53471200-a967-4f75-9fab-29190aa0db5a', N'74fdcf60-542b-4c49-996e-dc833b956bd3', N'member01', N'member01', NULL, 0, CAST(0x00009F060189360C AS DateTime), 23, 23)
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate], [MaThongTinTaiKhoan], [MaThongTinDauGia]) VALUES (N'53471200-a967-4f75-9fab-29190aa0db5a', N'5a01104a-dc94-4b37-85dd-ee444082d8f7', N'minhkhanhhaugiang', N'minhkhanhhaugiang', NULL, 0, CAST(0x00009EF10175A2C8 AS DateTime), 8, 8)
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate], [MaThongTinTaiKhoan], [MaThongTinDauGia]) VALUES (N'53471200-a967-4f75-9fab-29190aa0db5a', N'87539c87-ddb0-4f9b-a023-11b3ef9fd3e6', N'nakhoi', N'nakhoi', NULL, 0, CAST(0x00009EF1017594B8 AS DateTime), 1, 1)
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate], [MaThongTinTaiKhoan], [MaThongTinDauGia]) VALUES (N'53471200-a967-4f75-9fab-29190aa0db5a', N'74f42e24-c720-43b1-ab48-58fee9ef7511', N'ndluyen', N'ndluyen', NULL, 0, CAST(0x00009EF101759CEC AS DateTime), 2, 2)
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate], [MaThongTinTaiKhoan], [MaThongTinDauGia]) VALUES (N'53471200-a967-4f75-9fab-29190aa0db5a', N'bb8ac07f-da75-4d2c-8c0e-6607845ebd16', N'nguyendinhluyen0808', N'nguyendinhluyen0808', NULL, 0, CAST(0x00009EF10175A2C8 AS DateTime), 7, 7)
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate], [MaThongTinTaiKhoan], [MaThongTinDauGia]) VALUES (N'53471200-a967-4f75-9fab-29190aa0db5a', N'499f0648-38dc-4527-ab8e-39f23a0b7325', N'onmyway133', N'onmyway133', NULL, 0, CAST(0x00009EF10175A2C8 AS DateTime), 10, 10)
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate], [MaThongTinTaiKhoan], [MaThongTinDauGia]) VALUES (N'53471200-a967-4f75-9fab-29190aa0db5a', N'2526bb3f-d91d-4cfd-8e99-513c0ba08392', N'pdkhoa', N'pdkhoa', NULL, 0, CAST(0x00009EF10175A2C8 AS DateTime), 4, 4)
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate], [MaThongTinTaiKhoan], [MaThongTinDauGia]) VALUES (N'53471200-a967-4f75-9fab-29190aa0db5a', N'186fe447-0c27-44f2-b776-10d174a604d4', N'rapman', N'rapman', NULL, 0, CAST(0x00009EF10175A2C8 AS DateTime), 16, 16)
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate], [MaThongTinTaiKhoan], [MaThongTinDauGia]) VALUES (N'53471200-a967-4f75-9fab-29190aa0db5a', N'bbdb7370-6982-4b73-9eaf-1be4ba371a41', N'takhoa', N'takhoa', NULL, 0, CAST(0x00009EF10175A2C8 AS DateTime), 5, 5)
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate], [MaThongTinTaiKhoan], [MaThongTinDauGia]) VALUES (N'53471200-a967-4f75-9fab-29190aa0db5a', N'fe3ab86f-b8e6-4bd0-ac2a-f8e1f6e147d5', N'tmkhanh', N'tmkhanh', NULL, 0, CAST(0x00009EF10175A19C AS DateTime), 3, 3)
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate], [MaThongTinTaiKhoan], [MaThongTinDauGia]) VALUES (N'53471200-a967-4f75-9fab-29190aa0db5a', N'6cf7e68b-2222-4614-83d3-1ca850592c2d', N'wiki', N'wiki', NULL, 0, CAST(0x00009EF10175A2C8 AS DateTime), 17, 17)
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_RoleExists]    Script Date: 06/19/2011 06:53:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Roles_RoleExists]
    @ApplicationName  nvarchar(256),
    @RoleName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(0)
    IF (EXISTS (SELECT RoleName FROM dbo.aspnet_Roles WHERE LOWER(@RoleName) = LoweredRoleName AND ApplicationId = @ApplicationId ))
        RETURN(1)
    ELSE
        RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_GetAllRoles]    Script Date: 06/19/2011 06:53:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Roles_GetAllRoles] (
    @ApplicationName           nvarchar(256))
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN
    SELECT RoleName
    FROM   dbo.aspnet_Roles WHERE ApplicationId = @ApplicationId
    ORDER BY RoleName
END
GO
/****** Object:  View [dbo].[vw_aspnet_Roles]    Script Date: 06/19/2011 06:53:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE VIEW [dbo].[vw_aspnet_Roles]
  AS SELECT [dbo].[aspnet_Roles].[ApplicationId], [dbo].[aspnet_Roles].[RoleId], [dbo].[aspnet_Roles].[RoleName], [dbo].[aspnet_Roles].[LoweredRoleName], [dbo].[aspnet_Roles].[Description]
  FROM [dbo].[aspnet_Roles]
GO
/****** Object:  View [dbo].[vw_aspnet_WebPartState_Paths]    Script Date: 06/19/2011 06:53:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE VIEW [dbo].[vw_aspnet_WebPartState_Paths]
  AS SELECT [dbo].[aspnet_Paths].[ApplicationId], [dbo].[aspnet_Paths].[PathId], [dbo].[aspnet_Paths].[Path], [dbo].[aspnet_Paths].[LoweredPath]
  FROM [dbo].[aspnet_Paths]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_CreateRole]    Script Date: 06/19/2011 06:53:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Roles_CreateRole]
    @ApplicationName  nvarchar(256),
    @RoleName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
        BEGIN TRANSACTION
        SET @TranStarted = 1
    END
    ELSE
        SET @TranStarted = 0

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF (EXISTS(SELECT RoleId FROM dbo.aspnet_Roles WHERE LoweredRoleName = LOWER(@RoleName) AND ApplicationId = @ApplicationId))
    BEGIN
        SET @ErrorCode = 1
        GOTO Cleanup
    END

    INSERT INTO dbo.aspnet_Roles
                (ApplicationId, RoleName, LoweredRoleName)
         VALUES (@ApplicationId, @RoleName, LOWER(@RoleName))

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
        COMMIT TRANSACTION
    END

    RETURN(0)

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
        ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Users_CreateUser]    Script Date: 06/19/2011 06:53:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Users_CreateUser]
    @ApplicationId    uniqueidentifier,
    @UserName         nvarchar(256),
    @IsUserAnonymous  bit,
    @LastActivityDate DATETIME,
    @UserId           uniqueidentifier OUTPUT
AS
BEGIN
    IF( @UserId IS NULL )
        SELECT @UserId = NEWID()
    ELSE
    BEGIN
        IF( EXISTS( SELECT UserId FROM dbo.aspnet_Users
                    WHERE @UserId = UserId ) )
            RETURN -1
    END

    INSERT dbo.aspnet_Users (ApplicationId, UserId, UserName, LoweredUserName, IsAnonymous, LastActivityDate)
    VALUES (@ApplicationId, @UserId, @UserName, LOWER(@UserName), @IsUserAnonymous, @LastActivityDate)

    RETURN 0
END
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 06/19/2011 06:53:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSanPham] [int] IDENTITY(1,1) NOT NULL,
	[MaTaiKhoan] [uniqueidentifier] NULL,
	[MaLoaiSanPham] [int] NULL,
	[MaTinhTrangSanPham] [int] NULL,
	[MaHinhMoTa] [int] NULL,
	[TenSanPham] [nvarchar](50) COLLATE Vietnamese_CI_AS NULL,
	[GiaKhoiDiem] [float] NULL,
	[GiaHienTai] [float] NULL,
	[NgayDang] [datetime] NULL,
	[NgayHetHan] [datetime] NULL,
	[MoTaSanPham] [nvarchar](50) COLLATE Vietnamese_CI_AS NULL,
 CONSTRAINT [PK__SanPham__0DAF0CB0] PRIMARY KEY CLUSTERED 
(
	[MaSanPham] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[SanPham] ON
INSERT [dbo].[SanPham] ([MaSanPham], [MaTaiKhoan], [MaLoaiSanPham], [MaTinhTrangSanPham], [MaHinhMoTa], [TenSanPham], [GiaKhoiDiem], [GiaHienTai], [NgayDang], [NgayHetHan], [MoTaSanPham]) VALUES (1, N'8a7db9f4-70a9-475e-b381-7777fe67a78f', 1, 2, 1, N'Đèn bàn', 100000, 1000000, CAST(0x00009EF100000000 AS DateTime), CAST(0x00009F1000000000 AS DateTime), N'Đèn bàn tiêu chuẩn hoa kì')
INSERT [dbo].[SanPham] ([MaSanPham], [MaTaiKhoan], [MaLoaiSanPham], [MaTinhTrangSanPham], [MaHinhMoTa], [TenSanPham], [GiaKhoiDiem], [GiaHienTai], [NgayDang], [NgayHetHan], [MoTaSanPham]) VALUES (2, N'ab9e6186-cf52-4018-9800-1788c6c7b088', 2, 3, 2, N'Áo thun chelsea', 50000, 100000, CAST(0x00009EEE00000000 AS DateTime), CAST(0x00009EEF00000000 AS DateTime), N'Chất liệu siêu nhẹ')
INSERT [dbo].[SanPham] ([MaSanPham], [MaTaiKhoan], [MaLoaiSanPham], [MaTinhTrangSanPham], [MaHinhMoTa], [TenSanPham], [GiaKhoiDiem], [GiaHienTai], [NgayDang], [NgayHetHan], [MoTaSanPham]) VALUES (3, N'fe3ab86f-b8e6-4bd0-ac2a-f8e1f6e147d5', 2, 1, 3, N'Giày thể thao', 200000, 300000, CAST(0x00009EE900000000 AS DateTime), CAST(0x00009F0000000000 AS DateTime), N'Chính hãng Aididai')
INSERT [dbo].[SanPham] ([MaSanPham], [MaTaiKhoan], [MaLoaiSanPham], [MaTinhTrangSanPham], [MaHinhMoTa], [TenSanPham], [GiaKhoiDiem], [GiaHienTai], [NgayDang], [NgayHetHan], [MoTaSanPham]) VALUES (4, N'fe3ab86f-b8e6-4bd0-ac2a-f8e1f6e147d5', 5, 1, 4, N'Sách vở', 100, 1000, CAST(0x00009EC300000000 AS DateTime), CAST(0x00009FB700000000 AS DateTime), N'Hàng chính hãng')
INSERT [dbo].[SanPham] ([MaSanPham], [MaTaiKhoan], [MaLoaiSanPham], [MaTinhTrangSanPham], [MaHinhMoTa], [TenSanPham], [GiaKhoiDiem], [GiaHienTai], [NgayDang], [NgayHetHan], [MoTaSanPham]) VALUES (5, N'74f42e24-c720-43b1-ab48-58fee9ef7511', 2, 1, 5, N'Áo Bamboo', 300, 1000, CAST(0x00009EF100000000 AS DateTime), CAST(0x00009EF200000000 AS DateTime), N'Hàng chính hãng')
INSERT [dbo].[SanPham] ([MaSanPham], [MaTaiKhoan], [MaLoaiSanPham], [MaTinhTrangSanPham], [MaHinhMoTa], [TenSanPham], [GiaKhoiDiem], [GiaHienTai], [NgayDang], [NgayHetHan], [MoTaSanPham]) VALUES (6, N'74f42e24-c720-43b1-ab48-58fee9ef7511', 8, 3, 6, N'Điện thoại Nokia', 300, 1000, CAST(0x00009EF100000000 AS DateTime), CAST(0x00009EF200000000 AS DateTime), N'Bảo hành 1 năm')
INSERT [dbo].[SanPham] ([MaSanPham], [MaTaiKhoan], [MaLoaiSanPham], [MaTinhTrangSanPham], [MaHinhMoTa], [TenSanPham], [GiaKhoiDiem], [GiaHienTai], [NgayDang], [NgayHetHan], [MoTaSanPham]) VALUES (7, N'8a7db9f4-70a9-475e-b381-7777fe67a78f', 8, 3, 7, N'Điện thoại SamSung', 100000, 1000000, CAST(0x00009EF100000000 AS DateTime), CAST(0x00009F1000000000 AS DateTime), N'Bảo hành 1 năm')
INSERT [dbo].[SanPham] ([MaSanPham], [MaTaiKhoan], [MaLoaiSanPham], [MaTinhTrangSanPham], [MaHinhMoTa], [TenSanPham], [GiaKhoiDiem], [GiaHienTai], [NgayDang], [NgayHetHan], [MoTaSanPham]) VALUES (8, N'ab9e6186-cf52-4018-9800-1788c6c7b088', 4, 3, 8, N'Laptop Sony', 50000, 100000, CAST(0x00009EEE00000000 AS DateTime), CAST(0x00009EEF00000000 AS DateTime), N'Bảo hành 2 năm')
INSERT [dbo].[SanPham] ([MaSanPham], [MaTaiKhoan], [MaLoaiSanPham], [MaTinhTrangSanPham], [MaHinhMoTa], [TenSanPham], [GiaKhoiDiem], [GiaHienTai], [NgayDang], [NgayHetHan], [MoTaSanPham]) VALUES (9, N'fe3ab86f-b8e6-4bd0-ac2a-f8e1f6e147d5', 4, 3, 9, N'Macbook pro', 200000, 300000, CAST(0x00009EE900000000 AS DateTime), CAST(0x00009F0000000000 AS DateTime), N'Chính hãng Mac')
INSERT [dbo].[SanPham] ([MaSanPham], [MaTaiKhoan], [MaLoaiSanPham], [MaTinhTrangSanPham], [MaHinhMoTa], [TenSanPham], [GiaKhoiDiem], [GiaHienTai], [NgayDang], [NgayHetHan], [MoTaSanPham]) VALUES (10, N'fe3ab86f-b8e6-4bd0-ac2a-f8e1f6e147d5', 8, 3, 10, N'Iphone', 100, 1000, CAST(0x00009EC300000000 AS DateTime), CAST(0x00009FB700000000 AS DateTime), N'Chính hảng Iphone')
INSERT [dbo].[SanPham] ([MaSanPham], [MaTaiKhoan], [MaLoaiSanPham], [MaTinhTrangSanPham], [MaHinhMoTa], [TenSanPham], [GiaKhoiDiem], [GiaHienTai], [NgayDang], [NgayHetHan], [MoTaSanPham]) VALUES (11, N'74f42e24-c720-43b1-ab48-58fee9ef7511', 1, 3, 11, N'Bóng đèn', 300, 1000, CAST(0x00009EF100000000 AS DateTime), CAST(0x00009EF200000000 AS DateTime), N'Bảo hành 2 tháng')
INSERT [dbo].[SanPham] ([MaSanPham], [MaTaiKhoan], [MaLoaiSanPham], [MaTinhTrangSanPham], [MaHinhMoTa], [TenSanPham], [GiaKhoiDiem], [GiaHienTai], [NgayDang], [NgayHetHan], [MoTaSanPham]) VALUES (12, N'74f42e24-c720-43b1-ab48-58fee9ef7511', 1, 3, 12, N'Tivi LG', 300, 1000, CAST(0x00009EF100000000 AS DateTime), CAST(0x00009EF200000000 AS DateTime), N'Hàng chính hãng LG')
INSERT [dbo].[SanPham] ([MaSanPham], [MaTaiKhoan], [MaLoaiSanPham], [MaTinhTrangSanPham], [MaHinhMoTa], [TenSanPham], [GiaKhoiDiem], [GiaHienTai], [NgayDang], [NgayHetHan], [MoTaSanPham]) VALUES (13, N'74f42e24-c720-43b1-ab48-58fee9ef7511', 8, 3, 13, N'Bút bi Thiên Long', 300, 1000, CAST(0x00009EF100000000 AS DateTime), CAST(0x00009EF200000000 AS DateTime), N'Khuyến mãi lớn')
INSERT [dbo].[SanPham] ([MaSanPham], [MaTaiKhoan], [MaLoaiSanPham], [MaTinhTrangSanPham], [MaHinhMoTa], [TenSanPham], [GiaKhoiDiem], [GiaHienTai], [NgayDang], [NgayHetHan], [MoTaSanPham]) VALUES (14, N'8a7db9f4-70a9-475e-b381-7777fe67a78f', 6, 3, 14, N'Máy ảnh Canon', 100000, 1000000, CAST(0x00009EF100000000 AS DateTime), CAST(0x00009F1000000000 AS DateTime), N'Sét nét từng chi tiết')
INSERT [dbo].[SanPham] ([MaSanPham], [MaTaiKhoan], [MaLoaiSanPham], [MaTinhTrangSanPham], [MaHinhMoTa], [TenSanPham], [GiaKhoiDiem], [GiaHienTai], [NgayDang], [NgayHetHan], [MoTaSanPham]) VALUES (15, N'8a7db9f4-70a9-475e-b381-7777fe67a78f', 1, 3, 15, N'Bàn gỗ', 100000, 1000000, CAST(0x00009EF100000000 AS DateTime), CAST(0x00009F1000000000 AS DateTime), N'Chất liệu gỗ 100%')
SET IDENTITY_INSERT [dbo].[SanPham] OFF
/****** Object:  View [dbo].[vw_aspnet_WebPartState_Shared]    Script Date: 06/19/2011 06:53:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE VIEW [dbo].[vw_aspnet_WebPartState_Shared]
  AS SELECT [dbo].[aspnet_PersonalizationAllUsers].[PathId], [DataSize]=DATALENGTH([dbo].[aspnet_PersonalizationAllUsers].[PageSettings]), [dbo].[aspnet_PersonalizationAllUsers].[LastUpdatedDate]
  FROM [dbo].[aspnet_PersonalizationAllUsers]
GO
/****** Object:  View [dbo].[vw_aspnet_Users]    Script Date: 06/19/2011 06:53:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE VIEW [dbo].[vw_aspnet_Users]
  AS SELECT [dbo].[aspnet_Users].[ApplicationId], [dbo].[aspnet_Users].[UserId], [dbo].[aspnet_Users].[UserName], [dbo].[aspnet_Users].[LoweredUserName], [dbo].[aspnet_Users].[MobileAlias], [dbo].[aspnet_Users].[IsAnonymous], [dbo].[aspnet_Users].[LastActivityDate]
  FROM [dbo].[aspnet_Users]
GO
/****** Object:  Table [dbo].[aspnet_Profile]    Script Date: 06/19/2011 06:53:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Profile](
	[UserId] [uniqueidentifier] NOT NULL,
	[PropertyNames] [ntext] COLLATE Vietnamese_CI_AS NOT NULL,
	[PropertyValuesString] [ntext] COLLATE Vietnamese_CI_AS NOT NULL,
	[PropertyValuesBinary] [image] NOT NULL,
	[LastUpdatedDate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[aspnet_UsersInRoles]    Script Date: 06/19/2011 06:53:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_UsersInRoles](
	[UserId] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [aspnet_UsersInRoles_index] ON [dbo].[aspnet_UsersInRoles] 
(
	[RoleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
INSERT [dbo].[aspnet_UsersInRoles] ([UserId], [RoleId]) VALUES (N'5dd5572d-f482-443e-97e6-a0a606d4b3fd', N'eb26ac46-1ec8-4e79-90a0-1d4b09e91839')
INSERT [dbo].[aspnet_UsersInRoles] ([UserId], [RoleId]) VALUES (N'fcb1d572-28d0-4b3b-a395-428db775ba4c', N'00e4514b-0207-48fb-8736-27384c47cc04')
INSERT [dbo].[aspnet_UsersInRoles] ([UserId], [RoleId]) VALUES (N'74fdcf60-542b-4c49-996e-dc833b956bd3', N'df5600db-c157-4273-b73a-5134b7727600')
/****** Object:  Table [dbo].[aspnet_PersonalizationPerUser]    Script Date: 06/19/2011 06:53:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_PersonalizationPerUser](
	[Id] [uniqueidentifier] NOT NULL,
	[PathId] [uniqueidentifier] NULL,
	[UserId] [uniqueidentifier] NULL,
	[PageSettings] [image] NOT NULL,
	[LastUpdatedDate] [datetime] NOT NULL,
PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
CREATE UNIQUE CLUSTERED INDEX [aspnet_PersonalizationPerUser_index1] ON [dbo].[aspnet_PersonalizationPerUser] 
(
	[PathId] ASC,
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [aspnet_PersonalizationPerUser_ncindex2] ON [dbo].[aspnet_PersonalizationPerUser] 
(
	[UserId] ASC,
	[PathId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAllUsers_SetPageSettings]    Script Date: 06/19/2011 06:53:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAllUsers_SetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @Path             NVARCHAR(256),
    @PageSettings     IMAGE,
    @CurrentTimeUtc   DATETIME)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        EXEC dbo.aspnet_Paths_CreatePath @ApplicationId, @Path, @PathId OUTPUT
    END

    IF (EXISTS(SELECT PathId FROM dbo.aspnet_PersonalizationAllUsers WHERE PathId = @PathId))
        UPDATE dbo.aspnet_PersonalizationAllUsers SET PageSettings = @PageSettings, LastUpdatedDate = @CurrentTimeUtc WHERE PathId = @PathId
    ELSE
        INSERT INTO dbo.aspnet_PersonalizationAllUsers(PathId, PageSettings, LastUpdatedDate) VALUES (@PathId, @PageSettings, @CurrentTimeUtc)
    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAllUsers_ResetPageSettings]    Script Date: 06/19/2011 06:53:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAllUsers_ResetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @Path              NVARCHAR(256))
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL

    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        RETURN
    END

    DELETE FROM dbo.aspnet_PersonalizationAllUsers WHERE PathId = @PathId
    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAllUsers_GetPageSettings]    Script Date: 06/19/2011 06:53:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAllUsers_GetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @Path              NVARCHAR(256))
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL

    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        RETURN
    END

    SELECT p.PageSettings FROM dbo.aspnet_PersonalizationAllUsers p WHERE p.PathId = @PathId
END
GO
/****** Object:  Table [dbo].[aspnet_Membership]    Script Date: 06/19/2011 06:53:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Membership](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[Password] [nvarchar](128) COLLATE Vietnamese_CI_AS NOT NULL,
	[PasswordFormat] [int] NOT NULL,
	[PasswordSalt] [nvarchar](128) COLLATE Vietnamese_CI_AS NOT NULL,
	[MobilePIN] [nvarchar](16) COLLATE Vietnamese_CI_AS NULL,
	[Email] [nvarchar](256) COLLATE Vietnamese_CI_AS NULL,
	[LoweredEmail] [nvarchar](256) COLLATE Vietnamese_CI_AS NULL,
	[PasswordQuestion] [nvarchar](256) COLLATE Vietnamese_CI_AS NULL,
	[PasswordAnswer] [nvarchar](128) COLLATE Vietnamese_CI_AS NULL,
	[IsApproved] [bit] NOT NULL,
	[IsLockedOut] [bit] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[LastLoginDate] [datetime] NOT NULL,
	[LastPasswordChangedDate] [datetime] NOT NULL,
	[LastLockoutDate] [datetime] NOT NULL,
	[FailedPasswordAttemptCount] [int] NOT NULL,
	[FailedPasswordAttemptWindowStart] [datetime] NOT NULL,
	[FailedPasswordAnswerAttemptCount] [int] NOT NULL,
	[FailedPasswordAnswerAttemptWindowStart] [datetime] NOT NULL,
	[Comment] [ntext] COLLATE Vietnamese_CI_AS NULL,
PRIMARY KEY NONCLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
CREATE CLUSTERED INDEX [aspnet_Membership_index] ON [dbo].[aspnet_Membership] 
(
	[ApplicationId] ASC,
	[LoweredEmail] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'53471200-a967-4f75-9fab-29190aa0db5a', N'5dd5572d-f482-443e-97e6-a0a606d4b3fd', N'S0b0vL8a5wnPNk+2HJCsDL3dE/c=', 1, N'p9Kd2lIg+Se68+lITePx0A==', NULL, N'aasdaman@oo.com', N'aasdaman@oo.com', NULL, NULL, 1, 0, CAST(0x00009F060188CB14 AS DateTime), CAST(0x00009F060188CC08 AS DateTime), CAST(0x00009F060188CB14 AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'53471200-a967-4f75-9fab-29190aa0db5a', N'74fdcf60-542b-4c49-996e-dc833b956bd3', N'sUQen2JO/FZxT1cT+MKMwov0Tps=', 1, N'pZlwphT0PXLmq1oE1g54Ug==', NULL, N'admem@sddd.com', N'admem@sddd.com', NULL, NULL, 1, 0, CAST(0x00009F06018935B8 AS DateTime), CAST(0x00009F060189360C AS DateTime), CAST(0x00009F06018935B8 AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'53471200-a967-4f75-9fab-29190aa0db5a', N'8a7db9f4-70a9-475e-b381-7777fe67a78f', N'Hm+xmdmF/iF5LRqJaGSY/Z/8gVY=', 1, N'NBdzVi4JByZ1srxsGxYCHw==', NULL, N'akhoi90@gmail.com', N'akhoi90@gmail.com', NULL, NULL, 1, 0, CAST(0x00009EF10175A2C8 AS DateTime), CAST(0x00009EF10175A2C8 AS DateTime), CAST(0x00009EF10175A2C8 AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'53471200-a967-4f75-9fab-29190aa0db5a', N'7960f9d8-2a2e-4c24-96d4-6fc815a6a4f6', N'Rje3kwAz9XEWg4BIKp9tJRJtfM0=', 1, N'ACSTf2bl4Yjr7qOzCu67qA==', NULL, N'anhkhoahome@gmail.com', N'anhkhoahome@gmail.com', NULL, NULL, 1, 0, CAST(0x00009EF10175A2C8 AS DateTime), CAST(0x00009EF10175A2C8 AS DateTime), CAST(0x00009EF10175A2C8 AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'53471200-a967-4f75-9fab-29190aa0db5a', N'fcb1d572-28d0-4b3b-a395-428db775ba4c', N'NpnKkFmrCDLrCC1J2BokVPyGAgs=', 1, N'Bs1oayAXDMNQWghmZWpSpQ==', NULL, N'asad@asd.com', N'asad@asd.com', NULL, NULL, 1, 0, CAST(0x00009F0601889C34 AS DateTime), CAST(0x00009F0601889D98 AS DateTime), CAST(0x00009F0601889C34 AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'53471200-a967-4f75-9fab-29190aa0db5a', N'c4d30ed2-6cad-4d5c-885d-f4e0b60ebff5', N'xITNnHVddMfz7Dp1X4yBvKshggo=', 1, N'eaA/Ae4y9kM8Hijz+mHDXA==', NULL, N'chuvuachuoi@gmail.com', N'chuvuachuoi@gmail.com', NULL, NULL, 1, 0, CAST(0x00009EF10175A2C8 AS DateTime), CAST(0x00009EF10175A2C8 AS DateTime), CAST(0x00009EF10175A2C8 AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'53471200-a967-4f75-9fab-29190aa0db5a', N'ab9e6186-cf52-4018-9800-1788c6c7b088', N'SAovOtd7A1vpggyDOWuv59+s9/I=', 1, N'5syxc1YGGfiBrnITBrVyEQ==', NULL, N'dkhoapc@gmail.com', N'dkhoapc@gmail.com', NULL, NULL, 1, 0, CAST(0x00009EF10175A2C8 AS DateTime), CAST(0x00009EF10175A2C8 AS DateTime), CAST(0x00009EF10175A2C8 AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'53471200-a967-4f75-9fab-29190aa0db5a', N'5ab2c426-e525-402c-9f50-105e500c45f1', N'wM6BN5PWYeNhmDe7VccylreNfjU=', 1, N'rzSCMB9vmzq/Svj0gq3eXw==', NULL, N'khanhxin@gmail.com', N'khanhxin@gmail.com', NULL, NULL, 1, 0, CAST(0x00009EF10175A2C8 AS DateTime), CAST(0x00009EF10175A2C8 AS DateTime), CAST(0x00009EF10175A2C8 AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'53471200-a967-4f75-9fab-29190aa0db5a', N'43a14f48-3ed8-4749-b533-15724e8ffb4a', N'eOH1ZngO5rknAf/7UR4t671kGgA=', 1, N'nm02sCTDPi1di8U9i7h2tw==', NULL, N'khigianguyen@gmail.com', N'khigianguyen@gmail.com', NULL, NULL, 1, 0, CAST(0x00009EF10175A2C8 AS DateTime), CAST(0x00009EF10175A2C8 AS DateTime), CAST(0x00009EF10175A2C8 AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'53471200-a967-4f75-9fab-29190aa0db5a', N'0cfc1438-65e4-45e3-92de-694fc8066d0f', N'sB2rZ9xrG+BRLqPUy7xEHxs4HpA=', 1, N'ZnisQC9XfibzA5Yj/+z+NA==', NULL, N'khoamap@gmail.com', N'khoamap@gmail.com', NULL, NULL, 1, 0, CAST(0x00009EF10175A2C8 AS DateTime), CAST(0x00009EF10175A2C8 AS DateTime), CAST(0x00009EF10175A2C8 AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'53471200-a967-4f75-9fab-29190aa0db5a', N'779a2d6e-c98c-40ed-8f1b-1eea4ec867ed', N'qyImazA0/zaxcewiIGropPe4e1w=', 1, N'/IlbOcLj2RqpNFjy4r7/NA==', NULL, N'khoasniper@gmail.com', N'khoasniper@gmail.com', NULL, NULL, 1, 0, CAST(0x00009EF10175A2C8 AS DateTime), CAST(0x00009EF10175A2C8 AS DateTime), CAST(0x00009EF10175A2C8 AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'53471200-a967-4f75-9fab-29190aa0db5a', N'02ac08d0-8219-4fcc-a3a0-ea72b90999c5', N'H0tH3g03X3fJaGIHNPN6jCz6ST4=', 1, N'WrBuoAuBjCkA/iiHjNXE+A==', NULL, N'luyenpc@gmail.com', N'luyenpc@gmail.com', NULL, NULL, 1, 0, CAST(0x00009EF10175A2C8 AS DateTime), CAST(0x00009EF10175A2C8 AS DateTime), CAST(0x00009EF10175A2C8 AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'53471200-a967-4f75-9fab-29190aa0db5a', N'ac822908-f7cf-4479-8e24-155774333fc3', N'2rSbqBS4B1cUbsJ/02LnHk6MfDs=', 1, N'/deporw6kzI9SBNuPc8WkA==', NULL, N'luyentocon@gmail.com', N'luyentocon@gmail.com', NULL, NULL, 1, 0, CAST(0x00009EF10175A2C8 AS DateTime), CAST(0x00009EF10175A2C8 AS DateTime), CAST(0x00009EF10175A2C8 AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'53471200-a967-4f75-9fab-29190aa0db5a', N'5a01104a-dc94-4b37-85dd-ee444082d8f7', N'8eSBZhtpwbtebmSJ6j/dig0MMBI=', 1, N'heatveHzrI6VapeTGJRvCw==', NULL, N'minhkhanhhaugiang@gmail.com', N'minhkhanhhaugiang@gmail.com', NULL, NULL, 1, 0, CAST(0x00009EF10175A2C8 AS DateTime), CAST(0x00009EF10175A2C8 AS DateTime), CAST(0x00009EF10175A2C8 AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'53471200-a967-4f75-9fab-29190aa0db5a', N'87539c87-ddb0-4f9b-a023-11b3ef9fd3e6', N'vYTEfJ6kq8aBT2xQjBdTlf6EwgQ=', 1, N'NNUdhDyjDnPz6R11J+uzXg==', NULL, N'nakhoi@gmail.com', N'nakhoi@gmail.com', NULL, NULL, 1, 0, CAST(0x00009EF1017594B8 AS DateTime), CAST(0x00009EF1017594B8 AS DateTime), CAST(0x00009EF1017594B8 AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'53471200-a967-4f75-9fab-29190aa0db5a', N'74f42e24-c720-43b1-ab48-58fee9ef7511', N'BO9LurC5uqQr/xhZKN5NZXC4YvM=', 1, N'v5yDCKrES0QMSIyWkdkUQQ==', NULL, N'ndluyen@gmail.com', N'ndluyen@gmail.com', NULL, NULL, 1, 0, CAST(0x00009EF101759CEC AS DateTime), CAST(0x00009EF101759CEC AS DateTime), CAST(0x00009EF101759CEC AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'53471200-a967-4f75-9fab-29190aa0db5a', N'bb8ac07f-da75-4d2c-8c0e-6607845ebd16', N'zXUmS2idzTex3ZSMP6jLQkgMrHA=', 1, N'VLocjqGvAcHby69me98h4w==', NULL, N'nguyendinhluyen0808@gmail.com', N'nguyendinhluyen0808@gmail.com', NULL, NULL, 1, 0, CAST(0x00009EF10175A2C8 AS DateTime), CAST(0x00009EF10175A2C8 AS DateTime), CAST(0x00009EF10175A2C8 AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'53471200-a967-4f75-9fab-29190aa0db5a', N'499f0648-38dc-4527-ab8e-39f23a0b7325', N'BxYHRxw/Y7GCn6jcs+iDqNigeRo=', 1, N'/vMd1ey4i9QkVIA/3tC3ug==', NULL, N'onmyway133@gmail.com', N'onmyway133@gmail.com', NULL, NULL, 1, 0, CAST(0x00009EF10175A2C8 AS DateTime), CAST(0x00009EF10175A2C8 AS DateTime), CAST(0x00009EF10175A2C8 AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'53471200-a967-4f75-9fab-29190aa0db5a', N'2526bb3f-d91d-4cfd-8e99-513c0ba08392', N'+CSil3a4MFuNaX35op1jA0t3ZtU=', 1, N'55c2dML/9sMo4PTzDWxdhQ==', NULL, N'pdkhoa@gmail.com', N'pdkhoa@gmail.com', NULL, NULL, 1, 0, CAST(0x00009EF10175A2C8 AS DateTime), CAST(0x00009EF10175A2C8 AS DateTime), CAST(0x00009EF10175A2C8 AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'53471200-a967-4f75-9fab-29190aa0db5a', N'186fe447-0c27-44f2-b776-10d174a604d4', N'SlfHpYoJ5kLeCGUEHDiY77G16U0=', 1, N'sl5Ycl+bpAJu30opE2ZWsA==', NULL, N'rapman@gmail.com', N'rapman@gmail.com', NULL, NULL, 1, 0, CAST(0x00009EF10175A2C8 AS DateTime), CAST(0x00009EF10175A2C8 AS DateTime), CAST(0x00009EF10175A2C8 AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'53471200-a967-4f75-9fab-29190aa0db5a', N'bbdb7370-6982-4b73-9eaf-1be4ba371a41', N'AASwVQOOF6LSqyMcWMvkTRxyY7A=', 1, N'E6sgLoI9eFLiymc6k4Htnw==', NULL, N'takhoa@gmail.com', N'takhoa@gmail.com', NULL, NULL, 1, 0, CAST(0x00009EF10175A2C8 AS DateTime), CAST(0x00009EF10175A2C8 AS DateTime), CAST(0x00009EF10175A2C8 AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'53471200-a967-4f75-9fab-29190aa0db5a', N'fe3ab86f-b8e6-4bd0-ac2a-f8e1f6e147d5', N'hL6qyGnHplscOte0pPQnz5yAbnA=', 1, N'83X2AgYimsYL0sXxSTfqcg==', NULL, N'tmkhanh@gmail.com', N'tmkhanh@gmail.com', NULL, NULL, 1, 0, CAST(0x00009EF10175A19C AS DateTime), CAST(0x00009EF10175A19C AS DateTime), CAST(0x00009EF10175A19C AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'53471200-a967-4f75-9fab-29190aa0db5a', N'6cf7e68b-2222-4614-83d3-1ca850592c2d', N'AME1GZw6hks8uXpU9OOyAANiTzk=', 1, N'rdV38svyPEPXFlD35uerNw==', NULL, N'wiki@gmail.com', N'wiki@gmail.com', NULL, NULL, 1, 0, CAST(0x00009EF10175A2C8 AS DateTime), CAST(0x00009EF10175A2C8 AS DateTime), CAST(0x00009EF10175A2C8 AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_ResetSharedState]    Script Date: 06/19/2011 06:53:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_ResetSharedState] (
    @Count int OUT,
    @ApplicationName NVARCHAR(256),
    @Path NVARCHAR(256))
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        SELECT @Count = 0
    ELSE
    BEGIN
        DELETE FROM dbo.aspnet_PersonalizationAllUsers
        WHERE PathId IN
            (SELECT AllUsers.PathId
             FROM dbo.aspnet_PersonalizationAllUsers AllUsers, dbo.aspnet_Paths Paths
             WHERE Paths.ApplicationId = @ApplicationId
                   AND AllUsers.PathId = Paths.PathId
                   AND Paths.LoweredPath = LOWER(@Path))

        SELECT @Count = @@ROWCOUNT
    END
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_UpdateUserInfo]    Script Date: 06/19/2011 06:53:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_UpdateUserInfo]
    @ApplicationName                nvarchar(256),
    @UserName                       nvarchar(256),
    @IsPasswordCorrect              bit,
    @UpdateLastLoginActivityDate    bit,
    @MaxInvalidPasswordAttempts     int,
    @PasswordAttemptWindow          int,
    @CurrentTimeUtc                 datetime,
    @LastLoginDate                  datetime,
    @LastActivityDate               datetime
AS
BEGIN
    DECLARE @UserId                                 uniqueidentifier
    DECLARE @IsApproved                             bit
    DECLARE @IsLockedOut                            bit
    DECLARE @LastLockoutDate                        datetime
    DECLARE @FailedPasswordAttemptCount             int
    DECLARE @FailedPasswordAttemptWindowStart       datetime
    DECLARE @FailedPasswordAnswerAttemptCount       int
    DECLARE @FailedPasswordAnswerAttemptWindowStart datetime

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    SELECT  @UserId = u.UserId,
            @IsApproved = m.IsApproved,
            @IsLockedOut = m.IsLockedOut,
            @LastLockoutDate = m.LastLockoutDate,
            @FailedPasswordAttemptCount = m.FailedPasswordAttemptCount,
            @FailedPasswordAttemptWindowStart = m.FailedPasswordAttemptWindowStart,
            @FailedPasswordAnswerAttemptCount = m.FailedPasswordAnswerAttemptCount,
            @FailedPasswordAnswerAttemptWindowStart = m.FailedPasswordAnswerAttemptWindowStart
    FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m WITH ( UPDLOCK )
    WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.ApplicationId = a.ApplicationId    AND
            u.UserId = m.UserId AND
            LOWER(@UserName) = u.LoweredUserName

    IF ( @@rowcount = 0 )
    BEGIN
        SET @ErrorCode = 1
        GOTO Cleanup
    END

    IF( @IsLockedOut = 1 )
    BEGIN
        GOTO Cleanup
    END

    IF( @IsPasswordCorrect = 0 )
    BEGIN
        IF( @CurrentTimeUtc > DATEADD( minute, @PasswordAttemptWindow, @FailedPasswordAttemptWindowStart ) )
        BEGIN
            SET @FailedPasswordAttemptWindowStart = @CurrentTimeUtc
            SET @FailedPasswordAttemptCount = 1
        END
        ELSE
        BEGIN
            SET @FailedPasswordAttemptWindowStart = @CurrentTimeUtc
            SET @FailedPasswordAttemptCount = @FailedPasswordAttemptCount + 1
        END

        BEGIN
            IF( @FailedPasswordAttemptCount >= @MaxInvalidPasswordAttempts )
            BEGIN
                SET @IsLockedOut = 1
                SET @LastLockoutDate = @CurrentTimeUtc
            END
        END
    END
    ELSE
    BEGIN
        IF( @FailedPasswordAttemptCount > 0 OR @FailedPasswordAnswerAttemptCount > 0 )
        BEGIN
            SET @FailedPasswordAttemptCount = 0
            SET @FailedPasswordAttemptWindowStart = CONVERT( datetime, '17540101', 112 )
            SET @FailedPasswordAnswerAttemptCount = 0
            SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, '17540101', 112 )
            SET @LastLockoutDate = CONVERT( datetime, '17540101', 112 )
        END
    END

    IF( @UpdateLastLoginActivityDate = 1 )
    BEGIN
        UPDATE  dbo.aspnet_Users
        SET     LastActivityDate = @LastActivityDate
        WHERE   @UserId = UserId

        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END

        UPDATE  dbo.aspnet_Membership
        SET     LastLoginDate = @LastLoginDate
        WHERE   UserId = @UserId

        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END
    END


    UPDATE dbo.aspnet_Membership
    SET IsLockedOut = @IsLockedOut, LastLockoutDate = @LastLockoutDate,
        FailedPasswordAttemptCount = @FailedPasswordAttemptCount,
        FailedPasswordAttemptWindowStart = @FailedPasswordAttemptWindowStart,
        FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount,
        FailedPasswordAnswerAttemptWindowStart = @FailedPasswordAnswerAttemptWindowStart
    WHERE @UserId = UserId

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
	SET @TranStarted = 0
	COMMIT TRANSACTION
    END

    RETURN @ErrorCode

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_UpdateUser]    Script Date: 06/19/2011 06:53:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_UpdateUser]
    @ApplicationName      nvarchar(256),
    @UserName             nvarchar(256),
    @Email                nvarchar(256),
    @Comment              ntext,
    @IsApproved           bit,
    @LastLoginDate        datetime,
    @LastActivityDate     datetime,
    @UniqueEmail          int,
    @CurrentTimeUtc       datetime
AS
BEGIN
    DECLARE @UserId uniqueidentifier
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @UserId = NULL
    SELECT  @UserId = u.UserId, @ApplicationId = a.ApplicationId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a, dbo.aspnet_Membership m
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId

    IF (@UserId IS NULL)
        RETURN(1)

    IF (@UniqueEmail = 1)
    BEGIN
        IF (EXISTS (SELECT *
                    FROM  dbo.aspnet_Membership WITH (UPDLOCK, HOLDLOCK)
                    WHERE ApplicationId = @ApplicationId  AND @UserId <> UserId AND LoweredEmail = LOWER(@Email)))
        BEGIN
            RETURN(7)
        END
    END

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
	SET @TranStarted = 0

    UPDATE dbo.aspnet_Users WITH (ROWLOCK)
    SET
         LastActivityDate = @LastActivityDate
    WHERE
       @UserId = UserId

    IF( @@ERROR <> 0 )
        GOTO Cleanup

    UPDATE dbo.aspnet_Membership WITH (ROWLOCK)
    SET
         Email            = @Email,
         LoweredEmail     = LOWER(@Email),
         Comment          = @Comment,
         IsApproved       = @IsApproved,
         LastLoginDate    = @LastLoginDate
    WHERE
       @UserId = UserId

    IF( @@ERROR <> 0 )
        GOTO Cleanup

    IF( @TranStarted = 1 )
    BEGIN
	SET @TranStarted = 0
	COMMIT TRANSACTION
    END

    RETURN 0

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN -1
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_UnlockUser]    Script Date: 06/19/2011 06:53:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_UnlockUser]
    @ApplicationName                         nvarchar(256),
    @UserName                                nvarchar(256)
AS
BEGIN
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL
    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a, dbo.aspnet_Membership m
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId

    IF ( @UserId IS NULL )
        RETURN 1

    UPDATE dbo.aspnet_Membership
    SET IsLockedOut = 0,
        FailedPasswordAttemptCount = 0,
        FailedPasswordAttemptWindowStart = CONVERT( datetime, '17540101', 112 ),
        FailedPasswordAnswerAttemptCount = 0,
        FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, '17540101', 112 ),
        LastLockoutDate = CONVERT( datetime, '17540101', 112 )
    WHERE @UserId = UserId

    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_SetPassword]    Script Date: 06/19/2011 06:53:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_SetPassword]
    @ApplicationName  nvarchar(256),
    @UserName         nvarchar(256),
    @NewPassword      nvarchar(128),
    @PasswordSalt     nvarchar(128),
    @CurrentTimeUtc   datetime,
    @PasswordFormat   int = 0
AS
BEGIN
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL
    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a, dbo.aspnet_Membership m
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId

    IF (@UserId IS NULL)
        RETURN(1)

    UPDATE dbo.aspnet_Membership
    SET Password = @NewPassword, PasswordFormat = @PasswordFormat, PasswordSalt = @PasswordSalt,
        LastPasswordChangedDate = @CurrentTimeUtc
    WHERE @UserId = UserId
    RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_ResetPassword]    Script Date: 06/19/2011 06:53:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_ResetPassword]
    @ApplicationName             nvarchar(256),
    @UserName                    nvarchar(256),
    @NewPassword                 nvarchar(128),
    @MaxInvalidPasswordAttempts  int,
    @PasswordAttemptWindow       int,
    @PasswordSalt                nvarchar(128),
    @CurrentTimeUtc              datetime,
    @PasswordFormat              int = 0,
    @PasswordAnswer              nvarchar(128) = NULL
AS
BEGIN
    DECLARE @IsLockedOut                            bit
    DECLARE @LastLockoutDate                        datetime
    DECLARE @FailedPasswordAttemptCount             int
    DECLARE @FailedPasswordAttemptWindowStart       datetime
    DECLARE @FailedPasswordAnswerAttemptCount       int
    DECLARE @FailedPasswordAnswerAttemptWindowStart datetime

    DECLARE @UserId                                 uniqueidentifier
    SET     @UserId = NULL

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a, dbo.aspnet_Membership m
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId

    IF ( @UserId IS NULL )
    BEGIN
        SET @ErrorCode = 1
        GOTO Cleanup
    END

    SELECT @IsLockedOut = IsLockedOut,
           @LastLockoutDate = LastLockoutDate,
           @FailedPasswordAttemptCount = FailedPasswordAttemptCount,
           @FailedPasswordAttemptWindowStart = FailedPasswordAttemptWindowStart,
           @FailedPasswordAnswerAttemptCount = FailedPasswordAnswerAttemptCount,
           @FailedPasswordAnswerAttemptWindowStart = FailedPasswordAnswerAttemptWindowStart
    FROM dbo.aspnet_Membership WITH ( UPDLOCK )
    WHERE @UserId = UserId

    IF( @IsLockedOut = 1 )
    BEGIN
        SET @ErrorCode = 99
        GOTO Cleanup
    END

    UPDATE dbo.aspnet_Membership
    SET    Password = @NewPassword,
           LastPasswordChangedDate = @CurrentTimeUtc,
           PasswordFormat = @PasswordFormat,
           PasswordSalt = @PasswordSalt
    WHERE  @UserId = UserId AND
           ( ( @PasswordAnswer IS NULL ) OR ( LOWER( PasswordAnswer ) = LOWER( @PasswordAnswer ) ) )

    IF ( @@ROWCOUNT = 0 )
        BEGIN
            IF( @CurrentTimeUtc > DATEADD( minute, @PasswordAttemptWindow, @FailedPasswordAnswerAttemptWindowStart ) )
            BEGIN
                SET @FailedPasswordAnswerAttemptWindowStart = @CurrentTimeUtc
                SET @FailedPasswordAnswerAttemptCount = 1
            END
            ELSE
            BEGIN
                SET @FailedPasswordAnswerAttemptWindowStart = @CurrentTimeUtc
                SET @FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount + 1
            END

            BEGIN
                IF( @FailedPasswordAnswerAttemptCount >= @MaxInvalidPasswordAttempts )
                BEGIN
                    SET @IsLockedOut = 1
                    SET @LastLockoutDate = @CurrentTimeUtc
                END
            END

            SET @ErrorCode = 3
        END
    ELSE
        BEGIN
            IF( @FailedPasswordAnswerAttemptCount > 0 )
            BEGIN
                SET @FailedPasswordAnswerAttemptCount = 0
                SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, '17540101', 112 )
            END
        END

    IF( NOT ( @PasswordAnswer IS NULL ) )
    BEGIN
        UPDATE dbo.aspnet_Membership
        SET IsLockedOut = @IsLockedOut, LastLockoutDate = @LastLockoutDate,
            FailedPasswordAttemptCount = @FailedPasswordAttemptCount,
            FailedPasswordAttemptWindowStart = @FailedPasswordAttemptWindowStart,
            FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount,
            FailedPasswordAnswerAttemptWindowStart = @FailedPasswordAnswerAttemptWindowStart
        WHERE @UserId = UserId

        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END
    END

    IF( @TranStarted = 1 )
    BEGIN
	SET @TranStarted = 0
	COMMIT TRANSACTION
    END

    RETURN @ErrorCode

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetUserByUserId]    Script Date: 06/19/2011 06:53:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetUserByUserId]
    @UserId               uniqueidentifier,
    @CurrentTimeUtc       datetime,
    @UpdateLastActivity   bit = 0
AS
BEGIN
    IF ( @UpdateLastActivity = 1 )
    BEGIN
        UPDATE   dbo.aspnet_Users
        SET      LastActivityDate = @CurrentTimeUtc
        FROM     dbo.aspnet_Users
        WHERE    @UserId = UserId

        IF ( @@ROWCOUNT = 0 ) -- User ID not found
            RETURN -1
    END

    SELECT  m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
            m.CreateDate, m.LastLoginDate, u.LastActivityDate,
            m.LastPasswordChangedDate, u.UserName, m.IsLockedOut,
            m.LastLockoutDate
    FROM    dbo.aspnet_Users u, dbo.aspnet_Membership m
    WHERE   @UserId = u.UserId AND u.UserId = m.UserId

    IF ( @@ROWCOUNT = 0 ) -- User ID not found
       RETURN -1

    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetUserByName]    Script Date: 06/19/2011 06:53:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetUserByName]
    @ApplicationName      nvarchar(256),
    @UserName             nvarchar(256),
    @CurrentTimeUtc       datetime,
    @UpdateLastActivity   bit = 0
AS
BEGIN
    DECLARE @UserId uniqueidentifier

    IF (@UpdateLastActivity = 1)
    BEGIN
        -- select user ID from aspnet_users table
        SELECT TOP 1 @UserId = u.UserId
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE    LOWER(@ApplicationName) = a.LoweredApplicationName AND
                u.ApplicationId = a.ApplicationId    AND
                LOWER(@UserName) = u.LoweredUserName AND u.UserId = m.UserId

        IF (@@ROWCOUNT = 0) -- Username not found
            RETURN -1

        UPDATE   dbo.aspnet_Users
        SET      LastActivityDate = @CurrentTimeUtc
        WHERE    @UserId = UserId

        SELECT m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
                m.CreateDate, m.LastLoginDate, u.LastActivityDate, m.LastPasswordChangedDate,
                u.UserId, m.IsLockedOut, m.LastLockoutDate
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE  @UserId = u.UserId AND u.UserId = m.UserId 
    END
    ELSE
    BEGIN
        SELECT TOP 1 m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
                m.CreateDate, m.LastLoginDate, u.LastActivityDate, m.LastPasswordChangedDate,
                u.UserId, m.IsLockedOut,m.LastLockoutDate
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE    LOWER(@ApplicationName) = a.LoweredApplicationName AND
                u.ApplicationId = a.ApplicationId    AND
                LOWER(@UserName) = u.LoweredUserName AND u.UserId = m.UserId

        IF (@@ROWCOUNT = 0) -- Username not found
            RETURN -1
    END

    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetUserByEmail]    Script Date: 06/19/2011 06:53:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetUserByEmail]
    @ApplicationName  nvarchar(256),
    @Email            nvarchar(256)
AS
BEGIN
    IF( @Email IS NULL )
        SELECT  u.UserName
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
                u.ApplicationId = a.ApplicationId    AND
                u.UserId = m.UserId AND
                m.LoweredEmail IS NULL
    ELSE
        SELECT  u.UserName
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
                u.ApplicationId = a.ApplicationId    AND
                u.UserId = m.UserId AND
                LOWER(@Email) = m.LoweredEmail

    IF (@@rowcount = 0)
        RETURN(1)
    RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetPasswordWithFormat]    Script Date: 06/19/2011 06:53:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetPasswordWithFormat]
    @ApplicationName                nvarchar(256),
    @UserName                       nvarchar(256),
    @UpdateLastLoginActivityDate    bit,
    @CurrentTimeUtc                 datetime
AS
BEGIN
    DECLARE @IsLockedOut                        bit
    DECLARE @UserId                             uniqueidentifier
    DECLARE @Password                           nvarchar(128)
    DECLARE @PasswordSalt                       nvarchar(128)
    DECLARE @PasswordFormat                     int
    DECLARE @FailedPasswordAttemptCount         int
    DECLARE @FailedPasswordAnswerAttemptCount   int
    DECLARE @IsApproved                         bit
    DECLARE @LastActivityDate                   datetime
    DECLARE @LastLoginDate                      datetime

    SELECT  @UserId          = NULL

    SELECT  @UserId = u.UserId, @IsLockedOut = m.IsLockedOut, @Password=Password, @PasswordFormat=PasswordFormat,
            @PasswordSalt=PasswordSalt, @FailedPasswordAttemptCount=FailedPasswordAttemptCount,
		    @FailedPasswordAnswerAttemptCount=FailedPasswordAnswerAttemptCount, @IsApproved=IsApproved,
            @LastActivityDate = LastActivityDate, @LastLoginDate = LastLoginDate
    FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
    WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.ApplicationId = a.ApplicationId    AND
            u.UserId = m.UserId AND
            LOWER(@UserName) = u.LoweredUserName

    IF (@UserId IS NULL)
        RETURN 1

    IF (@IsLockedOut = 1)
        RETURN 99

    SELECT   @Password, @PasswordFormat, @PasswordSalt, @FailedPasswordAttemptCount,
             @FailedPasswordAnswerAttemptCount, @IsApproved, @LastLoginDate, @LastActivityDate

    IF (@UpdateLastLoginActivityDate = 1 AND @IsApproved = 1)
    BEGIN
        UPDATE  dbo.aspnet_Membership
        SET     LastLoginDate = @CurrentTimeUtc
        WHERE   UserId = @UserId

        UPDATE  dbo.aspnet_Users
        SET     LastActivityDate = @CurrentTimeUtc
        WHERE   @UserId = UserId
    END


    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetPassword]    Script Date: 06/19/2011 06:53:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetPassword]
    @ApplicationName                nvarchar(256),
    @UserName                       nvarchar(256),
    @MaxInvalidPasswordAttempts     int,
    @PasswordAttemptWindow          int,
    @CurrentTimeUtc                 datetime,
    @PasswordAnswer                 nvarchar(128) = NULL
AS
BEGIN
    DECLARE @UserId                                 uniqueidentifier
    DECLARE @PasswordFormat                         int
    DECLARE @Password                               nvarchar(128)
    DECLARE @passAns                                nvarchar(128)
    DECLARE @IsLockedOut                            bit
    DECLARE @LastLockoutDate                        datetime
    DECLARE @FailedPasswordAttemptCount             int
    DECLARE @FailedPasswordAttemptWindowStart       datetime
    DECLARE @FailedPasswordAnswerAttemptCount       int
    DECLARE @FailedPasswordAnswerAttemptWindowStart datetime

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    SELECT  @UserId = u.UserId,
            @Password = m.Password,
            @passAns = m.PasswordAnswer,
            @PasswordFormat = m.PasswordFormat,
            @IsLockedOut = m.IsLockedOut,
            @LastLockoutDate = m.LastLockoutDate,
            @FailedPasswordAttemptCount = m.FailedPasswordAttemptCount,
            @FailedPasswordAttemptWindowStart = m.FailedPasswordAttemptWindowStart,
            @FailedPasswordAnswerAttemptCount = m.FailedPasswordAnswerAttemptCount,
            @FailedPasswordAnswerAttemptWindowStart = m.FailedPasswordAnswerAttemptWindowStart
    FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m WITH ( UPDLOCK )
    WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.ApplicationId = a.ApplicationId    AND
            u.UserId = m.UserId AND
            LOWER(@UserName) = u.LoweredUserName

    IF ( @@rowcount = 0 )
    BEGIN
        SET @ErrorCode = 1
        GOTO Cleanup
    END

    IF( @IsLockedOut = 1 )
    BEGIN
        SET @ErrorCode = 99
        GOTO Cleanup
    END

    IF ( NOT( @PasswordAnswer IS NULL ) )
    BEGIN
        IF( ( @passAns IS NULL ) OR ( LOWER( @passAns ) <> LOWER( @PasswordAnswer ) ) )
        BEGIN
            IF( @CurrentTimeUtc > DATEADD( minute, @PasswordAttemptWindow, @FailedPasswordAnswerAttemptWindowStart ) )
            BEGIN
                SET @FailedPasswordAnswerAttemptWindowStart = @CurrentTimeUtc
                SET @FailedPasswordAnswerAttemptCount = 1
            END
            ELSE
            BEGIN
                SET @FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount + 1
                SET @FailedPasswordAnswerAttemptWindowStart = @CurrentTimeUtc
            END

            BEGIN
                IF( @FailedPasswordAnswerAttemptCount >= @MaxInvalidPasswordAttempts )
                BEGIN
                    SET @IsLockedOut = 1
                    SET @LastLockoutDate = @CurrentTimeUtc
                END
            END

            SET @ErrorCode = 3
        END
        ELSE
        BEGIN
            IF( @FailedPasswordAnswerAttemptCount > 0 )
            BEGIN
                SET @FailedPasswordAnswerAttemptCount = 0
                SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, '17540101', 112 )
            END
        END

        UPDATE dbo.aspnet_Membership
        SET IsLockedOut = @IsLockedOut, LastLockoutDate = @LastLockoutDate,
            FailedPasswordAttemptCount = @FailedPasswordAttemptCount,
            FailedPasswordAttemptWindowStart = @FailedPasswordAttemptWindowStart,
            FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount,
            FailedPasswordAnswerAttemptWindowStart = @FailedPasswordAnswerAttemptWindowStart
        WHERE @UserId = UserId

        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END
    END

    IF( @TranStarted = 1 )
    BEGIN
	SET @TranStarted = 0
	COMMIT TRANSACTION
    END

    IF( @ErrorCode = 0 )
        SELECT @Password, @PasswordFormat

    RETURN @ErrorCode

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetNumberOfUsersOnline]    Script Date: 06/19/2011 06:53:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetNumberOfUsersOnline]
    @ApplicationName            nvarchar(256),
    @MinutesSinceLastInActive   int,
    @CurrentTimeUtc             datetime
AS
BEGIN
    DECLARE @DateActive datetime
    SELECT  @DateActive = DATEADD(minute,  -(@MinutesSinceLastInActive), @CurrentTimeUtc)

    DECLARE @NumOnline int
    SELECT  @NumOnline = COUNT(*)
    FROM    dbo.aspnet_Users u(NOLOCK),
            dbo.aspnet_Applications a(NOLOCK),
            dbo.aspnet_Membership m(NOLOCK)
    WHERE   u.ApplicationId = a.ApplicationId                  AND
            LastActivityDate > @DateActive                     AND
            a.LoweredApplicationName = LOWER(@ApplicationName) AND
            u.UserId = m.UserId
    RETURN(@NumOnline)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetAllUsers]    Script Date: 06/19/2011 06:53:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetAllUsers]
    @ApplicationName       nvarchar(256),
    @PageIndex             int,
    @PageSize              int
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN 0


    -- Set the page bounds
    DECLARE @PageLowerBound int
    DECLARE @PageUpperBound int
    DECLARE @TotalRecords   int
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table TO store the select results
    CREATE TABLE #PageIndexForUsers
    (
        IndexId int IDENTITY (0, 1) NOT NULL,
        UserId uniqueidentifier
    )

    -- Insert into our temp table
    INSERT INTO #PageIndexForUsers (UserId)
    SELECT u.UserId
    FROM   dbo.aspnet_Membership m, dbo.aspnet_Users u
    WHERE  u.ApplicationId = @ApplicationId AND u.UserId = m.UserId
    ORDER BY u.UserName

    SELECT @TotalRecords = @@ROWCOUNT

    SELECT u.UserName, m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
            m.CreateDate,
            m.LastLoginDate,
            u.LastActivityDate,
            m.LastPasswordChangedDate,
            u.UserId, m.IsLockedOut,
            m.LastLockoutDate
    FROM   dbo.aspnet_Membership m, dbo.aspnet_Users u, #PageIndexForUsers p
    WHERE  u.UserId = p.UserId AND u.UserId = m.UserId AND
           p.IndexId >= @PageLowerBound AND p.IndexId <= @PageUpperBound
    ORDER BY u.UserName
    RETURN @TotalRecords
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_FindUsersByName]    Script Date: 06/19/2011 06:53:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_FindUsersByName]
    @ApplicationName       nvarchar(256),
    @UserNameToMatch       nvarchar(256),
    @PageIndex             int,
    @PageSize              int
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN 0

    -- Set the page bounds
    DECLARE @PageLowerBound int
    DECLARE @PageUpperBound int
    DECLARE @TotalRecords   int
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table TO store the select results
    CREATE TABLE #PageIndexForUsers
    (
        IndexId int IDENTITY (0, 1) NOT NULL,
        UserId uniqueidentifier
    )

    -- Insert into our temp table
    INSERT INTO #PageIndexForUsers (UserId)
        SELECT u.UserId
        FROM   dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE  u.ApplicationId = @ApplicationId AND m.UserId = u.UserId AND u.LoweredUserName LIKE LOWER(@UserNameToMatch)
        ORDER BY u.UserName


    SELECT  u.UserName, m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
            m.CreateDate,
            m.LastLoginDate,
            u.LastActivityDate,
            m.LastPasswordChangedDate,
            u.UserId, m.IsLockedOut,
            m.LastLockoutDate
    FROM   dbo.aspnet_Membership m, dbo.aspnet_Users u, #PageIndexForUsers p
    WHERE  u.UserId = p.UserId AND u.UserId = m.UserId AND
           p.IndexId >= @PageLowerBound AND p.IndexId <= @PageUpperBound
    ORDER BY u.UserName

    SELECT  @TotalRecords = COUNT(*)
    FROM    #PageIndexForUsers
    RETURN @TotalRecords
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_FindUsersByEmail]    Script Date: 06/19/2011 06:53:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_FindUsersByEmail]
    @ApplicationName       nvarchar(256),
    @EmailToMatch          nvarchar(256),
    @PageIndex             int,
    @PageSize              int
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN 0

    -- Set the page bounds
    DECLARE @PageLowerBound int
    DECLARE @PageUpperBound int
    DECLARE @TotalRecords   int
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table TO store the select results
    CREATE TABLE #PageIndexForUsers
    (
        IndexId int IDENTITY (0, 1) NOT NULL,
        UserId uniqueidentifier
    )

    -- Insert into our temp table
    IF( @EmailToMatch IS NULL )
        INSERT INTO #PageIndexForUsers (UserId)
            SELECT u.UserId
            FROM   dbo.aspnet_Users u, dbo.aspnet_Membership m
            WHERE  u.ApplicationId = @ApplicationId AND m.UserId = u.UserId AND m.Email IS NULL
            ORDER BY m.LoweredEmail
    ELSE
        INSERT INTO #PageIndexForUsers (UserId)
            SELECT u.UserId
            FROM   dbo.aspnet_Users u, dbo.aspnet_Membership m
            WHERE  u.ApplicationId = @ApplicationId AND m.UserId = u.UserId AND m.LoweredEmail LIKE LOWER(@EmailToMatch)
            ORDER BY m.LoweredEmail

    SELECT  u.UserName, m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
            m.CreateDate,
            m.LastLoginDate,
            u.LastActivityDate,
            m.LastPasswordChangedDate,
            u.UserId, m.IsLockedOut,
            m.LastLockoutDate
    FROM   dbo.aspnet_Membership m, dbo.aspnet_Users u, #PageIndexForUsers p
    WHERE  u.UserId = p.UserId AND u.UserId = m.UserId AND
           p.IndexId >= @PageLowerBound AND p.IndexId <= @PageUpperBound
    ORDER BY m.LoweredEmail

    SELECT  @TotalRecords = COUNT(*)
    FROM    #PageIndexForUsers
    RETURN @TotalRecords
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_ChangePasswordQuestionAndAnswer]    Script Date: 06/19/2011 06:53:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_ChangePasswordQuestionAndAnswer]
    @ApplicationName       nvarchar(256),
    @UserName              nvarchar(256),
    @NewPasswordQuestion   nvarchar(256),
    @NewPasswordAnswer     nvarchar(128)
AS
BEGIN
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL
    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Membership m, dbo.aspnet_Users u, dbo.aspnet_Applications a
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId
    IF (@UserId IS NULL)
    BEGIN
        RETURN(1)
    END

    UPDATE dbo.aspnet_Membership
    SET    PasswordQuestion = @NewPasswordQuestion, PasswordAnswer = @NewPasswordAnswer
    WHERE  UserId=@UserId
    RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_CreateUser]    Script Date: 06/19/2011 06:53:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_CreateUser]
    @ApplicationName                        nvarchar(256),
    @UserName                               nvarchar(256),
    @Password                               nvarchar(128),
    @PasswordSalt                           nvarchar(128),
    @Email                                  nvarchar(256),
    @PasswordQuestion                       nvarchar(256),
    @PasswordAnswer                         nvarchar(128),
    @IsApproved                             bit,
    @CurrentTimeUtc                         datetime,
    @CreateDate                             datetime = NULL,
    @UniqueEmail                            int      = 0,
    @PasswordFormat                         int      = 0,
    @UserId                                 uniqueidentifier OUTPUT
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL

    DECLARE @NewUserId uniqueidentifier
    SELECT @NewUserId = NULL

    DECLARE @IsLockedOut bit
    SET @IsLockedOut = 0

    DECLARE @LastLockoutDate  datetime
    SET @LastLockoutDate = CONVERT( datetime, '17540101', 112 )

    DECLARE @FailedPasswordAttemptCount int
    SET @FailedPasswordAttemptCount = 0

    DECLARE @FailedPasswordAttemptWindowStart  datetime
    SET @FailedPasswordAttemptWindowStart = CONVERT( datetime, '17540101', 112 )

    DECLARE @FailedPasswordAnswerAttemptCount int
    SET @FailedPasswordAnswerAttemptCount = 0

    DECLARE @FailedPasswordAnswerAttemptWindowStart  datetime
    SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, '17540101', 112 )

    DECLARE @NewUserCreated bit
    DECLARE @ReturnValue   int
    SET @ReturnValue = 0

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    SET @CreateDate = @CurrentTimeUtc

    SELECT  @NewUserId = UserId FROM dbo.aspnet_Users WHERE LOWER(@UserName) = LoweredUserName AND @ApplicationId = ApplicationId
    IF ( @NewUserId IS NULL )
    BEGIN
        SET @NewUserId = @UserId
        EXEC @ReturnValue = dbo.aspnet_Users_CreateUser @ApplicationId, @UserName, 0, @CreateDate, @NewUserId OUTPUT
        SET @NewUserCreated = 1
    END
    ELSE
    BEGIN
        SET @NewUserCreated = 0
        IF( @NewUserId <> @UserId AND @UserId IS NOT NULL )
        BEGIN
            SET @ErrorCode = 6
            GOTO Cleanup
        END
    END

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @ReturnValue = -1 )
    BEGIN
        SET @ErrorCode = 10
        GOTO Cleanup
    END

    IF ( EXISTS ( SELECT UserId
                  FROM   dbo.aspnet_Membership
                  WHERE  @NewUserId = UserId ) )
    BEGIN
        SET @ErrorCode = 6
        GOTO Cleanup
    END

    SET @UserId = @NewUserId

    IF (@UniqueEmail = 1)
    BEGIN
        IF (EXISTS (SELECT *
                    FROM  dbo.aspnet_Membership m WITH ( UPDLOCK, HOLDLOCK )
                    WHERE ApplicationId = @ApplicationId AND LoweredEmail = LOWER(@Email)))
        BEGIN
            SET @ErrorCode = 7
            GOTO Cleanup
        END
    END

    IF (@NewUserCreated = 0)
    BEGIN
        UPDATE dbo.aspnet_Users
        SET    LastActivityDate = @CreateDate
        WHERE  @UserId = UserId
        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END
    END

    INSERT INTO dbo.aspnet_Membership
                ( ApplicationId,
                  UserId,
                  Password,
                  PasswordSalt,
                  Email,
                  LoweredEmail,
                  PasswordQuestion,
                  PasswordAnswer,
                  PasswordFormat,
                  IsApproved,
                  IsLockedOut,
                  CreateDate,
                  LastLoginDate,
                  LastPasswordChangedDate,
                  LastLockoutDate,
                  FailedPasswordAttemptCount,
                  FailedPasswordAttemptWindowStart,
                  FailedPasswordAnswerAttemptCount,
                  FailedPasswordAnswerAttemptWindowStart )
         VALUES ( @ApplicationId,
                  @UserId,
                  @Password,
                  @PasswordSalt,
                  @Email,
                  LOWER(@Email),
                  @PasswordQuestion,
                  @PasswordAnswer,
                  @PasswordFormat,
                  @IsApproved,
                  @IsLockedOut,
                  @CreateDate,
                  @CreateDate,
                  @CreateDate,
                  @LastLockoutDate,
                  @FailedPasswordAttemptCount,
                  @FailedPasswordAttemptWindowStart,
                  @FailedPasswordAnswerAttemptCount,
                  @FailedPasswordAnswerAttemptWindowStart )

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
	    SET @TranStarted = 0
	    COMMIT TRANSACTION
    END

    RETURN 0

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_AnyDataInTables]    Script Date: 06/19/2011 06:53:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_AnyDataInTables]
    @TablesToCheck int
AS
BEGIN
    -- Check Membership table if (@TablesToCheck & 1) is set
    IF ((@TablesToCheck & 1) <> 0 AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_MembershipUsers') AND (type = 'V'))))
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_Membership))
        BEGIN
            SELECT N'aspnet_Membership'
            RETURN
        END
    END

    -- Check aspnet_Roles table if (@TablesToCheck & 2) is set
    IF ((@TablesToCheck & 2) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_Roles') AND (type = 'V'))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 RoleId FROM dbo.aspnet_Roles))
        BEGIN
            SELECT N'aspnet_Roles'
            RETURN
        END
    END

    -- Check aspnet_Profile table if (@TablesToCheck & 4) is set
    IF ((@TablesToCheck & 4) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_Profiles') AND (type = 'V'))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_Profile))
        BEGIN
            SELECT N'aspnet_Profile'
            RETURN
        END
    END

    -- Check aspnet_PersonalizationPerUser table if (@TablesToCheck & 8) is set
    IF ((@TablesToCheck & 8) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_WebPartState_User') AND (type = 'V'))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_PersonalizationPerUser))
        BEGIN
            SELECT N'aspnet_PersonalizationPerUser'
            RETURN
        END
    END

    -- Check aspnet_PersonalizationPerUser table if (@TablesToCheck & 16) is set
    IF ((@TablesToCheck & 16) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'aspnet_WebEvent_LogEvent') AND (type = 'P'))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 * FROM dbo.aspnet_WebEvent_Events))
        BEGIN
            SELECT N'aspnet_WebEvent_Events'
            RETURN
        END
    END

    -- Check aspnet_Users table if (@TablesToCheck & 1,2,4 & 8) are all set
    IF ((@TablesToCheck & 1) <> 0 AND
        (@TablesToCheck & 2) <> 0 AND
        (@TablesToCheck & 4) <> 0 AND
        (@TablesToCheck & 8) <> 0 AND
        (@TablesToCheck & 32) <> 0 AND
        (@TablesToCheck & 128) <> 0 AND
        (@TablesToCheck & 256) <> 0 AND
        (@TablesToCheck & 512) <> 0 AND
        (@TablesToCheck & 1024) <> 0)
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_Users))
        BEGIN
            SELECT N'aspnet_Users'
            RETURN
        END
        IF (EXISTS(SELECT TOP 1 ApplicationId FROM dbo.aspnet_Applications))
        BEGIN
            SELECT N'aspnet_Applications'
            RETURN
        END
    END
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_GetCountOfState]    Script Date: 06/19/2011 06:53:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_GetCountOfState] (
    @Count int OUT,
    @AllUsersScope bit,
    @ApplicationName NVARCHAR(256),
    @Path NVARCHAR(256) = NULL,
    @UserName NVARCHAR(256) = NULL,
    @InactiveSinceDate DATETIME = NULL)
AS
BEGIN

    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        SELECT @Count = 0
    ELSE
        IF (@AllUsersScope = 1)
            SELECT @Count = COUNT(*)
            FROM dbo.aspnet_PersonalizationAllUsers AllUsers, dbo.aspnet_Paths Paths
            WHERE Paths.ApplicationId = @ApplicationId
                  AND AllUsers.PathId = Paths.PathId
                  AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
        ELSE
            SELECT @Count = COUNT(*)
            FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Users Users, dbo.aspnet_Paths Paths
            WHERE Paths.ApplicationId = @ApplicationId
                  AND PerUser.UserId = Users.UserId
                  AND PerUser.PathId = Paths.PathId
                  AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
                  AND (@UserName IS NULL OR Users.LoweredUserName LIKE LOWER(@UserName))
                  AND (@InactiveSinceDate IS NULL OR Users.LastActivityDate <= @InactiveSinceDate)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_FindState]    Script Date: 06/19/2011 06:53:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_FindState] (
    @AllUsersScope bit,
    @ApplicationName NVARCHAR(256),
    @PageIndex              INT,
    @PageSize               INT,
    @Path NVARCHAR(256) = NULL,
    @UserName NVARCHAR(256) = NULL,
    @InactiveSinceDate DATETIME = NULL)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        RETURN

    -- Set the page bounds
    DECLARE @PageLowerBound INT
    DECLARE @PageUpperBound INT
    DECLARE @TotalRecords   INT
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table to store the selected results
    CREATE TABLE #PageIndex (
        IndexId int IDENTITY (0, 1) NOT NULL,
        ItemId UNIQUEIDENTIFIER
    )

    IF (@AllUsersScope = 1)
    BEGIN
        -- Insert into our temp table
        INSERT INTO #PageIndex (ItemId)
        SELECT Paths.PathId
        FROM dbo.aspnet_Paths Paths,
             ((SELECT Paths.PathId
               FROM dbo.aspnet_PersonalizationAllUsers AllUsers, dbo.aspnet_Paths Paths
               WHERE Paths.ApplicationId = @ApplicationId
                      AND AllUsers.PathId = Paths.PathId
                      AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
              ) AS SharedDataPerPath
              FULL OUTER JOIN
              (SELECT DISTINCT Paths.PathId
               FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Paths Paths
               WHERE Paths.ApplicationId = @ApplicationId
                      AND PerUser.PathId = Paths.PathId
                      AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
              ) AS UserDataPerPath
              ON SharedDataPerPath.PathId = UserDataPerPath.PathId
             )
        WHERE Paths.PathId = SharedDataPerPath.PathId OR Paths.PathId = UserDataPerPath.PathId
        ORDER BY Paths.Path ASC

        SELECT @TotalRecords = @@ROWCOUNT

        SELECT Paths.Path,
               SharedDataPerPath.LastUpdatedDate,
               SharedDataPerPath.SharedDataLength,
               UserDataPerPath.UserDataLength,
               UserDataPerPath.UserCount
        FROM dbo.aspnet_Paths Paths,
             ((SELECT PageIndex.ItemId AS PathId,
                      AllUsers.LastUpdatedDate AS LastUpdatedDate,
                      DATALENGTH(AllUsers.PageSettings) AS SharedDataLength
               FROM dbo.aspnet_PersonalizationAllUsers AllUsers, #PageIndex PageIndex
               WHERE AllUsers.PathId = PageIndex.ItemId
                     AND PageIndex.IndexId >= @PageLowerBound AND PageIndex.IndexId <= @PageUpperBound
              ) AS SharedDataPerPath
              FULL OUTER JOIN
              (SELECT PageIndex.ItemId AS PathId,
                      SUM(DATALENGTH(PerUser.PageSettings)) AS UserDataLength,
                      COUNT(*) AS UserCount
               FROM aspnet_PersonalizationPerUser PerUser, #PageIndex PageIndex
               WHERE PerUser.PathId = PageIndex.ItemId
                     AND PageIndex.IndexId >= @PageLowerBound AND PageIndex.IndexId <= @PageUpperBound
               GROUP BY PageIndex.ItemId
              ) AS UserDataPerPath
              ON SharedDataPerPath.PathId = UserDataPerPath.PathId
             )
        WHERE Paths.PathId = SharedDataPerPath.PathId OR Paths.PathId = UserDataPerPath.PathId
        ORDER BY Paths.Path ASC
    END
    ELSE
    BEGIN
        -- Insert into our temp table
        INSERT INTO #PageIndex (ItemId)
        SELECT PerUser.Id
        FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Users Users, dbo.aspnet_Paths Paths
        WHERE Paths.ApplicationId = @ApplicationId
              AND PerUser.UserId = Users.UserId
              AND PerUser.PathId = Paths.PathId
              AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
              AND (@UserName IS NULL OR Users.LoweredUserName LIKE LOWER(@UserName))
              AND (@InactiveSinceDate IS NULL OR Users.LastActivityDate <= @InactiveSinceDate)
        ORDER BY Paths.Path ASC, Users.UserName ASC

        SELECT @TotalRecords = @@ROWCOUNT

        SELECT Paths.Path, PerUser.LastUpdatedDate, DATALENGTH(PerUser.PageSettings), Users.UserName, Users.LastActivityDate
        FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Users Users, dbo.aspnet_Paths Paths, #PageIndex PageIndex
        WHERE PerUser.Id = PageIndex.ItemId
              AND PerUser.UserId = Users.UserId
              AND PerUser.PathId = Paths.PathId
              AND PageIndex.IndexId >= @PageLowerBound AND PageIndex.IndexId <= @PageUpperBound
        ORDER BY Paths.Path ASC, Users.UserName ASC
    END

    RETURN @TotalRecords
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_DeleteAllState]    Script Date: 06/19/2011 06:53:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_DeleteAllState] (
    @AllUsersScope bit,
    @ApplicationName NVARCHAR(256),
    @Count int OUT)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        SELECT @Count = 0
    ELSE
    BEGIN
        IF (@AllUsersScope = 1)
            DELETE FROM aspnet_PersonalizationAllUsers
            WHERE PathId IN
               (SELECT Paths.PathId
                FROM dbo.aspnet_Paths Paths
                WHERE Paths.ApplicationId = @ApplicationId)
        ELSE
            DELETE FROM aspnet_PersonalizationPerUser
            WHERE PathId IN
               (SELECT Paths.PathId
                FROM dbo.aspnet_Paths Paths
                WHERE Paths.ApplicationId = @ApplicationId)

        SELECT @Count = @@ROWCOUNT
    END
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_ResetUserState]    Script Date: 06/19/2011 06:53:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_ResetUserState] (
    @Count                  int                 OUT,
    @ApplicationName        NVARCHAR(256),
    @InactiveSinceDate      DATETIME            = NULL,
    @UserName               NVARCHAR(256)       = NULL,
    @Path                   NVARCHAR(256)       = NULL)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        SELECT @Count = 0
    ELSE
    BEGIN
        DELETE FROM dbo.aspnet_PersonalizationPerUser
        WHERE Id IN (SELECT PerUser.Id
                     FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Users Users, dbo.aspnet_Paths Paths
                     WHERE Paths.ApplicationId = @ApplicationId
                           AND PerUser.UserId = Users.UserId
                           AND PerUser.PathId = Paths.PathId
                           AND (@InactiveSinceDate IS NULL OR Users.LastActivityDate <= @InactiveSinceDate)
                           AND (@UserName IS NULL OR Users.LoweredUserName = LOWER(@UserName))
                           AND (@Path IS NULL OR Paths.LoweredPath = LOWER(@Path)))

        SELECT @Count = @@ROWCOUNT
    END
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_SetProperties]    Script Date: 06/19/2011 06:53:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Profile_SetProperties]
    @ApplicationName        nvarchar(256),
    @PropertyNames          ntext,
    @PropertyValuesString   ntext,
    @PropertyValuesBinary   image,
    @UserName               nvarchar(256),
    @IsUserAnonymous        bit,
    @CurrentTimeUtc         datetime
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
       BEGIN TRANSACTION
       SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    DECLARE @UserId uniqueidentifier
    DECLARE @LastActivityDate datetime
    SELECT  @UserId = NULL
    SELECT  @LastActivityDate = @CurrentTimeUtc

    SELECT @UserId = UserId
    FROM   dbo.aspnet_Users
    WHERE  ApplicationId = @ApplicationId AND LoweredUserName = LOWER(@UserName)
    IF (@UserId IS NULL)
        EXEC dbo.aspnet_Users_CreateUser @ApplicationId, @UserName, @IsUserAnonymous, @LastActivityDate, @UserId OUTPUT

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    UPDATE dbo.aspnet_Users
    SET    LastActivityDate=@CurrentTimeUtc
    WHERE  UserId = @UserId

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF (EXISTS( SELECT *
               FROM   dbo.aspnet_Profile
               WHERE  UserId = @UserId))
        UPDATE dbo.aspnet_Profile
        SET    PropertyNames=@PropertyNames, PropertyValuesString = @PropertyValuesString,
               PropertyValuesBinary = @PropertyValuesBinary, LastUpdatedDate=@CurrentTimeUtc
        WHERE  UserId = @UserId
    ELSE
        INSERT INTO dbo.aspnet_Profile(UserId, PropertyNames, PropertyValuesString, PropertyValuesBinary, LastUpdatedDate)
             VALUES (@UserId, @PropertyNames, @PropertyValuesString, @PropertyValuesBinary, @CurrentTimeUtc)

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
    	SET @TranStarted = 0
    	COMMIT TRANSACTION
    END

    RETURN 0

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_GetProperties]    Script Date: 06/19/2011 06:53:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Profile_GetProperties]
    @ApplicationName      nvarchar(256),
    @UserName             nvarchar(256),
    @CurrentTimeUtc       datetime
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN

    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL

    SELECT @UserId = UserId
    FROM   dbo.aspnet_Users
    WHERE  ApplicationId = @ApplicationId AND LoweredUserName = LOWER(@UserName)

    IF (@UserId IS NULL)
        RETURN
    SELECT TOP 1 PropertyNames, PropertyValuesString, PropertyValuesBinary
    FROM         dbo.aspnet_Profile
    WHERE        UserId = @UserId

    IF (@@ROWCOUNT > 0)
    BEGIN
        UPDATE dbo.aspnet_Users
        SET    LastActivityDate=@CurrentTimeUtc
        WHERE  UserId = @UserId
    END
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_GetProfiles]    Script Date: 06/19/2011 06:53:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Profile_GetProfiles]
    @ApplicationName        nvarchar(256),
    @ProfileAuthOptions     int,
    @PageIndex              int,
    @PageSize               int,
    @UserNameToMatch        nvarchar(256) = NULL,
    @InactiveSinceDate      datetime      = NULL
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN

    -- Set the page bounds
    DECLARE @PageLowerBound int
    DECLARE @PageUpperBound int
    DECLARE @TotalRecords   int
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table TO store the select results
    CREATE TABLE #PageIndexForUsers
    (
        IndexId int IDENTITY (0, 1) NOT NULL,
        UserId uniqueidentifier
    )

    -- Insert into our temp table
    INSERT INTO #PageIndexForUsers (UserId)
        SELECT  u.UserId
        FROM    dbo.aspnet_Users u, dbo.aspnet_Profile p
        WHERE   ApplicationId = @ApplicationId
            AND u.UserId = p.UserId
            AND (@InactiveSinceDate IS NULL OR LastActivityDate <= @InactiveSinceDate)
            AND (     (@ProfileAuthOptions = 2)
                   OR (@ProfileAuthOptions = 0 AND IsAnonymous = 1)
                   OR (@ProfileAuthOptions = 1 AND IsAnonymous = 0)
                 )
            AND (@UserNameToMatch IS NULL OR LoweredUserName LIKE LOWER(@UserNameToMatch))
        ORDER BY UserName

    SELECT  u.UserName, u.IsAnonymous, u.LastActivityDate, p.LastUpdatedDate,
            DATALENGTH(p.PropertyNames) + DATALENGTH(p.PropertyValuesString) + DATALENGTH(p.PropertyValuesBinary)
    FROM    dbo.aspnet_Users u, dbo.aspnet_Profile p, #PageIndexForUsers i
    WHERE   u.UserId = p.UserId AND p.UserId = i.UserId AND i.IndexId >= @PageLowerBound AND i.IndexId <= @PageUpperBound

    SELECT COUNT(*)
    FROM   #PageIndexForUsers

    DROP TABLE #PageIndexForUsers
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_GetNumberOfInactiveProfiles]    Script Date: 06/19/2011 06:53:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Profile_GetNumberOfInactiveProfiles]
    @ApplicationName        nvarchar(256),
    @ProfileAuthOptions     int,
    @InactiveSinceDate      datetime
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
    BEGIN
        SELECT 0
        RETURN
    END

    SELECT  COUNT(*)
    FROM    dbo.aspnet_Users u, dbo.aspnet_Profile p
    WHERE   ApplicationId = @ApplicationId
        AND u.UserId = p.UserId
        AND (LastActivityDate <= @InactiveSinceDate)
        AND (
                (@ProfileAuthOptions = 2)
                OR (@ProfileAuthOptions = 0 AND IsAnonymous = 1)
                OR (@ProfileAuthOptions = 1 AND IsAnonymous = 0)
            )
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_RemoveUsersFromRoles]    Script Date: 06/19/2011 06:53:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_RemoveUsersFromRoles]
	@ApplicationName  nvarchar(256),
	@UserNames		  nvarchar(4000),
	@RoleNames		  nvarchar(4000)
AS
BEGIN
	DECLARE @AppId uniqueidentifier
	SELECT  @AppId = NULL
	SELECT  @AppId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
	IF (@AppId IS NULL)
		RETURN(2)


	DECLARE @TranStarted   bit
	SET @TranStarted = 0

	IF( @@TRANCOUNT = 0 )
	BEGIN
		BEGIN TRANSACTION
		SET @TranStarted = 1
	END

	DECLARE @tbNames  table(Name nvarchar(256) NOT NULL PRIMARY KEY)
	DECLARE @tbRoles  table(RoleId uniqueidentifier NOT NULL PRIMARY KEY)
	DECLARE @tbUsers  table(UserId uniqueidentifier NOT NULL PRIMARY KEY)
	DECLARE @Num	  int
	DECLARE @Pos	  int
	DECLARE @NextPos  int
	DECLARE @Name	  nvarchar(256)
	DECLARE @CountAll int
	DECLARE @CountU	  int
	DECLARE @CountR	  int


	SET @Num = 0
	SET @Pos = 1
	WHILE(@Pos <= LEN(@RoleNames))
	BEGIN
		SELECT @NextPos = CHARINDEX(N',', @RoleNames,  @Pos)
		IF (@NextPos = 0 OR @NextPos IS NULL)
			SELECT @NextPos = LEN(@RoleNames) + 1
		SELECT @Name = RTRIM(LTRIM(SUBSTRING(@RoleNames, @Pos, @NextPos - @Pos)))
		SELECT @Pos = @NextPos+1

		INSERT INTO @tbNames VALUES (@Name)
		SET @Num = @Num + 1
	END

	INSERT INTO @tbRoles
	  SELECT RoleId
	  FROM   dbo.aspnet_Roles ar, @tbNames t
	  WHERE  LOWER(t.Name) = ar.LoweredRoleName AND ar.ApplicationId = @AppId
	SELECT @CountR = @@ROWCOUNT

	IF (@CountR <> @Num)
	BEGIN
		SELECT TOP 1 N'', Name
		FROM   @tbNames
		WHERE  LOWER(Name) NOT IN (SELECT ar.LoweredRoleName FROM dbo.aspnet_Roles ar,  @tbRoles r WHERE r.RoleId = ar.RoleId)
		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(2)
	END


	DELETE FROM @tbNames WHERE 1=1
	SET @Num = 0
	SET @Pos = 1


	WHILE(@Pos <= LEN(@UserNames))
	BEGIN
		SELECT @NextPos = CHARINDEX(N',', @UserNames,  @Pos)
		IF (@NextPos = 0 OR @NextPos IS NULL)
			SELECT @NextPos = LEN(@UserNames) + 1
		SELECT @Name = RTRIM(LTRIM(SUBSTRING(@UserNames, @Pos, @NextPos - @Pos)))
		SELECT @Pos = @NextPos+1

		INSERT INTO @tbNames VALUES (@Name)
		SET @Num = @Num + 1
	END

	INSERT INTO @tbUsers
	  SELECT UserId
	  FROM   dbo.aspnet_Users ar, @tbNames t
	  WHERE  LOWER(t.Name) = ar.LoweredUserName AND ar.ApplicationId = @AppId

	SELECT @CountU = @@ROWCOUNT
	IF (@CountU <> @Num)
	BEGIN
		SELECT TOP 1 Name, N''
		FROM   @tbNames
		WHERE  LOWER(Name) NOT IN (SELECT au.LoweredUserName FROM dbo.aspnet_Users au,  @tbUsers u WHERE u.UserId = au.UserId)

		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(1)
	END

	SELECT  @CountAll = COUNT(*)
	FROM	dbo.aspnet_UsersInRoles ur, @tbUsers u, @tbRoles r
	WHERE   ur.UserId = u.UserId AND ur.RoleId = r.RoleId

	IF (@CountAll <> @CountU * @CountR)
	BEGIN
		SELECT TOP 1 UserName, RoleName
		FROM		 @tbUsers tu, @tbRoles tr, dbo.aspnet_Users u, dbo.aspnet_Roles r
		WHERE		 u.UserId = tu.UserId AND r.RoleId = tr.RoleId AND
					 tu.UserId NOT IN (SELECT ur.UserId FROM dbo.aspnet_UsersInRoles ur WHERE ur.RoleId = tr.RoleId) AND
					 tr.RoleId NOT IN (SELECT ur.RoleId FROM dbo.aspnet_UsersInRoles ur WHERE ur.UserId = tu.UserId)
		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(3)
	END

	DELETE FROM dbo.aspnet_UsersInRoles
	WHERE UserId IN (SELECT UserId FROM @tbUsers)
	  AND RoleId IN (SELECT RoleId FROM @tbRoles)
	IF( @TranStarted = 1 )
		COMMIT TRANSACTION
	RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_IsUserInRole]    Script Date: 06/19/2011 06:53:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_IsUserInRole]
    @ApplicationName  nvarchar(256),
    @UserName         nvarchar(256),
    @RoleName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(2)
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL
    DECLARE @RoleId uniqueidentifier
    SELECT  @RoleId = NULL

    SELECT  @UserId = UserId
    FROM    dbo.aspnet_Users
    WHERE   LoweredUserName = LOWER(@UserName) AND ApplicationId = @ApplicationId

    IF (@UserId IS NULL)
        RETURN(2)

    SELECT  @RoleId = RoleId
    FROM    dbo.aspnet_Roles
    WHERE   LoweredRoleName = LOWER(@RoleName) AND ApplicationId = @ApplicationId

    IF (@RoleId IS NULL)
        RETURN(3)

    IF (EXISTS( SELECT * FROM dbo.aspnet_UsersInRoles WHERE  UserId = @UserId AND RoleId = @RoleId))
        RETURN(1)
    ELSE
        RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_GetUsersInRoles]    Script Date: 06/19/2011 06:53:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_GetUsersInRoles]
    @ApplicationName  nvarchar(256),
    @RoleName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(1)
     DECLARE @RoleId uniqueidentifier
     SELECT  @RoleId = NULL

     SELECT  @RoleId = RoleId
     FROM    dbo.aspnet_Roles
     WHERE   LOWER(@RoleName) = LoweredRoleName AND ApplicationId = @ApplicationId

     IF (@RoleId IS NULL)
         RETURN(1)

    SELECT u.UserName
    FROM   dbo.aspnet_Users u, dbo.aspnet_UsersInRoles ur
    WHERE  u.UserId = ur.UserId AND @RoleId = ur.RoleId AND u.ApplicationId = @ApplicationId
    ORDER BY u.UserName
    RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_GetRolesForUser]    Script Date: 06/19/2011 06:53:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_GetRolesForUser]
    @ApplicationName  nvarchar(256),
    @UserName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(1)
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL

    SELECT  @UserId = UserId
    FROM    dbo.aspnet_Users
    WHERE   LoweredUserName = LOWER(@UserName) AND ApplicationId = @ApplicationId

    IF (@UserId IS NULL)
        RETURN(1)

    SELECT r.RoleName
    FROM   dbo.aspnet_Roles r, dbo.aspnet_UsersInRoles ur
    WHERE  r.RoleId = ur.RoleId AND r.ApplicationId = @ApplicationId AND ur.UserId = @UserId
    ORDER BY r.RoleName
    RETURN (0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_FindUsersInRole]    Script Date: 06/19/2011 06:53:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_FindUsersInRole]
    @ApplicationName  nvarchar(256),
    @RoleName         nvarchar(256),
    @UserNameToMatch  nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(1)
     DECLARE @RoleId uniqueidentifier
     SELECT  @RoleId = NULL

     SELECT  @RoleId = RoleId
     FROM    dbo.aspnet_Roles
     WHERE   LOWER(@RoleName) = LoweredRoleName AND ApplicationId = @ApplicationId

     IF (@RoleId IS NULL)
         RETURN(1)

    SELECT u.UserName
    FROM   dbo.aspnet_Users u, dbo.aspnet_UsersInRoles ur
    WHERE  u.UserId = ur.UserId AND @RoleId = ur.RoleId AND u.ApplicationId = @ApplicationId AND LoweredUserName LIKE LOWER(@UserNameToMatch)
    ORDER BY u.UserName
    RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_AddUsersToRoles]    Script Date: 06/19/2011 06:53:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_AddUsersToRoles]
	@ApplicationName  nvarchar(256),
	@UserNames		  nvarchar(4000),
	@RoleNames		  nvarchar(4000),
	@CurrentTimeUtc   datetime
AS
BEGIN
	DECLARE @AppId uniqueidentifier
	SELECT  @AppId = NULL
	SELECT  @AppId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
	IF (@AppId IS NULL)
		RETURN(2)
	DECLARE @TranStarted   bit
	SET @TranStarted = 0

	IF( @@TRANCOUNT = 0 )
	BEGIN
		BEGIN TRANSACTION
		SET @TranStarted = 1
	END

	DECLARE @tbNames	table(Name nvarchar(256) NOT NULL PRIMARY KEY)
	DECLARE @tbRoles	table(RoleId uniqueidentifier NOT NULL PRIMARY KEY)
	DECLARE @tbUsers	table(UserId uniqueidentifier NOT NULL PRIMARY KEY)
	DECLARE @Num		int
	DECLARE @Pos		int
	DECLARE @NextPos	int
	DECLARE @Name		nvarchar(256)

	SET @Num = 0
	SET @Pos = 1
	WHILE(@Pos <= LEN(@RoleNames))
	BEGIN
		SELECT @NextPos = CHARINDEX(N',', @RoleNames,  @Pos)
		IF (@NextPos = 0 OR @NextPos IS NULL)
			SELECT @NextPos = LEN(@RoleNames) + 1
		SELECT @Name = RTRIM(LTRIM(SUBSTRING(@RoleNames, @Pos, @NextPos - @Pos)))
		SELECT @Pos = @NextPos+1

		INSERT INTO @tbNames VALUES (@Name)
		SET @Num = @Num + 1
	END

	INSERT INTO @tbRoles
	  SELECT RoleId
	  FROM   dbo.aspnet_Roles ar, @tbNames t
	  WHERE  LOWER(t.Name) = ar.LoweredRoleName AND ar.ApplicationId = @AppId

	IF (@@ROWCOUNT <> @Num)
	BEGIN
		SELECT TOP 1 Name
		FROM   @tbNames
		WHERE  LOWER(Name) NOT IN (SELECT ar.LoweredRoleName FROM dbo.aspnet_Roles ar,  @tbRoles r WHERE r.RoleId = ar.RoleId)
		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(2)
	END

	DELETE FROM @tbNames WHERE 1=1
	SET @Num = 0
	SET @Pos = 1

	WHILE(@Pos <= LEN(@UserNames))
	BEGIN
		SELECT @NextPos = CHARINDEX(N',', @UserNames,  @Pos)
		IF (@NextPos = 0 OR @NextPos IS NULL)
			SELECT @NextPos = LEN(@UserNames) + 1
		SELECT @Name = RTRIM(LTRIM(SUBSTRING(@UserNames, @Pos, @NextPos - @Pos)))
		SELECT @Pos = @NextPos+1

		INSERT INTO @tbNames VALUES (@Name)
		SET @Num = @Num + 1
	END

	INSERT INTO @tbUsers
	  SELECT UserId
	  FROM   dbo.aspnet_Users ar, @tbNames t
	  WHERE  LOWER(t.Name) = ar.LoweredUserName AND ar.ApplicationId = @AppId

	IF (@@ROWCOUNT <> @Num)
	BEGIN
		DELETE FROM @tbNames
		WHERE LOWER(Name) IN (SELECT LoweredUserName FROM dbo.aspnet_Users au,  @tbUsers u WHERE au.UserId = u.UserId)

		INSERT dbo.aspnet_Users (ApplicationId, UserId, UserName, LoweredUserName, IsAnonymous, LastActivityDate)
		  SELECT @AppId, NEWID(), Name, LOWER(Name), 0, @CurrentTimeUtc
		  FROM   @tbNames

		INSERT INTO @tbUsers
		  SELECT  UserId
		  FROM	dbo.aspnet_Users au, @tbNames t
		  WHERE   LOWER(t.Name) = au.LoweredUserName AND au.ApplicationId = @AppId
	END

	IF (EXISTS (SELECT * FROM dbo.aspnet_UsersInRoles ur, @tbUsers tu, @tbRoles tr WHERE tu.UserId = ur.UserId AND tr.RoleId = ur.RoleId))
	BEGIN
		SELECT TOP 1 UserName, RoleName
		FROM		 dbo.aspnet_UsersInRoles ur, @tbUsers tu, @tbRoles tr, aspnet_Users u, aspnet_Roles r
		WHERE		u.UserId = tu.UserId AND r.RoleId = tr.RoleId AND tu.UserId = ur.UserId AND tr.RoleId = ur.RoleId

		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(3)
	END

	INSERT INTO dbo.aspnet_UsersInRoles (UserId, RoleId)
	SELECT UserId, RoleId
	FROM @tbUsers, @tbRoles

	IF( @TranStarted = 1 )
		COMMIT TRANSACTION
	RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Users_DeleteUser]    Script Date: 06/19/2011 06:53:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Users_DeleteUser]
    @ApplicationName  nvarchar(256),
    @UserName         nvarchar(256),
    @TablesToDeleteFrom int,
    @NumTablesDeletedFrom int OUTPUT
AS
BEGIN
    DECLARE @UserId               uniqueidentifier
    SELECT  @UserId               = NULL
    SELECT  @NumTablesDeletedFrom = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
	SET @TranStarted = 0

    DECLARE @ErrorCode   int
    DECLARE @RowCount    int

    SET @ErrorCode = 0
    SET @RowCount  = 0

    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a
    WHERE   u.LoweredUserName       = LOWER(@UserName)
        AND u.ApplicationId         = a.ApplicationId
        AND LOWER(@ApplicationName) = a.LoweredApplicationName

    IF (@UserId IS NULL)
    BEGIN
        GOTO Cleanup
    END

    -- Delete from Membership table if (@TablesToDeleteFrom & 1) is set
    IF ((@TablesToDeleteFrom & 1) <> 0 AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_MembershipUsers') AND (type = 'V'))))
    BEGIN
        DELETE FROM dbo.aspnet_Membership WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
               @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    -- Delete from aspnet_UsersInRoles table if (@TablesToDeleteFrom & 2) is set
    IF ((@TablesToDeleteFrom & 2) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_UsersInRoles') AND (type = 'V'))) )
    BEGIN
        DELETE FROM dbo.aspnet_UsersInRoles WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
                @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    -- Delete from aspnet_Profile table if (@TablesToDeleteFrom & 4) is set
    IF ((@TablesToDeleteFrom & 4) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_Profiles') AND (type = 'V'))) )
    BEGIN
        DELETE FROM dbo.aspnet_Profile WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
                @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    -- Delete from aspnet_PersonalizationPerUser table if (@TablesToDeleteFrom & 8) is set
    IF ((@TablesToDeleteFrom & 8) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_WebPartState_User') AND (type = 'V'))) )
    BEGIN
        DELETE FROM dbo.aspnet_PersonalizationPerUser WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
                @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    -- Delete from aspnet_Users table if (@TablesToDeleteFrom & 1,2,4 & 8) are all set
    IF ((@TablesToDeleteFrom & 1) <> 0 AND
        (@TablesToDeleteFrom & 2) <> 0 AND
        (@TablesToDeleteFrom & 4) <> 0 AND
        (@TablesToDeleteFrom & 8) <> 0 AND
        (EXISTS (SELECT UserId FROM dbo.aspnet_Users WHERE @UserId = UserId)))
    BEGIN
        DELETE FROM dbo.aspnet_Users WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
                @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    IF( @TranStarted = 1 )
    BEGIN
	    SET @TranStarted = 0
	    COMMIT TRANSACTION
    END

    RETURN 0

Cleanup:
    SET @NumTablesDeletedFrom = 0

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
	    ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_DeleteRole]    Script Date: 06/19/2011 06:53:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Roles_DeleteRole]
    @ApplicationName            nvarchar(256),
    @RoleName                   nvarchar(256),
    @DeleteOnlyIfRoleIsEmpty    bit
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(1)

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
        BEGIN TRANSACTION
        SET @TranStarted = 1
    END
    ELSE
        SET @TranStarted = 0

    DECLARE @RoleId   uniqueidentifier
    SELECT  @RoleId = NULL
    SELECT  @RoleId = RoleId FROM dbo.aspnet_Roles WHERE LoweredRoleName = LOWER(@RoleName) AND ApplicationId = @ApplicationId

    IF (@RoleId IS NULL)
    BEGIN
        SELECT @ErrorCode = 1
        GOTO Cleanup
    END
    IF (@DeleteOnlyIfRoleIsEmpty <> 0)
    BEGIN
        IF (EXISTS (SELECT RoleId FROM dbo.aspnet_UsersInRoles  WHERE @RoleId = RoleId))
        BEGIN
            SELECT @ErrorCode = 2
            GOTO Cleanup
        END
    END


    DELETE FROM dbo.aspnet_UsersInRoles  WHERE @RoleId = RoleId

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    DELETE FROM dbo.aspnet_Roles WHERE @RoleId = RoleId  AND ApplicationId = @ApplicationId

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
        COMMIT TRANSACTION
    END

    RETURN(0)

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
        ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationPerUser_SetPageSettings]    Script Date: 06/19/2011 06:53:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationPerUser_SetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @UserName         NVARCHAR(256),
    @Path             NVARCHAR(256),
    @PageSettings     IMAGE,
    @CurrentTimeUtc   DATETIME)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER
    DECLARE @UserId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL
    SELECT @UserId = NULL

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        EXEC dbo.aspnet_Paths_CreatePath @ApplicationId, @Path, @PathId OUTPUT
    END

    SELECT @UserId = u.UserId FROM dbo.aspnet_Users u WHERE u.ApplicationId = @ApplicationId AND u.LoweredUserName = LOWER(@UserName)
    IF (@UserId IS NULL)
    BEGIN
        EXEC dbo.aspnet_Users_CreateUser @ApplicationId, @UserName, 0, @CurrentTimeUtc, @UserId OUTPUT
    END

    UPDATE   dbo.aspnet_Users WITH (ROWLOCK)
    SET      LastActivityDate = @CurrentTimeUtc
    WHERE    UserId = @UserId
    IF (@@ROWCOUNT = 0) -- Username not found
        RETURN

    IF (EXISTS(SELECT PathId FROM dbo.aspnet_PersonalizationPerUser WHERE UserId = @UserId AND PathId = @PathId))
        UPDATE dbo.aspnet_PersonalizationPerUser SET PageSettings = @PageSettings, LastUpdatedDate = @CurrentTimeUtc WHERE UserId = @UserId AND PathId = @PathId
    ELSE
        INSERT INTO dbo.aspnet_PersonalizationPerUser(UserId, PathId, PageSettings, LastUpdatedDate) VALUES (@UserId, @PathId, @PageSettings, @CurrentTimeUtc)
    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationPerUser_ResetPageSettings]    Script Date: 06/19/2011 06:53:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationPerUser_ResetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @UserName         NVARCHAR(256),
    @Path             NVARCHAR(256),
    @CurrentTimeUtc   DATETIME)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER
    DECLARE @UserId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL
    SELECT @UserId = NULL

    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @UserId = u.UserId FROM dbo.aspnet_Users u WHERE u.ApplicationId = @ApplicationId AND u.LoweredUserName = LOWER(@UserName)
    IF (@UserId IS NULL)
    BEGIN
        RETURN
    END

    UPDATE   dbo.aspnet_Users WITH (ROWLOCK)
    SET      LastActivityDate = @CurrentTimeUtc
    WHERE    UserId = @UserId
    IF (@@ROWCOUNT = 0) -- Username not found
        RETURN

    DELETE FROM dbo.aspnet_PersonalizationPerUser WHERE PathId = @PathId AND UserId = @UserId
    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationPerUser_GetPageSettings]    Script Date: 06/19/2011 06:53:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationPerUser_GetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @UserName         NVARCHAR(256),
    @Path             NVARCHAR(256),
    @CurrentTimeUtc   DATETIME)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER
    DECLARE @UserId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL
    SELECT @UserId = NULL

    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @UserId = u.UserId FROM dbo.aspnet_Users u WHERE u.ApplicationId = @ApplicationId AND u.LoweredUserName = LOWER(@UserName)
    IF (@UserId IS NULL)
    BEGIN
        RETURN
    END

    UPDATE   dbo.aspnet_Users WITH (ROWLOCK)
    SET      LastActivityDate = @CurrentTimeUtc
    WHERE    UserId = @UserId
    IF (@@ROWCOUNT = 0) -- Username not found
        RETURN

    SELECT p.PageSettings FROM dbo.aspnet_PersonalizationPerUser p WHERE p.PathId = @PathId AND p.UserId = @UserId
END
GO
/****** Object:  View [dbo].[vw_aspnet_WebPartState_User]    Script Date: 06/19/2011 06:53:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE VIEW [dbo].[vw_aspnet_WebPartState_User]
  AS SELECT [dbo].[aspnet_PersonalizationPerUser].[PathId], [dbo].[aspnet_PersonalizationPerUser].[UserId], [DataSize]=DATALENGTH([dbo].[aspnet_PersonalizationPerUser].[PageSettings]), [dbo].[aspnet_PersonalizationPerUser].[LastUpdatedDate]
  FROM [dbo].[aspnet_PersonalizationPerUser]
GO
/****** Object:  View [dbo].[vw_aspnet_UsersInRoles]    Script Date: 06/19/2011 06:53:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE VIEW [dbo].[vw_aspnet_UsersInRoles]
  AS SELECT [dbo].[aspnet_UsersInRoles].[UserId], [dbo].[aspnet_UsersInRoles].[RoleId]
  FROM [dbo].[aspnet_UsersInRoles]
GO
/****** Object:  View [dbo].[vw_aspnet_Profiles]    Script Date: 06/19/2011 06:53:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE VIEW [dbo].[vw_aspnet_Profiles]
  AS SELECT [dbo].[aspnet_Profile].[UserId], [dbo].[aspnet_Profile].[LastUpdatedDate],
      [DataSize]=  DATALENGTH([dbo].[aspnet_Profile].[PropertyNames])
                 + DATALENGTH([dbo].[aspnet_Profile].[PropertyValuesString])
                 + DATALENGTH([dbo].[aspnet_Profile].[PropertyValuesBinary])
  FROM [dbo].[aspnet_Profile]
GO
/****** Object:  View [dbo].[vw_aspnet_MembershipUsers]    Script Date: 06/19/2011 06:53:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE VIEW [dbo].[vw_aspnet_MembershipUsers]
  AS SELECT [dbo].[aspnet_Membership].[UserId],
            [dbo].[aspnet_Membership].[PasswordFormat],
            [dbo].[aspnet_Membership].[MobilePIN],
            [dbo].[aspnet_Membership].[Email],
            [dbo].[aspnet_Membership].[LoweredEmail],
            [dbo].[aspnet_Membership].[PasswordQuestion],
            [dbo].[aspnet_Membership].[PasswordAnswer],
            [dbo].[aspnet_Membership].[IsApproved],
            [dbo].[aspnet_Membership].[IsLockedOut],
            [dbo].[aspnet_Membership].[CreateDate],
            [dbo].[aspnet_Membership].[LastLoginDate],
            [dbo].[aspnet_Membership].[LastPasswordChangedDate],
            [dbo].[aspnet_Membership].[LastLockoutDate],
            [dbo].[aspnet_Membership].[FailedPasswordAttemptCount],
            [dbo].[aspnet_Membership].[FailedPasswordAttemptWindowStart],
            [dbo].[aspnet_Membership].[FailedPasswordAnswerAttemptCount],
            [dbo].[aspnet_Membership].[FailedPasswordAnswerAttemptWindowStart],
            [dbo].[aspnet_Membership].[Comment],
            [dbo].[aspnet_Users].[ApplicationId],
            [dbo].[aspnet_Users].[UserName],
            [dbo].[aspnet_Users].[MobileAlias],
            [dbo].[aspnet_Users].[IsAnonymous],
            [dbo].[aspnet_Users].[LastActivityDate]
  FROM [dbo].[aspnet_Membership] INNER JOIN [dbo].[aspnet_Users]
      ON [dbo].[aspnet_Membership].[UserId] = [dbo].[aspnet_Users].[UserId]
GO
/****** Object:  Table [dbo].[SanPham_Multimedia]    Script Date: 06/19/2011 06:53:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham_Multimedia](
	[MaChiTietMT] [int] IDENTITY(1,1) NOT NULL,
	[MaSanPham] [int] NOT NULL,
	[MaMT] [int] NULL,
 CONSTRAINT [PK__SanPham_Multimed__15502E78] PRIMARY KEY CLUSTERED 
(
	[MaChiTietMT] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[SanPham_Multimedia] ON
INSERT [dbo].[SanPham_Multimedia] ([MaChiTietMT], [MaSanPham], [MaMT]) VALUES (1, 1, 1)
INSERT [dbo].[SanPham_Multimedia] ([MaChiTietMT], [MaSanPham], [MaMT]) VALUES (2, 2, 2)
INSERT [dbo].[SanPham_Multimedia] ([MaChiTietMT], [MaSanPham], [MaMT]) VALUES (3, 3, 3)
INSERT [dbo].[SanPham_Multimedia] ([MaChiTietMT], [MaSanPham], [MaMT]) VALUES (4, 4, 4)
INSERT [dbo].[SanPham_Multimedia] ([MaChiTietMT], [MaSanPham], [MaMT]) VALUES (5, 5, 5)
INSERT [dbo].[SanPham_Multimedia] ([MaChiTietMT], [MaSanPham], [MaMT]) VALUES (6, 6, 6)
INSERT [dbo].[SanPham_Multimedia] ([MaChiTietMT], [MaSanPham], [MaMT]) VALUES (7, 7, 7)
INSERT [dbo].[SanPham_Multimedia] ([MaChiTietMT], [MaSanPham], [MaMT]) VALUES (8, 8, 8)
INSERT [dbo].[SanPham_Multimedia] ([MaChiTietMT], [MaSanPham], [MaMT]) VALUES (9, 9, 9)
INSERT [dbo].[SanPham_Multimedia] ([MaChiTietMT], [MaSanPham], [MaMT]) VALUES (10, 10, 10)
INSERT [dbo].[SanPham_Multimedia] ([MaChiTietMT], [MaSanPham], [MaMT]) VALUES (11, 11, 11)
INSERT [dbo].[SanPham_Multimedia] ([MaChiTietMT], [MaSanPham], [MaMT]) VALUES (12, 12, 12)
INSERT [dbo].[SanPham_Multimedia] ([MaChiTietMT], [MaSanPham], [MaMT]) VALUES (13, 13, 13)
INSERT [dbo].[SanPham_Multimedia] ([MaChiTietMT], [MaSanPham], [MaMT]) VALUES (14, 14, 14)
INSERT [dbo].[SanPham_Multimedia] ([MaChiTietMT], [MaSanPham], [MaMT]) VALUES (15, 1, 14)
INSERT [dbo].[SanPham_Multimedia] ([MaChiTietMT], [MaSanPham], [MaMT]) VALUES (16, 2, 13)
INSERT [dbo].[SanPham_Multimedia] ([MaChiTietMT], [MaSanPham], [MaMT]) VALUES (17, 3, 12)
INSERT [dbo].[SanPham_Multimedia] ([MaChiTietMT], [MaSanPham], [MaMT]) VALUES (18, 4, 11)
INSERT [dbo].[SanPham_Multimedia] ([MaChiTietMT], [MaSanPham], [MaMT]) VALUES (19, 5, 10)
INSERT [dbo].[SanPham_Multimedia] ([MaChiTietMT], [MaSanPham], [MaMT]) VALUES (20, 6, 9)
INSERT [dbo].[SanPham_Multimedia] ([MaChiTietMT], [MaSanPham], [MaMT]) VALUES (21, 7, 8)
INSERT [dbo].[SanPham_Multimedia] ([MaChiTietMT], [MaSanPham], [MaMT]) VALUES (22, 8, 7)
INSERT [dbo].[SanPham_Multimedia] ([MaChiTietMT], [MaSanPham], [MaMT]) VALUES (23, 9, 6)
INSERT [dbo].[SanPham_Multimedia] ([MaChiTietMT], [MaSanPham], [MaMT]) VALUES (24, 10, 5)
INSERT [dbo].[SanPham_Multimedia] ([MaChiTietMT], [MaSanPham], [MaMT]) VALUES (25, 11, 4)
INSERT [dbo].[SanPham_Multimedia] ([MaChiTietMT], [MaSanPham], [MaMT]) VALUES (26, 12, 3)
INSERT [dbo].[SanPham_Multimedia] ([MaChiTietMT], [MaSanPham], [MaMT]) VALUES (27, 13, 2)
INSERT [dbo].[SanPham_Multimedia] ([MaChiTietMT], [MaSanPham], [MaMT]) VALUES (28, 14, 1)
SET IDENTITY_INSERT [dbo].[SanPham_Multimedia] OFF
/****** Object:  Table [dbo].[ChiTietDauGia]    Script Date: 06/19/2011 06:53:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietDauGia](
	[MaChiTietDauGia] [int] IDENTITY(1,1) NOT NULL,
	[MaTaiKhoan] [uniqueidentifier] NULL,
	[MaSanPham] [int] NOT NULL,
	[GiaGiaoDich] [float] NULL,
	[ThoiGianGiaoDich] [datetime] NULL,
	[TinhTrang] [nvarchar](50) COLLATE Vietnamese_CI_AS NULL,
 CONSTRAINT [PK__ChiTietDauGia__173876EA] PRIMARY KEY CLUSTERED 
(
	[MaChiTietDauGia] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ChiTietDauGia] ON
INSERT [dbo].[ChiTietDauGia] ([MaChiTietDauGia], [MaTaiKhoan], [MaSanPham], [GiaGiaoDich], [ThoiGianGiaoDich], [TinhTrang]) VALUES (1, N'ab9e6186-cf52-4018-9800-1788c6c7b088', 1, 110000, CAST(0x00009EF500000000 AS DateTime), NULL)
INSERT [dbo].[ChiTietDauGia] ([MaChiTietDauGia], [MaTaiKhoan], [MaSanPham], [GiaGiaoDich], [ThoiGianGiaoDich], [TinhTrang]) VALUES (2, N'fe3ab86f-b8e6-4bd0-ac2a-f8e1f6e147d5', 1, 150000, CAST(0x00009EF600000000 AS DateTime), NULL)
INSERT [dbo].[ChiTietDauGia] ([MaChiTietDauGia], [MaTaiKhoan], [MaSanPham], [GiaGiaoDich], [ThoiGianGiaoDich], [TinhTrang]) VALUES (3, N'74f42e24-c720-43b1-ab48-58fee9ef7511', 1, 175000, CAST(0x00009F0000000000 AS DateTime), NULL)
INSERT [dbo].[ChiTietDauGia] ([MaChiTietDauGia], [MaTaiKhoan], [MaSanPham], [GiaGiaoDich], [ThoiGianGiaoDich], [TinhTrang]) VALUES (4, N'fe3ab86f-b8e6-4bd0-ac2a-f8e1f6e147d5', 1, 200000, CAST(0x00009F0100000000 AS DateTime), NULL)
INSERT [dbo].[ChiTietDauGia] ([MaChiTietDauGia], [MaTaiKhoan], [MaSanPham], [GiaGiaoDich], [ThoiGianGiaoDich], [TinhTrang]) VALUES (5, N'8a7db9f4-70a9-475e-b381-7777fe67a78f', 2, 50000, CAST(0x00009EEE003246B4 AS DateTime), NULL)
INSERT [dbo].[ChiTietDauGia] ([MaChiTietDauGia], [MaTaiKhoan], [MaSanPham], [GiaGiaoDich], [ThoiGianGiaoDich], [TinhTrang]) VALUES (6, N'ab9e6186-cf52-4018-9800-1788c6c7b088', 3, 13000, CAST(0x00009EF500000000 AS DateTime), NULL)
INSERT [dbo].[ChiTietDauGia] ([MaChiTietDauGia], [MaTaiKhoan], [MaSanPham], [GiaGiaoDich], [ThoiGianGiaoDich], [TinhTrang]) VALUES (7, N'fe3ab86f-b8e6-4bd0-ac2a-f8e1f6e147d5', 4, 31000, CAST(0x00009EF600000000 AS DateTime), NULL)
INSERT [dbo].[ChiTietDauGia] ([MaChiTietDauGia], [MaTaiKhoan], [MaSanPham], [GiaGiaoDich], [ThoiGianGiaoDich], [TinhTrang]) VALUES (8, N'74f42e24-c720-43b1-ab48-58fee9ef7511', 5, 45000, CAST(0x00009F0000000000 AS DateTime), NULL)
INSERT [dbo].[ChiTietDauGia] ([MaChiTietDauGia], [MaTaiKhoan], [MaSanPham], [GiaGiaoDich], [ThoiGianGiaoDich], [TinhTrang]) VALUES (9, N'fe3ab86f-b8e6-4bd0-ac2a-f8e1f6e147d5', 6, 54000, CAST(0x00009F0100000000 AS DateTime), NULL)
INSERT [dbo].[ChiTietDauGia] ([MaChiTietDauGia], [MaTaiKhoan], [MaSanPham], [GiaGiaoDich], [ThoiGianGiaoDich], [TinhTrang]) VALUES (10, N'fe3ab86f-b8e6-4bd0-ac2a-f8e1f6e147d5', 6, 64000, CAST(0x00009F0100000000 AS DateTime), NULL)
INSERT [dbo].[ChiTietDauGia] ([MaChiTietDauGia], [MaTaiKhoan], [MaSanPham], [GiaGiaoDich], [ThoiGianGiaoDich], [TinhTrang]) VALUES (11, N'8a7db9f4-70a9-475e-b381-7777fe67a78f', 3, 69000, CAST(0x00009EEE003246B4 AS DateTime), NULL)
INSERT [dbo].[ChiTietDauGia] ([MaChiTietDauGia], [MaTaiKhoan], [MaSanPham], [GiaGiaoDich], [ThoiGianGiaoDich], [TinhTrang]) VALUES (12, N'ab9e6186-cf52-4018-9800-1788c6c7b088', 4, 17000, CAST(0x00009EF500000000 AS DateTime), NULL)
INSERT [dbo].[ChiTietDauGia] ([MaChiTietDauGia], [MaTaiKhoan], [MaSanPham], [GiaGiaoDich], [ThoiGianGiaoDich], [TinhTrang]) VALUES (13, N'fe3ab86f-b8e6-4bd0-ac2a-f8e1f6e147d5', 5, 85000, CAST(0x00009EF600000000 AS DateTime), NULL)
INSERT [dbo].[ChiTietDauGia] ([MaChiTietDauGia], [MaTaiKhoan], [MaSanPham], [GiaGiaoDich], [ThoiGianGiaoDich], [TinhTrang]) VALUES (14, N'74f42e24-c720-43b1-ab48-58fee9ef7511', 5, 94000, CAST(0x00009F0000000000 AS DateTime), NULL)
INSERT [dbo].[ChiTietDauGia] ([MaChiTietDauGia], [MaTaiKhoan], [MaSanPham], [GiaGiaoDich], [ThoiGianGiaoDich], [TinhTrang]) VALUES (15, N'fe3ab86f-b8e6-4bd0-ac2a-f8e1f6e147d5', 5, 12000, CAST(0x00009F0100000000 AS DateTime), NULL)
INSERT [dbo].[ChiTietDauGia] ([MaChiTietDauGia], [MaTaiKhoan], [MaSanPham], [GiaGiaoDich], [ThoiGianGiaoDich], [TinhTrang]) VALUES (16, N'8a7db9f4-70a9-475e-b381-7777fe67a78f', 5, 11000, CAST(0x00009EEE003246B4 AS DateTime), NULL)
INSERT [dbo].[ChiTietDauGia] ([MaChiTietDauGia], [MaTaiKhoan], [MaSanPham], [GiaGiaoDich], [ThoiGianGiaoDich], [TinhTrang]) VALUES (17, N'ab9e6186-cf52-4018-9800-1788c6c7b088', 7, 23000, CAST(0x00009EF500000000 AS DateTime), NULL)
INSERT [dbo].[ChiTietDauGia] ([MaChiTietDauGia], [MaTaiKhoan], [MaSanPham], [GiaGiaoDich], [ThoiGianGiaoDich], [TinhTrang]) VALUES (18, N'fe3ab86f-b8e6-4bd0-ac2a-f8e1f6e147d5', 7, 21000, CAST(0x00009EF600000000 AS DateTime), NULL)
INSERT [dbo].[ChiTietDauGia] ([MaChiTietDauGia], [MaTaiKhoan], [MaSanPham], [GiaGiaoDich], [ThoiGianGiaoDich], [TinhTrang]) VALUES (19, N'74f42e24-c720-43b1-ab48-58fee9ef7511', 8, 25000, CAST(0x00009F0000000000 AS DateTime), NULL)
INSERT [dbo].[ChiTietDauGia] ([MaChiTietDauGia], [MaTaiKhoan], [MaSanPham], [GiaGiaoDich], [ThoiGianGiaoDich], [TinhTrang]) VALUES (20, N'fe3ab86f-b8e6-4bd0-ac2a-f8e1f6e147d5', 9, 24000, CAST(0x00009F0100000000 AS DateTime), NULL)
INSERT [dbo].[ChiTietDauGia] ([MaChiTietDauGia], [MaTaiKhoan], [MaSanPham], [GiaGiaoDich], [ThoiGianGiaoDich], [TinhTrang]) VALUES (21, N'8a7db9f4-70a9-475e-b381-7777fe67a78f', 9, 29000, CAST(0x00009EEE003246B4 AS DateTime), NULL)
INSERT [dbo].[ChiTietDauGia] ([MaChiTietDauGia], [MaTaiKhoan], [MaSanPham], [GiaGiaoDich], [ThoiGianGiaoDich], [TinhTrang]) VALUES (22, N'ab9e6186-cf52-4018-9800-1788c6c7b088', 10, 27000, CAST(0x00009EF500000000 AS DateTime), NULL)
INSERT [dbo].[ChiTietDauGia] ([MaChiTietDauGia], [MaTaiKhoan], [MaSanPham], [GiaGiaoDich], [ThoiGianGiaoDich], [TinhTrang]) VALUES (23, N'fe3ab86f-b8e6-4bd0-ac2a-f8e1f6e147d5', 10, 25000, CAST(0x00009EF600000000 AS DateTime), NULL)
INSERT [dbo].[ChiTietDauGia] ([MaChiTietDauGia], [MaTaiKhoan], [MaSanPham], [GiaGiaoDich], [ThoiGianGiaoDich], [TinhTrang]) VALUES (24, N'74f42e24-c720-43b1-ab48-58fee9ef7511', 10, 24000, CAST(0x00009F0000000000 AS DateTime), NULL)
INSERT [dbo].[ChiTietDauGia] ([MaChiTietDauGia], [MaTaiKhoan], [MaSanPham], [GiaGiaoDich], [ThoiGianGiaoDich], [TinhTrang]) VALUES (25, N'fe3ab86f-b8e6-4bd0-ac2a-f8e1f6e147d5', 10, 22000, CAST(0x00009F0100000000 AS DateTime), NULL)
INSERT [dbo].[ChiTietDauGia] ([MaChiTietDauGia], [MaTaiKhoan], [MaSanPham], [GiaGiaoDich], [ThoiGianGiaoDich], [TinhTrang]) VALUES (26, N'8a7db9f4-70a9-475e-b381-7777fe67a78f', 11, 21000, CAST(0x00009EEE003246B4 AS DateTime), NULL)
INSERT [dbo].[ChiTietDauGia] ([MaChiTietDauGia], [MaTaiKhoan], [MaSanPham], [GiaGiaoDich], [ThoiGianGiaoDich], [TinhTrang]) VALUES (27, N'ab9e6186-cf52-4018-9800-1788c6c7b088', 11, 43000, CAST(0x00009EF500000000 AS DateTime), NULL)
INSERT [dbo].[ChiTietDauGia] ([MaChiTietDauGia], [MaTaiKhoan], [MaSanPham], [GiaGiaoDich], [ThoiGianGiaoDich], [TinhTrang]) VALUES (28, N'fe3ab86f-b8e6-4bd0-ac2a-f8e1f6e147d5', 11, 41000, CAST(0x00009EF600000000 AS DateTime), NULL)
INSERT [dbo].[ChiTietDauGia] ([MaChiTietDauGia], [MaTaiKhoan], [MaSanPham], [GiaGiaoDich], [ThoiGianGiaoDich], [TinhTrang]) VALUES (29, N'74f42e24-c720-43b1-ab48-58fee9ef7511', 11, 45000, CAST(0x00009F0000000000 AS DateTime), NULL)
INSERT [dbo].[ChiTietDauGia] ([MaChiTietDauGia], [MaTaiKhoan], [MaSanPham], [GiaGiaoDich], [ThoiGianGiaoDich], [TinhTrang]) VALUES (30, N'fe3ab86f-b8e6-4bd0-ac2a-f8e1f6e147d5', 11, 44000, CAST(0x00009F0100000000 AS DateTime), NULL)
INSERT [dbo].[ChiTietDauGia] ([MaChiTietDauGia], [MaTaiKhoan], [MaSanPham], [GiaGiaoDich], [ThoiGianGiaoDich], [TinhTrang]) VALUES (31, N'8a7db9f4-70a9-475e-b381-7777fe67a78f', 11, 49000, CAST(0x00009EEE003246B4 AS DateTime), NULL)
INSERT [dbo].[ChiTietDauGia] ([MaChiTietDauGia], [MaTaiKhoan], [MaSanPham], [GiaGiaoDich], [ThoiGianGiaoDich], [TinhTrang]) VALUES (32, N'ab9e6186-cf52-4018-9800-1788c6c7b088', 10, 47000, CAST(0x00009EF500000000 AS DateTime), NULL)
INSERT [dbo].[ChiTietDauGia] ([MaChiTietDauGia], [MaTaiKhoan], [MaSanPham], [GiaGiaoDich], [ThoiGianGiaoDich], [TinhTrang]) VALUES (33, N'fe3ab86f-b8e6-4bd0-ac2a-f8e1f6e147d5', 10, 45000, CAST(0x00009EF600000000 AS DateTime), NULL)
INSERT [dbo].[ChiTietDauGia] ([MaChiTietDauGia], [MaTaiKhoan], [MaSanPham], [GiaGiaoDich], [ThoiGianGiaoDich], [TinhTrang]) VALUES (34, N'74f42e24-c720-43b1-ab48-58fee9ef7511', 10, 44000, CAST(0x00009F0000000000 AS DateTime), NULL)
INSERT [dbo].[ChiTietDauGia] ([MaChiTietDauGia], [MaTaiKhoan], [MaSanPham], [GiaGiaoDich], [ThoiGianGiaoDich], [TinhTrang]) VALUES (35, N'fe3ab86f-b8e6-4bd0-ac2a-f8e1f6e147d5', 10, 42000, CAST(0x00009F0100000000 AS DateTime), NULL)
INSERT [dbo].[ChiTietDauGia] ([MaChiTietDauGia], [MaTaiKhoan], [MaSanPham], [GiaGiaoDich], [ThoiGianGiaoDich], [TinhTrang]) VALUES (36, N'8a7db9f4-70a9-475e-b381-7777fe67a78f', 11, 41000, CAST(0x00009EEE003246B4 AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[ChiTietDauGia] OFF
/****** Object:  Table [dbo].[Comment]    Script Date: 06/19/2011 06:53:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comment](
	[MaComment] [int] IDENTITY(1,1) NOT NULL,
	[MaTaiKhoan] [uniqueidentifier] NULL,
	[MaSanPham] [int] NOT NULL,
	[NoiDungComment] [nvarchar](500) COLLATE Vietnamese_CI_AS NULL,
	[NgayComment] [datetime] NULL,
 CONSTRAINT [PK__Comment__0F975522] PRIMARY KEY CLUSTERED 
(
	[MaComment] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Comment] ON
INSERT [dbo].[Comment] ([MaComment], [MaTaiKhoan], [MaSanPham], [NoiDungComment], [NgayComment]) VALUES (1, N'8a7db9f4-70a9-475e-b381-7777fe67a78f', 1, N'Rất đẹp hy vọng trong thời gian tới sẽ có nhiều mẫu đẹp như vậy nữa', CAST(0x00009EF10175A2C8 AS DateTime))
INSERT [dbo].[Comment] ([MaComment], [MaTaiKhoan], [MaSanPham], [NoiDungComment], [NgayComment]) VALUES (2, N'ab9e6186-cf52-4018-9800-1788c6c7b088', 2, N'Quá xấu, không biết chừng nào mới có mẫu mới đây nữa', CAST(0x00009EF10175A2C8 AS DateTime))
INSERT [dbo].[Comment] ([MaComment], [MaTaiKhoan], [MaSanPham], [NoiDungComment], [NgayComment]) VALUES (3, N'fe3ab86f-b8e6-4bd0-ac2a-f8e1f6e147d5', 3, N'Không đẹp tý nào, chừng nào có hàng mới thì pm mình nhé!', CAST(0x00009EF10175A2C8 AS DateTime))
INSERT [dbo].[Comment] ([MaComment], [MaTaiKhoan], [MaSanPham], [NoiDungComment], [NgayComment]) VALUES (4, N'fe3ab86f-b8e6-4bd0-ac2a-f8e1f6e147d5', 4, N'Tui không thích, chừng nào có hàng thì call mình nhé mọi người', CAST(0x00009EF10175A2C8 AS DateTime))
INSERT [dbo].[Comment] ([MaComment], [MaTaiKhoan], [MaSanPham], [NoiDungComment], [NgayComment]) VALUES (5, N'74f42e24-c720-43b1-ab48-58fee9ef7511', 5, N'Quá xấu, không biết chừng nào mới có mẫu mới đây nữa', CAST(0x00009EF10175A2C8 AS DateTime))
INSERT [dbo].[Comment] ([MaComment], [MaTaiKhoan], [MaSanPham], [NoiDungComment], [NgayComment]) VALUES (6, N'74f42e24-c720-43b1-ab48-58fee9ef7511', 1, N'Rất đẹp', CAST(0x00009EF10175A2C8 AS DateTime))
INSERT [dbo].[Comment] ([MaComment], [MaTaiKhoan], [MaSanPham], [NoiDungComment], [NgayComment]) VALUES (7, N'8a7db9f4-70a9-475e-b381-7777fe67a78f', 2, N'Tuyệt đẹp', CAST(0x00009EF10175A2C8 AS DateTime))
INSERT [dbo].[Comment] ([MaComment], [MaTaiKhoan], [MaSanPham], [NoiDungComment], [NgayComment]) VALUES (8, N'8a7db9f4-70a9-475e-b381-7777fe67a78f', 3, N'Sao mắc quá', CAST(0x00009EF10175A2C8 AS DateTime))
INSERT [dbo].[Comment] ([MaComment], [MaTaiKhoan], [MaSanPham], [NoiDungComment], [NgayComment]) VALUES (9, N'8a7db9f4-70a9-475e-b381-7777fe67a78f', 4, N'Hơi bị mắc', CAST(0x00009EF10175A2C8 AS DateTime))
INSERT [dbo].[Comment] ([MaComment], [MaTaiKhoan], [MaSanPham], [NoiDungComment], [NgayComment]) VALUES (10, N'8a7db9f4-70a9-475e-b381-7777fe67a78f', 5, N'Không được đẹp', CAST(0x00009EF10175A2C8 AS DateTime))
INSERT [dbo].[Comment] ([MaComment], [MaTaiKhoan], [MaSanPham], [NoiDungComment], [NgayComment]) VALUES (11, N'8a7db9f4-70a9-475e-b381-7777fe67a78f', 10, N'Rất đẹp! Nhưng mình đã mua một cái đó rồi! Hy vọng có cơ hội mua thêm cái thứ hai', CAST(0x00009EF10175A2C8 AS DateTime))
INSERT [dbo].[Comment] ([MaComment], [MaTaiKhoan], [MaSanPham], [NoiDungComment], [NgayComment]) VALUES (12, N'ab9e6186-cf52-4018-9800-1788c6c7b088', 10, N'Quá xấu! Hy vọng sẽ có thay đổi về thiết kế để cho sản phẩm ngày càng đẹp và đáp ứng yêu cầu của người dùng', CAST(0x00009EF10175A2C8 AS DateTime))
INSERT [dbo].[Comment] ([MaComment], [MaTaiKhoan], [MaSanPham], [NoiDungComment], [NgayComment]) VALUES (13, N'fe3ab86f-b8e6-4bd0-ac2a-f8e1f6e147d5', 10, N'Không đẹp, ước gì nó sản phẩm mới đẹp hơn nhỉ', CAST(0x00009EF10175A2C8 AS DateTime))
INSERT [dbo].[Comment] ([MaComment], [MaTaiKhoan], [MaSanPham], [NoiDungComment], [NgayComment]) VALUES (14, N'fe3ab86f-b8e6-4bd0-ac2a-f8e1f6e147d5', 10, N'Rất đẹp! Nhưng mình đã mua một cái đó rồi! Hy vọng có cơ hội mua thêm cái thứ hai', CAST(0x00009EF10175A2C8 AS DateTime))
INSERT [dbo].[Comment] ([MaComment], [MaTaiKhoan], [MaSanPham], [NoiDungComment], [NgayComment]) VALUES (15, N'74f42e24-c720-43b1-ab48-58fee9ef7511', 10, N'Xấu quá', CAST(0x00009EF10175A2C8 AS DateTime))
INSERT [dbo].[Comment] ([MaComment], [MaTaiKhoan], [MaSanPham], [NoiDungComment], [NgayComment]) VALUES (16, N'74f42e24-c720-43b1-ab48-58fee9ef7511', 10, N'Rất đẹp', CAST(0x00009EF10175A2C8 AS DateTime))
INSERT [dbo].[Comment] ([MaComment], [MaTaiKhoan], [MaSanPham], [NoiDungComment], [NgayComment]) VALUES (17, N'8a7db9f4-70a9-475e-b381-7777fe67a78f', 10, N'Tuyệt đẹp', CAST(0x00009EF10175A2C8 AS DateTime))
INSERT [dbo].[Comment] ([MaComment], [MaTaiKhoan], [MaSanPham], [NoiDungComment], [NgayComment]) VALUES (18, N'8a7db9f4-70a9-475e-b381-7777fe67a78f', 10, N'Sao mắc quá', CAST(0x00009EF10175A2C8 AS DateTime))
INSERT [dbo].[Comment] ([MaComment], [MaTaiKhoan], [MaSanPham], [NoiDungComment], [NgayComment]) VALUES (19, N'8a7db9f4-70a9-475e-b381-7777fe67a78f', 10, N'Hơi bị mắc, ở ngoài bán rẻ hơn nhiều mấy bạn ơi', CAST(0x00009EF10175A2C8 AS DateTime))
INSERT [dbo].[Comment] ([MaComment], [MaTaiKhoan], [MaSanPham], [NoiDungComment], [NgayComment]) VALUES (20, N'8a7db9f4-70a9-475e-b381-7777fe67a78f', 10, N'Không được đẹp, ước gì có cái nào đó đẹp hơn thì tốt nhỉ', CAST(0x00009EF10175A2C8 AS DateTime))
SET IDENTITY_INSERT [dbo].[Comment] OFF
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_DeleteInactiveProfiles]    Script Date: 06/19/2011 06:53:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Profile_DeleteInactiveProfiles]
    @ApplicationName        nvarchar(256),
    @ProfileAuthOptions     int,
    @InactiveSinceDate      datetime
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
    BEGIN
        SELECT  0
        RETURN
    END

    DELETE
    FROM    dbo.aspnet_Profile
    WHERE   UserId IN
            (   SELECT  UserId
                FROM    dbo.aspnet_Users u
                WHERE   ApplicationId = @ApplicationId
                        AND (LastActivityDate <= @InactiveSinceDate)
                        AND (
                                (@ProfileAuthOptions = 2)
                             OR (@ProfileAuthOptions = 0 AND IsAnonymous = 1)
                             OR (@ProfileAuthOptions = 1 AND IsAnonymous = 0)
                            )
            )

    SELECT  @@ROWCOUNT
END
GO
/****** Object:  Table [dbo].[DauGiaThanhCong]    Script Date: 06/19/2011 06:53:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DauGiaThanhCong](
	[MaDauGiaThanhCong] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[MaChiTietGiaoDich] [int] NULL,
	[GiaKhopLenh] [float] NULL,
	[DaNhanHang] [bit] NULL,
 CONSTRAINT [PK__DauGiaThanhCong__1920BF5C] PRIMARY KEY CLUSTERED 
(
	[MaDauGiaThanhCong] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UQ__DauGiaTh__E9D470CD02925FBF] UNIQUE NONCLUSTERED 
(
	[MaChiTietGiaoDich] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UQ__DauGiaTh__E9D470CD056ECC6A] UNIQUE NONCLUSTERED 
(
	[MaChiTietGiaoDich] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[DauGiaThanhCong] ON
INSERT [dbo].[DauGiaThanhCong] ([MaDauGiaThanhCong], [MaChiTietGiaoDich], [GiaKhopLenh], [DaNhanHang]) VALUES (1, 4, 200000, 0)
INSERT [dbo].[DauGiaThanhCong] ([MaDauGiaThanhCong], [MaChiTietGiaoDich], [GiaKhopLenh], [DaNhanHang]) VALUES (2, 5, 50000, 0)
SET IDENTITY_INSERT [dbo].[DauGiaThanhCong] OFF
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_DeleteProfiles]    Script Date: 06/19/2011 06:53:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Profile_DeleteProfiles]
    @ApplicationName        nvarchar(256),
    @UserNames              nvarchar(4000)
AS
BEGIN
    DECLARE @UserName     nvarchar(256)
    DECLARE @CurrentPos   int
    DECLARE @NextPos      int
    DECLARE @NumDeleted   int
    DECLARE @DeletedUser  int
    DECLARE @TranStarted  bit
    DECLARE @ErrorCode    int

    SET @ErrorCode = 0
    SET @CurrentPos = 1
    SET @NumDeleted = 0
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
        BEGIN TRANSACTION
        SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    WHILE (@CurrentPos <= LEN(@UserNames))
    BEGIN
        SELECT @NextPos = CHARINDEX(N',', @UserNames,  @CurrentPos)
        IF (@NextPos = 0 OR @NextPos IS NULL)
            SELECT @NextPos = LEN(@UserNames) + 1

        SELECT @UserName = SUBSTRING(@UserNames, @CurrentPos, @NextPos - @CurrentPos)
        SELECT @CurrentPos = @NextPos+1

        IF (LEN(@UserName) > 0)
        BEGIN
            SELECT @DeletedUser = 0
            EXEC dbo.aspnet_Users_DeleteUser @ApplicationName, @UserName, 4, @DeletedUser OUTPUT
            IF( @@ERROR <> 0 )
            BEGIN
                SET @ErrorCode = -1
                GOTO Cleanup
            END
            IF (@DeletedUser <> 0)
                SELECT @NumDeleted = @NumDeleted + 1
        END
    END
    SELECT @NumDeleted
    IF (@TranStarted = 1)
    BEGIN
    	SET @TranStarted = 0
    	COMMIT TRANSACTION
    END
    SET @TranStarted = 0

    RETURN 0

Cleanup:
    IF (@TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END
    RETURN @ErrorCode
END
GO
/****** Object:  Default [DF__aspnet_Ap__Appli__0E6E26BF]    Script Date: 06/19/2011 06:53:44 ******/
ALTER TABLE [dbo].[aspnet_Applications] ADD  DEFAULT (newid()) FOR [ApplicationId]
GO
/****** Object:  Default [DF__aspnet_Me__Passw__0F624AF8]    Script Date: 06/19/2011 06:53:44 ******/
ALTER TABLE [dbo].[aspnet_Membership] ADD  DEFAULT ((0)) FOR [PasswordFormat]
GO
/****** Object:  Default [DF__aspnet_Pa__PathI__10566F31]    Script Date: 06/19/2011 06:53:44 ******/
ALTER TABLE [dbo].[aspnet_Paths] ADD  DEFAULT (newid()) FOR [PathId]
GO
/****** Object:  Default [DF__aspnet_Perso__Id__114A936A]    Script Date: 06/19/2011 06:53:44 ******/
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser] ADD  DEFAULT (newid()) FOR [Id]
GO
/****** Object:  Default [DF__aspnet_Ro__RoleI__123EB7A3]    Script Date: 06/19/2011 06:53:44 ******/
ALTER TABLE [dbo].[aspnet_Roles] ADD  DEFAULT (newid()) FOR [RoleId]
GO
/****** Object:  Default [DF_aspnet_Users_UserId]    Script Date: 06/19/2011 06:53:44 ******/
ALTER TABLE [dbo].[aspnet_Users] ADD  CONSTRAINT [DF_aspnet_Users_UserId]  DEFAULT (newid()) FOR [UserId]
GO
/****** Object:  Default [DF__aspnet_Us__Mobil__160F4887]    Script Date: 06/19/2011 06:53:44 ******/
ALTER TABLE [dbo].[aspnet_Users] ADD  CONSTRAINT [DF__aspnet_Us__Mobil__160F4887]  DEFAULT (NULL) FOR [MobileAlias]
GO
/****** Object:  Default [DF__aspnet_Us__IsAno__17036CC0]    Script Date: 06/19/2011 06:53:44 ******/
ALTER TABLE [dbo].[aspnet_Users] ADD  CONSTRAINT [DF__aspnet_Us__IsAno__17036CC0]  DEFAULT ((0)) FOR [IsAnonymous]
GO
/****** Object:  Default [DF_TaiKhoan_BiXoa]    Script Date: 06/19/2011 06:53:44 ******/
ALTER TABLE [dbo].[TaiKhoan] ADD  CONSTRAINT [DF_TaiKhoan_BiXoa]  DEFAULT ((0)) FOR [BiXoa]
GO
/****** Object:  ForeignKey [FK__aspnet_Me__Appli__17036CC0]    Script Date: 06/19/2011 06:53:44 ******/
ALTER TABLE [dbo].[aspnet_Membership]  WITH CHECK ADD FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
/****** Object:  ForeignKey [FK__aspnet_Me__UserI__19DFD96B]    Script Date: 06/19/2011 06:53:44 ******/
ALTER TABLE [dbo].[aspnet_Membership]  WITH CHECK ADD  CONSTRAINT [FK__aspnet_Me__UserI__19DFD96B] FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[aspnet_Membership] CHECK CONSTRAINT [FK__aspnet_Me__UserI__19DFD96B]
GO
/****** Object:  ForeignKey [FK__aspnet_Pa__Appli__18EBB532]    Script Date: 06/19/2011 06:53:44 ******/
ALTER TABLE [dbo].[aspnet_Paths]  WITH CHECK ADD FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
/****** Object:  ForeignKey [FK__aspnet_Pe__PathI__19DFD96B]    Script Date: 06/19/2011 06:53:44 ******/
ALTER TABLE [dbo].[aspnet_PersonalizationAllUsers]  WITH CHECK ADD FOREIGN KEY([PathId])
REFERENCES [dbo].[aspnet_Paths] ([PathId])
GO
/****** Object:  ForeignKey [FK__aspnet_Pe__PathI__1AD3FDA4]    Script Date: 06/19/2011 06:53:44 ******/
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser]  WITH CHECK ADD FOREIGN KEY([PathId])
REFERENCES [dbo].[aspnet_Paths] ([PathId])
GO
/****** Object:  ForeignKey [FK__aspnet_Pe__UserI__1DB06A4F]    Script Date: 06/19/2011 06:53:44 ******/
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser]  WITH CHECK ADD  CONSTRAINT [FK__aspnet_Pe__UserI__1DB06A4F] FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser] CHECK CONSTRAINT [FK__aspnet_Pe__UserI__1DB06A4F]
GO
/****** Object:  ForeignKey [FK__aspnet_Pr__UserI__1EA48E88]    Script Date: 06/19/2011 06:53:44 ******/
ALTER TABLE [dbo].[aspnet_Profile]  WITH CHECK ADD  CONSTRAINT [FK__aspnet_Pr__UserI__1EA48E88] FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[aspnet_Profile] CHECK CONSTRAINT [FK__aspnet_Pr__UserI__1EA48E88]
GO
/****** Object:  ForeignKey [FK__aspnet_Ro__Appli__1DB06A4F]    Script Date: 06/19/2011 06:53:44 ******/
ALTER TABLE [dbo].[aspnet_Roles]  WITH CHECK ADD FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
/****** Object:  ForeignKey [FK__aspnet_Us__Appli__208CD6FA]    Script Date: 06/19/2011 06:53:44 ******/
ALTER TABLE [dbo].[aspnet_Users]  WITH CHECK ADD  CONSTRAINT [FK__aspnet_Us__Appli__208CD6FA] FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
ALTER TABLE [dbo].[aspnet_Users] CHECK CONSTRAINT [FK__aspnet_Us__Appli__208CD6FA]
GO
/****** Object:  ForeignKey [FK_aspnet_Users_ThongTinDauGia]    Script Date: 06/19/2011 06:53:44 ******/
ALTER TABLE [dbo].[aspnet_Users]  WITH CHECK ADD  CONSTRAINT [FK_aspnet_Users_ThongTinDauGia] FOREIGN KEY([MaThongTinDauGia])
REFERENCES [dbo].[ThongTinDauGia] ([MaThongTinDauGia])
GO
ALTER TABLE [dbo].[aspnet_Users] CHECK CONSTRAINT [FK_aspnet_Users_ThongTinDauGia]
GO
/****** Object:  ForeignKey [FK_aspnet_Users_ThongTinTaiKhoan]    Script Date: 06/19/2011 06:53:44 ******/
ALTER TABLE [dbo].[aspnet_Users]  WITH CHECK ADD  CONSTRAINT [FK_aspnet_Users_ThongTinTaiKhoan] FOREIGN KEY([MaThongTinTaiKhoan])
REFERENCES [dbo].[ThongTinTaiKhoan] ([MaThongTinTaiKhoan])
GO
ALTER TABLE [dbo].[aspnet_Users] CHECK CONSTRAINT [FK_aspnet_Users_ThongTinTaiKhoan]
GO
/****** Object:  ForeignKey [FK__aspnet_Us__RoleI__2180FB33]    Script Date: 06/19/2011 06:53:44 ******/
ALTER TABLE [dbo].[aspnet_UsersInRoles]  WITH CHECK ADD FOREIGN KEY([RoleId])
REFERENCES [dbo].[aspnet_Roles] ([RoleId])
GO
/****** Object:  ForeignKey [FK__aspnet_Us__UserI__245D67DE]    Script Date: 06/19/2011 06:53:44 ******/
ALTER TABLE [dbo].[aspnet_UsersInRoles]  WITH CHECK ADD  CONSTRAINT [FK__aspnet_Us__UserI__245D67DE] FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[aspnet_UsersInRoles] CHECK CONSTRAINT [FK__aspnet_Us__UserI__245D67DE]
GO
/****** Object:  ForeignKey [FK_Comment_aspnet_Users]    Script Date: 06/19/2011 06:53:44 ******/
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_Comment_aspnet_Users] FOREIGN KEY([MaTaiKhoan])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_Comment_aspnet_Users]
GO
/****** Object:  ForeignKey [FK_Comment_SanPham]    Script Date: 06/19/2011 06:53:44 ******/
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_Comment_SanPham] FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SanPham] ([MaSanPham])
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_Comment_SanPham]
GO
/****** Object:  ForeignKey [FK_ChiTietDauGia_aspnet_Users]    Script Date: 06/19/2011 06:53:44 ******/
ALTER TABLE [dbo].[ChiTietDauGia]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDauGia_aspnet_Users] FOREIGN KEY([MaTaiKhoan])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[ChiTietDauGia] CHECK CONSTRAINT [FK_ChiTietDauGia_aspnet_Users]
GO
/****** Object:  ForeignKey [FK_ChiTietDauGia_SanPham]    Script Date: 06/19/2011 06:53:44 ******/
ALTER TABLE [dbo].[ChiTietDauGia]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDauGia_SanPham] FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SanPham] ([MaSanPham])
GO
ALTER TABLE [dbo].[ChiTietDauGia] CHECK CONSTRAINT [FK_ChiTietDauGia_SanPham]
GO
/****** Object:  ForeignKey [FK_ChiTietPhanQuyen_LoaiTaiKhoan]    Script Date: 06/19/2011 06:53:44 ******/
ALTER TABLE [dbo].[ChiTietPhanQuyen]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietPhanQuyen_LoaiTaiKhoan] FOREIGN KEY([MaLoaiTaiKhoan])
REFERENCES [dbo].[LoaiTaiKhoan] ([MaLoaiTaiKhoan])
GO
ALTER TABLE [dbo].[ChiTietPhanQuyen] CHECK CONSTRAINT [FK_ChiTietPhanQuyen_LoaiTaiKhoan]
GO
/****** Object:  ForeignKey [FK_CHITIETPHANQUYEN_PHANQUYEN]    Script Date: 06/19/2011 06:53:44 ******/
ALTER TABLE [dbo].[ChiTietPhanQuyen]  WITH CHECK ADD  CONSTRAINT [FK_CHITIETPHANQUYEN_PHANQUYEN] FOREIGN KEY([MaPhanQuyen])
REFERENCES [dbo].[PhanQuyen] ([MaPhanQuyen])
GO
ALTER TABLE [dbo].[ChiTietPhanQuyen] CHECK CONSTRAINT [FK_CHITIETPHANQUYEN_PHANQUYEN]
GO
/****** Object:  ForeignKey [FK_DauGiaThanhCong_ChiTietDauGia1]    Script Date: 06/19/2011 06:53:44 ******/
ALTER TABLE [dbo].[DauGiaThanhCong]  WITH CHECK ADD  CONSTRAINT [FK_DauGiaThanhCong_ChiTietDauGia1] FOREIGN KEY([MaChiTietGiaoDich])
REFERENCES [dbo].[ChiTietDauGia] ([MaChiTietDauGia])
GO
ALTER TABLE [dbo].[DauGiaThanhCong] CHECK CONSTRAINT [FK_DauGiaThanhCong_ChiTietDauGia1]
GO
/****** Object:  ForeignKey [FK_LOAIMULTIMEDIA_MULTIMEDIA]    Script Date: 06/19/2011 06:53:44 ******/
ALTER TABLE [dbo].[Multimedia]  WITH CHECK ADD  CONSTRAINT [FK_LOAIMULTIMEDIA_MULTIMEDIA] FOREIGN KEY([MaLoaiMT])
REFERENCES [dbo].[LoaiMultimedia] ([MaLoaiMT])
GO
ALTER TABLE [dbo].[Multimedia] CHECK CONSTRAINT [FK_LOAIMULTIMEDIA_MULTIMEDIA]
GO
/****** Object:  ForeignKey [FK_SanPham_aspnet_Users]    Script Date: 06/19/2011 06:53:44 ******/
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_aspnet_Users] FOREIGN KEY([MaTaiKhoan])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_aspnet_Users]
GO
/****** Object:  ForeignKey [FK_SanPham_LoaiSanPham]    Script Date: 06/19/2011 06:53:44 ******/
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_LoaiSanPham] FOREIGN KEY([MaLoaiSanPham])
REFERENCES [dbo].[LoaiSanPham] ([MaLoaiSanPham])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_LoaiSanPham]
GO
/****** Object:  ForeignKey [FK_SanPham_Multimedia]    Script Date: 06/19/2011 06:53:44 ******/
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_Multimedia] FOREIGN KEY([MaHinhMoTa])
REFERENCES [dbo].[Multimedia] ([MaMT])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_Multimedia]
GO
/****** Object:  ForeignKey [FK_SANPHAM_TINHTRANGSANPHAM]    Script Date: 06/19/2011 06:53:44 ******/
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SANPHAM_TINHTRANGSANPHAM] FOREIGN KEY([MaTinhTrangSanPham])
REFERENCES [dbo].[TinhTrangSanPham] ([MaTinhTrangSanPham])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SANPHAM_TINHTRANGSANPHAM]
GO
/****** Object:  ForeignKey [FK_SanPham_Multimedia_SanPham]    Script Date: 06/19/2011 06:53:44 ******/
ALTER TABLE [dbo].[SanPham_Multimedia]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_Multimedia_SanPham] FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SanPham] ([MaSanPham])
GO
ALTER TABLE [dbo].[SanPham_Multimedia] CHECK CONSTRAINT [FK_SanPham_Multimedia_SanPham]
GO
/****** Object:  ForeignKey [FK_SANPHAMMULTI_MULTIMEDIA]    Script Date: 06/19/2011 06:53:44 ******/
ALTER TABLE [dbo].[SanPham_Multimedia]  WITH CHECK ADD  CONSTRAINT [FK_SANPHAMMULTI_MULTIMEDIA] FOREIGN KEY([MaMT])
REFERENCES [dbo].[Multimedia] ([MaMT])
GO
ALTER TABLE [dbo].[SanPham_Multimedia] CHECK CONSTRAINT [FK_SANPHAMMULTI_MULTIMEDIA]
GO
/****** Object:  ForeignKey [FK_ThongTinTaiKhoan_GioiTinh]    Script Date: 06/19/2011 06:53:44 ******/
ALTER TABLE [dbo].[ThongTinTaiKhoan]  WITH CHECK ADD  CONSTRAINT [FK_ThongTinTaiKhoan_GioiTinh] FOREIGN KEY([MaGioiTinh])
REFERENCES [dbo].[GioiTinh] ([MaGioiTinh])
GO
ALTER TABLE [dbo].[ThongTinTaiKhoan] CHECK CONSTRAINT [FK_ThongTinTaiKhoan_GioiTinh]
GO
