<?php

function load_file($file, $context=array()){
    if(file_exists($file)){
    	extract($context);
        include ($file);
    }else{
        show_error("Error", "Archivo $file no encontrado");
        exit;
    }
}

function show_error($title, $message){
	load_file("view/error.php", array(
		"titulo" => $title,
		"mensaje" => $message,
	));
	// include ("view/error.php");
}

function redirect($location){
    header('Location:'.$location);
}

function site_url($controller, $method ='start', $params = array()){
    $strParam = '';
    foreach ($params as $key => $val) {
        $strParam .= "&$key=$val";
    }
    return "index.php?controller=$controller&method=$method".$strParam;
}

