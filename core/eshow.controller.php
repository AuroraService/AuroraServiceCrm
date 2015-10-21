<?php
class EshowController {
	public function execute($iParams){
		$model = Model::getModel();
		$id = $iParams[5048]; //5048.Идентификатор
        $elemId = $iParams[5014]; //5014.Исполнитель
		$actionId = $iParams[5058];
		if (empty($elemId) && !empty($id)) {
			$domain = $model->getResProperty($id,5051,0); //5051.Type
			$elemId=$model->getForm($actionId,$domain);
		}
		echo ' <script language ="JavaScript">var data = []; data[5065] = '.$elemId.';</script>';
		$this->printJavaScript(5055,$iParams[5055],0,0);//5055.Домен
		//$this->printJavaScript(5055,$iParams[5055],0,0);//5055.Домен
		$val = $model->getColumns2($elemId);
		$viewerData = array();
		$viewerData[5093] = $val->cols;
		//echo '<div class="row" style="width: 100%;">
        //      <div class="col-md-8">';//T1
		//echo '<div class="table-responsive"><table class="table table-condensed">';//T1
		$lineNum = 0;
		if (!empty($id)) $resource2 = $model->getCurrentResource2($id);
		else {echo '<script language ="JavaScript">data[5051] = mas0;</script>';}

		if (!empty($val->cols)) foreach ($val->cols as $col_value) {
			$propId = $col_value->property;
			//$viewerData[$propId][5093] = $col_value; //5093.Столбец
			//echo "<tr>";//T1
			//echo "<td>".$col_value->name."</td>";//T1
			//echo "<td>";//T1
			
			$params[5042] = $col_value->editable; //5042.Редактируемость
			$params[507] = $col_value->domain; //507.Представление
			$params[5082] = $col_value->property; //5082.Идентификатор свойства
			$params[5088] = 0; //5088.Номер значение
			
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
				    //echo $echo;//T1
					$this->printJavaScript($col_value->property, $idValue, $lineNum + 1, $valueCounter);
			} else {
				$this->printJavaScript($col_value->property, null, $lineNum + 1, 0);
				$cell = new Cell(null,null);
				$viewerData[50115][$propId][0]=$viewer->show($cell, $params);
				//echo $viewer->show($cell, $params);//T1
			}
			//echo "</td></tr>";//T1
			$lineNum++;
		}
		//echo "</table></div>";//T1
		//echo '</div>
        //      <div class="col-md-4" id="dop_form_interface">';//T1
       // echo '</div></div>';//T1
		//echo '<a onclick="sendData(2334);">Сохранить</a>';//T1

		require_once('templates/eshow.template.php');

	}
	
	private function printJavaScript($propId,$propValue,$propCounter,$valueCounter){
		echo '<script language ="JavaScript">';
		$mas = 'mas'.$propCounter;
		if ($valueCounter == 0) echo "var ".$mas." = [];";
		echo $mas."[".$valueCounter."]='".$propValue."';
		data[".$propId."] = ".$mas.";";
		echo "</script>";
	}


}
?>