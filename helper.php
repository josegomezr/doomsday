<?php 
function load_file($file, $context = array()){
    if(file_exists($file)){
    	extract($context);
        include ($file);
    }else{
        show_error("Error", "Archivo $file no encontrado");
        exit;
    }
}

function redirect($location, $message = array()){
	header('location.'.$location);
}

function show_error($title, $message){
	load_file("error.php", array(
		"titulo" => $title,
		"mensaje" => $message,
	));
}
