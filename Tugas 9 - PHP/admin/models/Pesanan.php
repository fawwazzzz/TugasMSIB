<?php
    class Pesanan {
        private $koneksi;
        public function __construct() {
            global $dbh;
            $this->koneksi = $dbh;
        }
        public function Pesanan() {
            $sql = "SELECT * FROM pesanan";
            $ps = $this->koneksi->prepare($sql);
            $ps->execute();
            $rs = $ps->fetchAll();
            return $rs;
        }

        public function getPesanan($id) {
            $sql  = "SELECT * FROM pesanan WHERE pesanan.id = ?";
            $ps = $this->koneksi->prepare($sql);
            $ps->execute([$id]);
            $rs = $ps->fetch();
            return $rs;
        }

        public function simpan($data) {
            $sql = "INSERT INTO pesanan(tanggal,total,pelanggan_id) VALUES (?,?,?)";
            $ps = $this->koneksi->prepare($sql);
            $ps->execute($data);
        }
    }
?>