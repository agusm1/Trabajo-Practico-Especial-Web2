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
    public function delete($id)
    {
        $query = $this->getDb()->prepare('DELETE FROM user WHERE id = ?');
        $query->execute([$id]);
    }

    public function getAllCommentary($id_game)
    {
        $query = $this->getDb()->prepare('SELECT commentary.id_commentary, commentary.commentary, commentary.vote, commentary.id_match, commentary.name_user, game.id_game FROM `commentary` JOIN `game` ON commentary.id_match= game.id_game WHERE game.id_game = ?');
        $query->execute([$id_game]);
        $comments = $query->fetchAll(PDO::FETCH_OBJ);
        return $comments;
    }

    public function insertCommentary($commentary, $vote, $id_game, $name_user){
        $query = $this->getDb()->prepare('INSERT INTO commentary (commentary, vote, id_match ,name_user) VALUES (?, ?, ?, ?)');
        $query->execute([$commentary, $vote, $id_game, $name_user]);
    }
}
