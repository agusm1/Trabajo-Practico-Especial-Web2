<?php

require_once('Model.php');

class GenreModel extends Model {

        //Trae todos los generos de la base de datos 
        public function getAll(){
    
            // 1. Establece la conexion con la base de datos
            $query = $this->getDb()->prepare(" SELECT * FROM genero");
            $query-> execute(); 
            return $query->fetchAll(PDO::FETCH_OBJ);
        }
        
        public function get($id_genre){

            // 1. Establece la conexion con la base de datos y trae todos los elementos de la tabla game
            $query = $this->getDb()->prepare(" SELECT * FROM genero WHERE id_genero = ?");
            $query-> execute([$id_genre]); 
            return $query->fetch(PDO::FETCH_OBJ);
    
        }

        public function getName($namegenre){

            // 1. Establece la conexion con la base de datos y trae todos los elementos de la tabla game
            $query = $this->getDb()->prepare(" SELECT * FROM genero WHERE nombre = ?");
            $query-> execute([$namegenre]); 
            return $query->fetch(PDO::FETCH_OBJ);
    
        }
        
        public function create($nombre){
            
            $query = $this->getDb()->prepare('INSERT INTO genero (nombre) VALUES (?)');
            $result= $query->execute([$nombre]);
            return $result;
        }

        public function delete($id_genre){

            $query =$this->getDb()->prepare('DELETE FROM genero WHERE id_genero = ?');
            $query->execute([$id_genre]); 
    
        }

        public function update($id_genre, $nombre) {
            $query = $this->getDb()->prepare('UPDATE genero SET nombre = ? WHERE id_genero = ?');
            $result = $query->execute([$id_genre, $nombre]);
            return $result;
        }

}