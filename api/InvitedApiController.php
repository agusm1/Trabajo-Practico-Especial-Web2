<?php
require_once 'models/GameModel.php';
require_once 'api/APIView.php';


class InvitedApiController {

    private $model;
    private $view;
    private $data;

    public function __construct() {
        $this->model = new GameModel();
        $this->view = new APIView();
        $this->data = file_get_contents("php://input");
    }

    function getData(){
        return json_decode($this->data);
    }



}