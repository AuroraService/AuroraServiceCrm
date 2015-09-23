<?php
class EshowController {
	public function execute($iParams){
		$model = Model::getModel();
		$id = $iParams[5048] ; //5048.Идентификатор
        $elemId = $iParams[5014]; //5014.Исполнитель
		echo 'ElemId:'.$elemId;
		if (empty($elemId) && !empty($id)) {
			$domain = $model->getResProperty2($id,5051,0); //5051.Type
			$elemId=$model->getEShowElement($domain[0]);
		}
		//echo 'ID:'.$id.','.$elemId;
		//echo '123';
		echo ' <script language ="JavaScript">var data = [];</script>';
		$this->printJavaScript(5055,$iParams[5055],0,0);
		$val = $model->getColumns2($elemId);
		//echo $elemId;
		if (!empty($id)) $data = $model->getDataSet($val, $elemId, $id);
		//echo "123";
		$req_flag=1;
		if ($req_flag){
		echo '<div class="row" style="width: 100%;">
              <div class="col-md-8">';
		}
		echo '<div class="table-responsive"><table class="table table-condensed">';
		$lineNum = 0;
		if (!empty($val->cols)) foreach ($val->cols as $col_value) {
			echo "<tr>";
			echo "<td>".$col_value->name."</td>";
			echo "<td>";
			
			$params[5042] = $col_value->editable; //Редактируемость
			$params[507] = $col_value->domain;
			$params[5082] = $col_value->property;
			$params[5088] = 0;
			
			$params2[5055] = $col_value->domain;
			
			$viewer = $model->getViewer($col_value->viewer,$params2,$model);
			//echo '123';
			$valueCounter = 0;
			if ($col_value->external == 0 ) {
				echo $viewer->show($data->data[0][$lineNum],$params);
				$this->printJavaScript($col_value->property,$data->data[0][$lineNum]->id,$lineNum+1,$valueCounter);
			}else {
				
				if (!empty($val->ext[$id][$col_value->property])) foreach ($val->ext[$_REQUEST['id']][$col_value->property] as $inner){
					$params[5088] = $valueCounter;
					echo $viewer->show($inner,$params);
					$this->printJavaScript($col_value->property,$inner->id,$lineNum+1,$valueCounter);
					$valueCounter++;
			  }
			  echo '<a href="/" class="test"><span class="glyphicon glyphicon-plus" style="color:black; margin-right: 5px;"></span>Добавить</a>';
			}
			echo "</td></tr>";
			$lineNum++;
		}
		echo "</table></div>";
		if ($req_flag){
		echo '</div>
              <div class="col-md-4" id="dop_form_interface">';
        //echo '<div class="win_inform">';
        //require_once("inc/client.php");
        //echo'</div><div style="height:10px;"></div>
        //     <div class="win_inform">';
        //require_once("inc/comments.php"); 
        //echo '</div>';
        echo '</div></div>';
		}
		echo '<a onclick="sendData();">Сохранить</a>';
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