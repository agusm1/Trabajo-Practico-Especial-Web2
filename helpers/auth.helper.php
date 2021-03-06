<?php

class AuthHelper {

    public function __construct() {
    }

    //Inicia la session  si no está iniciada.

    static private function start() {
        if (session_status() != PHP_SESSION_ACTIVE)
            session_start();
    }

    //Guarda el username del usuario que esta logueado
    public static function getLoggedUserName() {
        self::start();
        if (isset($_SESSION['USERNAME'])){
            return $_SESSION['USERNAME'];
        }
        else {
            return false;
        }
    }
    
    public static function getLoggedAdmin(){
        self::start();
        if (!empty($_SESSION['ADMIN'])){
            if ($_SESSION['ADMIN'] == 1){
                return $_SESSION['ADMIN'];
            }
        }
        else {
            return false;
        }
    }

    public static function checkAdmin(){
        self::start();
        if (empty($_SESSION['ADMIN'])){
            header('Location: ' . BASE_URL . "errorAdmin");
            die;
        }
    }
    // Chequea si el usuario esta logueado
    public static function checkLoggedIn(){
        self::start();
        if(!isset($_SESSION['ID_USER'])){
            header('Location: ' . BASE_URL . "login");
            die;
        }
    }

    //Inicia la session y registra los datos dal usuario
    
    public static function login($user) {
        self::start();
        $_SESSION['IS_LOGGED'] = true;
        $_SESSION['ID_USER'] = $user->id;
        $_SESSION['USERNAME'] = $user->user;
        $_SESSION['ADMIN'] = $user->admin;
    }

    //Destruye la session
    
    public static function logout() {
        self::start();
        session_destroy();
    }

}

