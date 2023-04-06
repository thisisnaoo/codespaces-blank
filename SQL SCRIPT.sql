CREATE TABLE KHOA (
    MaKhoa varchar(10) PRIMARY KEY,
    TenKhoa nvarchar(50));
INSERT INTO KHOA (MaKhoa, TenKhoa) VALUES
    ('SOM', N'Quản trị'),
    ('IBM', N'Kinh doanh quốc tế - Marketing'),
    ('SOF', N'Tài chính'),
    ('SOB', N'Ngân hàng'),
    ('SOA', N'Kế toán'),
    ('VDL', N'Du lịch'),
    ('SOE', N'Kinh tế'),
    ('SPF', N'Tài chính công'),
    ('LAW', N'Luật'),
    ('SOG', N'Quản lý nhà nước'),
    ('SEM', N'Toán - Thống kê'),
    ('BIT', N'Công nghệ thông tin kinh doanh'),
    ('SFL', N'Ngoại ngữ'),
    ('LLC', N'Lý luận chính trị');

CREATE TABLE GIAOVIEN (
    MaGiaoVien varchar(10) PRIMARY KEY,
    HoTen nvarchar(50),
	MaKhoa varchar(10) NOT NULL,
    FOREIGN KEY (MaKhoa) REFERENCES KHOA(MaKhoa));

INSERT INTO GIAOVIEN (MaGiaoVien, HoTen, MaKhoa) VALUES
    ('phungthk',   N'Thái Kim Phụng',        'BIT'),
    ('hienphan',   N'Phan Hiền',             'BIT'),
    ('truong',     N'Trương Việt Phương',    'BIT'),
    ('huybx',      N'Bùi Xuân Huy',          'BIT'),
    ('tuannm',     N'Nguyễn Mạnh Tuấn',      'BIT'),
    ('hvduc',      N'Huỳnh Văn Đức',         'BIT'),
    ('tena',       N'Nguyễn An Tế',          'BIT'),
    ('hungngq',    N'Nguyễn Quốc Hùng',      'BIT'),
    ('khanhntv',   N'Ngô Tấn Vũ Khanh',      'BIT'),
    ('hieubt',     N'Bùi Thanh Hiếu',        'BIT'),
    ('thinhdt',    N'Đặng Thái Thịnh',       'BIT'),
    ('tuyenhtt',   N'Hồ Thị Thanh Tuyến',    'BIT'),
    ('yenhh',      N'Hoàng Hải Yến',         'SOB');
    ('sangnv',     N'Nguyễn Văn Sáng',       'LLC'),
    ('trainv',     N'Nguyễn Văn Trãi',       'SEM'),
    ('hanhkt',     N'Nguyễn Thị Hạnh',       'SFL'),
    ('hongltc',    N'Lê Thị Cẩm Hồng',       'SOA'),
    ('ainhan',     N'Lê Thị Ái Nhân',        'LLC'),
    ('chamng',     N'Nguyễn Thị Bích Châm',  'SOM'),
    ('minhd',      N'Đinh Tiên Minh',        'IBM'),
    ('minhn',      N'Nguyễn Thị Hồng Minh',  'IBM'),
    ('hongtcdn',   N'Đinh Thị Thu Hồng',     'SOF'),
    ('hailyth',    N'Trần Thị Hải Lý',       'SOF'),
    ('khanhnam',   N'Phạm Khánh Nam',        'SOE'),
    ('thangvt',    N'Võ Tất Thắng',          'SOE'),
    ('gialuat',    N'Diệp Gia Luật',         'SPF'),
    ('kimquyen',   N'Nguyễn Kim Quyến',      'SPF'),
    ('nguyend',    N'Dương Kim Thế Nguyên',  'LAW'),
    ('anhnt',      N'Nguyễn Thị Anh',        'LAW'),
    ('khai',       N'Đinh Công Khải',        'SOG'),
    ('dunv',       N'Nguyễn Văn Dư',         'SOG')


CREATE TABLE CHUONGTRINH (
    MaChuongTrinh nvarchar(5) PRIMARY KEY, 
    TenChuongTrinh nvarchar(50), 
    MaBacHoc char(2), 
    MaKhoa varchar(10) NOT NULL,
    MaGiaoVien_GiamDocCT varchar(10) NOT NULL,
    FOREIGN KEY (MaKhoa) REFERENCES KHOA(MaKhoa),
    FOREIGN KEY (MaGiaoVien_GiamDocCT) REFERENCES GIAOVIEN(MaGiaoVien));


