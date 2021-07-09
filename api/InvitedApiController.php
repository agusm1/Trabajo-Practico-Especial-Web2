<?php
require_once 'models/GameModel.php';
require_once 'models/UserModel.php';
require_once 'models/ImageModel.php';
require_once 'models/CommentModel.php';
require_once 'api/APIView.php';


class InvitedApiController
{

    private $model;
    private $usermodel;
    private $view;
    private $data;
    private $imagemodel;

    public function __construct()
    {
        $this->model = new GameModel();
        $this->usermodel = new UserModel();
        $this->imagemodel = new ImageModel();
        $this->commentmodel = new CommentModel();
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
        $comments = $this->commentmodel->getAll($id_game);
        $this->view->response($comments, 200);
    }
    public function insertCommentary($params = [])
    {

        $comment = $this->getData();
        $inserted = $this->commentmodel->insert(
            $comment->commentary,
            $comment->vote,
            $comment->username,
            $comment->id_game
        );
        if ($inserted) {
            $this->view->response($comment, 200);
        } else {
            $this->view->response("Error", 500);
        }
    }

    public function deleteComment($params = []){
        $id_commentary = $params[':ID'];
        $comment =$this->commentmodel->delete($id_commentary);
        if ($comment) {
            $this->view->response($comment, 200);
        } else {
            $this->view->response("Error", 500);
        }
    }

    public function getImages($params = [])
    {

        $id_game = $params[':ID'];
        $images = $this->imagemodel->getImages($id_game);
        $this->view->response($images, 200);
    }

    public function deleteImage($params = [])
    {
        $id_image = $params[':ID'];
        $image = $this->imagemodel->delete($id_image);
        if ($image) {
            $this->view->response($image, 200);
        } else {
            $this->view->response("Error", 500);
        }
    }
}
