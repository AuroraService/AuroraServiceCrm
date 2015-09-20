<?php
class ShowController {
	public function execute($params){
		$model = Model::getModel();
		$action = $model->getAction($params[5058]); //5058.Действие
		$formId = $action->items[5065];             //5065.Форма
		$columns = $model->getColumns2($formId);
		$table = $model->getDataSet($columns, $formId,NULL);
		//$val = $model->getShowData($_REQUEST['elem']);
		
		echo '<div class="table-responsive"><table class="table table-striped table-hover table-condensed"><thead><tr>';
        // Выводим результаты в html
		$colNum = 0;
        foreach ($table->cols as $col_value) {
		  if ($col_value->type == 0) {
			  //$elemId = $model->getEShowElement($col_value->domain);
			  //if (!empty($elemId)) $link[$colNum] = $elemId;
		  }
          echo "<th>".$col_value->name.$link[$col_value->alias]."</th>";
		  $colNum++;
        }
        echo "</tr></thead><tbody>";
        
        if (!empty($table->data)) foreach ($table->data as $val) {
            echo "<tr>";
			$colNum = 0;
            foreach ($val as $col_value) {
				$params[5055] = $table->cols[$colNum]->domain;
				$viewer = $model->getViewer($table->cols[$colNum]->viewer,$params,$this);
				//echo $viewer;
	  
				echo '<td>'.$viewer->show($col_value,$params).'</td>';
				/*
				if (!empty($link[$colNum])) $col_value->value = '<a href="index.php?action=2315&id='.$col_value->value.'">'.$col_value->value.'</a>';
                echo "<td>".$col_value->value."</td>";
				*/
				$colNum++;
            }
            echo "</tr>";
        }
        
        echo "</tbody></table></div>";
	}
}
?>