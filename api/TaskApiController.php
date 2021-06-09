<?php
require_once 'models/TaskModel.php';
require_once 'api/APIView.php';


class TaskApiController {

    private $model;
    private $view;
    private $data;

    public function __construct() {
        $this->model = new TaskModel();
        $this->view = new APIView();
        $this->data = file_get_contents("php://input");
    }

    function getData(){
        return json_decode($this->data);
    }

    public function getTask($params = []) {
        if(empty($params)) {
            $tasks = $this->model->getAll();
            $this->view->response($tasks, 200);
        }
        else {
            $idTask = $params[':ID'];
            $task = $this->model->getTask($idTask);
            if ($task)
                $this->view->response($task, 200);
            else
                $this->view->response("no existe tarea con id {$idTask}", 404);
        }
    }

    public function deleteTask($params = []) {
        $idTask = $params[':ID'];
        $task = $this->model->getTask($idTask);
        if(empty($task)) {
            $this->view->response("no existe tarea con id {$idTask}", 404);
            die;
        }
        $this->model->deleteTask($idTask);
        $this->view->response("La tarea con id:  {$idTask} se elimino correctamente", 200);
    }

    public function addTask() {
        $body = $this->getData();

        $title = $body->title;
        $priority = $body->priority;
        $description = $body->description;
        $this->model->save($title, $priority, $description); //insert en nuestra BD
    }

    public function updateTask($params = []) {
        $task_id = $params[':ID'];
        $task = $this->model->getTask($task_id);

        if ($task) {
            $body = $this->getData();
            $titulo = $body->title;
            $descripcion = $body->description;
            $priority = $body->priority;
            $tarea = $this->model->updateTask($task_id, $titulo, $priority, $descripcion);
            $this->view->response("Tarea id=$task_id actualizada con éxito", 200);
        }
        else
            $this->view->response("Task id=$task_id not found", 404);
    }

}