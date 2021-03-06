<?php

require_once('Model.php');

class GameModel extends Model
{

    //Trae todos los juegos de la base de datos 
    public function getAll()
    {

        // 1. Establece la conexion con la base de datos y trae todos los elementos de la tabla game
        $query = $this->getDb()->prepare("SELECT * FROM game");
        $query->execute();
        return $query->fetchAll(PDO::FETCH_OBJ);
    }

    public function get($id_game)
    {

        // 1. Establece la conexion con la base de datos y trae todos los elementos de la tabla game
        $query = $this->getDb()->prepare(" SELECT * FROM game WHERE id_game = ?");
        $query->execute([$id_game]);
        return $query->fetchAll(PDO::FETCH_OBJ);
    }

    public function getGamesForGenre($id_genre)
    {
        /**
         * Trae todos los elementos de la tabla game que esten relacionas con el id del genero seleccionado por el usuario 
         */
        $query = $this->getDb()->prepare("SELECT game.id_game, game.title, game.synopsis, game.year, genero.name FROM `game` JOIN `genero` ON game.id_genre= genero.id_genre WHERE genero.id_genre = ?");
        $query->execute([$id_genre]);
        return $query->fetchAll(PDO::FETCH_OBJ);
    }

    public function create($title, $year, $synopsis, $id_genre)
    {
        /**
         * Inserta en la base de datos game los datos del juego que el usuario halla enviado
         */
        $query = $this->getDb()->prepare('INSERT INTO game  (`title`, `year`, `synopsis`, `id_genre`) VALUES (?, ?, ?, ?)');
        $result = $query->execute([$title, $year, $synopsis, $id_genre]);
        return $result;
    }

    public function delete($id_game)
    {
        /**
         * Elimina un juego en base al id que halla seleccionado el usuario
         */
        $query = $this->getDb()->prepare('DELETE FROM game WHERE id_game = ?');
        $query->execute([$id_game]);
    }

    public function update($id_game, $title, $year, $synopsis, $id_genre)
    {
        /**
         * Recibe los datos que edito el usuario y los inserta en el juego correspondiente por su id_game
         */
        $query = $this->getDb()->prepare('UPDATE game SET title = ?, year = ?, synopsis = ?, id_genero = ? WHERE id_game = ?');
        $result = $query->execute([$title, $year, $synopsis, $id_genre, $id_game]);
        return $result;
    }

    public function search($search)
    {
        $patron = '%'. $search .'%';
        $sql = "SELECT * FROM game WHERE title LIKE ? OR year LIKE ?";
        $query = $this->getDb()->prepare($sql);
        $query->execute([$patron, $patron]);
        return $query->fetchAll(PDO::FETCH_OBJ);;
    }
}
