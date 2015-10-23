<?php
class EshowController {
	public function execute($iParams){
		if (empty($iParams[50130])) $formCounter = 1; else $formCounter = ++$iParams[50130];
		$model = Model::getModel();
		$id = $iParams[5048]; //5048.Идентификатор
        //$elemId = $iParams[5014]; //5014.Исполнитель
		$actionId = $iParams[5058];
		if (empty($elemId) && !empty($id)) {
			$domain = $model->getResProperty($id,5051,0); //5051.Type
			$elemId=$model->getForm($actionId,$domain);
		}
		echo ' <script language ="JavaScript">var data = [];  t=[]; t[5079]= '.$_SESSION['id'].'; t[50127]="'.$_SESSION['hash'].'";data[50126]=t; data[50129]='.$formCounter.'; data[50130]='.$formCounter.'; data['.$formCounter.']=[];data['.$formCounter.'][5065] = '.$elemId.';</script>';
		$this->printJavaScript(5055,$iParams[5055],0,0,$formCounter);//5055.Домен
		$val = $model->getColumns2($elemId);
		$viewerData = array();
		$viewerData[5093] = $val->cols;
		$lineNum = 0;
		if (!empty($id)) $resource2 = $model->getCurrentResource2($id);
		else {echo '<script language ="JavaScript">data['.$formCounter.'][5051] = mas0;</script>';}

		if (!empty($val->cols)) foreach ($val->cols as $col_value) {
			$propId = $col_value->property;
			
			$params[5042] = $col_value->editable; //5042.Редактируемость
			$params[507] = $col_value->domain; //507.Представление
			$params[5082] = $col_value->property; //5082.Идентификатор свойства
			$params[5088] = 0; //5088.Номер значение
			$params[50129] = $formCounter;
			
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
					$this->printJavaScript($col_value->property, $idValue, $lineNum + 1, $valueCounter,$formCounter);
			} else {
				$this->printJavaScript($col_value->property, null, $lineNum + 1, 0,$formCounter);
				$cell = new Cell(null,null);
				$viewerData[50115][$propId][0]=$viewer->show($cell, $params);
			}
			$lineNum++;
		}

		require_once('templates/eshow.template.php');

	}
	
	private function printJavaScript($propId,$propValue,$propCounter,$valueCounter,$formCounter){
		echo '<script language ="JavaScript">';
		$mas = 'mas'.$formCounter.'_'.$propCounter;
		if ($valueCounter == 0) echo "var ".$mas." = [];";
		echo $mas."[".$valueCounter."]='".$propValue."';
		data[".$formCounter."][".$propId."] = ".$mas.";";
		echo "</script>";
	}


}
?>