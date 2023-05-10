<?php
    $id = $_REQUEST['id'];
    $model = new Pelanggan();
    $produk = $model->getPelanggan($id);
?>


<div class="container-fluid px-4">
            <h1 class="mt-4">Tables</h1>
            <ol class="breadcrumb mb-4">
                <li class="breadcrumb-item"><a href="index.html">Dashboard</a></li>
                <li class="breadcrumb-item active"></li>
            </ol>
            <div class="card mb-4">
                <div class="card-body">
                    <h3>Detail Pelanggan</h3>
                </div>
            </div>
            <div class="card mb-4">
                <div class="card-body">
                    <table id="datatablesSimple">
                        <thead>
                            <tr>
                                <th>No</th>
                                <th>Kode</th>
                                <th>Nama Pelanggan</th>
                                <th>Alamat</th>
                                <th>Jenis Kelamin</th>
                                <th>Tempat Lahir/th>
                                <th>Tanggal Lahir</th>
                                <th>Email</th>
                                <th>Kartu ID</th>
                            </tr>
                        </thead>
                        <tfoot>
                                <th>No</th>
                                <th>Kode</th>
                                <th>Nama Pelanggan</th>
                                <th>Alamat</th>
                                <th>Jenis Kelamin</th>
                                <th>Tempat Lahir/th>
                                <th>Tanggal Lahir</th>
                                <th>Email</th>
                                <th>Kartu ID</th>
                            </tr>
                        </tfoot>
                        <tbody>
                            <?php
                                $no = 1;
                            ?>
                    <tr>
                        <td><?= $no ?></td>
                        <td><?= $produk['kode'] ?></td>
                        <td><?= $produk['nama_pelanggan'] ?></td>
                        <td><?= $produk['alamat'] ?></td>
                        <td><?= $produk['jk'] ?></td>
                        <td><?= $produk['tmp_lahir'] ?></td>
                        <td><?= $produk['tgl_lahir'] ?></td>
                        <td><?= $produk['email'] ?></td>
                        <td><?= $produk['kartu_id'] ?></td>
                    </tr>
                            <?php
                                $no++;
                                 
                            ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
