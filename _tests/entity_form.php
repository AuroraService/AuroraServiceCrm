<?php
chdir('../');
require_once('main.controller.php');

$controller = new Controller();

$params[5055]=111;//5055.Домен
$params[50178]=1221;//50178.Отображатель
$params[5095][5048]='%COLUMN%=1154';//5095.Фильтры
$params[50186][5048]=15032;

$model = Model::getModel();
$model->user_id = 15011;
$model->loadPermissions();

$ret = $controller->executeAction(2354,$params);

echo $ret[0];
?>

<!--


