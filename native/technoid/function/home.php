<?php
session_start();
require 'koneksi.php';
require 'auth.php';
require 'bantuan.php';
require 'cart.php';


function home()
{
    global $konek;

    $pd = mysqli_query($konek, "SELECT * FROM produk ORDER BY id_produk DESC LIMIT 10");
    $produks = [];
    while ($produk = mysqli_fetch_object($pd)) {
        $produks[] = $produk;
    }
    $data = [
        'judul' => 'Selamat Datang di TechnoId',
        'produk' => $produks,
    ];
    return $data;
}
