<?php
require_once 'models/GameModel.php';
require_once 'models/UserModel.php';
require_once 'api/APIView.php';


class InvitedApiController
{

    private $model;
    private $usermodel;
    private $view;
    private $data;

    public function __construct()
    {
        $this->model = new GameModel();
        $this->usermodel = new UserModel();
        $this->view = new APIView();
        $this->data = file_get_contents("php://input");
    }

    function getData()
    {
        return json_decode($this->data);
    }

    public function getCommentsForGame($params = [])
    {

        $id_game = $params[':ID'];
        $comments = $this->usermodel->getAllCommentary($id_game);
        $this->view->response($comments, 200);
    }
    public function insertCommentary($params = [])
    {
        $comment = $this->getData();

        $inserted = $this->usermodel->insertCommentary($comment->commentary, $comment->vote, $comment->username, $comment->id_game);
        if ($inserted){
            $this->view->response($comment, 200);
        } else {
            $this->view->response("Error", 500);
        }

    }
}
