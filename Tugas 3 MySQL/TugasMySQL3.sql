SOAL 3.1

1.	Tampilkan produk yang asset nya diatas 20jt
//menghitung total asset
MariaDB [dbtoko1]> SELECT * FROM produk WHERE harga_beli * stok > 20000000; ini yang betul

2.	Tampilkan data produk beserta selisih stok dengan minimal stok
MariaDB [dbtoko1]> SELECT SUM(stok - min_stok) as selisih from produk;

3.	Tampilkan total asset produk secara keseluruhan
MariaDB [dbtoko1]> SELECT sum(stok) as total_asset from produk;
cd
4.	Tampilkan data pelanggan yang lahirnya antara tahun 1999 sampai 2004
MariaDB [dbtoko1]> SELECT * FROM pelanggan WHERE YEAR(tgl_lahir) BETWEEN 1999 AND 2004;

5.	Tampilkan data pelanggan yang lahirnya tahun 1998
MariaDB [dbtoko1]> SELECT * FROM pelanggan WHERE YEAR(tgl_lahir)=1998;

6.	Tampilkan data pelanggan yang berulang tahun bulan agustus
MariaDB [dbtoko1]> SELECT * FROM pelanggan WHERE MONTH(tgl_lahir)=08;

7.	Tampilkan data pelanggan : nama, tmp_lahir, tgl_lahir dan umur (selisih tahun sekarang dikurang tahun kelahiran)
MariaDB [dbtoko1]> SELECT nama, tmp_lahir, tgl_lahir, (YEAR(NOW())-YEAR(tgl_lahir)) AS umur FROM pelanggan;


SOAL 3.2

1.	Berapa jumlah pelanggan yang tahun lahirnya 1998
	SELECT COUNT(*) AS Lahir_1980 FROM pelanggan WHERE YEAR(tgl_lahir)=1980;
+------------+
| Lahir_1980 |
+------------+
|          1 |
+------------+
1 row in set (0.000 sec)

2.	Berapa jumlah pelanggan perempuan yang tempat lahirnya di Jakarta
 SELECT COUNT(*) AS Lahir_Jakarta FROM pelanggan WHERE jk = 'P' AND tmp_lahir LIKE '%jakarta%';
+---------------+
| Lahir_Jakarta |
+---------------+
|             0 |
+---------------+
1 row in set (0.000 sec)

3.	Berapa jumlah total stok semua produk yang harga jualnya dibawah 10rb
 SELECT SUM(stok) From produk WHERE harga_jual < 10000;
+-----------+
| SUM(stok) |
+-----------+
|        99 |
+-----------+
1 row in set (0.000 sec)

4.	Ada berapa produk yang mempunyai kode awal K
SELECT COUNT(*) FROM produk WHERE kode LIKE 'k%';
+----------+
| COUNT(*) |
+----------+
|        3 |
+----------+
1 row in set (0.007 sec)

5.	Berapa harga jual rata-rata produk yang diatas 1jt
SELECT AVG(harga_jual) AS Rata2 FROM produk WHERE harga_jual > 1000000;
+---------+
| Rata2   |
+---------+
| 3137500 |
+---------+
1 row in set (0.000 sec)

6.	Tampilkan jumlah stok yang paling besar
 SELECT MAX(stok) FROM produk;
+-----------+
| MAX(stok) |
+-----------+
|        99 |
+-----------+
1 row in set (0.000 sec)

7.	Ada berapa produk yang stoknya kurang dari minimal stok

MariaDB [dbtoko1]> SELECT COUNT(stok) AS 'Stoknya Kurang Dari Minimal Stok' FROM produk WHERE stok < min_stok;
+----------------------------------+
| Stoknya Kurang Dari Minimal Stok |
+----------------------------------+
|                                0 |
+----------------------------------+
1 row in set (0.000 sec)

8.	Berapa total asset dari keseluruhan produk
 SELECT SUM(stok * harga_beli) FROM produk;
+------------------------+
| SUM(stok * harga_beli) |
+------------------------+
|              143517000 |
+------------------------+
1 row in set (0.000 sec)

