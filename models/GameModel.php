<?php

require_once('Model.php');

class GameModel extends Model{

    //Trae todos los juegos de la base de datos 
    public function getAll(){

        // 1. Establece la conexion con la base de datos y trae todos los elementos de la tabla game
        $query = $this->getDb()->prepare(" SELECT * FROM game");
        $query-> execute(); 
        return $query->fetchAll(PDO::FETCH_OBJ);
    }

    public function get($id_game){

        // 1. Establece la conexion con la base de datos y trae todos los elementos de la tabla game
        $query = $this->getDb()->prepare(" SELECT * FROM game WHERE id_game = ?");
        $query-> execute([$id_game]); 
        return $query->fetchAll(PDO::FETCH_OBJ);

    }

    public function getGamesForGenre($id_genero) {
        // 1. Establece la conexion con la base de datos y trae todos los elementos de la tabla game
        $query = $this->getDb()->prepare("SELECT game.id_game, game.titulo, game.sinopsis, game.anio, genero.nombre FROM `game` JOIN `genero` ON game.id_genero= genero.id_genero WHERE genero.id_genero = ?");
        $query-> execute([$id_genero]); 
        return $query->fetchAll(PDO::FETCH_OBJ);
    }

    public function create($titulo, $anio, $sinopsis, $id_genero){
        $query = $this->getDb()->prepare('INSERT INTO game  (`titulo`, `anio`, `sinopsis`, `id_genero`) VALUES (?, ?, ?, ?)');
        $result= $query->execute([$titulo, $anio, $sinopsis, $id_genero]);
        return $result;
    }

    public function delete($id_game){

        $query =$this->getDb()->prepare('DELETE FROM game WHERE id_game = ?');
        $query->execute([$id_game]); 

    }

    public function update($id_game, $titulo, $anio, $sinopsis, $id_genero) {
        $query = $this->getDb()->prepare('UPDATE game SET titulo = ?, anio = ?, sinopsis = ?, id_genero = ? WHERE id_game = ?');
        $result = $query->execute([$titulo, $anio, $sinopsis, $id_genero, $id_game]);
        return $result;
    }
}