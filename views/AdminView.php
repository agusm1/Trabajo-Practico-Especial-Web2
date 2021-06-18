<?php

require_once 'View.php';

class AdminView extends View {

    public function __construct() {
        parent::__construct();
        $authHelper = new AuthHelper();
        $username = $authHelper->getLoggedUserName();
        $this->getSmarty()->assign('username', $username);
    }

    public function showAdmin($users){
        $this->getSmarty()->assign('title', 'Vista de Administrador');
        $this->getSmarty()->assign('users', $users);

        $this->getSmarty()->display('templates/admin.tpl');
    }

    public function error($msg){
        $this->getSmarty()->assign('title', 'Imposible acceder');
        $this->getSmarty()->assign('titlepag', 'No es posible acceder');
        $this->getSmarty()->assign('msg', $msg);

        $this->getSmarty()->display('templates/errorAdmin.tpl');
    }
}