<?php
// Menjembatani file Abstrasct.php
  require_once "Abstract.php";

  class Lingkaran extends Bentuk2D {
    private $jari2;
    public function __construct ($jari2) {
      $this->jari2 = $jari2;
    }
    // Fungsi Nama Bidang
    public function namaBidang() {
      return "Lingkaran";
    }
    // Fungsi Hitung Luas Lingkaran
    public function luasBidang() {
      $luas = number_format(3.14 * $this->jari2 * $this->jari2) . " cm<sup>2</sup>";
      return $luas ;
    }
    // Fungsi Hitung Keliling Linkaran
    public function kelilingBidang() {
      $keliling = number_format( 2 * $this->jari2 * 3.14) . " cm<sup>2</sup>";
      return $keliling;
    }
  }
?> 