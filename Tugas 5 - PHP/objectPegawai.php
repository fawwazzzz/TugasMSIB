<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tugas 5 - PHP</title>
</head>
<body>
    <h3><marquee behavior="" direction="">Tugas 5 - PHP</marquee></h3>
    <hr>
    <?php
    require "pegawai.php";

    $pegawai1 = new Pegawai ('011001', 'Anto', 'Manager', 'Islam', 'Menikah');
    $pegawai2 = new Pegawai ('011002', 'Anton', 'Assistant Manager', 'Islam', 'Menikah');
    $pegawai3 = new Pegawai ('011003', 'Andi', 'Kepala Bagian', 'Islam', 'Menikah');
    $pegawai4 = new Pegawai ('011004', 'Andin', 'Kepala Bagian', 'Islam', 'Menikah');
    $pegawai5 = new Pegawai ('011005', 'Anjas', 'Staff', 'Islam', 'Belum Menikah');
    $pegawai6 = new Pegawai ('011006', 'Anjar', 'Staff', 'Islam', 'Belum Menikah');
    $pegawai7 = new Pegawai ('011007', 'Anwar', 'Staff', 'Islam', 'Belum Menikah');
    $pegawai8 = new Pegawai ('011008', 'Ant', 'Staff', 'Islam', 'Belum Menikah');


    $array_pegawai = [$pegawai1, $pegawai2, $pegawai3, $pegawai4, $pegawai5, $pegawai6, $pegawai7, $pegawai8];

    foreach ($array_pegawai as $pegawai) {
        $pegawai->cetak();
    }
?>
</body>
</html>