<?php
    $id = $_REQUEST['id'];
    $model = new Produk();
    $produk = $model->getProduk($id);
?>


<div class="container-fluid px-4">
            <h1 class="mt-4">Tables</h1>
            <ol class="breadcrumb mb-4">
                <li class="breadcrumb-item"><a href="index.html">Dashboard</a></li>
                <li class="breadcrumb-item active"></li>
            </ol>
            <div class="card mb-4">
                <div class="card-body">
                    <h3>Detail Produk</h3>
                </div>
            </div>
            <div class="card mb-4">
                <div class="card-body">
                    <table id="datatablesSimple">
                        <thead>
                            <tr>
                                <th>No</th>
                                <th>Kode</th>
                                <th>Nama</th>
                                <th>Harga Beli</th>
                                <th>Harga Jual</th>
                                <th>Stok</th>
                                <th>Minimal Stok</th>
                                <th>Jenis Produk</th>
                            </tr>
                        </thead>
                        <tfoot>
                                <th>No</th>
                                <th>Kode</th>
                                <th>Nama</th>
                                <th>Harga Beli</th>
                                <th>Harga Jual</th>
                                <th>Stok</th>
                                <th>Minimal Stok</th>
                                <th>Jenis Produk</th>
                            </tr>
                        </tfoot>
                        <tbody>
                            <?php
                                $no = 1;
                            ?>
                    <tr>
                        <td><?= $no ?></td>
                        <td><?= $produk['kode'] ?></td>
                        <td><?= $produk['nama'] ?></td>
                        <td><?= $produk['harga_beli'] ?></td>
                        <td><?= $produk['harga_jual'] ?></td>
                        <td><?= $produk['stok'] ?></td>
                        <td><?= $produk['min_stok'] ?></td>
                        <td><?= $produk['jenis_produk_id'] ?></td>
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
