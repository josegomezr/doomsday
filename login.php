<?php

$usuario = $_POST['usuario'];
$clave = $_POST['password'];

$dbHost = 'localhost';
$dbUser = 'root';
$dbPass = '';
$dbName = 'distribuidora';

$mysql = new mysqli($dbHost, $dbUser, $dbPass, $dbName);
$resultado = $mysql->query("select * from usuario WHERE login = '{$usuario}' and clave = '{$clave}'");

$fila = $resultado->fetch_object();

if ($fila) {
	header('Location: area_logueado.php');
	exit;
}else{
	header('Location: login.html');
	exit;
}



