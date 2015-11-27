<?php
class EshowController {
	public function execute($iParams){
		if (empty($iParams[50130])) $formCounter = 1; else $formCounter = ++$iParams[50130];
		$model = Model::getModel();
		$id = $iParams[5048]; //5048.Идентификатор
        $elemId = $iParams[5014]; //5014.Исполнитель
		$actionId = $iParams[5058];
		if ($iParams[15132] == 1) $executeAction = 2345; else $executeAction = 2334;//2345.Создание сущности, 2334.Изменение сущности

		$userId = $_SESSION['id'];
		if (empty($userId)) $userId = $iParams[50126][5079];//50126.Технические параметры, 5079.Пользователь

		if (empty($elemId) && !empty($id)) {
			$domain = $model->getResProperty($id,5051,0); //5051.Type
			$elemId=$model->getForm($actionId,$domain);
		}
		echo ' <script language ="JavaScript">var data = {};  t={}; t["5079"]= '.$userId.'; t["50127"]="'.$_SESSION['hash'].'";data["50126"]=t; data["50129"]='.$formCounter.'; data["50130"]='.$formCounter.'; data["'.$formCounter.'"]={};data["'.$formCounter.'"]["5065"] = '.$elemId.'; data["'.$formCounter.'"]["'.$id.'"]={};data["'.$formCounter.'"]["5055"]='.$domain.'</script>';
		//$this->printJavaScript(5055,$iParams[5055],0,0,$formCounter);//5055.Домен
		$val = $model->getColumns2($elemId);
		$viewerData = array();
		$viewerData[5093] = $val->cols;
		$lineNum = 0;
		if (!empty($id)) $resource2 = $model->getCurrentResource2($id);
		else {echo '<script language ="JavaScript">data['.$formCounter.'][5051] = mas'.$formCounter.'_0;</script>';}

		if (!empty($val->cols)) foreach ($val->cols as $col_value) {
			$propId = $col_value->property;
			
			$params[5042] = $col_value->editable; //5042.Редактируемость
			$params[507] = $col_value->domain; //507.Представление
			$params[5082] = $col_value->property; //5082.Идентификатор свойства
			$params[5088] = 0; //5088.Номер значение
			$params[50129] = $formCounter;
			$params[5048] = $id; //5048.Идентификатор сущности
			
			$params2[5055] = $col_value->domain; //5055.Домен

			
			$viewer = $model->getViewer($col_value->viewer,$params2,$model);

			if (!empty($resource2->items[$propId])) foreach ($resource2->items[$propId] as $valueCounter =>$propValue) {
					//$propId = $col_value->property;
					if ($col_value->type == 0) {
						$idValue = $resource2->items[$propId][$valueCounter];
						$value = $model->getResourceValue($idValue, $col_value->value_template);
					} else {
						$value = $resource2->items[$propId][$valueCounter];
						$idValue = $value;
					}
					$cell = new Cell($idValue, $value);
					$echo = $viewer->show($cell, $params);
					$viewerData[50115][$propId][$valueCounter]=$echo;//50115.Набор свойств для отображения
					$this->printJavaScript($formCounter,$id,$col_value->property, $valueCounter,$idValue);
			} else {
				$this->printJavaScript($formCounter,$id,$col_value->property, 0,null);
				$cell = new Cell(null,null);
				$viewerData[50115][$propId][0]=$viewer->show($cell, $params);
			}
			$lineNum++;
		}

		require_once('templates/eshow.template.php');

	}

	private function printJavaScript($formCounter, $entId, $propId, $valueCounter, $propValue){
		echo '<script language ="JavaScript">';
		$mas = 'mas'.$formCounter.'_'.$entId.'_'.$propId;
		if ($valueCounter == 0) echo "var ".$mas." = {};";
		echo $mas."[".$valueCounter."]='".$propValue."';
		data['".$formCounter."']['". $entId."']['".$propId."'] = ".$mas.";";
		echo "</script>";
	}


}
?>