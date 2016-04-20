<?php   
require_once 'helper.php';
require_once 'database.php';

$controller = '';
$method = '';

if(isset($_GET['controller'])){
    $controller = $_GET['controller'];
}

if (!$controller) {
    $controller = "main";
}

if(isset($_GET['method'])){
    $method = $_GET['method'];
}

if (!$method) {
    $method = "start";
}

$file = "controller/controller_$controller.php";
load_file($file);

if (!class_exists($controller)) {
    show_error("error mas grave", "Class [$controller] not found");
    exit;
}

if (!method_exists($controller, $method)) {
    show_error("error de menos grave","Method [$method] is not defined in class [$controller]");
    exit;
}

$instancia = new $controller;

$instancia->$method();