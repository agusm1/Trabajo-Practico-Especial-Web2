<?php 

class Model {

    private $db;

    public function __construct() {
        $this->db = $this->setConection();
    }

    public function getDb() {
        return $this->db;
    }

    public function setConection() {
        $db = new PDO('mysql:host=localhost;dbname=db_games;charset=utf8', 'root', '');
        $host = 'localhost';
        $userName = 'root';
        $password = '';
        $database = 'db_games';

        try {
            $db = new PDO("mysql:host=$host;dbname=$database;charset=utf8", $userName, $password);
            
            // Solo en modo desarrollo
            $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_WARNING);
        } catch (Exception $e) {
            var_dump($e);
        }
        return $db;        
    }
}