SOAL 3.3

1.	Tampilkan data produk : id, nama, stok dan informasi jika stok telah sampai batas minimal atau kurang dari minimum stok dengan informasi ‘segera belanja’ jika tidak ‘stok aman’.
SELECT id,nama,stok, CASE
    -> When stok <= min_stok THEN 'Segera Belanja'
    -> ELSE 'Stok Aman' END AS Keterangan FROM produk;
+----+-----------------+------+------------+
| id | nama            | stok | Keterangan |
+----+-----------------+------+------------+
|  1 | TV              |    3 | Stok Aman  |
|  6 | Monitor         |   10 | Stok Aman  |
|  7 | Kulkas          |   10 | Stok Aman  |
|  8 | Sosis           |   99 | Stok Aman  |
|  9 | Minuman Kaleng  |   99 | Stok Aman  |
| 10 | TV 24 Inch      |    5 | Stok Aman  |
| 11 | TV 32 Inch      |    5 | Stok Aman  |
| 12 | TV 43 Inch      |    5 | Stok Aman  |
| 13 | TV 55 Inch      |    5 | Stok Aman  |
| 14 | Meja Belajar    |    7 | Stok Aman  |
| 15 | Meja Komputer   |    7 | Stok Aman  |
| 16 | Meja Kantor     |    6 | Stok Aman  |
| 17 | Kursi Ergonomis |    5 | Stok Aman  |
| 18 | Kursi Gaming    |    5 | Stok Aman  |
+----+-----------------+------+------------+
14 rows in set (0.000 sec)

2.	Tampilkan data pelanggan: id, nama, umur dan kategori umur : jika umur < 17 → ‘muda’ , 17-55 → ‘Dewasa’, selainnya ‘Tua’
 SELECT id,nama_pelanggan, (YEAR(NOW())-YEAR(tgl_lahir)) AS Umur, CASE
    -> WHEN (YEAR(NOW())-YEAR(tgl_lahir)) < 17 THEN 'Muda'
    -> WHEN (YEAR(NOW())-YEAR(tgl_lahir)) >= 17 OR (YEAR(NOW())-YEAR(tgl_lahir)) <= 55 THEN 'Dewasa'
    -> ELSE 'Tua' END AS Kategori_Umur FROM pelanggan;
+----+----------------+------+---------------+
| id | nama_pelanggan | Umur | Kategori_Umur |
+----+----------------+------+---------------+
|  1 | Fawwaz         |   22 | Dewasa        |
|  2 | Agung          |   21 | Dewasa        |
|  3 | Adam           |   20 | Dewasa        |
|  4 | Asep           |   19 | Dewasa        |
|  5 | Acong          |   18 | Dewasa        |
|  6 | Siti           |   17 | Dewasa        |
|  7 | Sri            |   17 | Dewasa        |
|  8 | Odin           |   78 | Dewasa        |
|  9 | Thor           |   68 | Dewasa        |
| 10 | Loki           |   63 | Dewasa        |
| 11 | Arip           |   43 | Dewasa        |
+----+----------------+------+---------------+
11 rows in set (0.000 sec)

3.	Tampilkan data produk: id, kode, nama, dan bonus untuk kode ‘TV01’ →’DVD Player’ , ‘K001’ → ‘Rice Cooker’ selain dari diatas ‘Tidak Ada’
SELECT id,kode,nama, CASE
    -> WHEN kode LIKE '%TV001%' THEN 'DVD Player'
    -> WHEN kode LIKE '%K001%' THEN 'Rice Cooker'
    -> ELSE 'Tidak Ada' END AS Bonus FROM produk;
