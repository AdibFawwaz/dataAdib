<?php
include "Koneksi.php";

$Nama_Produk	= getAutoId('Nama Produk', 'produk', 'PRD');
$Kategori		= $_POST['Kategori'];
$Harga			= $_POST['Harga'];
$Foto_Produk	= $_POST['Foto Produk'];

$namaFile = $_FILES['gambar']['name'];
$namSementara = $_FILES['gambar']['tmp_name'];
$dirUpload = "../gambar/";

$terupload = move_uploaded_file($namaSementara, $dirUpload.$namaFile);

$gambar	   ="gambaar/".$namFile;

$query = "INSERT INTO `tabel_produk` 
			(`Nama_Produk`, `Kategori`, `Harga`, `Foto_Produk`) 
			VALUES ('$Nama_Produk', '$Kategori', '$Harga', '$Foto_Produk')";
		
			mysql_query($query);
		
header("location:../index.php?mod=Produk_Form");