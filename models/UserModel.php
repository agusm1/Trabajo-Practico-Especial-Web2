<?php

require_once('Model.php');

class UserModel extends Model
{

    public function getAll()
    {
        $query = $this->getDb()->prepare('SELECT * FROM `user`');
        $query->execute();
        return $query->fetchAll(PDO::FETCH_OBJ);
    }

    public function getUserByUsername($username)
    {
        $query = $this->getDb()->prepare('SELECT * FROM `user` WHERE user = ?');
        $query->execute(array(($username)));
        return $query->fetch(PDO::FETCH_OBJ);
    }

    public function add($user, $pass, $admin)
    {
        $passEnc = password_hash($pass, PASSWORD_DEFAULT);
        $query = $this->getDb()->prepare('INSERT INTO user (user, password, admin) VALUES (?, ?, ?)');
        $query->execute([$user, $passEnc, $admin]);
    }

    public function modify($id, $admin)
    {
        $query = $this->getDb()->prepare('UPDATE user SET admin = ? WHERE id = ?');
        $result = $query->execute([$admin, $id]);
        return $result;
    }
}