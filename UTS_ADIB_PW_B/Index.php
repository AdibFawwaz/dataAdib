<?php include "Proses/Koneksi.php"; ?>
<table class="table table-bordered">
<thead>   
   <tr>
        <th>No</th>
        <th>Gambar</th>
        <th>Nama Produk</th>
		<th>Kategori</th>
		<th>Harga</th>
		<th>Aksi</th>
    </tr>
	</thead>
	<tbody>
	
	<?php
	$query = "SELECT * FROM tabel_produk";
	$res = mysql_query($query);
	$no =1;
	while($row = mysql_fetch_array($res)){
	
	?>
	
	<tr>
		<td> <?php echo $no; ?> </td>
		<td><?php echo $row['Nama_Produk']; ?> </td>
		<td><?php echo $row['Kategori']; ?> </td>
		<td><?php echo $row['Harga']; ?> </td>
		<td><img src="<?php echo $row['Foto_Produk']; ?>" width="80" </td>
		<td>
			<a href="index.php?mod=Produk_Form&id=<?php echo $row['produkId']; ?>"> Edit </a> 
			<a href="Proses/produk_delete.php?id=<?php echo $row['produkId']; ?>"> Delete </a> 
			</td>
	</tr>
	<?php $no++; } ?>
</table>