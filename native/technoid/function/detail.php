<?php
require 'koneksi.php';
require 'bantuan.php';
require 'cart.php';

function detail($id)
{
    global $konek;

    $hasil =  mysqli_query($konek, "SELECT * FROM produk WHERE id_produk = '$id'");

    $data = [
        'produk' => $produk = mysqli_fetch_object($hasil),
        'judul' => $produk->nama,
    ];
    return $data;
}
