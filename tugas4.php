<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tugas Form PHP</title>
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
        form {
            border-radius: 5px;
            background-color: #f2f2f2;
            padding: 20px;
            }
        input[type=text], [type="email"], select {
            width: 100%;
            padding: 12px 20px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
            }
        button[type=submit] {
            width: 100%;
            background-color: #4CAF50;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            }
        button[type=submit]:hover {
            background-color: #45a049;
            }
    </style>
</head>
<body>
    <h3><marquee behavior="" direction="">Tugas Form - PHP</marquee></h3>
    <hr>
    <?php
    $ar_prodi = ["SI" => "Sistem Informasi", "TI" => "Teknik Informatika", "ILKOM" => "Ilmu Komputer", "TE" => "Teknik Elektro"];
    $ar_skill = ["HTML" => 10, "CSS" => 10, "JavaScript" => 20, "RWD Bootstrap" => 20, "PHP" => 30, "MySQL" => 30, "Laravel" => 40 ];
    $domisili = ["Jakarta", "Bogor", "Depok", "Tanggerang", "Bekasi", "Bandung"];
?>

<fieldset style="background-color:lightblue; width: 50%;" > 
    <legend><h3>Form Registrasi Kelompok Belajar</h3></legend>
    <table>
    <form action="" method="POST">
        <thead>
            <tr>
                <th>From Registrasi</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>NIM</td>
                <td>:</td>
                <td>
                    <input type="text" name="nim">
                </td>
            </tr>
            <tr>
                <td>Nama</td>
                <td>:</td>
                <td>
                    <input type="text" name="nama">
                </td>
            </tr>
            <tr>
                <td>Jenis Kelamin</td>
                <td>:</td>
                <td>
                    <input type="radio" name="jk" value="Laki - Laki" > Laki - Laki &nbsp;
                    <input type="radio" name="jk" value="Perempuan"> Perempuan
                </td>
            </tr>
            <tr>
                <td>Program Studi</td>
                <td>:</td>
                <td>
                    <select name="prodi" id="">
                        <?php
                            foreach ($ar_prodi as $prodi => $v) {
                                ?>   
                                <option value="<?= $prodi ?>"><?= $v ?></option>   
                            <?php } ?>                 
                    </select>
                </td>
            </tr>
            <tr>
                <td>Skill Programming</td>
                <td>:</td>
                <td>
                    <?php
                        foreach ($ar_skill as $skill => $s) {
                            ?>
                        <input type="checkbox" name="skill[]" value="<?= $skill ?>"> <?= $skill ?>
                        <?php } ?>
                </td>
            </tr>
            <tr>
                <td>Domisili</td>
                <td>:</td>
                <td>
                    <select name="domisili" id="">
                        <?php
                            foreach ($domisili as $d) {
                        ?>
                            <option value="<?= $d ?>"><?= $d ?></option>
                            <?php }?>        
                    </select>
                </td>
            </tr>
            <tr>
                <td>Email</td>
                <td>:</td>
                <td>
                    <input type="email" name="email">
                </td>
            </tr>
        </tbody>
        <tfoot>
            <tr>
                <th colspan="2">
                    <button type="submit" name="proses">Submit</button>
                </th>
            </tr>
        </tfoot>
    </form>
    </table>
</fieldset>
<hr>
<?php
    if(isset($_POST['proses'])) {
        $nim = $_POST['nim'];
        $nama = $_POST['nama'];
        $jk = $_POST['jk'];
        $prodi = $_POST['prodi'];
        $skill = $_POST['skill'];
        $domisili = $_POST['domisili'];
        $email = $_POST['email'];

        $skor = 0;
        foreach ($skill as $s) {
            if(isset($ar_skill[$s])) {
                $skor += $ar_skill[$s];
            }
        }
    
        function kategori($skor) {
            if ($skor >= 100 && $skor <= 150) {
                return "Sangat Baik";
            }
            else if ($skor >= 60 && $skor < 100) {
                return "Baik";
            }
            else if ($skor >= 40 && $skor < 60) {
                return "Cukup";
            }
            else if ($skor >= 0 && $skor < 40) {
                return "Kurang";
            }
            else { return "Tidak Memadai";}
        } 

    
?>
<table id="customers">
    <tr>
        <th colspan="3">Output Yang Dihasilkan Dari Form:</th>
    </tr>
    <tr>
        <td>NIM</td>
        <td><b>:</b></td>
        <td><?= $nim ?></td>
    </tr>
    <tr>
        <td>Nama</td>
        <td><b>:</b></td>
        <td><?= $nama ?></td>
    </tr>
    <tr>
        <td>Jenis Kelamin</td>
        <td><b>:</b></td>
        <td><?= $jk ?></td>
    </tr>
    <tr>
        <td>Program Studi</td>
        <td><b>:</b></td>
        <td><?= $prodi ?></td>
    </tr>
    <tr>
        <td>Skill</td>
        <td><b>:</b></td>
        <td>
            <?php
            foreach ($skill as $s) {
                ?> <?= $s ?> ,
            <?php } ?>    
        </td>
    </tr>
    <tr>
        <td>Domisili</td>
        <td><b>:</b></td>
        <td><?= $domisili ?></td>
    </tr>
    <tr>
        <td>Skor Skill</td>
        <td><b>:</b></td>
        <td>
            <?= $skor ?>
        </td>
    </tr>
    <tr>
        <td>Kategori Skill</td>
        <td><b>:</b></td>
        <td>
            <?php $kategori = kategori($skor); ?>
            <?= $kategori ?>
        </td>
    </tr>
    <tr>
        <td>Email</td>
        <td><b>:</b></td>
        <td><?= $email ?></td>
    </tr>
</table>
<?php } ?> 
</body>
</html>