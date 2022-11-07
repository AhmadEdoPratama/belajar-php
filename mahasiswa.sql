-- membuat database
-- menerapkan DDL
CREATE DATABASE fakultas;

-- membuat table jurusan
CREATE TABLE jurusan (
    id INT PRIMARY KEY AUTO_INCREMENT,
    kode CHAR(4) NOT NULL,
    nama VARCHAR(50) NOT NULL
);

-- membuat table mahasiswa
CREATE TABLE mahasiswa (
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_jurusan INT NOT NULL,
    nim CHAR(8) NOT NULL,
    nama VARCHAR(50) NOT NULL,
    jenis_kelamin enum('laki-laki', 'perempuan') NOT NULL,
    tempat_lahir VARCHAR(50) NOT NULL,
    tanggal_lahir DATE NOT NULL,
    alamat VARCHAR(255) NOT NULL,
    FOREIGN KEY (id_jurusan) REFERENCES jurusan(id)
);

-- menerapkan DML
-- menambahkan data jurusan
 insert into jurusan
    -> values (1, "APBL", "Administrasi Publik"),(2,"PTIF","Pendidikan Teknik Informatika");
 insert into jurusan
    -> values (3, "TMKI", "Teknik Manufaktor Kapal"),(4,"PBEI","Pendidikan Bisnis Ekonomi");

-- menambahkan data mahasiswa
 insert into mahasiswa (id_jurusan, nim, nama, jenis_kelamin, tempat_lahir, tanggal_lahir, alamat)
    -> values (2, "20220002","Ayu trinovita", "perempuan", "Bali", "2001-12-06", "JL.Kura-Kura");

-- Update
 update mahasiswa set tempat_lahir="Jakarta" where id= 1;

-- Delete
 DELETE FROM jurusan WHERE id=3;    

