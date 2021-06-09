<?php
require_once 'libs/Router.php';
require_once 'api/task-api.controller.php';

// crea el router
$router = new Router();

// define la tabla de ruteo
$router->addRoute('tareas', 'GET', 'TaskApiController', 'getTasks');
$router->addRoute('tarea/:ID', 'GET', 'TaskApiController', 'getTask');
$router->addRoute('tarea', 'POST', 'TaskApiController', 'addTask');


// rutea
$router->route($_REQUEST['resource'], $_SERVER['REQUEST_METHOD']);