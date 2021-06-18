<?php

require_once('View.php');

class UserView extends View {

    public function __construct() {
        parent::__construct();
        $authHelper = new AuthHelper();
        $username = $authHelper->getLoggedUserName();
        $this->getSmarty()->assign('username', $username);
    }

    public function showLogin($error=null) {
        $this->getSmarty()->assign('title', 'Iniciar Sesion');
        $this->getSmarty()->assign('error', $error);
        $this->getSmarty()->display('templates/login.tpl');
    }

    public function showRegistrar($error=null) {
        $this->getSmarty()->assign('title', "Registrarse");
        $this->getSmarty()->assign('error', $error);        
        $this->getSmarty()->assign('home', BASE_URL.'home');
        $this->getSmarty()->display('templates/registrar.tpl');
    }    
}