INSERT INTO CHUONGTRINH (MaChuongTrinh, TenChuongTrinh, MaBacHoc, MaKhoa, MaGiaoVien_GiamDocCT) VALUES
    ('DS_DH', N'Khoa học dữ liệu ĐH',                             'DH', 'BIT', 'khanhntv'),
    ('ERPDH', N'Hệ thống hoạch định nguồn lực doanh nghiệp ĐH',   'DH', 'BIT', 'huybx'   ),
    ('ST_DH', N'Công nghệ Phần mềm ĐH',                           'DH', 'BIT', 'truong'  ),
    ('EC_DH', N'Thương mại điện tử ĐH',                           'DH', 'BIT', 'tuannm'  ),
    ('BISDH', N'Hệ thống thông tin kinh doanh ĐH',                'DH', 'BIT', 'hienphan'),
    ('DT_CH', N'Công nghệ thiết kế thông tin và truyền thông CH', 'CH', 'BIT', 'phungthk'),
    ('FB_DH', N'Tài chính ngân hàng ĐH',                          'CH', 'SOB', 'yenhh'   ),
    ('FB_CH', N'Tài chính ngân hàng CH',                          'CH', 'SOB', 'yenhh'   );
    ('MKTDH', N'Marketing ĐH',                                    'DH', 'IBM', 'minhd'   );
    ('QLCDH', N'Quản lý công ĐH',                                 'DH', 'SOG', 'khai'    );

CREATE TABLE MONHOC (
    MaMonHoc nvarchar(10) PRIMARY KEY, 
    TenMonHoc nvarchar(50), 
    SoTinChi int, 
    MaKhoa varchar(10) NOT NULL,
    FOREIGN KEY (MaKhoa) REFERENCES KHOA(MaKhoa));

INSERT INTO MONHOC (MaMonHoc, TenMonHoc, SoTinChi, MaKhoa) VALUES 
    ('ECO501001', N'Kinh tế vi mô',                                               3,  'SOE'),
    ('ENG513001', N'Tiếng Anh P1',                                                4,  'SFL'),
    ('LAW511001', N'Luật kinh doanh',                                             3,  'BIT'),
    ('MAT508001', N'Toán dành cho kinh tế và quản trị',                           3,  'BIT'),
    ('PHI510023', N'Triết học Mác LêNin',                                         3,  'BIT'),
    ('ACC507001', N'Nguyên lý kế toán',                                           3,  'SOA'),
    ('ECO501002', N'Kinh tế vĩ mô',                                               3,  'SOE'),
    ('ENG513002', N'Tiếng Anh P2',                                                4,  'SFL'),
    ('POL510024', N'Kinh tế chính trị Mác LêNin',                                 2,  'LLC'),
    ('POL510025', N'Chủ nghĩa xã hội khoa học',                                   2,  'LLC'),
    ('STA508005', N'Thống kê ứng dụng trong Ktế và KD',                           3,  'SEM'),
    ('ENG513003', N'Tiếng Anh P3',                                                4,  'SFL'),
    ('HCM510004', N'Tư tưởng Hồ Chí Minh',                                        2,  'LLC'),
    ('INF509003', N'Cơ sở công nghệ thông tin',                                   3,  'BIT'),
    ('INF509008', N'Hệ thống thông tin quản lý',                                  3,  'BIT'),
    ('INF509011', N'Toán dành cho tin học',                                       3,  'BIT'),
    ('MAN502001', N'Quản trị học',                                                3,  'SOM'),
    ('ENG513004', N'Tiếng Anh P4',                                                4,  'SFL'),
    ('HIS510026', N'Lịch sử Đảng Cộng Sản Việt Nam',                              2,  'LLC'),
    ('INF509004', N'Kiến trúc hệ thống',                                          3,  'BIT'),
    ('INF509005', N'Cơ sở lập trình',                                             3,  'BIT'),
    ('INF509006', N'Cơ sở dữ liệu',                                               3,  'BIT'),
    ('INF509009', N'Phân tích nghiệp vụ kinh doanh',                              3,  'BIT'),
    ('MAR503001', N'Marketing căn bản',                                           3,  'IBM'),
    ('MAT508010', N'Phân tích dữ liệu',                                           3,  'SEM'),
    ('BUS503095', N'Kỹ năng mềm',                                                 2,  'SOM'),
    ('INF509007', N'Cấu trúc dữ liệu và giải thuật',                              3,  'BIT'),
    ('INF509010', N'Phân tích thiết kế hệ thống',                                 3,  'BIT'),
    ('INF509012', N'Công nghệ phần mềm',                                          3,  'BIT'),
    ('INF509013', N'Thương mại điện tử',                                          3,  'BIT'),
    ('INF509017', N'Giới thiệu (ERP)',                                            3,  'BIT'),
    ('ACC507011', N'Kế toán quản trị',                                            3,  'SOA'),
    ('BUS503048', N'Quản trị chuỗi cung ứng',                                     3,  'SOM'),
    ('INF509018', N'Cơ sở dữ liệu nâng cao',                                      3,  'BIT'),
    ('INF509019', N'Đảm bảo và kiểm soát chất lượng phần mềm',                    3,  'BIT'),
    ('BUS533002', N'Khởi nghiệp kinh doanh',                                      1,  'BIT'),
    ('INF509014', N'Phát triển ứng dụng web',                                     3,  'BIT'),
    ('INF509015', N'Phát triển ứng dụng trên Windows',                            3,  'BIT'),
    ('INF509016', N'Quản lý dự án công nghệ thông tin',                           3,  'BIT'),
    ('INF509020', N'Tri thức kinh doanh',                                         3,  'BIT'),
    ('INF509021', N'Kiểm thử phần mềm',                                           3,  'BIT'),
    ('INF509022', N'Kiến trúc phần mềm hướng dịch vụ',                            3,  'BIT'),
    ('INF509023', N'Phần mềm hoạch định nguồn lực doanh nghiệp (ERP)',            3,  'BIT'),
    ('MAN502004', N'Quản trị nguồn nhân lực',                                     3,  'SOM'),
    ('MAR503018', N'Quản trị marketing',                                          3,  'SOM'),
    ('INF509033', N'Khóa luận tốt nghiệp - BI',                                   10, 'BIT'),
    ('INF509072', N'Học kỳ doanh nghiệp - BI',                                    10, 'BIT');

