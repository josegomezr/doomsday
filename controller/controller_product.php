<?php
/**
* 
*/
class product
{
	function __construct()
	{
		$this->view_data = array();
	}
	function start() {
		$this->view_data['titulo'] = 'productos';
		$sql_productall = "SELECT * FROM producto";
		$this->view_data['product_list'] = Database::connect()->query($sql_productall)->fetch_all(MYSQLI_ASSOC);
		load_file('view/admin/product.php', $this->view_data);
	}
}