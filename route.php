<?php
require_once 'controllers/InvitedController.php';
require_once 'controllers/UserController.php';
// Defino  la base url de forma dinamica 
define('BASE_URL', '//' . $_SERVER['SERVER_NAME'] . ':' . $_SERVER['SERVER_PORT'] . dirname($_SERVER['PHP_SELF']) . '/');

//Defino una accion por defecto
if (empty($_GET["action"])) {
    $_GET["action"] = "home";
}
// Toma la accion que manda el usuario y parsea los parametros
$action = $_GET["action"];
$parametros = explode("/", $action);

$InvitedController = new InvitedController();
$UserController = new UserController();
// Decide el camino que tomara la Tabla de Ruteo
switch ($parametros[0]) {
    case 'home': //Muestra el home
        $InvitedController->showHome();
        break;
    case 'login': //Muestra el formulario de inicio de sesion
        $UserController->showLogin();
        break;
    case 'formRegistro': //Muestra el formulario para registrar y enviar los datos del nuevo usuario
        $UserController->showRegistrar();
        break;
    case 'registrar': // Recibe los datos del formulario de registro y lo guarda en la BBDD 
        $UserController->registrar();
        break;
    case 'formgenre': // Muestra el formulario para registrar un nuevo genero
        $InvitedController->showformGenre();
        break;
    case 'creategenre': // Recibe los datos del formulario de crear genero y los guarda en la BBDD  
        $InvitedController->createGenre();
        break;
    case 'formgame': // Muestra el formulario para registrar un nuevo juego
        $InvitedController->showformGame();
        break;
    case 'createGame': // Recibe los datos del formulario de crear juego y los guarda en la BBDD
        $InvitedController->createGame();
        break;
    case 'formEdit': // Muestra el formulario para editar un  juego
        $InvitedController->showeditGame($parametros[1]);
        break;
    case 'updateGame': // Recibe los datos del formulario de editar juego y actualiza los cambios en la BBDD
        $InvitedController->updateGame($parametros[1]);
        break;
    case 'showformgenre': // Muestra el formulario para editar un genero
        $InvitedController->showeditGenre($parametros[1]);
        break;
    case 'updateGenre': // Recibe los datos del formulario de editar genero y actualiza los cambios en la BBDD
        $InvitedController->updateGenre($parametros[1]);
        break;
    case 'generos': // Muestra todos los generos
        $InvitedController->showGenre();
        break;
    case 'deleteGame': // Elimina el juego seleccionado
        $InvitedController->deleteGame($parametros[1]);
        break;
    case 'deleteGenre': // Elimina el genero seleccionado
        $InvitedController->deleteGenre($parametros[1]);
        break;
    case 'gamesforgenero': // Filtra los juegos del genero seleccionado
        $InvitedController->showGameForGenre($parametros[1]); //parametros[1] => id_genero
        break;
    case 'detail': // Muestra los detalles de un juego
        $InvitedController->showDetail($parametros[1]); //parametros[1] => id_game
        break;
    case 'verify': // Verifica que exista el usuario 
        $UserController->verify();
        break;
    case 'logout': // Cierra la sesion
        $UserController->logout();
        break;
    case 'admin': // Cierra la sesion
        $UserController->showAdmin();
        break;
    case 'modifyAdmin': // Cierra la sesion
        $UserController->modifyUser($parametros[1], $parametros[2]);
        break;
    case 'errorAdmin': // Cierra la sesion
        $UserController->errorAdmin();
        break;
    default:
        $InvitedController->showError();
}
