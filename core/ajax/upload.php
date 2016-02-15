
<?php

$uploaddir = 'upload/';
$uploadfile = $uploaddir . md5(time()).basename($_FILES['userfile']['name']);


$r='Загрузки небыло';
if (move_uploaded_file($_FILES['userfile']['tmp_name'], $uploadfile)) {
    $res[0]=$uploadfile;
    $res[2]=basename($_FILES['userfile']['name']);
    $res[3]=0;
} else {
    $res[3]=1;
}
chdir('../');
require_once("model.php");
$model = Model::getModel();
$model->log("FILE_PATH=".$uploadfile);
$items[50177][0]= "core/ajax/".$uploadfile;
$items[50142][0]= basename($_FILES['userfile']['name']);
$file = new Resource2($items);
$id = $model->insert($file,1018);//1018.Файл
$model->log("FILE=".$id);
    $res[1]=$id;
echo json_encode($res);
?>
