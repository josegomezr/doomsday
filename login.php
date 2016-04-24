<?php 
if(isset($_POST["usuario"])){
	$usuario = $_POST["usuario"];
	$pass = $_POST["password"];
	if(!$usuario||!$pass){
		header('location: error.php');
	}else{
		include('database.php');
		$query = mysql_query("SELECT * FROM usuario WHERE login = '{$usuario}' AND clave = '{$pass}'", $connect);
		//var_dump($query);
		//exit; 
		//ayurame diosmio
		$cuenta = mysql_num_rows($query);
		//var_dump($cuenta); /*
		if($cuenta != 1){
			//var_dump($fila);
			$error = true;
		}else{
			header('location: product.php');
		} //*/
	}
}

?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="assets/style.css">
	<link rel="stylesheet" href="assets/font-awesome/css/font-awesome.css">
	<title>Almacen: login</title>
</head>
<body>
	<div class="login">	
		<div class="header"><img class= "center-picture" src="assets/log.png">Ingresa tus datos</div>
		<div class="message"> 
			<?php if (isset($_POST['usuario']) && $error = true): ?>
				<p align="center">Datos incorrectos :(</p>
			<?php endif ?>
		</div>
		<form method="post" action="">
			<label class="field" for="usuario"><i class="fa fa-user" aria-hidden="true"></i></label>
			<input type="text" placeholder="Usuario" name="usuario" id="usuario"><br>
			<label class="field" for="password"><i class="fa fa-asterisk" aria-hidden="true"></i></label>
			<input type="password" placeholder="Contraseña" name="password" id="password"><br>
			<input type="submit" value="Entrar">
		</form>
	</div>
</body>
</html>