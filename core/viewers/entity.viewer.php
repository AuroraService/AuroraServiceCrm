<?php
class EntityViewerFabrica{
    public function getViewer($params, $model){
        return new EntityViewer($params, $model);
    }
}
class EntityViewer{
    public $model;
    public $items;
    public function __construct($params, $model){
        $this->model = $model;
    }
    public function show($cell, $params){
		$model=$this->model;
		$resId = $params[5048];
		$formId = $cell->items[5048][0];
		
		if (empty($iParams[50130])) $formCounter = 1; else $formCounter = ++$iParams[50130];
		
		$result['0']=$result['0'].'EntityViewer';
		$result['0']=$result['0'].$params[5048];
		$result['0']=$result['0'].$params[5055];
		$result['0']=$result['0'].$cell->items[5048][0];
		
		$result['1']=$result['1'].'data["50129"]='.$formCounter.'; data["50130"]='.$formCounter.'; data["'.$formCounter.'"]={};data["'.$formCounter.'"]["5065"] = '.$formId.'; data["'.$formCounter.'"]["'.$resId.'"]={};data["'.$formCounter.'"]["5055"]='.$params[5055].';';
		
		
		$resource2 = $model->getResource2Opt($resId,null);
		$result['0']=$result['0'].$resource->items[5048][0];
		
		
		$val = $model->getColumns2($formId);
		$viewerData = array();
		$viewerData[5093] = $val->cols;
		$lineNum = 0;
		//if (!empty($id)) $resource2 = $model->getCurrentResource2($id);
		//else {echo '<script language ="JavaScript">data['.$formCounter.'][5051] = mas'.$formCounter.'_0;</script>';}

		if (!empty($val->cols)) foreach ($val->cols as $col_value) {
			$propId = $col_value->property;
			
			$params[5013] = $resId;
			$params[5082] = $propId;
			$params[5055] = $col_value->domain; //507.Представление

			$params[5042] = $col_value->editable; //5042.Редактируемость
			$params[507] = $col_value->domain; //507.Представление
			$params[5082] = $col_value->property; //5082.Идентификатор свойства
			$params[5088] = 0; //5088.Номер значение
			$params[50129] = $formCounter;
			$params[5048] = $id; //5048.Идентификатор сущности
			
			$params2[5055] = $col_value->domain; //5055.Домен

			
			$viewer = $model->getViewer($col_value->viewer,$params2,$model);

			if (!empty($resource2->items[$propId])) foreach ($resource2->items[$propId] as $valueCounter =>$propValue) {
				$params[5066]=$propValue;

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
					$result[0]=$result[0].'ID_VALUE='.$idValue;
					$result[1]=$result[1].$this->printJavaScript($formCounter,$id,$col_value->property, $valueCounter,$idValue);
			} else {
				$result[1]=$result[1].$this->printJavaScript($formCounter,$id,$col_value->property, 0,null);
				$cell = new Cell(null,null);
				$viewerData[50115][$propId][0]=$viewer->show($cell, $params);
			}
			$lineNum++;
		}

		//require_once($_SERVER['DOCUMENT_ROOT'].'/core/templates/eshow.template.php');
		
		$result[0]=$result[0].
		'<div class="row" style="width: 100%;">
		<div class="col-md-8">
		<div class="table-responsive"><table class="table table-condensed">';
		$lineNum = 0;
		if (!empty($viewerData[5093])) foreach ($viewerData[5093] as $col_value) {
			$propId = $col_value->property;
			$result[0]=$result[0]. "<tr>";
			$result[0]=$result[0]. "<td>".$col_value->name."</td>";
			$result[0]=$result[0]. "<td>";
			if (!empty($viewerData[50115][$propId][0])) foreach ($viewerData[50115][$propId] as $valueCounter =>$propValue) {
				$value = $propValue;
				$result[0]=$result[0]. $value;
			}
			$result[0]=$result[0]. '</td></tr>';

}
		$result[0]=$result[0]. "</table></div>";
		$result[0]=$result[0]. '</div>
              <div class="col-md-4" id="dop_form_interface">';
        $result[0]=$result[0]. '</div></div>';
		$result[0]=$result[0]. '<a onclick="data[\'50129\']='.$formCounter.'; data[\'50146\']='.$resId.'; data[\'5058\']=2334; sendData2(data,dop_form_interface,false);">Сохранить</a>';
		
		return $result;
    }
	
	private function printJavaScript($formCounter, $entId, $propId, $valueCounter, $propValue){
		$ret=$ret. '<script language ="JavaScript">';
		$mas = 'mas'.$formCounter.'_'.$entId.'_'.$propId;
		if ($valueCounter == 0) $ret=$ret. "var ".$mas." = {};";
		$ret=$ret. $mas."[".$valueCounter."]='".$propValue."';
		data['".$formCounter."']['". $entId."']['".$propId."'] = ".$mas.";";
		$ret=$ret. "</script>";
	}
}