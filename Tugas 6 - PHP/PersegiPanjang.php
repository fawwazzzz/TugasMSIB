<?php
// Menjembatani file Abstrasct.php
  require_once "Abstract.php";

  class PersegiPanjang extends Bentuk2D {
    private $panjang;
    private $lebar;

    public function __construct($panjang, $lebar) {
      $this->panjang = $panjang;
      $this->lebar = $lebar;
    }
       // Fungsi Nama Bidang
    public function namaBidang() {
      return "Persegi Panjang";
    }
     // Fungsi Hitung Luas Persegi Panjang
    public function luasBidang() {
      $luas = number_format($this->panjang * $this->lebar) . " cm<sup>2</sup>";
      return $luas;
    }
     // Fungsi Hitung Keliling Persegi Panjang
    public function kelilingBidang() {
      $keliling = number_format(2 * ($this->panjang + $this->lebar)) . " cm<sup>2</sup>";
      return $keliling;
    }
  }
?>