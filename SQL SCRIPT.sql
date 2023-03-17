CREATE TABLE KHOA (
    MaKhoa varchar(10) PRIMARY KEY,
    TenKhoa nvarchar(50));
INSERT INTO KHOA (MaKhoa, TenKhoa) VALUES
    ('SOM', 'Khoa Quản trị'),
    ('IBM', 'Khoa Kinh doanh quốc tế - Marketing'),
    ('SOF', 'Khoa Tài chính'),
    ('SOB', 'Khoa Ngân hàng'),
    ('SOA', 'Khoa Kế toán'),
    ('VDL', 'Khoa Du lịch'),
    ('SOE', 'Khoa Kinh tế'),
    ('SPF', 'Khoa Tài chính công'),
    ('LAW', 'Khoa Luật'),
    ('SOG', 'Khoa Quản lý nhà nước'),
    ('SEM', 'Khoa Toán - Thống kê'),
    ('BIT', 'Khoa Công nghệ thông tin kinh doanh'),
    ('SFL', 'Khoa Ngoại ngữ'),
    ('LLC', 'Khoa Lý luận chính trị');

CREATE TABLE GIAOVIEN (
    MaGiaoVien varchar(10) PRIMARY KEY,
    HoTen nvarchar(50),
    MaKhoa varchar(10) REFERENCES KHOA(MaKhoa));

INSERT INTO GIAOVIEN (MaGiaoVien, HoTen, MaKhoa) VALUES
    ('phungthk',   'Thái Kim Phụng',        'BIT'),
    ('hienphan',   'Phan Hiền',             'BIT'),
    ('truong',     'Trương Việt Phương',    'BIT'),
    ('huybx',      'Bùi Xuân Huy',          'BIT'),
    ('tuannm',     'Nguyễn Mạnh Tuấn',      'BIT'),
    ('hvduc',      'Huỳnh Văn Đức',         'BIT'),
    ('tena',       'Nguyễn An Tế',          'BIT'),
    ('hungngq',    'Nguyễn Quốc Hùng',      'BIT'),
    ('khanhntv',   'Ngô Tấn Vũ Khanh',      'BIT'),
    ('hieubt',     'Bùi Thanh Hiếu',        'BIT'),
    ('thinhdt',    'Đặng Thái Thịnh',       'BIT'),
    ('tuyenhtt',   'Hồ Thị Thanh Tuyến',    'BIT');
    ('yenhh',      'Hoàng Hải Yến',         'SOB');


CREATE TABLE CHUONGTRINH (
    MaChuongTrinh nvarchar(5) PRIMARY KEY, 
    TenChuongTrinh nvarchar(50), 
    MaBacHoc char(2), 
    MaKhoa varchar(10) REFERENCES KHOA(MaKhoa), 
    MaGiaoVien_GiamDocCT varchar(10) REFERENCES GIAOVIEN(MaGiaoVien)
);


INSERT INTO CHUONGTRINH (MaChuongTrinh, TenChuongTrinh, MaBacHoc, MaKhoa, MaGiaoVien_GiamDocCT) VALUES
    ('DS_DH', 'Khoa học dữ liệu',                             'DH', 'BIT', 'khanhntv'),
    ('ERPDH', 'Hệ thống hoạch định nguồn lực doanh nghiệp',   'DH', 'BIT', 'huybx'   ),
    ('ST_DH', 'Công nghệ Phần mềm',                           'DH', 'BIT', 'truong'  ),
    ('EC_DH', 'Thương mại điện tử',                           'DH', 'BIT', 'tuannm'  ),
    ('BISDH', 'Hệ thống thông tin kinh doanh',                'DH', 'BIT', 'hienphan'),
    ('DT_CH', 'Công nghệ thiết kế thông tin và truyền thông', 'CH', 'BIT', 'phungthk');
    ('FB_DH', 'Tài chính ngân hàng',                          'CH', 'BIT', 'phungthk');
    ('DT_CH', 'Tài chính ngân hàng',                          'CH', 'BIT', 'phungthk');


CREATE TABLE MONHOC (
    MaMonHoc nvarchar(10) PRIMARY KEY, 
    TenMonHoc nvarchar(50), 
    SoTinChi int, 
    MaKhoa varchar(10) FOREIGN KEY);

