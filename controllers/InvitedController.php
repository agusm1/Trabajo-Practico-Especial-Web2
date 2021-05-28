<?php
require_once 'models/GameModel.php';
require_once 'models/GenreModel.php';
require_once 'views/GameView.php';

class InvitedController {

    private $modelgames;
    private $modelgenre;
    private $view;
    private $user;

    public function __construct(){
        $this->view = new GameView;
        $this->modelgames = new GameModel;
        $this->modelgenre = new GenreModel;
    }

    public function showHome(){
        $games = $this->modelgames->getAll();
        $genres = $this->modelgenre->getAll();
        $this->view->home($games, $genres);

    }

    public function showGenre(){
        $games = $this->modelgames->getAll();
        $genres = $this->modelgenre->getAll();

        $this->view->showGenre($games, $genres);
    }

    public function showformGenre(){
        AuthHelper::checkLoggedIn();
        $genres = $this->modelgenre->getAll();
        $this->view->showformGenre($genres);
    }

    public function showformGame(){
        AuthHelper::checkLoggedIn();
        $genres = $this->modelgenre->getAll();
        $this->view->showformGame($genres);
    }

    public function createGenre(){
        AuthHelper::checkLoggedIn();
        $namegenre = $_POST['nombre'];
        $haygenero = $this->modelgenre->getName($namegenre);
        if ($haygenero){
            //mostrar error "genero ya existe"
            $this->view->showError("El genero que ingreso ya existe");
        } else {
            //crear genero con el nombre que nos paso el usuario
            $this->modelgenre->create($namegenre);
            header("Location: " . BASE_URL . 'generos');
        }            
    }

    public function createGame(){
        AuthHelper::checkLoggedIn();
        $titulo = $_POST['nombre'];
        $anio = $_POST['anio'];
        $sinopsis = $_POST['sinopsis'];
        $genero = $_POST['genero'];
        if ($titulo != '' && $anio != '' && $sinopsis != '' && $genero != ''){

            $this->modelgames->create($titulo, $anio, $sinopsis, $genero);
            header("Location: " . BASE_URL . 'home');
        } else {
        //    //crear genero con el nombre que nos paso el usuario
            $this->view->showError("Debe completar todos los datos obligatorios");
        }            
    
    }
 
    public function showGameForGenre($id_genero){
        $gamesfge = $this->modelgames->getGamesForGenre($id_genero);
        $genres = $this->modelgenre->getAll();
        $this->view->showGaforGe($gamesfge, $genres);
    }

    public function showDetail($id_game){

        $game = $this->modelgames->get($id_game);
        $genres = $this->modelgenre->getAll();

        if (!empty($game) && !empty($genres)){
            $this->view->viewGame($game, $genres);
            } else {
            $this->view->showError("La pagina que usted solicito no se encuentra");
            }
    }

    public function deleteGame($id_game){
        AuthHelper::checkLoggedIn();
        $this->modelgames->delete($id_game);
        header("Location: " . BASE_URL . 'home'); 
    }

    public function deleteGenre($id_genre){
        AuthHelper::checkLoggedIn();
        $this->modelgenre->delete($id_genre);
        header("Location: " . BASE_URL . 'generos'); 
    }
    
    public function showeditGame($id_game){
        AuthHelper::checkLoggedIn();
        $game = $this->modelgames->get($id_game);
        $genres = $this->modelgenre->getAll();
        $this->view->showEdit($game, $genres, $id_game);
    }

    public function updateGame($id_game){
        AuthHelper::checkLoggedIn();
        $titulo = $_POST['nombre'];
        $anio = $_POST['anio'];
        $sinopsis = $_POST['sinopsis'];
        $genero = $_POST['genero'];
        if ($titulo != '' && $anio != '' && $sinopsis != '' && $genero != ''){
            $this->modelgames->update($id_game, $titulo, $anio, $sinopsis, $genero);
            header("Location: " . BASE_URL . 'detail/' .$id_game);
        } else{
            $this->view->showError("Debe completar todos los campos obligatorios");
        }

    }

    public function showeditGenre($id_genre){
        AuthHelper::checkLoggedIn();
        $genres = $this->modelgenre->get($id_genre);
        $game = $this->modelgames->getAll();
        $this->view->showEditGenre( $genres, $game, $id_genre);
    }

    public function updateGenre($id_genre){
        AuthHelper::checkLoggedIn();
        $nombre = $_POST['nombre'];
        if ($nombre != ''){
            $this->modelgenre->update($id_genre, $nombre);
            header("Location: " . BASE_URL . 'generos');
        } else{
            $this->view->showError("Debe completar todos los campos obligatorios");
        }

    }
}
