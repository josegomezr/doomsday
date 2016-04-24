<?php 
	include('header.php');
	include('database.php');
	$result = mysql_query("select * from producto", $connect);
?>
<h1>este es er listado de productos</h1>
<table>
	<tr>
		<td>ID</td>
		<td>Nombre</td>
		<td></td>
	</tr>
		<?php while($fila = mysql_fetch_assoc($result)): ?>
		    <tr>
		    	<td><?php echo $fila["id_producto"] ?></td>";
		    	<td><?php echo $fila["nombre_producto"] ?></td>";
			</tr>
		<?php endwhile ?>
</table>
<?php include("footer.php") ?>