<?php
chdir('../../');
require_once('core/model.php');
$model = Model::getModel();

$action = $_REQUEST['action'];
$domain = $_REQUEST['domain'];
$id =  $_REQUEST['id'];

//$json = json_decode($_POST['data'], true);
//if (!empty($json[5058])) $action = $json[5058];

switch ($action) {
    case '2315':
        eshow($id);
        break;
	case '2334':
        //eshow($id);
		$json = json_decode($_POST['data'], true);
		entityEdit($json,$model);
        break;
}

function eshow($id){
	require_once('core/eshow.controller.php');
	$controller = new EshowController();
	$params[5048] = $id;
	//$params[5014] = $elemId;
	$controller->execute($params);
}

function entityEdit($data,$model){
	//file_put_contents ('log', 'step0',FILE_APPEND);
	$type = $model->getResProperty($data[5048][0],5051,0,0);
	//file_put_contents ('log', 'step1',FILE_APPEND);
	entityEdit2($type, $data, $model);
	//file_put_contents ('log', 'step3',FILE_APPEND);
	$type2 = $model->getResProperty($type,5061,0); //5061.Подкласс
	if (!empty($type2)) entityEdit2($type2, $data, $model);
}

function entityEdit2($type, $data, $model){
	$filters[5083]=$type;
	$props = $model->getResource(1511, $filters);
	foreach ($props as $propId => $prop){
		$valCounter = 0;
		file_put_contents ('log', 'propId='.$propId.';',FILE_APPEND);
		if ($prop->items[5082] != 5048) foreach ($data[$prop->items[5082]] as $val){
			$model->updateProperty($data[5048][0],$prop->items[5082],$data[$prop->items[5082]][$valCounter]);
			$valCounter++;
		}
	}
}

?>