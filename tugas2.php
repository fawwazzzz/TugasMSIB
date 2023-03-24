<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tugas 2 - PHP</title>
<!---Diketahui sebuah perusahaan ingin memasukan rincian gaji ke pegawai dengan menggunakan form proses PHP, dengan rincian sebagai berikut :
1. Tentukan gaji pokok (switch case)
    Jika Manager = 20jt, Asisten = 15jt, Kabag = 10jt, Staff = 4jt
2. Tentukan tunjangan jabatan = 20% dari gaji pokok
3. Tentukan tunjangan keluarga (if multi kondisi):
    Jika sudah menikah dan anak maksimal 2 = 5% dari gapok
    Jika sudah menikah dan anak antara 3 - 5 = 10% dari gapok
    Selain itu belum dapat tunjangan keluarga
4. Tentukan gaji kotor
5. Tentukan zakat_profesi (ternary)
    Jika ia muslim dan gaji kotor minimal 6 juta, ada zakat = 2.5%
    dari gaji kotor. Selain itu tidak ada zakat
6. Tentukan take home pay
Masukan sourcode ke github dan copas link ke LMS--->
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
        form {
            border-radius: 5px;
            background-color: #f2f2f2;
            padding: 20px;
            }
        input[type=text], select {
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
    <h3><marquee behavior="" direction="">Tugas 2 - PHP</marquee></h3>
    <hr>
    <form action="" method="POST">
        <fieldset>
            <legend>Form Rincian Gaji Pegawai</legend>
            <label for="">Nama : </label>
            <input type="text" name="nama" placeholder="Masukan nama Anda..."> <br>
            <label for="">Jabatan : </label>
            <select name="jabatan" id="">
                <option value="">---Pilih Jabatan Anda---</option>
                <option value="manager">Manager</option>
                <option value="asisten">Asisten</option>
                <option value="kabag">Kabag</option>
                <option value="staff">Staff</option>
            </select> <br>
            <label for="">Status: </label>
            <select name="status" id="">
                <option value="">---Pilih Status Anda---</option>
                <option value="Belum Menikah">Belum Menikah</option>
                <option value="anak2">Menikah, Anak 1-2</option>
                <option value="anak5">Menikah, Anak 3-5</option>
            </select> <br>
            <label for="">Agama : </label>
            <select name="agama" id="">
                <option value="">---Pilih Agama Anda---</option>
                <option value="muslim">Muslim</option>
                <option value="kristen">Kristen</option>
                <option value="majusi">Majusi</option>
                <option value="buddha">Buddha</option>
                <option value="atheis">Atheis</option>
            </select> <br>
            <button type="submit" name="proses" >Simpan</button>
        </fieldset>
    </form>
    <?php
    error_reporting(0);
    $nama = $_POST ['nama'];
    $jabatan = $_POST ['jabatan'];
    $status = $_POST ['status'];
    $agama = $_POST ['agama'];
    $tombol = $_POST ['proses'];

    $gaji = 0;
    switch ($jabatan) {
        case "manager" : $gaji = 20000000; break;
        case "asisten" : $gaji = 15000000; break;
        case "kabag" : $gaji = 10000000; break;
        case "staff" : $gaji = 4000000; break;
        default : $gaji = 0; break;
    }
    $tunjanganJabatan = $gaji * 0.2;

    if ($status == "Belum Menikah") $tunjanganKeluarga = 0;
    else if ($status == "anak2") $tunjanganKeluarga = $gaji * 0.05;
    else if ($status == "anak5") $tunjanganKeluarga = $gaji * 0.1;
    else $tunjanganKeluarga = 0;

    $gajiKotor = $gaji +  $tunjanganJabatan + $tunjanganKeluarga;

    $zakat_profesi = ($agama == "muslim" && $gajiKotor >= 6000000) ? $zakat_profesi = $gaji * 0.025 : $zakat_profesi = 0;

    $gajiBersih = $gajiKotor - $zakat_profesi;
    if (isset($tombol)) {
    ?>
    <table id="customers">
        <tr>
            <th>Nama Pegawai</th>
            <th><?= $nama ?></th>
        </tr>
        <tr>
            <td>Jabatan</td>
            <td><?= $jabatan ?></td>
        </tr>
        <tr>
            <td>Agama</td>
            <td><?=$agama?></td>
        </tr>
        <tr>
            <td>Gaji</td>
            <td><?= $gaji ?></td>
        </tr>
        <tr>
            <td>Tunjangan Jabatan </td>
            <td><?= $tunjanganJabatan ?></td>
        </tr>
        <tr>
            <td>Tunjangan Keluarga</td>
            <td><?= $tunjanganKeluarga ?></td>
        </tr>
        <tr>
            <td>Gaji Kotor</td>
            <td><?= $gajiKotor?></td>
        </tr>
        <tr>
            <td>Zakat Profesi</td>
            <td><?= $zakat_profesi?></td>
        </tr>
        <tr>
            <td>Take home pay</td>
            <td><?= $gajiBersih?></td>
        </tr>
    </table>
    <?php } ?>
    
</body>
</html>