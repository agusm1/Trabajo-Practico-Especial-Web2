<?php

require_once 'models/UserModel.php';
require_once 'views/UserView.php';

class UserController {
    private $usermodel;
    private $userview;

    public function __construct()
    {
        $this->usermodel = new UserModel(); 
        $this->userview = new UserView();
    }

    public function showLogin(){
        $this->userview->showLogin();
    }

    public function showRegistrar() {
        /**
         * Llama a la funcion que muestra el formulario para ingresar datos de un nuevo usuario
         */
        $this->userview->showRegistrar();
    }    

    public function registrar() { 
        /** 
         * Recibe los datos del formulario de registro de usuario y los envia al modelo, los guarda en la BBDD y manda al home a la pagina
        */
        $user = $_POST['username'];
        $pass = $_POST['password'];
        $this->usermodel->add($user, $pass);
        header("Location: " . BASE_URL . 'login');
    }

    public function verify() {
        /**
         * Recibe los datos del formulario login y verifica si no estan vacios, si existe y si concuerdan con la BBDD
         * si esto se cumple redirije al home de la pagina 
         */
        if(!empty($_POST['username']) && !empty($_POST['password'])){
            $user = $_POST['username'];
            $pass = $_POST['password'];
            $userDb = $this->usermodel->getUserByUsername($user);
            if(!empty($userDb) && password_verify($pass, $userDb->contraseña)){
                AuthHelper::login($userDb);
                header('Location: ' . BASE_URL . "home");
            }
            else {
                $this->userview->showLogin("Login incorrecto");
            }
        } else {
            $this->userview->showLogin("Login incompleto"); 
        }
    }

    public function logout() {
        AuthHelper::logout();
        header("Location: " . BASE_URL . 'login');
    }
}