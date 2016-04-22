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
		//$this->viewData['row'] = $this->crud_model->find($pk)->row();
		//$this->load->view('crud/read_view', $this->viewData);

		$sql_product_view = "SELECT nombre_producto, id_producto, categoria_producto FROM producto 
		WHERE id_producto = '{$product['id_producto']}'";
		$this->view_data['product_view'] = Database::connect()->query($sql_product_view)->fetch_all(MYSQLI_ASSOC);
		load_file('view/admin/product_view.php', $this->view_data);
	}
}	