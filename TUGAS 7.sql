-- TUGAS 7

-- Buat fungsi inputPelanggan(), setelah itu panggil fungsinya

-- Buat fungsi showPelanggan(), setelah itu panggil fungsinya

-- Buat fungsi inputProduk(), setelah itu panggil fungsinya

-- Buat fungsi showProduk(), setelah itu panggil fungsinya

-- Buat fungsi totalPesanan(), setelah itu panggil fungsinya



-- tampilkan seluruh pesanan dari semua pelanggan



-- buatkan query panjang di atas menjadi sebuah view baru: pesanan_produk_vw (menggunakan join dari table pesanan,pelanggan dan produk)



simpan semua query kedalam github dan masukan link github ke LMS

DELIMITER $$
CREATE PROCEDURE inputPelanggan(kode VARCHAR(10), nama_pelanggan VARCHAR(45), alamat VARCHAR(45), jk VARCHAR(1), tmp_lahir VARCHAR(45), tgl_lahir date, email VARCHAR(45), kartu_id int(10))
    -> BEGIN
    -> INSERT INTO pelanggan (kode, nama_pelanggan, alamat, jk, tmp_lahir, tgl_lahir, email, kartu_id) VALUES (kode, 	 nama_pelanggan, alamat, jk, tmp_lahir, tgl_lahir, email, kartu_id);
    -> END$$

DELIMITER ;
CALL inputPelanggan('01112','Ucok','Medan','L','Medan','1999-01-01','ucok@gmail.com','12');



DELIMITER $$
CREATE PROCEDURE showPelanggan()
    -> BEGIN
    -> SELECT * FROM pelanggan;
    -> END$$

DELIMITER ;
CALL showPelanggan;
+----+-------+----------------+------------+------+--------------+------------+------------------+----------+
| id | kode  | nama_pelanggan | alamat     | jk   | tmp_lahir    | tgl_lahir  | email            | kartu_id |
+----+-------+----------------+------------+------+--------------+------------+------------------+----------+
|  1 | 01101 | Fawwaz         | Jakarta    | L    | Jakarta      | 2001-01-01 | fawwaz@gmail.com |        1 |
|  2 | 01102 | Agung          | Bogor      | L    | Bogor        | 2002-02-02 | agung@gmail.com  |        2 |
|  3 | 01103 | Adam           | Depok      | L    | Depok        | 2003-03-03 | adam@gmail.com   |        3 |
|  4 | 01104 | Asep           | Tanggerang | L    | Tanggerang   | 2004-04-04 | asep@gmail.com   |        4 |
|  5 | 01105 | Acong          | Bekasi     | L    | Bekasi       | 2005-05-05 | acong@gmail.com  |        5 |
|  6 | 01106 | Siti           | Bandung    | P    | Bandung      | 2006-06-06 | siti@gmail.com   |        6 |
|  7 | 01107 | Sri            | Bandung    | P    | Bandung      | 2006-05-04 | sri@gmail.com    |        7 |
|  8 | 01108 | Odin           | Valhalla   | L    | Valhalla     | 1945-01-01 | odin@gmail.com   |        8 |
|  9 | 01109 | Thor           | Valhalla   | L    | Valhalla     | 1955-01-01 | thor@gmail.com   |        9 |
| 10 | 01110 | Loki           | Valhalla   | L    | Planet Namek | 1960-01-01 | loki@gmail.com   |       10 |
| 11 | 01111 | Arip           | Depok      | L    | Depok        | 1980-01-01 | arip@gmail.com   |       11 |
| 12 | 01112 | Ucok           | Medan      | L    | Medan        | 1999-01-01 | ucok@gmail.com   |       12 |
+----+-------+----------------+------------+------+--------------+------------+------------------+----------+



DELIMITER $$
CREATE PROCEDURE inputProduk(kode VARCHAR(10), nama VARCHAR(10), harga_beli double, harga_jual double, stok int, min_stok int, jenis_produk_id int)
    -> BEGIN
    -> INSERT INTO produk (kode,nama,harga_beli,harga_jual,stok,min_stok,jenis_produk_id)
    -> VALUES (kode,nama,harga_beli,harga_jual,stok,min_stok,jenis_produk_id);
    -> END$$

