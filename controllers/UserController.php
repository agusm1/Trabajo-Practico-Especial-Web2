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
        $this->userview->showRegistrar();
    }    

    public function registrar() {
        $user = $_POST['username'];
        $pass = $_POST['password'];
        $this->usermodel->add($user, $pass);
        header("Location: " . BASE_URL . 'home');
    }
    public function verify() {
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