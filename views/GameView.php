<?php


require_once('View.php');
include_once('helpers/auth.helper.php');

class GameView extends View{

  public function __construct() {
    parent::__construct();
    $authHelper = new AuthHelper();
    $username = $authHelper->getLoggedUserName();
    $this->getSmarty()->assign('username', $username);
  }

  public function showformGenre($genres){
    $this->getSmarty()->assign('title','Crear genero');
    $this->getSmarty()->assign('genres', $genres);
    
    $this->getSmarty()->display('templates/formGenre.tpl'); // muestro el template
  }

  public function showformGame($genres){
    $this->getSmarty()->assign('title','Crear juego');
    $this->getSmarty()->assign('genres', $genres);
    $this->getSmarty()->display('templates/formGame.tpl'); // muestro el template
  }

  public function showGenre($games, $genres){
      $this->getSmarty()->assign('title','Listado de generos');
      $this->getSmarty()->assign('genres', $genres);

    $this->getSmarty()->display('templates/genresList.tpl'); // muestro el template
  }

  public function home($games, $genres){

    $this->getSmarty()->assign('title','Home');
    $this->getSmarty()->assign('games', $games);
    $this->getSmarty()->assign('genres', $genres);
    $this->getSmarty()->display('templates/gameList.tpl'); // muestro el template
  }

  public function showGaforGe($gamesfges, $genres){

    $this->getSmarty()->assign('title','Filtrado de juegos por genero');
    $this->getSmarty()->assign('gamefge', $gamesfges);
    $this->getSmarty()->assign('genres', $genres);

    $this->getSmarty()->display('templates/listForGenre.tpl');
  }

  public function viewGame($game, $genres){
    $this->getSmarty()->assign('title', 'Detalle');
    $this->getSmarty()->assign('game', $game);
    $this->getSmarty()->assign('genres', $genres);

    $this->getSmarty()->display('templates/detail.tpl');

  }

  public function showEdit($game, $genres, $id_game){
    $this->getSmarty()->assign('title', 'Editar juego');
    $this->getSmarty()->assign('game', $game);
    $this->getSmarty()->assign('genres', $genres);
    $this->getSmarty()->assign('id_game', $id_game);
    $this->getSmarty()->display('templates/gameEdit.tpl');

  }

  public function showError($msg){
    $this->getSmarty()->assign('title', 'Error');
    $this->getSmarty()->assign('msg', $msg);
    $this->getSmarty()->display('templates/error.tpl');  
  }

  public function showEditGenre($genres, $game,  $id_genre){
    $this->getSmarty()->assign('title', 'Editar genero');
    $this->getSmarty()->assign('genre', $genres);
    $this->getSmarty()->assign('game', $game);
    $this->getSmarty()->assign('id_genre', $id_genre);
    $this->getSmarty()->display('templates/genreEdit.tpl');

  }
}
