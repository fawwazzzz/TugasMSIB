// Tugas MySQL
SOAL 2.3
1.	Tampilkan produk yang kode awalnya huruf K dan huruf M
 SELECT * FROM produk WHERE kode NOT LIKE '%m%';
+----+-------+------------+------------+------------+------+----------+-----------------+
| id | kode  | nama       | harga_beli | harga_jual | stok | min_stok | jenis_produk_id |
+----+-------+------------+------------+------------+------+----------+-----------------+
|  1 | TV001 | TV         |    3000000 |    4000000 |    3 |        1 |               1 |
|  7 | K001  | Kulkas     |    2000000 |    3000000 |   10 |        1 |               3 |
|  8 | S001  | Sosis      |      50000 |      60000 |   99 |       10 |               4 |
| 10 | TV002 | TV 24 Inch |    1000000 |    1500000 |    5 |        1 |               6 |
| 11 | TV003 | TV 32 Inch |    2000000 |    2500000 |    5 |        1 |               7 |
| 12 | TV004 | TV 43 Inch |    3000000 |    3500000 |    5 |        1 |               8 |
| 13 | TV005 | TV 55 Inch |    4000000 |    4500000 |    5 |        1 |               9 |
+----+-------+------------+------------+------------+------+----------+-----------------+
7 rows in set (0.000 sec) 

2.	Tampilkan produk yang kode awalnya bukan huruf M
 SELECT * FROM produk WHERE kode NOT LIKE 'm%';
+----+-------+------------+------------+------------+------+----------+-----------------+
| id | kode  | nama       | harga_beli | harga_jual | stok | min_stok | jenis_produk_id |
+----+-------+------------+------------+------------+------+----------+-----------------+
|  1 | TV001 | TV         |    3000000 |    4000000 |    3 |        1 |               1 |
|  7 | K001  | Kulkas     |    2000000 |    3000000 |   10 |        1 |               3 |
|  8 | S001  | Sosis      |      50000 |      60000 |   99 |       10 |               4 |
| 10 | TV002 | TV 24 Inch |    1000000 |    1500000 |    5 |        1 |               6 |
| 11 | TV003 | TV 32 Inch |    2000000 |    2500000 |    5 |        1 |               7 |
| 12 | TV004 | TV 43 Inch |    3000000 |    3500000 |    5 |        1 |               8 |
| 13 | TV005 | TV 55 Inch |    4000000 |    4500000 |    5 |        1 |               9 |
+----+-------+------------+------------+------------+------+----------+-----------------+
7 rows in set (0.001 sec)

3.	Tampilkan produk-produk televisi
SELECT * FROM produk WHERE kode LIKE '%tv%';
+----+-------+------------+------------+------------+------+----------+-----------------+
| id | kode  | nama       | harga_beli | harga_jual | stok | min_stok | jenis_produk_id |
+----+-------+------------+------------+------------+------+----------+-----------------+
|  1 | TV001 | TV         |    3000000 |    4000000 |    3 |        1 |               1 |
| 10 | TV002 | TV 24 Inch |    1000000 |    1500000 |    5 |        1 |               6 |
| 11 | TV003 | TV 32 Inch |    2000000 |    2500000 |    5 |        1 |               7 |
| 12 | TV004 | TV 43 Inch |    3000000 |    3500000 |    5 |        1 |               8 |
| 13 | TV005 | TV 55 Inch |    4000000 |    4500000 |    5 |        1 |               9 |
+----+-------+------------+------------+------------+------+----------+-----------------+
5 rows in set (0.000 sec)

4.	Tampilkan pelanggan mengandung huruf 'SA'
 SELECT * FROM pelanggan WHERE nama_pelanggan LIKE '%sa%';
Empty set (0.000 sec)

5.	Tampilkan pelanggan yang lahirnya bukan di Jakarta dan mengandung huruf ‘yo‘
 SELECT * FROM pelanggan WHERE tmp_lahir NOT LIKE '%jakarta%' AND tmp_lahir LIKE '%yo%';
Empty set (0.000 sec)