+----+-------+-----------------+-------------+
| id | kode  | nama            | Bonus       |
+----+-------+-----------------+-------------+
|  1 | TV001 | TV              | DVD Player  |
|  6 | M001  | Monitor         | Tidak Ada   |
|  7 | K001  | Kulkas          | Rice Cooker |
|  8 | S001  | Sosis           | Tidak Ada   |
|  9 | MK001 | Minuman Kaleng  | Rice Cooker |
| 10 | TV002 | TV 24 Inch      | Tidak Ada   |
| 11 | TV003 | TV 32 Inch      | Tidak Ada   |
| 12 | TV004 | TV 43 Inch      | Tidak Ada   |
| 13 | TV005 | TV 55 Inch      | Tidak Ada   |
| 14 | MJ001 | Meja Belajar    | Tidak Ada   |
| 15 | MJ002 | Meja Komputer   | Tidak Ada   |
| 16 | MJ003 | Meja Kantor     | Tidak Ada   |
| 17 | KS001 | Kursi Ergonomis | Tidak Ada   |
| 18 | KS002 | Kursi Gaming    | Tidak Ada   |
+----+-------+-----------------+-------------+
14 rows in set (0.001 sec)

SOAL 3.4

1.	Tampilkan data statistik jumlah tempat lahir pelanggan
 SELECT COUNT(tmp_lahir) AS Jumlah_Statistik FROM pelanggan;
+------------------+
| Jumlah_Statistik |
+------------------+
|               11 |
+------------------+
1 row in set (0.000 sec)

2.	Tampilkan jumlah statistik produk berdasarkan jenis produk

 SELECT jenis_produk_id, COUNT(*) AS Jumlah_Produk FROM produk GROUP BY jenis_produk_id;
+-----------------+---------------+
| jenis_produk_id | Jumlah_Produk |
+-----------------+---------------+
|               1 |             7 |
|               2 |             1 |
|               3 |             1 |
|               4 |             5 |
+-----------------+---------------+
4 rows in set (0.000 sec)
3.	Tampilkan data pelanggan yang usianya dibawah rata usia pelanggan
 SELECT nama_pelanggan, (YEAR(NOW())-YEAR(tgl_lahir)) AS Umur FROM pelanggan WHERE (YEAR(NOW())-YEAR(tgl_lahir)) < (SELECT AVG((YEAR(NOW())-YEAR(tgl_lahir))) FROM pelanggan);
+----------------+------+
| nama_pelanggan | Umur |
+----------------+------+
| Fawwaz         |   22 |
| Agung          |   21 |
| Adam           |   20 |
| Asep           |   19 |
| Acong          |   18 |
| Siti           |   17 |
| Sri            |   17 |
+----------------+------+
7 rows in set (0.000 sec)

4.	Tampilkan data produk yang harganya diatas rata-rata harga produk
SELECT id,nama,harga_jual FROM produk WHERE harga_jual > (SELECT AVG(harga_jual) FROM produk);
+----+------------+------------+
| id | nama       | harga_jual |
+----+------------+------------+
|  1 | TV         |    4000000 |
|  6 | Monitor    |    5000000 |
|  7 | Kulkas     |    3000000 |
| 11 | TV 32 Inch |    2500000 |
| 12 | TV 43 Inch |    3500000 |
| 13 | TV 55 Inch |    4500000 |
+----+------------+------------+
6 rows in set (0.000 sec)

5.	Tampilkan data pelanggan yang memiliki kartu dimana iuran tahunan kartu diatas 90rb
6.	Tampilkan statistik data produk dimana harga produknya dibawah rata-rata harga produk secara keseluruhan
 SELECT COUNT(*) AS jumlah_produk, MIN(harga_jual) AS Harga_Terendah, MAX(harga_jual) AS Harga_Tertinggi, AVG(harga_jual) AS Harga_Rata2 FROM produk WHERE harga_jual < (SELECT AVG(harga_jual) FROM produk);
+---------------+----------------+-----------------+-------------+
| jumlah_produk | Harga_Terendah | Harga_Tertinggi | Harga_Rata2 |
+---------------+----------------+-----------------+-------------+
|             8 |           5000 |         1500000 |      666875 |
+---------------+----------------+-----------------+-------------+
1 row in set (0.001 sec)
7.	Tampilkan data pelanggan yang memiliki kartu dimana diskon kartu yang diberikan diatas 3%


