<!---TUGAS 1 MySQL--->
// Buat Database "dbtoko1".
CREATE DATABASE dbtoko1;

// Masuk ke Database "dbtoko1".
USE dbtoko1;

// Melihat Tabel "dbtoko1".
MariaDB [dbtoko1]> show tables;
+-------------------+
| Tables_in_dbtoko1 |
+-------------------+
| jenis_produk      |
| kartu             |
| pelanggan         |
| pembayaran        |
| pesanan           |
+-------------------+

// Membuat Tabel "produk".
MariaDB [dbtoko1]> CREATE TABLE produk(
    -> id int NOT NULL auto_increment primary key,
    -> kode varchar(10) unique,
    -> nama varchar(45),
    -> harga_beli double,
    -> harga_jual double,
    -> stok int,
    -> min_stok int,
    -> jenis_produk_id int NOT NULL REFERENCES pesanan_items(id));
Query OK, 0 rows affected (0.022 sec)

// Membuat Tabel "pesanan_items".
MariaDB [dbtoko1]> CREATE TABLE pesanan_items(
    -> id int NOT NULL auto_increment primary key,
    -> produk_id int NOT NULL REFERENCES produk(id),
    -> pesanan_id int NOT NULL REFERENCES pesanan(id),
    -> qty int,
    -> harga double);
Query OK, 0 rows affected (0.008 sec)

// Membuat Tabel "vendor".
MariaDB [dbtoko1]> CREATE TABLE vendor(
    -> id int NOT NULL auto_increment primary key,
    -> nomor varchar(4),
    -> nama varchar(40),
    -> kota varchar(30),
    -> kontak varchar(40));
Query OK, 0 rows affected (0.014 sec)


// Membuat Tabel "pembelian".
MariaDB [dbtoko1]> CREATE TABLE pembelian(
    -> id int NOT NULL auto_increment primary key,
    -> tanggal varchar(45),
    -> nomor varchar(10),
    -> produk_id int NOT NULL REFERENCES produk(id),
    -> jumlah int,
    -> harga double,
    -> vendor_id int NOT NULL REFERENCES vendor(id));
Query OK, 0 rows affected (0.013 sec)


// Melihat tabel "dbtoko1" (memastikan semua tabel yang baru dibuat sudah tersedia)
MariaDB [dbtoko1]> show tables;.
+-------------------+
| Tables_in_dbtoko1 |
+-------------------+
| jenis_produk      |
| kartu             |
| pelanggan         |
| pembayaran        |
| pembelian         |
| pesanan           |
| pesanan_items     |
| produk            |
| vendor            |
+-------------------+
9 rows in set (0.001 sec)

// Melihat Deskripsi/Detail Dari Tabel "pelanggan".
MariaDB [dbtoko1]> DESC pelanggan;
+-----------+-------------+------+-----+---------+----------------+
| Field     | Type        | Null | Key | Default | Extra          |
+-----------+-------------+------+-----+---------+----------------+
| id        | int(11)     | NO   | PRI | NULL    | auto_increment |
| kode      | varchar(10) | YES  | UNI | NULL    |                |
| nama      | varchar(45) | YES  |     | NULL    |                |
| jk        | char(1)     | YES  |     | NULL    |                |
| tmp_lahir | varchar(30) | YES  |     | NULL    |                |
| tgl_lahir | date        | YES  |     | NULL    |                |
| email     | varchar(45) | YES  |     | NULL    |                |
| kartu_id  | int(11)     | NO   |     | NULL    |                |
+-----------+-------------+------+-----+---------+----------------+
8 rows in set (0.014 sec)

// Menambahkan Kolom "alamat" Pada Tabel "pelanggan".  
MariaDB [dbtoko1]> ALTER TABLE pelanggan
    -> ADD COLUMN alamat varchar(40) AFTER nama;
Query OK, 0 rows affected (0.012 sec)
Records: 0  Duplicates: 0  Warnings: 0

// Mengubah "nama" Menjadi "nama_pelanggan" Pada Tabel "pelanggan.
MariaDB [dbtoko1]> ALTER TABLE pelanggan
    -> CHANGE nama nama_pelanggan varchar(45);
Query OK, 0 rows affected (0.008 sec)
Records: 0  Duplicates: 0  Warnings: 0

// Memodifikasi varchar "nama_pelanggan" menjadi 50.
MariaDB [dbtoko1]> ALTER TABLE pelanggan
    -> MODIFY nama_pelanggan varchar(50);
Query OK, 0 rows affected (0.013 sec)
Records: 0  Duplicates: 0  Warnings: 0

// Melihat Deskripsi/Detail Pada Tabel "pelanggan" (Memastikan setiap perubahan sudah terjadi).
MariaDB [dbtoko1]> DESC pelanggan;
+----------------+-------------+------+-----+---------+----------------+
| Field          | Type        | Null | Key | Default | Extra          |
+----------------+-------------+------+-----+---------+----------------+
| id             | int(11)     | NO   | PRI | NULL    | auto_increment |
| kode           | varchar(10) | YES  | UNI | NULL    |                |
| nama_pelanggan | varchar(50) | YES  |     | NULL    |                |
| alamat         | varchar(40) | YES  |     | NULL    |                |
| jk             | char(1)     | YES  |     | NULL    |                |
| tmp_lahir      | varchar(30) | YES  |     | NULL    |                |
| tgl_lahir      | date        | YES  |     | NULL    |                |
| email          | varchar(45) | YES  |     | NULL    |                |
| kartu_id       | int(11)     | NO   |     | NULL    |                |
+----------------+-------------+------+-----+---------+----------------+
9 rows in set (0.012 sec)