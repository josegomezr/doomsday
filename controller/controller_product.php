<?php
class product{
	function __construct(){
		$this->view_data = array(); 
	}

	function start(){
		$sql_product_list = "SELECT * FROM producto";
		$this->view_data['product_list'] = Database::connect()->query($sql_product_list)->fetch_all(MYSQLI_ASSOC);
		load_file('view/admin/product.php', $this->view_data);
	}

	function view(){
		$product_id = $_GET['id_producto'];
		$sql_product_view = "SELECT nombre_producto, id_producto, categoria_producto FROM producto WHERE id_producto = '$product_id'";

		var_dump($sql_product_view);
		$this->view_data['product_view'] = Database::connect()->query($sql_product_view)->fetch_assoc();
		load_file('view/admin/product_view.php', $this->view_data);
	}
}	