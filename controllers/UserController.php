<?php

require_once 'models/UserModel.php';
require_once 'views/UserView.php';
require_once 'views/AdminView.php';

class UserController
{
    private $usermodel;
    private $userview;
    private $adminview;
    public function __construct()
    {
        $this->usermodel = new UserModel();
        $this->userview = new UserView();
        $this->adminview = new AdminView();
    }

    public function showLogin()
    {
        $this->userview->showLogin();
    }

    public function showAdmin()
    {
        AuthHelper::checkAdmin();
        $users = $this->usermodel->getAll();

        $this->adminview->showAdmin($users);
    }

    public function showRegistrar()
    {
        /**
         * Llama a la funcion que muestra el formulario para ingresar datos de un nuevo usuario
         */
        $this->userview->showRegistrar();
    }

    public function registrar()
    {
        /** 
         * Recibe los datos del formulario de registro de usuario y los envia al modelo, los guarda en la BBDD y manda al home a la pagina
         */
        $user = $_POST['username'];
        $pass = $_POST['password'];
        $admin = 0;
        $hayuser = $this->usermodel->getUserByUsername($user);
        if ($hayuser) {
            $this->userview->showRegistrar("Ya existe un usuario con ese nombre");
        } else {
            $this->usermodel->add($user, $pass, $admin);
            $userDb = $this->usermodel->getUserByUsername($user);
            AuthHelper::login($userDb);
            header("Location: " . BASE_URL . 'home');
        }
    }

    public function verify()
    {
        /**
         * Recibe los datos del formulario login y verifica si no estan vacios, si existe y si concuerdan con la BBDD
         * si esto se cumple redirije al home de la pagina 
         */
        if (!empty($_POST['username']) && !empty($_POST['password'])) {
            $user = $_POST['username'];
            $pass = $_POST['password'];
            $userDb = $this->usermodel->getUserByUsername($user);
            if (!empty($userDb) && password_verify($pass, $userDb->password)) {
                AuthHelper::login($userDb);
                header('Location: ' . BASE_URL . "home");
            } else {
                $this->userview->showLogin("Login incorrecto");
            }
        } else {
            $this->userview->showLogin("Login incompleto");
        }
    }
    
    public function modifyUser($id, $admin)
    {
        /**
         * Segun el numero que recibe en la variable $admin añadira o quitara los permisos de administrador
         */
        if(empty($admin)){
            $this->usermodel->modify($id, $admin);
        }else{
            $this->usermodel->modify($id, $admin);
        }
        header("Location: " . BASE_URL . 'admin');
    }

    public function logout()
    {
        AuthHelper::logout();
        header("Location: " . BASE_URL . 'login');
    }

    public function errorAdmin(){

        $this->adminview->error("No tiene permisos para acceder al apartado de administrador");
    }
}
