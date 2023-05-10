<?php
  error_reporting(0);
    $objek_produk = new Pesanan();
    $data_produk = $objek_produk->Pesanan();
    $idEdit = $_REQUEST['idedit'];
    $p = !empty($idEdit) ? $objek_produk->getPesanan($idEdit) : array();
?>

<form action="controller/pesanan_controller.php" method="POST">
      <div class="form-group row">
        <label for="text1" class="col-4 col-form-label">Tanggal</label> 
        <div class="col-8">
          <input id="tanggal" name="tanggal" type="text" class="form-control" value="<?= $p['tanggal'] ?>" >
        </div>
      </div>
      <div class="form-group row">
        <label for="text2" class="col-4 col-form-label">Total</label> 
        <div class="col-8">
          <input id="total" name="total" type="text" class="form-control" value="<?= $p['total'] ?>">
        </div>
      </div>
      <div class="form-group row">
        <label for="text3" class="col-4 col-form-label">Pelanggan ID</label> 
        <div class="col-8">
          <input id="pelanggan_id" name="pelanggan_id" type="text" class="form-control" value="<?= $p['pelanggan_id'] ?>">
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