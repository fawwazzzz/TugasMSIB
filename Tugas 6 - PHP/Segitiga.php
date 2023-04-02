<?php
// Menjembatani file Abstrasct.php
  require_once "Abstract.php";
  class Segitiga extends Bentuk2D {
    private $alas;
    private $tinggi;

    public function __construct($alas, $tinggi) {
      $this->alas = $alas;
      $this->tinggi = $tinggi;
    }
       // Fungsi Nama Bidang
    public function namaBidang() {
      return "Segitiga";
    }
    // Fungsi Hitung Luas Segitiga
    public function luasBidang() {
      $luas = number_format($this->alas * $this->tinggi / 2) . " cm<sup>2</sup>";
      return $luas;
    }
    // Fungsi Hitung Keliling Segitiga
    public function kelilingBidang() {
      $sisiMiring = sqrt(($this->alas ** 2) + ($this->tinggi ** 2));
      $keliling = number_format($this->alas + 2 * $sisiMiring) . " cm<sup>2</sup>";
      return $keliling;
    }
  }
?>