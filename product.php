<?php 
	include('header.php');
	//include('sidebar.php');
	include('database.php');
	$result = mysql_query("select * from producto", $connect);
?>
<div class="box">
	<?php include ('sidebar.php') ?>
	<div class="container">
		<div style="overflow-x:auto;">
			<table>
				<tr>
					<th>ID</th>
					<th>Nombre</th>
					<th>dfdgd</th>
				</tr>
				<?php while($fila = mysql_fetch_assoc($result)): ?>
				<tr>
					<td><?php echo $fila["id_producto"] ?> </td>
					<td><?php echo $fila["nombre_producto"] ?></td>
				</tr>
				<?php endwhile ?>
			</table>
		</div>
	</div>
</div>
<?php include("footer.php") ?>