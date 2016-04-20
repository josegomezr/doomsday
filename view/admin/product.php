<?php include('view/admin/header.php');?>
este es er listado de productos


<table>
	<tr>
		<td>ID</td>
		<td>Nombre</td>
		<td></td>
	</tr>
	<?php foreach ($product_list as $product): ?>
	<tr>
		<td><?php echo $product['id_producto'] ?></td>
		<td><?php echo $product['nombre_producto'] ?></td>
		<td>
			<a href="<?php echo site_url('product', 'view', array('id_producto' => $product['id_producto'])) ?>">Ver</a>
		</td>
	</tr>
	<?php endforeach ?>
</table>

<?php include("view/admin/footer.php") ?>