CREATE TABLE CHUONGTRINHMONHOC (
  MaChuongTrinh nvarchar(5) NOT NULL,
  MaMonHoc nvarchar(10) NOT NULL,
  HocKy int,
  PRIMARY KEY (MaChuongTrinh, MaMonHoc),
  FOREIGN KEY (MaChuongTrinh) REFERENCES CHUONGTRINH(MaChuongTrinh),
  FOREIGN KEY (MaMonHoc) REFERENCES MONHOC(MaMonHoc));


INSERT INTO CHUONGTRINHMONHOC (MaChuongTrinh, MaMonHoc, HocKy) VALUES 
    ('BISDH', 'ECO501001', 1),
    ('EC_DH', 'ECO501001', 1),
    ('BISDH', 'ENG513001', 1),
    ('EC_DH', 'ENG513001', 1),
    ('ERPDH', 'PHI510023', 1),
    ('ST_DH', 'ACC507001', 2),
    ('DS_DH', 'ECO501002', 2),
    ('BISDH', 'ENG513002', 2),
    ('EC_DH', 'POL510024', 2),
    ('BISDH', 'POL510024', 2),
    ('BISDH', 'POL510025', 2),
    ('BISDH', 'STA508005', 2),
    ('BISDH', 'ENG513003', 3),
    ('BISDH', 'HCM510004', 3),
    ('EC_DH', 'INF509003', 3),
    ('EC_DH', 'INF509008', 3),
    ('EC_DH', 'INF509011', 3),
    ('EC_DH', 'MAN502001', 3),
    ('EC_DH', 'ENG513004', 4),
    ('EC_DH', 'HIS510026', 4),
    ('BISDH', 'INF509004', 4),
    ('BISDH', 'INF509005', 4),
    ('BISDH', 'INF509006', 4),
    ('BISDH', 'INF509009', 4),
    ('BISDH', 'MAR503001', 4),
    ('BISDH', 'MAT508010', 4),
    ('EC_DH', 'BUS503095', 5),
    ('BISDH', 'BUS503095', 5),
    ('BISDH', 'INF509007', 5),
    ('BISDH', 'INF509010', 5),
    ('BISDH', 'INF509012', 5),
    ('EC_DH', 'INF509013', 5),
    ('BISDH', 'INF509013', 5),
    ('BISDH', 'INF509017', 5),
    ('BISDH', 'ACC507011', 5),
    ('BISDH', 'BUS503048', 5),
    ('BISDH', 'INF509018', 5),
    ('BISDH', 'INF509019', 6),
    ('BISDH', 'BUS533002', 6),
    ('BISDH', 'INF509014', 6),
    ('BISDH', 'INF509015', 6),
    ('BISDH', 'INF509016', 6),
    ('BISDH', 'INF509020', 6),
    ('BISDH', 'INF509021', 6),
    ('BISDH', 'INF509022', 6),
    ('BISDH', 'INF509023', 6),
    ('EC_DH', 'MAN502004', 6),
    ('EC_DH', 'MAR503018', 6),
    ('BISDH', 'INF509033', 7),
    ('BISDH', 'INF509072', 7);

CREATE TABLE DAMNHIEMMON (
    MaChuongTrinh nvarchar(5) NOT NULL,
    MaMonHoc nvarchar(10) NOT NULL,
    MaGiaoVien varchar(10) NOT NULL,
    CoLaDamNhiemChinh int,
    PRIMARY KEY (MaChuongTrinh, MaMonHoc, MaGiaoVien),
    FOREIGN KEY (MaChuongTrinh) REFERENCES CHUONGTRINH(MaChuongTrinh),
    FOREIGN KEY (MaMonHoc) REFERENCES MONHOC(MaMonHoc),
    FOREIGN KEY (MaGiaoVien) REFERENCES GIAOVIEN(MaGiaoVien));
