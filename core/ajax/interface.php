<?php
chdir('../../');
require_once('core/model.php');
$model = Model::getModel();

$action = $_REQUEST['action'];
$domain = $_REQUEST['domain']; 
$id =  $_REQUEST['id'];
$json = json_decode($_POST['data'], true);
if ($action==""){
	$action=$json[5058];
}
//echo "123";
//$json = json_decode($_POST['data'], true);
//if (!empty($json[5058])) $action = $json[5058];
//file_put_contents ('log', 'Search',FILE_APPEND);
switch ($action) {
    case '2315':
        eshow($id);
        break;
	case '2316':
		$params[5058] = $json[5058];
		$params[5095] = $json[5095];
		$f1[5058] = '%COLUMN%='.$params[5058];
		$filters = $model->getResource(163,$f1);
		foreach($filters as $filter){
			$f2[5048] = '%COLUMN%='.$params[5095][$filter->items[5095]];
			$field = $model->getResource(162,$f2);
			$expFilters[$filter->items[5082]]=$field[0]->items[5096];
			//echo $params[5095][$filter->items[5095]];
			print_r( $field->items[5096]);
		}
		$params[5095] = $expFilters;
		//print_r($params[5095]);
		//$filters = $model->getResource();
		require_once('core/set.controller.php');
		$controller = new SetController();
		$controller->execute($params);
		break;
	case '2333':
		//echo "123";
		//echo $json[5055][0];
		$domain = $model->getResProperty($json[5055][0],507); //507.Ïðåäñòàâëåíèå
		$model->find($json[5091][0], $domain);

		require_once('core/show.controller.php');
		$controller = new ShowController();
		$action = $model->getLeafAction(2316, $domain);
		//print_r($action);
		//$formId = $model->getEShowElement($domain);
		$params[5058] = $action->items[5048];
		$params[5091] = 1;
		$controller->execute($params);
		//echo "123";
		//file_put_contents ('log', 'Search',FILE_APPEND);
		break;
	case '2334':
        //eshow($id);
		//file_put_contents ('log', 'stepx'.$json[5048][0],FILE_APPEND);
		$resource2 = new Resource2($json);
		if (!empty($json[5048][0])) $model->update($resource2);
		else $model->insert($resource2);
		//entityEdit($json,$model);
        break;
    case '2336':
        echo search($json);
        break;
	return 0;
}

function eshow($id){
	require_once('core/eshow.controller.php');
	$controller = new EshowController();
	$params[5048] = $id;
	$params[5058] = 2315;
	//$params[5014] = $elemId;
	$controller->execute($params);
}

function search($json){
$rets='<div class="popup_btn_close" onclick="click_close_btn()"></div>
       <input type="text" class="form-control" placeholder="Поиск" style="margin-bottom: 10px;">
       <div class="list-group" id="find_list_div" style="overflow-y: scroll; max-height:'.$json[9091].'; border: 1px solid rgb(204,204,204);">';
    $i=0;
    while($i<100){ 
      $i++;
      $rets=$rets.'<a href="#" class="list-group-item popup_find_list_item" onclick="popup_list_change_item(this)" id="popup_list<? echo $i; ?>">Тестовая запись</a>'; 
    }
$rets=$rets.'</div>';
return $rets;
}


?>