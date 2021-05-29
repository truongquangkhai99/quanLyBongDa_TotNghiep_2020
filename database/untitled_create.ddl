CREATE TABLE CAU_THU (
  ID        int(10) NOT NULL AUTO_INCREMENT, 
  TEN       varchar(100) NOT NULL, 
  QUOC_TICH varchar(100), 
  NGAY_SINH date, 
  GIOI_TINH int(10), 
  DAC_DIEM  varchar(300), 
  PRIMARY KEY (ID));
CREATE TABLE CHI_SO_CAU_THU (
  ID                     int(10) NOT NULL AUTO_INCREMENT, 
  CAU_THU                int(10) NOT NULL, 
  DOI_BONG               int(10) NOT NULL, 
  SO_AO                  int(11), 
  CHAN_THUAN             varchar(50), 
  VI_TRI_SO_TRUONG       int(11), 
  CHIEU_CAO              int(10), 
  CAN_NANG               double, 
  TINH_TRANG_SUC_KHOE    varchar(500), 
  NGAY_TAO               date, 
  SO_BAN_THANG_SAN_NHA   int(11), 
  SO_BAN_THANG_SAN_KHACH int(11), 
  SO_HO_TRO_SAN_NHA      int(11), 
  SO_HO_TRO_SAN_KHACH    int(11), 
  TRANG_THAI_BAN_GHI     varchar(30), 
  PRIMARY KEY (ID));
CREATE TABLE DOI_BONG (
  ID                      int(10) NOT NULL AUTO_INCREMENT, 
  TEN                     varchar(50) NOT NULL, 
  LOGO                    varchar(30), 
  TRANG_PHUC_TRUYEN_THONG varchar(50), 
  HUAN_LUYEN_VIEN         varchar(50), 
  CHU_SO_HUU              varchar(50), 
  DIA_CHI                 varchar(300), 
  MO_TA                   varchar(300), 
  QUOC_TICH               varchar(100), 
  SO_BAN_THANG_SAN_NHA    int(11), 
  SO_BAN_THANG_SAN_KHACH  int(11), 
  GIAI_DAUID              int(10) NOT NULL, 
  SAN_BONGID              int(10), 
  TRANG_THAI_BAN_GHI      varchar(30), 
  PRIMARY KEY (ID));
CREATE TABLE VI_TRI (
  ID    int(11) NOT NULL AUTO_INCREMENT, 
  KIEU  varchar(200) NOT NULL, 
  TEN   varchar(100) NOT NULL, 
  MO_TA varchar(300), 
  PRIMARY KEY (ID));
CREATE TABLE TRONG_TAI (
  ID                 int(10) NOT NULL AUTO_INCREMENT, 
  TEN                varchar(50), 
  SO_DIEN_THOAI      varchar(20), 
  NAM_SINH           int(11), 
  SO_TRAN_BAT_CHINH  int(11), 
  SO_TRAN_DA_BAT     int(11), 
  TRANG_THAI_BAN_GHI varchar(30), 
  PRIMARY KEY (ID));
CREATE TABLE TRONG_TAI_TRAN_DAU (
  ID                int(10) NOT NULL AUTO_INCREMENT, 
  TRAN_DAU          int(20) NOT NULL, 
  TRONG_TAI         int(10) NOT NULL, 
  VI_TRI_TRONG_TRAN int(11) NOT NULL, 
  PRIMARY KEY (ID));
CREATE TABLE TRAN_DAU (
  ID                     int(20) NOT NULL AUTO_INCREMENT, 
  THOI_GIAN_BAT_DAU      timestamp NULL, 
  SAN_BONG               int(10) NOT NULL, 
  VONG_DAU               int(10) NOT NULL, 
  SO_KHAN_GIA_DEN_SAN    int(10), 
  THOI_GIAN_TRAN_DAU     double, 
  SO_BAN_THANG_DOI_NHA   int(11), 
  SO_BAN_THANG_DOI_KHACH int(11), 
  TRANG_THAI             varchar(30), 
  PRIMARY KEY (ID));
CREATE TABLE DOI_DA (
  ID       int(10) NOT NULL AUTO_INCREMENT, 
  TRAN_DAU int(20) NOT NULL, 
  DOI_BONG int(10) NOT NULL, 
  VI_TRI   int(11) NOT NULL, 
  PRIMARY KEY (ID));
CREATE TABLE SAN_BONG (
  ID                 int(10) NOT NULL AUTO_INCREMENT, 
  TEN                varchar(300) NOT NULL, 
  DIA_CHI            varchar(300), 
  SUC_CHUA           int(10), 
  TINH_TRANG         varchar(500), 
  NGAY_XAY_DUNG      date, 
  TRANG_THAI_BAN_GHI varchar(30), 
  PRIMARY KEY (ID));
CREATE TABLE SU_KIEN (
  ID    int(10) NOT NULL AUTO_INCREMENT, 
  KIEU  varchar(100) NOT NULL, 
  TEN   varchar(100) NOT NULL, 
  MO_TA varchar(300), 
  PRIMARY KEY (ID));
CREATE TABLE SU_KIEN_TRAN_DAU (
  ID                  int(11) NOT NULL AUTO_INCREMENT, 
  TRAN_DAU            int(20) NOT NULL, 
  SU_KIEN             int(10) NOT NULL, 
  THOI_GIAN_DIEN_RA   double, 
  SU_KIEN_NGUYEN_NHAN int(11), 
  MO_TA               varchar(500), 
  NGUOI_TAO           int(11), 
  NGUOI_NHAN          int(11), 
  PRIMARY KEY (ID));
