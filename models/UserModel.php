<?php

require_once('Model.php');

class UserModel extends Model { 

    public function getUserByUsername($username){
        $query = $this->getDb()->prepare('SELECT * FROM `user` WHERE usuario = ?');
        $query->execute(array(($username)));
        return $query->fetch(PDO::FETCH_OBJ);
    }

    public function add($user, $pass) {
        $passEnc = password_hash($pass, PASSWORD_DEFAULT);
        $query = $this->getDb()->prepare('INSERT INTO `user` (usuario, contraseña) VALUES (?, ?)');
        $query->execute([$user, $passEnc]);
    }
}