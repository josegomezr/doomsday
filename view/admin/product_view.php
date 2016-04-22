<?php include('view/admin/header.php');?>
<table>
	<tr>
		<td>Nombre</td>
		<td>ID</td>
		<td>Categoria</td>
		<td>Cantidad</td>
		<td></td>
	</tr>
	<?php foreach ($product_view as $product): ?>
	<tr>
		<td><?php echo $product['producto.nombre_producto'] ?></td>
		<td><?php echo $product['producto.id_producto'] ?></td>
		<td><?php echo $product['categoria.nombre_categoria'] ?></td>
		<td><?php echo $product['orden_servicio_contenido.cantidad'] ?></td>
	</tr>
	<?php endforeach ?>
</table>

<?php include("view/admin/footer.php") ?>