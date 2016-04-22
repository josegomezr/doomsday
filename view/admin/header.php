<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="assets/style.css">
	<link rel="stylesheet" href="assets/font-awesome/css/font-awesome.css">
	<title>Boxi</title>
</head>
<body>
	<div class="navbar">
	
		<div class="option"><i class="fa fa-cube"></i></div>
		<a href="<?php echo site_url("product"); ?>" class="option">Productos</a>
		<div class="option">Proveedores</div>
		<div class="option">Ordenes</div>
		<div class="option"> 
			<a href="<?php echo site_url("admin", "logout"); ?>" ><i class="fa fa-power-off"></i></a>
		</div>
	</div>