--
-- File generated with SQLiteStudio v3.3.3 on Fri Aug 13 21:30:40 2021
--
-- Text encoding used: UTF-8
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: assignment1
CREATE TABLE assignment1 (
    id                TEXT            PRIMARY KEY ON CONFLICT ROLLBACK
                                      UNIQUE
                                      NOT NULL,
    id_user           TEXT            NOT NULL,
    id_assign         TEXT,
    id_validasi       TEXT,
    kode_pelanggan    VARCHAR (20),
    nama_pelanggan    VARCHAR (150),
    alamat            TEXT,
    latitude          VARCHAR (50),
    longitude         VARCHAR (50),
    altitude          VARCHAR (15),
    golongan          VARCHAR (10),
    kelurahan         VARCHAR (10),
    zona              VARCHAR (10),
    rw                VARCHAR (10),
    rt                VARCHAR (10),
    no_rumah          VARCHAR (20),
    wm_induk          VARCHAR (100),
    merk              VARCHAR (100),
    no_seri           VARCHAR (100),
    diameter_pipa     VARCHAR (10),
    periode_bulan     INTEGER (2),
    periode_tahun     INTEGER (4),
    m3_awal           INTEGER         DEFAULT 0,
    m3_akhir          INTEGER         DEFAULT 0,
    m3_pemakaian      INTEGER         DEFAULT 0,
    foto_meter        TEXT,
    foto_rumah        TEXT,
    capture_date      DATETIME,
    reading_date      DATETIME,
    catatan           TEXT,
    kelainan          BOOLEAN,
    status            VARCHAR (2)     DEFAULT S1,
    download_date     DATETIME        DEFAULT (CURRENT_TIMESTAMP),
    upload_date       DATETIME,
    m3_awal_lalu      INTEGER         DEFAULT 0,
    m3_akhir_lalu     INTEGER         DEFAULT 0,
    m3_pemakaian_lalu INTEGER         DEFAULT 0,
    tagihan_lalu      NUMERIC (18, 0) DEFAULT (0) 
);


-- Table: assignment2
CREATE TABLE assignment2 (
    id                TEXT            PRIMARY KEY ON CONFLICT ROLLBACK
                                      UNIQUE
                                      NOT NULL,
    id_user           TEXT            NOT NULL,
    id_assign         TEXT,
    id_validasi       TEXT,
    kode_pelanggan    VARCHAR (20),
    nama_pelanggan    VARCHAR (150),
    alamat            TEXT,
    latitude          VARCHAR (50),
    longitude         VARCHAR (50),
    altitude          VARCHAR (15),
    golongan          VARCHAR (10),
    kelurahan         VARCHAR (10),
    zona              VARCHAR (10),
    rw                VARCHAR (10),
    rt                VARCHAR (10),
    no_rumah          VARCHAR (20),
    wm_induk          VARCHAR (100),
    merk              VARCHAR (100),
    no_seri           VARCHAR (100),
    diameter_pipa     VARCHAR (10),
    periode_bulan     INTEGER (2),
    periode_tahun     INTEGER (4),
    m3_awal           INTEGER         DEFAULT 0,
    m3_akhir          INTEGER         DEFAULT 0,
    m3_pemakaian      INTEGER         DEFAULT 0,
    foto_meter        TEXT,
    foto_rumah        TEXT,
    capture_date      DATETIME,
    reading_date      DATETIME,
    catatan           TEXT,
    kelainan          BOOLEAN,
    status            VARCHAR (2)     DEFAULT S1,
    download_date     DATETIME        DEFAULT (CURRENT_TIMESTAMP),
    upload_date       DATETIME,
    m3_awal_lalu      INTEGER         DEFAULT 0,
    m3_akhir_lalu     INTEGER         DEFAULT 0,
    m3_pemakaian_lalu INTEGER         DEFAULT 0,
    tagihan_lalu      NUMERIC (18, 0) DEFAULT (0) 
);


