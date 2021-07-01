<?php

require_once('Model.php');

class CommentModel extends Model {
    public function getAll($id_game)
    {
        $query = $this->getDb()->prepare('SELECT commentary.id_commentary, commentary.commentary, commentary.vote, commentary.id_match, commentary.name_user, game.id_game FROM `commentary` JOIN `game` ON commentary.id_match= game.id_game WHERE game.id_game = ?');
        $query->execute([$id_game]);
        $comments = $query->fetchAll(PDO::FETCH_OBJ);
        return $comments;
    }

    public function insert($commentary, $vote, $name_user, $id_game){
        $query = $this->getDb()->prepare('INSERT INTO commentary (commentary, vote, name_user, id_match) VALUES (?, ?, ?, ?)');
        $create = $query->execute([$commentary, $vote, $name_user, $id_game]);
        return $create;
    }


    
    public function delete($id_commentary){
        $query = $this->getDb()->prepare('DELETE FROM commentary WHERE id_commentary = ?');
        $query->execute([$id_commentary]);
        return $query;
    }



}    