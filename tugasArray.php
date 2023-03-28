<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tugas Array PHP</title>
    <style>
        #customers {
            font-family: Arial, Helvetica, sans-serif;
            border-collapse: collapse;
            width: 50%;
        }

        #customers td, #customers th {
            border: 1px solid #ddd;
            padding: 8px;
        }

        #customers tr:nth-child(even){background-color: #f2f2f2;}

        #customers tr:hover {background-color: #ddd;}

        #customers th {
            padding-top: 12px;
            padding-bottom: 12px;
            text-align: left;
            background-color: #04AA6D;
            color: white;
        }
    </style>
</head>
<!---Tugas
1. Buat grade
2. Buat Keterangan jumlah mahasiswa, nilai tertinggi, nilai terendah, rata rata Masukan kedalam tfoot
3. Buat predikat dari nilai menggunakan switch case--->
<body>
    <h3><marquee behavior="" direction="">Tugas Array PHP</marquee></h3>
    <hr>
    <?php
$m1 = ['NIM' => '0110001', 'nama' => 'Andi', 'nilai' => 80];
$m2 = ['NIM' => '0110002', 'nama' => 'Anto', 'nilai' => 90];
$m3 = ['NIM' => '0110003', 'nama' => 'Anjas', 'nilai' => 82];
$m4 = ['NIM' => '0110004', 'nama' => 'Ani', 'nilai' => 85];
$m5 = ['NIM' => '0110005', 'nama' => 'Anna', 'nilai' => 87];
$m6 = ['NIM' => '0110006', 'nama' => 'Andin', 'nilai' => 95];
$m7 = ['NIM' => '0110007', 'nama' => 'Arip', 'nilai' => 92];
$m8 = ['NIM' => '0110008', 'nama' => 'Ali', 'nilai' => 70];
$m9 = ['NIM' => '0110009', 'nama' => 'Alvin', 'nilai' => 75];
$mahasiswa = [$m1, $m2, $m3, $m4, $m5, $m6, $m7, $m8, $m9];
$ar_judul = ['No', 'NIM', 'Nama', 'Nilai', 'Keterangan', 'Grade', 'Predikat'];
?>

<table id="customers">
    <thead>
        <tr>
        <?php
            foreach ($ar_judul as $judul) {
                ?>
                <th><?= $judul ?></th>
        <?php } ?>
        </tr>
    </thead>
    <tbody>
        <?php
        $no = 1;
        foreach ($mahasiswa as $mhs) {
            // Keterangan 
            $ket = ($mhs['nilai'] >= 60) ? 'Lulus' : 'Gagal';
            // Grade
            if ($mhs['nilai'] >= 85 && $mhs ['nilai'] <= 100) $grade = 'A';
            else if ($mhs['nilai'] >= 75 && $mhs ['nilai'] < 84) $grade = 'B';
            else if ($mhs['nilai'] >= 65 && $mhs ['nilai'] < 74) $grade = 'C';
            else if ($mhs['nilai'] >= 55 && $mhs ['nilai'] < 64) $grade = 'D';
            else if ($mhs['nilai'] >= 0 && $mhs ['nilai'] < 54) $grade = 'E';
            else $grade = '';

            // Predikat
            switch ($grade) {
                case 'A' : $predikat = "Sangat Baik"; break;
                case 'B' : $predikat = "Baik"; break;
                case 'C' : $predikat = "Cukup"; break;
                case 'D' : $predikat = "Buruk"; break;
                case 'E' : $predikat = "Sangat Buruk"; break;
                default : $predikat = "?"; break;
            }
        ?>
            <tr>
                <td><?= $no ?></td>
                <td><?= $mhs['NIM'] ?></td>
                <td><?= $mhs['nama'] ?></td>
                <td><?= $mhs['nilai'] ?></td>
                <td><?= $ket ?></td>
                <td><?= $grade ?></td>
                <td><?= $predikat ?></td>
            </tr>
<?php $no++; } ?>
    </tbody>
    <tfoot>
        <?php
        // Keterangan Jumlah mahasiswa
        $jumlah_mahasiswa = count($mahasiswa);
        $nilai_mahasiswa = array_column($mahasiswa, 'nilai');
        // Nilai Tertinggi Mahasiswa
        $nilai_tinggi = max($nilai_mahasiswa);
        // Nilai Terendah Mahasiswa
        $nilai_rendah = min($nilai_mahasiswa);
        // Nilai Rata - Rata Mahawasiswa
        $jumlah_nilai = array_sum($nilai_mahasiswa);
        $rata2_nilai = $jumlah_nilai / $jumlah_mahasiswa;
         
        ?>
        <tr>
            <th colspan=6>Jumlah Mahasiswa : </th>
            <th><?= $jumlah_mahasiswa ?></th>
        </tr>
        <tr>
            <th colspan=6>Nilai Tertinggi  : </th>
            <th><?= $nilai_tinggi ?></th>
        </tr>
        <tr>
            <th colspan=6>Nilai Terendah : </th>
            <th><?= $nilai_rendah ?></th>
        </tr>
        <tr>
            <th colspan=6>Rata - Rata Nilai : </th>
            <th><?= $rata2_nilai ?></th>
        </tr>
    </tfoot>
</table>
</body>
</html>