GO
Create trigger check_dam_nhiem_mon
On DamNhiemMon
FOR INSERT, UPDATE
AS 
BEGIN
	DECLARE @magiaovien varchar(10), @coladamnhiemchinh int, @count int = 0
	SELECT @magiaovien = MaGiaoVien FROM inserted
	SELECT @coladamnhiemchinh = CoLaDamNhiemChinh FROM inserted
	SELECT 	@count = COUNT (DISTINCT MaMonHoc)  FROM DamNhiemMon WHERE MaGiaoVien = @magiaovien AND CoLaDamNhiemChinh = 1
	If (@count > 5 AND @coladamnhiemchinh = 1)
	begin
		ROLLBACK TRAN
	end
END
GO


INSERT INTO DAMNHIEMMON (MaChuongTrinh, MaMonHoc, MaGiaoVien, CoLaDamNhiemChinh) VALUES 
    ('BISDH', 'INF509007', 'hvduc',    0),
    ('BISDH', 'INF509007', 'hienphan', 0),
    ('BISDH', 'INF509007', 'truong',   1),
    ('BISDH', 'INF509007', 'tena',     0),
    ('BISDH', 'INF509010', 'tena',     1),
    ('BISDH', 'INF509010', 'huybx',    0),
    ('BISDH', 'INF509010', 'truong',   0),
    ('BISDH', 'INF509010', 'hungngq',  0),
    ('BISDH', 'INF509010', 'hienphan', 0),
    ('EC_DH', 'INF509013', 'phungthk', 1),
    ('EC_DH', 'INF509013', 'tuannm',   0),
    ('BISDH', 'INF509013', 'phungthk', 1),
    ('BISDH', 'INF509013', 'hungngq',  0),
    ('BISDH', 'INF509018', 'hienphan', 1),
    ('BISDH', 'INF509018', 'tuyenhtt', 0);

CREATE TABLE KHOAHOC (
    MaKhoaHoc nvarchar(10) PRIMARY KEY, 
    TenKhoaHoc nvarchar(50), 
    NamBatDau int, 
    NamKetThuc int, 
    MaChuongTrinh nvarchar(5) NOT NULL,
    FOREIGN KEY (MaChuongTrinh) REFERENCES CHUONGTRINH(MaChuongTrinh));

INSERT INTO KHOAHOC (MaKhoaHoc, TenKhoaHoc, NamBatDau, NamKetThuc, MaChuongTrinh) VALUES
    ('DH46BI', N'Hệ thống thông tin kinh doanh Khóa 46',                2020, 2024, 'BISDH'),
    ('DH47BI', N'Hệ thống thông tin kinh doanh Khóa 47',                2021, 2025, 'BISDH'),
    ('DH46EC', N'Thương mại điện tử Khóa 46',                           2020, 2024, 'EC_DH'),
    ('DH46ST', N'Công nghệ Phần mềm Khóa 46',                           2020, 2024, 'ST_DH'),
    ('CH32DT', N'CN thiết kế thông tin và truyền thông Khóa 32',        2022, 2024, 'DT_CH');

CREATE TABLE KHOAHOCMON (
	ID int IDENTITY(1,1) PRIMARY KEY,
    MaKhoaHoc nvarchar(10) NOT NULL,
    MaMonHoc nvarchar(10) NOT NULL,
    MaGiaoVien_day varchar(10) NOT NULL,
    MaPhong varchar(10),
    MaThu char(2),
    FOREIGN KEY (MaKhoaHoc) REFERENCES KHOAHOC(MaKhoaHoc),
    FOREIGN KEY (MaMonHoc) REFERENCES MONHOC(MaMonHoc),
    FOREIGN KEY (MaGiaoVien_day) REFERENCES GIAOVIEN(MaGiaoVien));

INSERT INTO KHOAHOCMON (MaKhoaHoc, MaMonHoc, MaGiaoVien_day, MaPhong, MaThu) VALUES
    ('DH46BI', 'INF509007', 'hienphan', 'B2.507',  'S4'),
    ('DH46BI', 'INF509007', 'tena',     'B2.507',  'C4'),
    ('DH46BI', 'INF509010', 'tena',     'B2.508',  'S4'),
    ('DH46BI', 'INF509013', 'phungthk', 'A.203',   'S2'),
    ('DH46BI', 'INF509018', 'hienphan', 'B1.1103', 'C6'),
    ('DH47BI', 'INF509010', 'huybx',    'N1.206',  'S4'),
    ('DH46EC', 'INF509013', 'tuannm',   'B2.105',  'S4');