INSERT INTO MONHOC (MaMonHoc, TenMonHoc, SoTinChi, MaKhoa) VALUES 
    ('ECO501001', 'Kinh tế vi mô',                                               3,  'SOE'),
    ('ENG513001', 'Tiếng Anh P1',                                                4,  'BIT'),
    ('LAW511001', 'Luật kinh doanh',                                             3,  'BIT'),
    ('MAT508001', 'Toán dành cho kinh tế và quản trị',                           3,  'BIT'),
    ('PHI510023', 'Triết học Mác LêNin',                                         3,  'BIT'),
    ('ACC507001', 'Nguyên lý kế toán',                                           3,  'SOA'),
    ('ECO501002', 'Kinh tế vĩ mô',                                               3,  'SOE'),
    ('ENG513002', 'Tiếng Anh P2',                                                4,  'SFL'),
    ('POL510024', 'Kinh tế chính trị Mác LêNin',                                 2,  'LLC'),
    ('POL510025', 'Chủ nghĩa xã hội khoa học',                                   2,  'LLC'),
    ('STA508005', 'Thống kê ứng dụng trong Ktế và KD',                           3,  'SEM'),
    ('ENG513003', 'Tiếng Anh P3',                                                4,  'SFL'),
    ('HCM510004', 'Tư tưởng Hồ Chí Minh',                                        2,  'LLC'),
    ('INF509003', 'Cơ sở công nghệ thông tin',                                   3,  'BIT'),
    ('INF509008', 'Hệ thống thông tin quản lý',                                  3,  'BIT'),
    ('INF509011', 'Toán dành cho tin học',                                       3,  'BIT'),
    ('MAN502001', 'Quản trị học',                                                3,  'SOM'),
    ('ENG513004', 'Tiếng Anh P4',                                                4,  'SFL'),
    ('HIS510026', 'Lịch sử Đảng Cộng Sản Việt Nam',                              2,  'LLC'),
    ('INF509004', 'Kiến trúc hệ thống',                                          3,  'BIT'),
    ('INF509005', 'Cơ sở lập trình',                                             3,  'BIT'),
    ('INF509006', 'Cơ sở dữ liệu',                                               3,  'BIT'),
    ('INF509009', 'Phân tích nghiệp vụ kinh doanh',                              3,  'BIT'),
    ('MAR503001', 'Marketing căn bản',                                           3,  'IBM'),
    ('MAT508010', 'Phân tích dữ liệu',                                           3,  'SEM'),
    ('BUS503095', 'Kỹ năng mềm',                                                 2,  'SOM'),
    ('INF509007', 'Cấu trúc dữ liệu và giải thuật',                              3,  'BIT'),
    ('INF509010', 'Phân tích thiết kế hệ thống',                                 3,  'BIT'),
    ('INF509010', 'Phân tích thiết kế hệ thống',                                 3,  'BIT'),
    ('INF509012', 'Công nghệ phần mềm',                                          3,  'BIT'),
    ('INF509013', 'Thương mại điện tử',                                          3,  'BIT'),
    ('INF509017', 'Giới thiệu hệ thống hoạch định nguồn lực doanh nghiệp (ERP)', 3,  'BIT'),
    ('ACC507011', 'Kế toán quản trị',                                            3,  'SOA'),
    ('BUS503048', 'Quản trị chuỗi cung ứng',                                     3,  'SOM'),
    ('INF509018', 'Cơ sở dữ liệu nâng cao',                                      3,  'BIT'),
    ('INF509019', 'Đảm bảo và kiểm soát chất lượng phần mềm',                    3,  'BIT'),
    ('BUS533002', 'Khởi nghiệp kinh doanh',                                      1,  'BIT'),
    ('INF509014', 'Phát triển ứng dụng web',                                     3,  'BIT'),
    ('INF509015', 'Phát triển ứng dụng trên Windows',                            3,  'BIT'),
    ('INF509016', 'Quản lý dự án công nghệ thông tin',                           3,  'BIT'),
    ('INF509020', 'Tri thức kinh doanh',                                         3,  'BIT'),
    ('INF509021', 'Kiểm thử phần mềm',                                           3,  'BIT'),
    ('INF509022', 'Kiến trúc phần mềm hướng dịch vụ',                            3,  'BIT'),
    ('INF509023', 'Phần mềm hoạch định nguồn lực doanh nghiệp (ERP)',            3,  'BIT'),
    ('MAN502004', 'Quản trị nguồn nhân lực',                                     3,  'SOM'),
    ('MAR503018', 'Quản trị marketing',                                          3,  'SOM'),
    ('INF509033', 'Khóa luận tốt nghiệp - BI',                                   10, 'BIT'),
    ('INF509072', 'Học kỳ doanh nghiệp - BI',                                    10, 'BIT');

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
    MaChuongTrinh nvarchar(5));

INSERT INTO KHOAHOC (MaKhoaHoc, TenKhoaHoc, NamBatDau, NamKetThuc, MaChuongTrinh) VALUES
    ('DH46BI', 'Hệ thống thông tin kinh doanh Khóa 46',                2020, 2024, 'BISDH'),
    ('DH47BI', 'Hệ thống thông tin kinh doanh Khóa 47',                2021, 2025, 'BISDH'),
    ('DH46EC', 'Thương mại điện tử Khóa 46',                           2020, 2024, 'EC_DH'),
    ('DH46ST', 'Công nghệ Phần mềm Khóa 46',                           2020, 2024, 'ST_DH'),
    ('CH32DT', 'Công nghệ thiết kế thông tin và truyền thông Khóa 32', 2022, 2024, 'DT_CH');

CREATE TABLE KHOAHOCMON (
    MaKhoaHoc nvarchar(10),
    MaMonHoc nvarchar(5),
    MaGiaoVien_day varchar(10),
    MaPhong varchar(10),
    MaThu char(2));

INSERT INTO KHOAHOCMON (MaKhoaHoc, MaMonHoc, MaGiaoVien_day, MaPhong, MaThu) VALUES
    ('DH46BI', 'INF509007', 'hienphan', 'B2.507',  'S4'),
    ('DH46BI', 'INF509007', 'tena',     'B2.507',  'C4'),
    ('DH46BI', 'INF509010', 'tena',     'B2.508',  'S4'),
    ('DH46BI', 'INF509013', 'phungthk', 'A.203',   'S2'),
    ('DH46BI', 'INF509018', 'hienphan', 'B1.1103', 'C6'),
    ('DH47BI', 'INF509010', 'huybx',    'N1.206',  'S4'),
    ('DH46EC', 'INF509013', 'tuannm',   'B2.105',  'S4');
