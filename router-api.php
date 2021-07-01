<?php
require_once 'libs/Router.php';
require_once 'api/InvitedApiController.php';

// crea el router
$router = new Router();

// define la tabla de ruteo
$router->addRoute('game/:ID', 'GET', 'InvitedApiController', 'getCommentsForGame');
$router->addRoute('new', 'POST', 'InvitedApiController', 'insertCommentary');
$router->addRoute('comment/:ID', 'DELETE', 'InvitedApiController', 'deleteComment');
$router->addRoute('images/:ID', 'GET', 'InvitedApiController', 'getImages');
$router->addRoute('image/:ID', 'DELETE', 'InvitedApiController', 'deleteImage');


// rutea
$router->route($_REQUEST['resource'], $_SERVER['REQUEST_METHOD']);