-- Table: assignment3
CREATE TABLE assignment3 (
    id                TEXT            PRIMARY KEY ON CONFLICT ROLLBACK
                                      UNIQUE
                                      NOT NULL,
    id_user           TEXT            NOT NULL,
    id_assign         TEXT,
    id_validasi       TEXT,
    kode_pelanggan    VARCHAR (20),
    nama_pelanggan    VARCHAR (150),
    alamat            TEXT,
    latitude          VARCHAR (50),
    longitude         VARCHAR (50),
    altitude          VARCHAR (15),
    golongan          VARCHAR (10),
    kelurahan         VARCHAR (10),
    zona              VARCHAR (10),
    rw                VARCHAR (10),
    rt                VARCHAR (10),
    no_rumah          VARCHAR (20),
    wm_induk          VARCHAR (100),
    merk              VARCHAR (100),
    no_seri           VARCHAR (100),
    diameter_pipa     VARCHAR (10),
    periode_bulan     INTEGER (2),
    periode_tahun     INTEGER (4),
    m3_awal           INTEGER         DEFAULT 0,
    m3_akhir          INTEGER         DEFAULT 0,
    m3_pemakaian      INTEGER         DEFAULT 0,
    foto_meter        TEXT,
    foto_rumah        TEXT,
    capture_date      DATETIME,
    reading_date      DATETIME,
    catatan           TEXT,
    kelainan          BOOLEAN,
    status            VARCHAR (2)     DEFAULT S1,
    download_date     DATETIME        DEFAULT (CURRENT_TIMESTAMP),
    upload_date       DATETIME,
    m3_awal_lalu      INTEGER         DEFAULT 0,
    m3_akhir_lalu     INTEGER         DEFAULT 0,
    m3_pemakaian_lalu INTEGER         DEFAULT 0,
    tagihan_lalu      NUMERIC (18, 0) DEFAULT (0) 
);


-- Table: assignment4
CREATE TABLE assignment4 (
    id                TEXT            PRIMARY KEY ON CONFLICT ROLLBACK
                                      UNIQUE
                                      NOT NULL,
    id_user           TEXT            NOT NULL,
    id_assign         TEXT,
    id_validasi       TEXT,
    kode_pelanggan    VARCHAR (20),
    nama_pelanggan    VARCHAR (150),
    alamat            TEXT,
    latitude          VARCHAR (50),
    longitude         VARCHAR (50),
    altitude          VARCHAR (15),
    golongan          VARCHAR (10),
    kelurahan         VARCHAR (10),
    zona              VARCHAR (10),
    rw                VARCHAR (10),
    rt                VARCHAR (10),
    no_rumah          VARCHAR (20),
    wm_induk          VARCHAR (100),
    merk              VARCHAR (100),
    no_seri           VARCHAR (100),
    diameter_pipa     VARCHAR (10),
    periode_bulan     INTEGER (2),
    periode_tahun     INTEGER (4),
    m3_awal           INTEGER         DEFAULT 0,
    m3_akhir          INTEGER         DEFAULT 0,
    m3_pemakaian      INTEGER         DEFAULT 0,
    foto_meter        TEXT,
    foto_rumah        TEXT,
    capture_date      DATETIME,
    reading_date      DATETIME,
    catatan           TEXT,
    kelainan          BOOLEAN,
    status            VARCHAR (2)     DEFAULT S1,
    download_date     DATETIME        DEFAULT (CURRENT_TIMESTAMP),
    upload_date       DATETIME,
    m3_awal_lalu      INTEGER         DEFAULT 0,
    m3_akhir_lalu     INTEGER         DEFAULT 0,
    m3_pemakaian_lalu INTEGER         DEFAULT 0,
    tagihan_lalu      NUMERIC (18, 0) DEFAULT (0) 
);


-- Table: assignment5
CREATE TABLE assignment5 (
    id                TEXT            PRIMARY KEY ON CONFLICT ROLLBACK
                                      UNIQUE
                                      NOT NULL,
    id_user           TEXT            NOT NULL,
    id_assign         TEXT,
    id_validasi       TEXT,
    kode_pelanggan    VARCHAR (20),
    nama_pelanggan    VARCHAR (150),
    alamat            TEXT,
    latitude          VARCHAR (50),
    longitude         VARCHAR (50),
    altitude          VARCHAR (15),
    golongan          VARCHAR (10),
    kelurahan         VARCHAR (10),
    zona              VARCHAR (10),
    rw                VARCHAR (10),
    rt                VARCHAR (10),
    no_rumah          VARCHAR (20),
    wm_induk          VARCHAR (100),
    merk              VARCHAR (100),
    no_seri           VARCHAR (100),
    diameter_pipa     VARCHAR (10),
    periode_bulan     INTEGER (2),
    periode_tahun     INTEGER (4),
    m3_awal           INTEGER         DEFAULT 0,
    m3_akhir          INTEGER         DEFAULT 0,
    m3_pemakaian      INTEGER         DEFAULT 0,
    foto_meter        TEXT,
    foto_rumah        TEXT,
    capture_date      DATETIME,
    reading_date      DATETIME,
    catatan           TEXT,
    kelainan          BOOLEAN,
    status            VARCHAR (2)     DEFAULT S1,
    download_date     DATETIME        DEFAULT (CURRENT_TIMESTAMP),
    upload_date       DATETIME,
    m3_awal_lalu      INTEGER         DEFAULT 0,
    m3_akhir_lalu     INTEGER         DEFAULT 0,
    m3_pemakaian_lalu INTEGER         DEFAULT 0,
    tagihan_lalu      NUMERIC (18, 0) DEFAULT (0) 
);


