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
		require_once('main.controller.php');
		$mainContriller = Controller::getController();
		$params[5058] = $json[5058];
		$params[5095] = $json[5095];
		$params[50109] = $json[50109];
		$f1[50109] = '%COLUMN%='.$params[50109];
		//echo $params[50109];
		//echo $params[5058];
		$filters = $model->getResources(163,$f1);
		//echo "Point2";
		foreach($filters as $filter){
			//echo "PointN";
			$f2[5048] = '%COLUMN%='.$params[5095][$filter->items[5095]];
			$field = $model->getResources(162,$f2);
			$expFilters[$filter->items[5082]]=$field[0]->items[5096];
			//echo $params[5095][$filter->items[5095]];
			//print_r( $field->items[5096]);
		}
		//echo "PointEnd";
		//print_r($expFilters);
		$params[5095] = $expFilters;
		$mainContriller -> executeAction(2316, $params);
		//print_r($params[5095]);
		//$filters = $model->getResource();

		//$controller = new SetController();
		//$controller->execute($params);
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
		if (!empty($json[5048][0])) $model->update($resource2,$json[5065]);//5065.Форма
		else $model->insertGlobal($resource2, null, $json[5055][0]); //5055.Домен
		//entityEdit($json,$model);
        break;
    case '2336':
        echo search($json);
        break;
    case '2340':
        echo  ShowFindForm($json);
        break;
	return 0;
}

function ParseForSearch($str){
  $arr= preg_split("/[\s,]+/", $str);
  $c=0;
  foreach ($arr as $ar ){
  if ($c==0){
  	$rets='%COLUMN% LIKE "%'.$ar.'%"';
  } else {
    if($ar!="") $rets=$rets.' AND %COLUMN% LIKE "%'.$ar.'%"';
  }
  $c++;
  }
  if ($str=="") $rets=null;
  return $rets;
}

function eshow($id){
	require_once('core/eshow.controller.php');
	$controller = new EshowController();
	$params[5048] = $id;
	$params[5058] = 2315;
	//$params[5014] = $elemId;
	$controller->execute($params);
}


function ShowFindForm($json){
$rets='<div class="popup_btn_close" onclick="click_close_btn(this)"></div>
       <input type="text" class="form-control control_form_1" placeholder="Поиск" oninput="InputKeyUp(find_list_div, this, 2336, '.$json[5055].')" style="margin-bottom: 10px;">
       <div class="list-group" id="find_list_div" style="overflow-y: scroll; height:'.$json[9091].'; border: 1px solid rgb(204,204,204);"></div>';
return $rets;
}

function search($json){

	function GetActive($id, $id2,$elem){
        if ($id==$id2){
        	$rs=" active";
        	echo '<span style="display: none" id="window_popup_hidden" sel_elem='.$elem.'></span>';
        } else {
        	$rs="";
        }
		return $rs;
	}

	$model = Model::getModel();
	$type = $json[5055];
	$filters[50100]=ParseForSearch($json[9092]);
	$results = $model->getResourcesGen($filters,$type);

	$i=0;
	if (!empty($results)){ //$json[50104]
	foreach ($results as $result ){
		$rets=$rets.'<a href="#" class="list-group-item popup_find_list_item'.GetActive($result->items[5048], $json[5099], '"popup_list'.$i.'"').'" onclick="popup_list_change_item(this)" targetId="'.$json[50104].'" itemId="'.$result->items[5048].'" val="'.$result->items[501].'" id="popup_list'.$i.'">'.$result->items[501].'<br />'.$result->items[50100].'</a>';
		$i++;
	}
} else {
	$rets='<span style="margin: 10px 0 0 10px;">Результатов нет</span>';
}

return $rets;
}


?>