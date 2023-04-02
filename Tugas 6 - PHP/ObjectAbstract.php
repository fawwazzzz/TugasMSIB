<?php
// Menjembatani file Lingkaran.php, PersegiPanjang.php, Segitiga.php
    require_once "Lingkaran.php";
    require_once "PersegiPanjang.php";
    require_once "Segitiga.php";
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tugas 6 - PHP</title>
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
<body>
    <h3><marquee behavior="" direction="">Tugas 6 - PHP</marquee></h3>
    <hr>
    <table id="customers">
        <thead>
            <tr>
                <th>Nama Bidang</th>
                <th>Luas Bidang</th>
                <th>Keliling Bidang</th>
            </tr>
        </thead>
        <tbody>
            <?php
                $lingkaran = new Lingkaran (7);
                $persegiPanjang = new PersegiPanjang (4, 5);
                $segitiga = new Segitiga (6, 8);

                $array_bidang = [$lingkaran, $persegiPanjang, $segitiga];

                foreach ($array_bidang as $bidang) {
                    echo "<tr>";
                    echo "<td>" . $bidang->namaBidang() . "</td>";
                    echo "<td>" . $bidang->luasBidang() . "</td>";
                    echo "<td>" . $bidang->kelilingBidang() . "</td>";
                    echo "<tr>";
                }
            ?>
        </tbody>
    </table>
</body>
</html>