CREATE TABLE VONG_DAU (
  ID       int(10) NOT NULL AUTO_INCREMENT, 
  GIAI_DAU int(10) NOT NULL, 
  VONG     int(10) NOT NULL, 
  MO_TA    varchar(300), 
  PRIMARY KEY (ID));
CREATE TABLE GIAI_DAU (
  ID             int(10) NOT NULL AUTO_INCREMENT, 
  TEN            varchar(200), 
  MUA_GIAI       varchar(100), 
  SO_DOI_THAM_DU int(11), 
  SO_VONG_DAU    int(11), 
  NGAY_BAT_DAU   date, 
  NGAY_KET_THUC  date, 
  MO_TA          varchar(300), 
  PRIMARY KEY (ID));
CREATE TABLE DANH_SACH_CAU_THU (
  ID            int(11) NOT NULL AUTO_INCREMENT, 
  DOI_DA        int(10) NOT NULL, 
  CAU_THU       int(10) NOT NULL, 
  VI_TRI        int(11), 
  PHUT_HIEU_LUC double, 
  PRIMARY KEY (ID));
ALTER TABLE CHI_SO_CAU_THU ADD CONSTRAINT FKCHI_SO_CAU641349 FOREIGN KEY (CAU_THU) REFERENCES CAU_THU (ID);
ALTER TABLE CHI_SO_CAU_THU ADD CONSTRAINT FKCHI_SO_CAU806439 FOREIGN KEY (VI_TRI_SO_TRUONG) REFERENCES VI_TRI (ID);
ALTER TABLE TRONG_TAI_TRAN_DAU ADD CONSTRAINT FKTRONG_TAI_966017 FOREIGN KEY (VI_TRI_TRONG_TRAN) REFERENCES VI_TRI (ID);
ALTER TABLE TRONG_TAI_TRAN_DAU ADD CONSTRAINT FKTRONG_TAI_149437 FOREIGN KEY (TRONG_TAI) REFERENCES TRONG_TAI (ID);
ALTER TABLE TRONG_TAI_TRAN_DAU ADD CONSTRAINT FKTRONG_TAI_606510 FOREIGN KEY (TRAN_DAU) REFERENCES TRAN_DAU (ID);
ALTER TABLE DOI_DA ADD CONSTRAINT FKDOI_DA775391 FOREIGN KEY (TRAN_DAU) REFERENCES TRAN_DAU (ID);
ALTER TABLE DOI_DA ADD CONSTRAINT FKDOI_DA124424 FOREIGN KEY (DOI_BONG) REFERENCES DOI_BONG (ID);
ALTER TABLE DOI_DA ADD CONSTRAINT FKDOI_DA50120 FOREIGN KEY (VI_TRI) REFERENCES VI_TRI (ID);
ALTER TABLE CHI_SO_CAU_THU ADD CONSTRAINT FKCHI_SO_CAU698284 FOREIGN KEY (DOI_BONG) REFERENCES DOI_BONG (ID);
ALTER TABLE TRAN_DAU ADD CONSTRAINT FKTRAN_DAU294164 FOREIGN KEY (SAN_BONG) REFERENCES SAN_BONG (ID);
ALTER TABLE SU_KIEN_TRAN_DAU ADD CONSTRAINT FKSU_KIEN_TR89622 FOREIGN KEY (TRAN_DAU) REFERENCES TRAN_DAU (ID);
ALTER TABLE SU_KIEN_TRAN_DAU ADD CONSTRAINT FKSU_KIEN_TR943761 FOREIGN KEY (SU_KIEN) REFERENCES SU_KIEN (ID);
ALTER TABLE VONG_DAU ADD CONSTRAINT FKVONG_DAU627657 FOREIGN KEY (GIAI_DAU) REFERENCES GIAI_DAU (ID);
ALTER TABLE TRAN_DAU ADD CONSTRAINT FKTRAN_DAU689599 FOREIGN KEY (VONG_DAU) REFERENCES VONG_DAU (ID);
ALTER TABLE DANH_SACH_CAU_THU ADD CONSTRAINT FKDANH_SACH_406374 FOREIGN KEY (VI_TRI) REFERENCES VI_TRI (ID);
ALTER TABLE DANH_SACH_CAU_THU ADD CONSTRAINT FKDANH_SACH_523983 FOREIGN KEY (CAU_THU) REFERENCES CAU_THU (ID);
ALTER TABLE DANH_SACH_CAU_THU ADD CONSTRAINT FKDANH_SACH_452376 FOREIGN KEY (DOI_DA) REFERENCES DOI_DA (ID);
ALTER TABLE DOI_BONG ADD CONSTRAINT FKDOI_BONG318084 FOREIGN KEY (GIAI_DAUID) REFERENCES GIAI_DAU (ID);
ALTER TABLE DOI_BONG ADD CONSTRAINT FKDOI_BONG81691 FOREIGN KEY (SAN_BONGID) REFERENCES SAN_BONG (ID);
ALTER TABLE SU_KIEN_TRAN_DAU ADD CONSTRAINT FKSU_KIEN_TR594114 FOREIGN KEY (SU_KIEN_NGUYEN_NHAN) REFERENCES SU_KIEN_TRAN_DAU (ID);
ALTER TABLE SU_KIEN_TRAN_DAU ADD CONSTRAINT FKSU_KIEN_TR966723 FOREIGN KEY (NGUOI_TAO) REFERENCES DANH_SACH_CAU_THU (ID);
ALTER TABLE SU_KIEN_TRAN_DAU ADD CONSTRAINT FKSU_KIEN_TR361810 FOREIGN KEY (NGUOI_NHAN) REFERENCES DANH_SACH_CAU_THU (ID);
