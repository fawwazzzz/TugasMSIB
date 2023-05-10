<?php
    // Include_once 'top.php';

    // Iclude_once 'menu.php';
    $model = new  Kartu();
    $kartu = $model->Kartu();

    // foreach ($data_produk as $row) {
    //     print $row['kode'];
    // }

?>





<div class="container-fluid px-4">
                        <h1 class="mt-4">Tables</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"><a href="index.html">Dashboard</a></li>
                            <li class="breadcrumb-item active">Tables</li>
                        </ol>
                        <div class="card mb-4">
                            <div class="card-body">
                                DataTables is a third party plugin that is used to generate the demo table below. For more information about DataTables, please visit the
                                <a target="_blank" href="https://datatables.net/">official DataTables documentation</a>
                                .
                            </div>
                        </div>
                        <div class="card mb-4">
                        <div class="card-header">
                                <!-- <i class="fas fa-table me-1"></i>
                                DataTable Example -->
                                <!-- Membuat tombol mengarahkan ke file produk_form.php -->
                                <a href="index.php?url=kartu_form" class="btn btn-primary btn-sm" >Tambah</a>
                            </div>
                            <div class="card-body">
                                <table id="datatablesSimple">
                                    <thead>
                                        <tr>
                                            <th>No</th>
                                            <th>Kode</th>
                                            <th>Nama</th>
                                            <th>Diskon</th>
                                            <th>Iuran</th>
                                            <th>Actions</th>
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                            <th>No</th>
                                            <th>Kode</th>
                                            <th>Nama</th>
                                            <th>Diskon</th>
                                            <th>Iuran</th>
                                            <th>Actions</th>
                                        </tr>
                                    </tfoot>
                                    <tbody>
                                        <?php
                                            $no = 1;
                                            foreach($kartu as $row) {

                                        
                                        ?>
                                        <tr>
                                            <td><?= $no ?></td>
                                            <td><?= $row['kode'] ?></td>
                                            <td><?= $row['nama'] ?></td>
                                            <td><?= $row['diskon'] ?></td>
                                            <td><?= $row['iuran'] ?></td>
                                            <td>
                                                <form action="kartu_controller.php" method="POST">
                                                    <a href="index.php?url=kartu_detail&id=<?= $row ['id'] ?>" class="btn btn-info btn-sm" >Detail</a>
                                                    <a href="" class="btn btn-warning btn-sm" >Ubah</a>
                                                    <a href="" class="btn btn-danger btn-sm" >Hapus</a>

                                                    <input type="hidden" name="idx" value=<?= $row['id'] ?>>
                                                </form>
                                            </td>
                                        <?php
                                            $no++;
                                         } 
                                        ?>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        