-- Table: golongan
CREATE TABLE golongan (
    id   TEXT         PRIMARY KEY ON CONFLICT ROLLBACK
                      UNIQUE
                      NOT NULL,
    kode VARCHAR (20),
    name TEXT
);


-- Table: kelainan
CREATE TABLE kelainan (
    id   TEXT         PRIMARY KEY ON CONFLICT ROLLBACK
                      UNIQUE
                      NOT NULL,
    kode VARCHAR (20),
    name TEXT
);


-- Table: kelurahan
CREATE TABLE kelurahan (
    id   TEXT         PRIMARY KEY ON CONFLICT ROLLBACK
                      UNIQUE
                      NOT NULL,
    kode VARCHAR (20),
    name TEXT
);


-- Table: rt
CREATE TABLE rt (
    id   TEXT         PRIMARY KEY ON CONFLICT ROLLBACK
                      UNIQUE
                      NOT NULL,
    kode VARCHAR (20),
    name TEXT
);


-- Table: rw
CREATE TABLE rw (
    id   TEXT         PRIMARY KEY ON CONFLICT ROLLBACK
                      UNIQUE
                      NOT NULL,
    kode VARCHAR (20),
    name TEXT
);


-- Table: tarif
CREATE TABLE tarif (
    id            TEXT            PRIMARY KEY ON CONFLICT ROLLBACK
                                  UNIQUE
                                  NOT NULL,
    golongan      VARCHAR (30),
    tarif_1       NUMERIC (18, 0) DEFAULT (0),
    tarif_2       NUMERIC (18, 0) DEFAULT (0),
    tarif_3       NUMERIC (18, 0) DEFAULT (0),
    tarif_4       NUMERIC (18, 0) DEFAULT (0),
    tarif_5       NUMERIC (18, 0) DEFAULT (0),
    denda         NUMERIC (18, 0) DEFAULT (0),
    biaya_admin   NUMERIC (18, 0) DEFAULT (0),
    biaya_materai NUMERIC (18, 0) DEFAULT (0) 
);


-- Table: tarif_pemeliharaan
CREATE TABLE tarif_pemeliharaan (
    id            TEXT            PRIMARY KEY ON CONFLICT ROLLBACK
                                  UNIQUE
                                  NOT NULL,
    tarif         NUMERIC (18, 0) DEFAULT (0),
    diameter_pipa VARCHAR (5) 
);


-- Table: zona
CREATE TABLE zona (
    id   TEXT         PRIMARY KEY ON CONFLICT ROLLBACK
                      UNIQUE
                      NOT NULL,
    kode VARCHAR (20),
    name TEXT
);


-- Index: idx_assignment1_user_periode_status_reading
CREATE INDEX idx_assignment1_user_periode_status_reading ON assignment1 (
    id_user,
    periode_bulan,
    periode_tahun,
    status,
    reading_date
);


-- Index: idx_assignment2_user_periode_status_reading
CREATE INDEX idx_assignment2_user_periode_status_reading ON assignment2 (
    id_user,
    periode_bulan,
    periode_tahun,
    status,
    reading_date
);


-- Index: idx_assignment3_user_periode_status_reading
CREATE INDEX idx_assignment3_user_periode_status_reading ON assignment3 (
    id_user,
    periode_bulan,
    periode_tahun,
    status,
    reading_date
);


-- Index: idx_assignment4_user_periode_status_reading
CREATE INDEX idx_assignment4_user_periode_status_reading ON assignment4 (
    id_user,
    periode_bulan,
    periode_tahun,
    status,
    reading_date
);


-- Index: idx_assignment5_user_periode_status_reading
CREATE INDEX idx_assignment5_user_periode_status_reading ON assignment5 (
    id_user,
    periode_bulan,
    periode_tahun,
    status,
    reading_date
);


COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
