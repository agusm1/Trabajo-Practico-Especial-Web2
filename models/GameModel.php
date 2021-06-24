<?php

require_once('Model.php');

class GameModel extends Model{

    //Trae todos los juegos de la base de datos 
    public function getAll(){

        // 1. Establece la conexion con la base de datos y trae todos los elementos de la tabla game
        $query = $this->getDb()->prepare("SELECT * FROM game");
        $query-> execute(); 
        return $query->fetchAll(PDO::FETCH_OBJ);
    }

    public function getImages(){
        $query = $this->getDb()->prepare("SELECT image.path FROM `image` JOIN `game` ON image.id_game = game.id_game");
        $query-> execute();
        return $query->fetchAll(PDO::FETCH_OBJ);
    }

    public function get($id_game){

        // 1. Establece la conexion con la base de datos y trae todos los elementos de la tabla game
        $query = $this->getDb()->prepare(" SELECT * FROM game WHERE id_game = ?");
        $query-> execute([$id_game]); 
        return $query->fetchAll(PDO::FETCH_OBJ);

    }

    public function getGamesForGenre($id_genre) {
        /**
         * Trae todos los elementos de la tabla game que esten relacionas con el id del genero seleccionado por el usuario 
        */ 
        $query = $this->getDb()->prepare("SELECT game.id_game, game.title, game.synopsis, game.year, genero.name FROM `game` JOIN `genero` ON game.id_genre= genero.id_genre WHERE genero.id_genre = ?");
        $query-> execute([$id_genre]); 
        return $query->fetchAll(PDO::FETCH_OBJ);
    }

    public function create($title, $year, $synopsis, $id_genre){
        /**
         * Inserta en la base de datos game los datos del juego que el usuario halla enviado
         */
        $query = $this->getDb()->prepare('INSERT INTO game  (`title`, `year`, `synopsis`, `id_genre`) VALUES (?, ?, ?, ?)');
        $result= $query->execute([$title, $year, $synopsis, $id_genre]);
        if($result){
            $id_game = $this->getDb()->lastInsertId();
            $query_img = $this->getDb()->prepare('INSERT INTO image (path, id_game) values(?,?)');
            
            foreach($_FILES["imagesToUpload"]["tmp_name"] as $key => $tmp_name)
            {
                $destino_final = "images/".uniqid().".jpg";
                move_uploaded_file($tmp_name, $destino_final);
                $r = $query_img->execute([$destino_final, intval($id_game)]);
            }
        }


    }

    public function delete($id_game){
        /**
         * Elimina un juego en base al id que halla seleccionado el usuario
         */
        $query =$this->getDb()->prepare('DELETE FROM game WHERE id_game = ?');
        $query->execute([$id_game]); 

    }

    public function update($id_game, $title, $year, $synopsis, $id_genre) {
        /**
         * Recibe los datos que edito el usuario y los inserta en el juego correspondiente por su id_game
         */
        $query = $this->getDb()->prepare('UPDATE game SET title = ?, year = ?, synopsis = ?, id_genero = ? WHERE id_game = ?');
        $result = $query->execute([$title, $year, $synopsis, $id_genre, $id_game]);
        return $result;
    }
}