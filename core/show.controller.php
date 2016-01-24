<?php
class ShowController {
	public function execute($params){

	if (empty($iParams[50130])) $formCounter = 1; else $formCounter = ++$iParams[50130];
	$filters=$params[5095];
	$model = Model::getModel();
	$action = $model->getAction($params[5058]); //5058.Действие
	$formId = $action->items[5065];
	$columns = $model->getColumns2($formId);
	if ($params[50125] == 1) $id = 1; else $id = null; //50125.Флаг поискового запроса
	$table = $model->getDataSet($columns, $formId,$id,$filters);
	$userId = $_SESSION['id'];
	if (empty($userId)) $userId = $params[50126][5079];//50126.Технические параметры, 5079.Пользователь

    echo '<script>
            if (data===undefined) data = {};
            if (data["'.$formCounter.'"]===undefined) data["'.$formCounter.'"]={};
            if (data[50126]===undefined) data["50126"]={};
            data["50126"]["5079"]='.$userId.';
           </script>';
    echo '<div class="table-responsive" id="data_container"><div id ="data_dataset_container"><table class="table table-striped table-hover table-condensed"><thead><tr>';

		$colNum = 0;
		foreach ($table->cols as $col_value) {
			echo "<th>".$col_value->name.$link[$col_value->alias]."</th>";
			$colNum++;
		}

    echo '</tr></thead><tbody>';
		$lineNum = 0;
		if (!empty($table->data)) foreach ($table->data as $val) {
			echo ' <script language ="JavaScript">data["'.$formCounter.'"]["'.$val[0]->id.'"]={};</script>';//Переписать
			echo "<tr>";
			$colNum = 0;
			foreach ($val as $col_value) {
				$params[5055] = $table->cols[$colNum]->domain;
				$params[5048] = $val[0]->id; //Переписать
				$params[50199]=$table->cols[$colNum]->res->items[50199][0];
				$params[50200]=$table->cols[$colNum]->res->items[50200][0];
				$params[50201]=$table->cols[$colNum]->res->items[50201][0];
				$viewer = $model->getViewer($table->cols[$colNum]->viewer,$params,$this);
				echo '<td>'.$viewer->show($col_value,$params).'</td>';
				$this->printJavaScript($formCounter,$val[0]->id,$table->cols[$colNum]->property,0,$col_value->value); //Переписать
				$colNum++;
			}
			echo "</tr>";
			$lineNum++;
		}
  
    echo '</tbody></table></div></div>';

    	$ret[3] = $table->numRow;
		//echo 'Param2:'.$params[50149];
		if ($params[50149]==1) {
			echo '<div id="data_container_footer">';
			//echo 'NewValue=' . $params[50148];
			if (!empty($params[50147])) $pCount = ceil($ret[3] / $params[50147]);
			if (!empty($params[50148])) $currentPage = ceil($params[50148] / $params[50147]);
			else $currentPage = 1;
			echo '<div id="light-pagination" class="pagination"></div>';
            echo '</div>';
			if (!empty($params[50147])) echo '<script>
              function setPage(index){
              	data[\'' . $formCounter . '\'][\'50148\']=index*' . $params[50147] . ';
              	data[\'' . $formCounter . '\'][\'50149\']=0;
                sendData2(data,data_dataset_container,false);
              }
              $("#light-pagination").pagination({
                            pages: ' . $pCount . ',
                            hrefTextPrefix: "#",
                            hrefTextSuffix: "",
                            prevText: "<<",
                            nextText: ">>",
                            cssStyle: "light-theme",
                            currentPage: '. $currentPage.'
              });
              </script>';			
		}
		return $ret;
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