6.	Tampilkan pelanggan yang karakter huruf ke – 2 nya adalah A
SELECT *FROM pelanggan WHERE nama_pelanggan LIKE '_a%';
+----+-------+----------------+---------+------+-----------+------------+------------------+----------+
| id | kode  | nama_pelanggan | alamat  | jk   | tmp_lahir | tgl_lahir  | email            | kartu_id |
+----+-------+----------------+---------+------+-----------+------------+------------------+----------+
|  1 | 01101 | Fawwaz         | Jakarta | L    | Jakarta   | 2001-01-01 | fawwaz@gmail.com |        1 |
+----+-------+----------------+---------+------+-----------+------------+------------------+----------+
1 row in set (0.000 sec)


SOAL 2.4
1.	Tampilkan 2 data produk termahal
 SELECT * FROM produk ORDER BY harga_beli DESC LIMIT 2;
+----+-------+------------+------------+------------+------+----------+-----------------+
| id | kode  | nama       | harga_beli | harga_jual | stok | min_stok | jenis_produk_id |
+----+-------+------------+------------+------------+------+----------+-----------------+
|  6 | M001  | Monitor    |    4000000 |    5000000 |   10 |        1 |               2 |
| 13 | TV005 | TV 55 Inch |    4000000 |    4500000 |    5 |        1 |               9 |
+----+-------+------------+------------+------------+------+----------+-----------------+
2 rows in set (0.001 sec)

2.	Tampilkan produk yang paling murah
 SELECT * FROM produk ORDER BY harga_beli LIMIT 1;
+----+-------+----------------+------------+------------+------+----------+-----------------+
| id | kode  | nama           | harga_beli | harga_jual | stok | min_stok | jenis_produk_id |
+----+-------+----------------+------------+------------+------+----------+-----------------+
|  9 | MK001 | Minuman Kaleng |       3000 |       5000 |   99 |       10 |               5 |
+----+-------+----------------+------------+------------+------+----------+-----------------+
1 row in set (0.000 sec)

3.	Tampilkan produk yang stoknya paling banyak
SELECT * FROM produk ORDER BY stok DESC LIMIT 1;
+----+------+-------+------------+------------+------+----------+-----------------+
| id | kode | nama  | harga_beli | harga_jual | stok | min_stok | jenis_produk_id |
+----+------+-------+------------+------------+------+----------+-----------------+
|  8 | S001 | Sosis |      50000 |      60000 |   99 |       10 |               4 |
+----+------+-------+------------+------------+------+----------+-----------------+
1 row in set (0.001 sec)

4.	Tampilkan dua produk yang stoknya paling sedikit
 SELECT * FROM produk ORDER BY stok LIMIT 1;
+----+-------+------+------------+------------+------+----------+-----------------+
| id | kode  | nama | harga_beli | harga_jual | stok | min_stok | jenis_produk_id |
+----+-------+------+------------+------------+------+----------+-----------------+
|  1 | TV001 | TV   |    3000000 |    4000000 |    3 |        1 |               1 |
+----+-------+------+------------+------------+------+----------+-----------------+
1 row in set (0.001 sec)

5.	Tampilkan pelanggan yang paling muda
 SELECT * FROM pelanggan ORDER BY tgl_lahir DESC LIMIT 1;
+----+-------+----------------+---------+------+-----------+------------+----------------+----------+
| id | kode  | nama_pelanggan | alamat  | jk   | tmp_lahir | tgl_lahir  | email          | kartu_id |
+----+-------+----------------+---------+------+-----------+------------+----------------+----------+
|  6 | 01106 | Siti           | Bandung | P    | Bandung   | 2006-06-06 | siti@gmail.com |        6 |
+----+-------+----------------+---------+------+-----------+------------+----------------+----------+
1 row in set (0.001 sec)

6.	Tampilkan pelanggan yang paling tua
SELECT * FROM pelanggan ORDER BY tgl_lahir LIMIT 1;
+----+-------+----------------+----------+------+-----------+------------+----------------+----------+
| id | kode  | nama_pelanggan | alamat   | jk   | tmp_lahir | tgl_lahir  | email          | kartu_id |
+----+-------+----------------+----------+------+-----------+------------+----------------+----------+
|  8 | 01108 | Odin           | Valhalla | L    | Valhalla  | 1945-01-01 | odin@gmail.com |        8 |
+----+-------+----------------+----------+------+-----------+------------+----------------+----------+
1 row in set (0.001 sec)


