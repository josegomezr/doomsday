<?php 

class admin{
	function __construct(){
		$this->view_data = array();
	}
	function start(){
		load_file('view/admin/principal.php');
	}
	public function logout(){
        redirect(site_url('login'));
    }
}
