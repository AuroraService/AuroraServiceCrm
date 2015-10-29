<?php
chdir('../../');
require_once('core/model.php');
$model = Model::getModel();

$action = $_REQUEST['action'];
$domain = $_REQUEST['domain']; 
$id =  $_REQUEST['id'];
$json = json_decode($_POST['data'], true);
//echo 'Hash ='.$json[50126][50127];
if ($action==""){
	$action=$json[5058];
}
//echo '=====</br>';
//print_r($_POST['data']);
//echo '=====</br>';
//echo $action;
//return 'Hello!';
//echo 'Sel:'.$json[50128];

require_once('main.controller.php');
$mainController = Controller::getController();
//echo 'UserId = '.$json[50126][5079];
$mainController->loadPermissions($json[50126][5079]);
switch ($action) {
    case '2315':
		$params[5048] = $json[50128]; //5048.Идентификатор
		$params[50130] = $json[50130]; //50130.Счетчик форм
		$params[5058] = 2315; //5058.Действие, 2315.Просмотр сущности
		$mainController -> executeAction(2315, $params);//2315.Просмотр сущности
        break;
	case '2316':
		//echo 'Step';
		$params[50129] = $json[50129];//50129.Выделенная форма
		$formCounter = $params[50129];
		$params[5058] = $json[$formCounter][5058];//5058.Действие
		$params[5095] = $json[$formCounter][5095];//5095.Фильтр
		$params[5055] = $json[$formCounter][5055];//5055.Домен
		$startRow = $json[$formCounter][50147];//50147.Ограничение строк;

		//echo 'Форма:'.$params[50129];

		$f1[50109] = '%COLUMN%='.$json[$formCounter][50109];//50109.Идентификатор набора параметра
		$filters = $model->getResources(163,$f1);//163.Фильтр
		foreach($filters as $filter){
			$f2[5048] = '%COLUMN%='.$params[5095][$filter->items[5095]];//5095.Фильтр [5095]->[$filterId]->[$fieldId]
			$field = $model->getResources(162,$f2);//162.Поле фильтра
			$expFilters[$filter->items[5082]]=$field[0]->items[5096];//5096.SQL
		}
		//echo $expFilters[50147];
		if (!empty($expFilters[50147]) && !empty($startRow)) $expFilters[50147] = $startRow.','.$expFilters[50147];

		$params[5095] = $expFilters;//5095.Фильтр
		$mainController -> executeAction(2316, $params);//2316.Просмотр сущностей класса
		break;
	case '2343':
		break;
	case '2345':
		$selectedForm = $json[50129];
		echo 'Form:'.$selectedForm;
		$resource2 = new Resource2($json[$selectedForm]);
		//print_r($resource2);
		$params[5013] = $resource2;//5013.Объект
		$params[5065] = $json[$selectedForm][5065];//5065.Форма
		$params[5055] = $json[$selectedForm][5055][0];//5055.Домен
		$mainController -> executeAction(2345, $params);//2345.Создание сущности
		break;
	case '2334':
		$selectedForm = $json[50129];
		echo 'Form:'.$selectedForm;
		$resource2 = new Resource2($json[$selectedForm]);
		//print_r($resource2);
		$params[5013] = $resource2;//5013.Объект
		$params[5065] = $json[$selectedForm][5065];//5065.Форма
		$params[5055] = $json[$selectedForm][5055][0];//5055.Домен
		$mainController -> executeAction(2334, $params);//2334.Изменение сущности
        break;
    case '2336':
        echo search($json);
        break;
    case '2340':
        echo  ShowFindForm($json);
        break;
	case '2342':
		//echo 'Step';
		$model = Model::getModel();
		$domain = $model->getResProperty($json[5055][0],507); //507.Представление
		$params[5055] = $domain; //5055.Домен
		$params[5091] = $json[5091][0]; //5091.Поисковый запрос
		$params[5058] = 2342;
		$mainController -> executeAction(2342, $params);//2342.Поиск сущностей(обработка запроса)
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
		$rets=$rets.'<a href="#" class="list-group-item popup_find_list_item'.GetActive($result->items[5048], $json[5099], '"popup_list'.$i.'"').'" onclick="popup_list_change_item(this)" targetId="'.$json[50104].'" itemId="'.$result->items[5048].'" val="'.$result->items[501].'" id="popup_list'.$i.'">'.$result->items[501].'<br />'.$result->items[50136].'</a>';
		$i++;
	}
} else {
	$rets='<span style="margin: 10px 0 0 10px;">Результатов нет</span>';
}

return $rets;
}


?>