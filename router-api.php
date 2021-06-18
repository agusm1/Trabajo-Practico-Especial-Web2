<?php
require_once 'libs/Router.php';
require_once 'api/InvitedApiController.php';

// crea el router
$router = new Router();

// define la tabla de ruteo
$router->addRoute('api/tareas', 'GET', 'InvitedApiController', 'getTasks');
$router->addRoute('api/tarea/:ID', 'GET', 'InvitedApiController', 'getTask');
$router->addRoute('tarea', 'POST', 'InvitedApiController', 'addTask');


// rutea
$router->route($_REQUEST['resource'], $_SERVER['REQUEST_METHOD']);
