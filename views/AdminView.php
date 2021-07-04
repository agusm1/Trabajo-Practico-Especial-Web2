<?php

require_once 'View.php';

class AdminView extends View {

    public function __construct() {
        parent::__construct();
        $authHelper = new AuthHelper();
        $username = $authHelper->getLoggedUserName();
        $admin = $authHelper->getLoggedAdmin();
        $this->getSmarty()->assign('username', $username);
        $this->getSmarty()->assign('admin', $admin);
    }

    public function showAdmin($users, $games, $genres){
        $this->getSmarty()->assign('title', 'Vista de Administrador');
        $this->getSmarty()->assign('users', $users);
        $this->getSmarty()->assign('games', $games);
        $this->getSmarty()->assign('genres', $genres);
        $this->getSmarty()->display('templates/admin.tpl');
    }

    public function error($msg){
        $this->getSmarty()->assign('title', 'Imposible acceder');
        $this->getSmarty()->assign('titlepag', 'No es posible acceder');
        $this->getSmarty()->assign('msg', $msg);

        $this->getSmarty()->display('templates/errorAdmin.tpl');
    }
}