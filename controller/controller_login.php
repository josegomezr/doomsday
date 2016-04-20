<?php 
/**
* 
*/
class login{
    
    public function start() {
        load_file("view/login.php");
    }

    public function validate(){
        $usuario = $_POST['usuario'];
        $clave = $_POST['password'];

        $resultado = Database::connect()->query("select * from usuario WHERE login = '{$usuario}' and clave = '{$clave}'");
        $fila = $resultado->fetch_object();

        if ($fila != null) {
            redirect(site_url('admin'));
        }else{
            redirect(site_url('login') . '&error=user_no_encontrado');
        }
    }
    
}