<?php
//file_put_contents("log","start");
//error_reporting(0);
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
if (empty($action)) $action=$json[$json[50129]][5058];
//$action = 2316;
//echo "Test";
require_once('main.controller.php');
$mainController = Controller::getController();
//echo 'USER:'.$json[50126][5079];
$mainController->loadPermissions($json[50126][5079]);

file_put_contents("log",'ActionId='.$action);
switch ($action) {
    case '2315':
		$params[5048] = $json[50128]; //5048.Идентификатор
		$params[50130] = $json[50130]; //50130.Счетчик форм
		$params[5058] = 2315; //5058.Действие, 2315.Просмотр сущности
		$params[50126][5079] = $json[50126][5079];
		$mainController -> executeAction(2315, $params);//2315.Просмотр сущности
        break;
	case '2316':
		$params[50129] = $json[50129];//50129.Выделенная форма
		$formCounter = $params[50129];
		$params[5058] = $json[$formCounter][5058];//5058.Действие
		$params[5095] = $json[$formCounter][5095];//5095.Фильтр
		$params[5055] = $json[$formCounter][5055];//5055.Домен
		$params[50148] = $json[$formCounter][50148];//50148.Начальная позиция
		$params[50149] = $json[$formCounter][50149];//50149.Флаг печати строки паддинга
		$params[50126][5079] = $json[50126][5079];//5079.Пользователь
		$startRow = $json[$formCounter][50148];//50148.Начальная позиция

		$f1[50109] = '%COLUMN%='.$json[$formCounter][50109];//50109.Идентификатор набора параметра
		$filters = $model->getResources(163,$f1);//163.Фильтр
		foreach($filters as $filter){
			$f2[5048] = '%COLUMN%='.$params[5095][$filter->items[5082]];//5095.Фильтр [5095]->[$filterId]->[$fieldId]
			$field = $model->getResources(162,$f2);//162.Поле фильтра
			$expFilters[$filter->items[5082]]=$field[0]->items[5096];//5096.SQL
			//print_r($expFilters);
		}
		$params[50147] = $expFilters[50147];//50147.Количество строк
		if (!empty($expFilters[50147]) && !empty($startRow)) $expFilters[50147] = $startRow.','.$expFilters[50147];

		$params[5095] = $expFilters;//5095.Фильтр
		$mainController -> executeAction(2316, $params);//2316.Просмотр сущностей класса
		break;
	case '2345':

		$selectedForm = $json[50129];
		//echo 'Create'.$json[$selectedForm][5066];
		$resource2 = new Resource2($json[$selectedForm]);
		$params[5013] = $resource2;//5013.Объект
		$params[5065] = $json[$selectedForm][5065];//5065.Форма
		$params[5055] = $json[$selectedForm][5055];//5055.Домен
		$mainController -> executeAction(2345, $params);//2345.Создание сущности
		break;
	case '2334':
		//echo 'Step';
		$selectedForm = $json[50129];
		$selectedEntity = $json[50146];
		if (empty($json[$selectedForm][$selectedEntity][5048][0])) $json[$selectedForm][$selectedEntity][5048][0] = $selectedEntity;
		$resource2 = new Resource2($json[$selectedForm][$selectedEntity]);
		$params[5013] = $resource2;//5013.Объект
		$params[5065] = $json[$selectedForm][5065];//5065.Форма
		$params[5055] = $json[$selectedForm][5055];//5055.Домен
		//echo 'Domain='.$params[5055];
		$str=json_encode($json[$selectedForm][$selectedEntity]);
		file_put_contents("log",'RESOURCE='.$str,FILE_APPEND);
		$mainController -> executeAction(2334, $params);//2334.Изменение сущности
		$ret[0]='<br>';
		echo json_encode($ret);
		
		//$result = $mainController -> executeAction(2334, $params);//2354.Отображение списка
        break;
    case '2336':
		//$params = $json['-1']['50186'];
		$params[5058] = 2336;
		$selectedForm = $json['50129'];
		$params['5013']=$json[$selectedForm]['5013'];
		$params['5082']=$json[$selectedForm]['5082'];
		$params['5055']=$json[$selectedForm]['5055'];
		$params['5066']=$json[$selectedForm]['5066'];
		$params['50178']=$json[$selectedForm]['50178'];
		$params['5091']=$json[$selectedForm]['5091'];
		$params['50185']=$json[$selectedForm]['50185'];//50185.Выделенная форма результата
		$params['50202'] = $json[$selectedForm]['50202'];
	
		$ret =  $mainController -> executeAction(2336, $params);//2336.Печать содержимого поиска выбора
		echo json_encode($ret);
        //echo search($json); // Не удалять
        break;
    case '2340':
		file_put_contents("log","\nACTION=2340",FILE_APPEND);
		$params = $json['-1']['50186'];
		$params[50202] = $json['-1']['50202'];
		$params[5058] = 2340;
		//$params[]
		$ret = $mainController -> executeAction(2340, $params);//2340. Печать формы поиска выбора
		file_put_contents("log","\nRESULT:".json_encode($ret),FILE_APPEND);
		echo json_encode($ret);
        //echo  ShowFindForm($json); // Не удалять
        break;
    case '2354':
        //file_put_contents("log","2354");
        $selectedForm=$json[50129];
		$nestedForm = $json[$selectedForm][50198];
		if (!empty($nestedForm)) $params[50186]=$json[$nestedForm];
		else $params[50186]=$json[$selectedForm][50186];
        $params[5055]=$json[$selectedForm][5055];//5055.Домен
        $params[5091]=$json[5091];//5091.Поисковый запрос
        $params[50178]=$json[$selectedForm][50178];//50178.Отображатель
        $params[5095]=$json[$selectedForm][5095];//5095.Фильтры
		$params[50186][50202]=$json[$selectedForm][50202];
		$params[50186][50130]=$json[50130];
		//file_put_contents("log",$params[5055].",".$params[5091].",".$params[50178].",".$params[5095]);
        //echo $json[$selectedForm][50178];
        //$ret=json_encode($mainController->executeAction(2354, $params));//2354.Получение списка
		file_put_contents("log","\nFLAG1".$params[5055].','.$params[5091].','.$params[50178].','.',',FILE_APPEND);
        $ret=$mainController->executeAction(2354, $params);//2354.Получение списка
		$ret[0]=$ret[0].' ';
        //file_put_contents("log","END".$ret[0],FILE_APPEND);
        //$ret['1']='rfdswfds';
        //$ret['2']='123';
        //$ret['3']['4']=5;
		file_put_contents("log","\nHTML=".$ret[0],FILE_APPEND);
		file_put_contents("log","\nERROR:".$php_errormsg,FILE_APPEND);
        $ret=json_encode($ret);
		//$error = 0/0;
		file_put_contents("log","\nERROR:".$php_errormsg,FILE_APPEND);

        echo $ret;
        //return $ret;
        //echo 'Type='.$json[5055];
        //echo 'Query='.$json[5091];
        //echo 'Viewer='.$json[50178];
        //echo 'List';
        break;
	case '2359':
		$selectedForm = $json[50129];
		$selectedEntity = $json[50146];
		$viewerId = $json[$selectedForm][50178];
		//$ret[0]='Viewer';
		$model=Model::getModel();
		$model->log("ACTION=2359,Viewer=".$viewerId.",SelectedForm=".$json[50129].",SelectedEntity=".$json[50146]);
		$viewer=$model->getViewer($viewerId,$params,$model);
		$cell = new Cell(null,null);
		$echo = $viewer->show($cell,$params);
		//$model->log("ACTION=2359,RESULT=".$echo);
		$ret[0] = $echo;
		$ret[1]=' ';
		//$model->log("ACTION=2359,RESULT2=".json_encode($ret));
		$ret = json_encode($ret);
		echo $ret;

		break;

	case '2342':
		//echo 'Step';
		$model = Model::getModel();
		$domain = $model->getResProperty($json[5055][0],507); //507.Представление
		$params[5055] = $domain; //5055.Домен
		$params[5091] = $json[5091][0]; //5091.Поисковый запрос
		$params[5058] = 2342;
        $mainController->executeAction(2342, $params);//2342.Поиск сущностей(обработка запроса)
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