DELIMITER ;
CALL inputProduk('K002','Kulkas Dua Pintu',2000000, 2500000, 5, 1,1);



DELIMITER $$
CREATE PROCEDURE showProduk()
    -> BEGIN
    -> SELECT * FROM produk;
    -> END$$

DELIMITER ;
CALL showProduk();
+----+-------+-----------------+------------+------------+------+----------+-----------------+
| id | kode  | nama            | harga_beli | harga_jual | stok | min_stok | jenis_produk_id |
+----+-------+-----------------+------------+------------+------+----------+-----------------+
|  1 | TV001 | TV              |    3000000 |    4000000 |    3 |        1 |               1 |
|  6 | M001  | Monitor         |    4000000 |    5000000 |   10 |        1 |               1 |
|  7 | K001  | Kulkas          |    2000000 |    3000000 |   10 |        1 |               1 |
|  8 | S001  | Sosis           |      50000 |      60000 |   99 |       10 |               2 |
| 10 | TV002 | TV 24 Inch      |    1000000 |    1500000 |    5 |        1 |               1 |
| 11 | TV003 | TV 32 Inch      |    2000000 |    2500000 |    5 |        1 |               1 |
| 12 | TV004 | TV 43 Inch      |    3000000 |    3500000 |    5 |        1 |               1 |
| 13 | TV005 | TV 55 Inch      |    4000000 |    4500000 |    5 |        1 |               1 |
| 14 | MJ001 | Meja Belajar    |     500000 |     600000 |    7 |        3 |               4 |
| 15 | MJ002 | Meja Komputer   |     550000 |     650000 |    7 |        3 |               4 |
| 16 | MJ003 | Meja Kantor     |     570000 |     670000 |    6 |        3 |               4 |
| 17 | KS001 | Kursi Ergonomis |    1000000 |    1100000 |    5 |        2 |               4 |
| 18 | KS002 | Kursi Gaming    |     700000 |     750000 |    5 |        2 |               4 |
| 19 | K002  | Kulkas Dua      |    2000000 |    2500000 |    5 |        1 |               1 |
+----+-------+-----------------+------------+------------+------+----------+-----------------+




 DELIMITER $$
CREATE PROCEDURE totalPesanan(pelanggan_id int)
    -> BEGIN
    -> SELECT total FROM pesanan WHERE id = pelanggan_id;
    -> END$$

DELIMITER ;
CALL totalPesanan(1);
+--------+
| total  |
+--------+
| 200000 |
+--------+
DELIMITER $$
CREATE PROCEDURE semuaPesanan()
    -> BEGIN
    -> SELECT * FROM pesanan;
    -> END$$

DELIMITER ;
CALL semuaPesanan();


CREATE VIEW pesanan_produk_vw as SELECT pelanggan.id, pelanggan.kode, pelanggan.nama_pelanggan,pelanggan.alamat, pelanggan.jk,pelanggan.tmp_lahir,pelanggan.tgl_lahir,pelanggan.email, pelanggan.kartu_id,pesanan.tanggal,pesanan.total,pesanan.pelanggan_id,pesanan_items.produk_id,pesanan_items.qty,pesanan_items.harga FROM pelanggan RIGHT JOIN pesanan ON pelanggan.id = pesanan.pelanggan_id LEFT JOIN pesanan_items ON pesanan_items.pesanan_id = pesanan.id;


SELECT * FROM pesanan_produk_vw;
+------+-------+----------------+---------+------+-----------+------------+------------------+----------+------------+--------+--------------+-----------+------+-------+
| id   | kode  | nama_pelanggan | alamat  | jk   | tmp_lahir | tgl_lahir  | email            | kartu_id | tanggal    | total  | pelanggan_id | produk_id | qty  | harga |
+------+-------+----------------+---------+------+-----------+------------+------------------+----------+------------+--------+--------------+-----------+------+-------+
|    1 | 01101 | Fawwaz         | Jakarta | L    | Jakarta   | 2001-01-01 | fawwaz@gmail.com |        1 | 2023-03-03 | 200000 |            1 |      NULL | NULL |  NULL |
+------+-------+----------------+---------+------+-----------+------------+------------------+----------+------------+--------+--------------+-----------+------+-------+



