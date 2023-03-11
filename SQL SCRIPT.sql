CREATE TABLE KHOA (
    MaKhoa varchar(10) PRIMARY KEY,
    TenKhoa nvarchar(50));
INSERT INTO Khoa (MaKhoa, TenKhoa)
VALUES
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
    MaKhoa varchar(10));
INSERT INTO GIAOVIEN (MaGiaoVien, HoTen, MaKhoa)
VALUES
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

CREATE TABLE CHUONGTRINH (
    MaChuongTrinh nvarchar(5) PRIMARY KEY, 
    TenChuongTrinh nvarchar(50), 
    MaBacHoc char(2), 
    MaKhoa varchar(10), 
    MaGiaoVien_GiamDocCT varchar(10));

INSERT INTO CHUONGTRINH (MaChuongTrinh, TenChuongTrinh, MaBacHoc, MaKhoa, MaGiaoVien_GiamDocCT)
VALUES
    ('DS', 'Khoa học dữ liệu',                             'DH', 'BIT', 'khanhntv'),
    ('ER', 'Hệ thống hoạch định nguồn lực doanh nghiệp',   'DH', 'BIT', 'huybx'   ),
    ('ST', 'Công nghệ Phần mềm',                           'DH', 'BIT', 'truong'  ),
    ('EC', 'Thương mại điện tử',                           'DH', 'BIT', 'tuannm'  ),
    ('BI', 'Hệ thống thông tin kinh doanh',                'DH', 'BIT', 'hienphan'),
    ('DT', 'Công nghệ thiết kế thông tin và truyền thông', 'CH', 'BIT', 'phungthk');

CREATE TABLE MONHOC (
    MaMonHoc nvarchar(5) PRIMARY KEY, 
    TenMonHoc nvarchar(50), 
    SoTinChi int, 
    MaKhoa varchar(10));

INSERT INTO MONHOC (MaMonHoc, TenMonHoc, SoTinChi, MaKhoa)
VALUES 
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

