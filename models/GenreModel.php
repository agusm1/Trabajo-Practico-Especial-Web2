<?php

require_once('Model.php');

class GenreModel extends Model {

        //Trae todos los generos de la base de datos 
        public function getAll(){
    
            // 1. Establece la conexion con la base de datos y trae todos los generos
            $query = $this->getDb()->prepare(" SELECT * FROM genero");
            $query-> execute(); 
            return $query->fetchAll(PDO::FETCH_OBJ);
        }
        
        public function get($id_genre){

            // 1. Establece la conexion con la base de datos y trae el genero que selecciono el usuario segun el id_genero
            $query = $this->getDb()->prepare(" SELECT * FROM genero WHERE id_genero = ?");
            $query-> execute([$id_genre]); 
            return $query->fetchAll(PDO::FETCH_OBJ);
    
        }

        public function getName($namegenre){
            /** 
             * Establece la conexion con la base de datos y retorna una variable que contiene si hay un genero con ese nombre
            */
            $query = $this->getDb()->prepare(" SELECT * FROM genero WHERE nombre = ?");
            $query-> execute([$namegenre]); 
            return $query->fetch(PDO::FETCH_OBJ);
    
        }
        
        public function create($nombre){
            /**
             * Inserta el nombre del genero que escribio el usuario en la tabla genero
             */
            $query = $this->getDb()->prepare('INSERT INTO genero (nombre) VALUES (?)');
            $result= $query->execute([$nombre]);
            return $result;
        }

        public function delete($id_genre){
            /**
             * Elimina el genero seleccionado
             */
            $query =$this->getDb()->prepare('DELETE FROM genero WHERE id_genero = ?');
            $query->execute([$id_genre]); 
        }

        public function update($id_genre, $nombre) {
            /**
             * Actualiza el genero seleccionado con el nombre que el usuario ingreso
             */
            $query = $this->getDb()->prepare('UPDATE genero SET nombre = ? WHERE id_genero = ?');
            $result = $query->execute([$id_genre, $nombre]);
            return $result;
        }

}