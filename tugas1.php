<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tugas 1 PHP</title>
    <!---Buatlah form menggunakan PHP dan hitung rumus dari bangun datar jajar genjang --->
    <!---CSS Copas Dari w3school--->
    <style>
        #customers {
            font-family: Arial, Helvetica, sans-serif;
            border-collapse: collapse;
            width: 30%;
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
    <h3><marquee behavior="" direction="">Tugas 1 - PHP</marquee></h3>
    <hr>
    <h3>Hitung Rumus bangun Datar Jajar Genjang</h3>
    <form action="" method="POST">
        <table id="customers"> 
            <tr>
                <th colspan="2">Hitung Luas</th>
            </tr>
            <tr>
                <td>Alas</td>
                <td>
                    <input type="text" name="alas" require>
                </td>
            </tr>
            <tr>
                <td>Tinggi</td>
                <td>
                    <input type="text" name="tinggi" require>
                </td>
            </tr>
            <tr>
                <th colspan="2">Hitung Keliling</th>
            </tr>
            <tr>
                <td>Alas</td>
                <td>
                    <input type="text" name="alas1" require>
                </td>
            </tr>
            <tr>
                <td>Sisi Miring</td>
                <td>
                    <input type="text" name="sisi" require>
                </td>
            </tr>
            <tr>
                <th colspan="2">
                    <input type="submit" name="submit" value="Hitung">
                </th>
            </tr>
        </table>
    </form>
    <?php 
    if (isset($_POST['submit'])) {
        $alas = $_POST['alas'];
        $tinggi = $_POST['tinggi'];
        $alas1 = $_POST['alas1'];
        $sisi = $_POST['sisi'];

        $luas = $alas * $tinggi;
        $keliling = ($alas1 + $sisi) * 2;

        echo '<hr>';
        echo 'Hasil Perhitungan Luas';
        echo '<br> Diketahui Sebuah Bangun Datar Jajar Genjang Memiliki: ';
        echo '<br> Alas = ' .$alas;
        echo '<br> Tinggi = ' .$tinggi;
        echo '<br> Maka Luasnya adalah '.$luas;
        echo '<hr>';
        echo '<br> Diketahui Sebuah Bangun Datar Jajar Genjang Memiliki: ';
        echo '<br> Alas = ' .$alas;
        echo '<br> Sisi Miring = ' .$sisi;
        echo '<br> Maka Kelilingnya adalah '.$keliling;
        

    }
    ?>
</body>
</html>