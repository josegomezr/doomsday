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
		<div class="header"><img class= "center-picture" src="Assets/log.png">Ingresa tus datos</div>
		<?php if (isset($_GET['error']) && $_GET['error']): ?>
			<div class="error">
				<p align="center">Usuario no encontrado :(</p>
			</div>
		<?php endif ?>
		<form method="post" action="<?php echo site_url("login","validate") ?>">
			<label class="field" for="usuario"><i class="fa fa-user" aria-hidden="true"></i></label>
			<input type="text" placeholder="Usuario" name="usuario" id="usuario"><br>
			<label class="field" for="password"><i class="fa fa-asterisk" aria-hidden="true"></i></label>
			<input type="password" placeholder="Contraseña" name="password" id="password"><br>
			<input type="submit" value="Entrar">
		</form>
	</div>
</body>
</html>