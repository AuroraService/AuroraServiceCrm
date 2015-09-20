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
		file_put_contents ('log', 'stepx'.$json[5048][0],FILE_APPEND);
		$resource2 = new Resource2($json);
		$model->update($resource2);
		//entityEdit($json,$model);
        break;
	return 0;
}

function eshow($id){
	require_once('core/eshow.controller.php');
	$controller = new EshowController();
	$params[5048] = $id;
	//$params[5014] = $elemId;
	$controller->execute($params);
}


?>