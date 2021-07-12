<?php

require_once('Model.php');

class ImageModel extends Model
{

    public function getImages($id_game)
    {
        $query = $this->getDb()->prepare("SELECT image.id_image, image.path FROM `image` JOIN `game` ON image.id_match = game.id_game WHERE game.id_game = ?");
        $query->execute([$id_game]);
        return $query->fetchAll(PDO::FETCH_OBJ);
    }

    public function delete($id_image)
    {
        $query = $this->getDb()->prepare('DELETE FROM image WHERE id_image = ?');
        $query->execute([$id_image]);
        return $query;
    }

    public function upload($id_game)
    {
        $query = $this->getDb()->prepare('INSERT INTO image (path, id_match) values (?,?)');
        $cant = count($_FILES['imagesToUpload']['tmp_name']);
        for ($i=0; $i < $cant;  $i++) { 
            $ext = $this->get_extension($_FILES['imagesToUpload']['type'][$i]);
            $tmp_name = $_FILES['imagesToUpload']['tmp_name'][$i];
            $destino_final = "images/" . uniqid() . "." . $ext;
            move_uploaded_file($tmp_name, $destino_final);
            $r = $query->execute([$destino_final, intval($id_game)]);
        }
        return $r;
    }
    public function get_extension($str)
    {
        return end(explode("/", $str));
    }
}
