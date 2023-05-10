<?php
    include_once '../koneksi.php';
    include_once '../models/Pesanan.php';

    // Step pertama yaitu menangkap request form
    $tanggal = $_POST['tanggal'];
    $total = $_POST['total'];
    $pelanggan_id = $_POST['pelanggan_id'];


    // menangkap form diatas dijadikan array
    $data = [
        $tanggal,
        $total,
        $pelanggan,

    ];

    $model = new Pesanan();
    $tombol = $_REQUEST['proses'];
    switch($tombol){
        case 'simpan':$model->simpan($data); break;
        default;
        header('Location:../index.php?url=pesanan');
        break;
    }
    header('Location:../index.php?url=pesanan')
?>