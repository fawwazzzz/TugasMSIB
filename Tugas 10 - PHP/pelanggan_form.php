<?php
  error_reporting(0);
    $objek_produk = new Pelanggan();
    $data_produk = $objek_produk->Pelanggan();
    $idEdit = $_REQUEST['idedit'];
    $p = !empty($idEdit) ? $objek_produk->getPelanggan($idEdit) : array();
?>

<form action="controller/pelanggan_controller.php" method="POST">
      <div class="form-group row">
        <label for="text" class="col-4 col-form-label">Kode</label> 
        <div class="col-8">
          <input id="kode" name="kode" type="text" class="form-control" value="<?= $p['kode'] ?>" >
        </div>
      </div>
      <div class="form-group row">
        <label for="text1" class="col-4 col-form-label">Nama Pelanggan</label> 
        <div class="col-8">
          <input id="nama_pelanggan" name="nama_pelanggan" type="text" class="form-control" value="<?= $p['nama_pelanggan'] ?>">
        </div>
      </div>
      <div class="form-group row">
        <label for="text2" class="col-4 col-form-label">Alamat</label> 
        <div class="col-8">
          <input id="alamat" name="alamat" type="text" class="form-control" value="<?= $p['alamat'] ?>">
        </div>
      </div>
      <div class="form-group row">
        <label for="text3" class="col-4 col-form-label">Jenis Kelamin</label> 
        <div class="col-8">
          <input id="jk" name="jk" type="text" class="form-control" value="<?= $p['jk'] ?>">
        </div>
      </div>
      <div class="form-group row">
        <label for="text4" class="col-4 col-form-label">Tempat Lahir</label> 
        <div class="col-8">
          <input id="tmp_lahir" name="tmp_lahir" type="text" class="form-control" value="<?= $p['tmp_lahir'] ?>">
        </div>
      </div>
      <div class="form-group row">
        <label for="text5" class="col-4 col-form-label">Tanggal Lahir</label> 
        <div class="col-8">
          <input id="tgl_lahir" name="tgl_lahir" type="text" class="form-control" value="<?= $p['tgl_lahir'] ?>">
        </div>
      </div>
      <div class="form-group row">
        <label for="text6" class="col-4 col-form-label">Email</label> 
        <div class="col-8">
          <input id="email" name="email" type="text" class="form-control" value="<?= $p['email'] ?>">
        </div>
      </div> 
      <div class="form-group row">
        <label for="text6" class="col-4 col-form-label">Kartu ID</label> 
        <div class="col-8">
          <input id="kartu_id" name="kartu_id" type="text" class="form-control" value="<?= $p['kartu_id'] ?>">
        </div>
      </div> 
      <div class="form-group row">
        <div class="offset-4 col-8">
          <?php 
            if(empty($idEdit)) {
          ?>
          <button name="proses" type="submit" value="simpan" class="btn btn-primary">Submit</button>
          <?php 
            }
            else {
          ?>
          <button name="proses" type="submit" value="ubah" class="btn btn-primary" >Update</button>
          <input type="hidden" name="idx" value="<?= $idEdit ?>" >
          <?php
            }
          ?>
          <button name="proses" type="submit" class="btn btn-primary">Cancel</button>
        </div>
      </div>
    </form>
    