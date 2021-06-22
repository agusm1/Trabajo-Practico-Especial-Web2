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
        echo 'Entra a la funcion insertar comentario';
        $id_game = $params[':ID'];

        $commentary = $_POST['commentary'];
        $vote = $_POST['vote'];
        $name_user = $_SESSION['USERNAME'];
        if ($commentary != '' && $vote != ''){
            $this->usermodel->insertCommentary($commentary, $vote, $id_game, $name_user);
        }

    }
}
