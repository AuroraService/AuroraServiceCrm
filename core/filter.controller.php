<?php
class FilterController {
	public function execute($params){
		$model = Model::getModel();
		$formId = $params[5065];//5065.Форма
		if (empty($formId)) $formId = 1;
		$filterId = $params[5048];
		$filters2[5048] = '%COLUMN%='.$filterId;//5095.Фильтр
		$filter = $model->getResources(163,$filters2);
		//print_r($filter);
		$filters[5095] = '%COLUMN%='.$filter[0]->items[5095];//5095.Фильтр
		if (!empty($filter[0]->items[5095])) $fields = $model->getResources(162,$filters);
		//$propId = $filter[0]->items[5082];
		$propId = $params[5082];
		//print_r($filter[0]);
		$viewerId = $filter[0]->items[50178];
		if (empty($viewerId)) {
			if (!empty($params[5094])) $defValue = $params[5094]; else $defValue = $filter[0]->items[5094];
			echo ' <script language ="JavaScript">data["' . $formId . '"]["5095"]["' . $propId . '"] = ' . $defValue . '; </script>';//5094.Значение по умолчанию
			//echo '<script language ="JavaScript">data["'.$formId.'"]["5095"]["'.$filterId.'"]=</script>';
			echo "<select onchange='editFilter(" . $formId . "," . $params[5082] . ",this.options[this.selectedIndex].value); data[\"" . $formId . "\"][\"50149\"]=1; sendData2(data,data_container,false);'>";
			foreach ($fields as $field) {
				if ($field->items[5048] == $defValue) {
					$selected = 'selected';
				} else $selected = '';

				echo "<option value = '" . $field->items[5048] . "' " . $selected . ">" . $field->items[501] . '</option>';
			}
			echo '</select>';
		} else {
			$viewer = $model->getViewer($viewerId);
			$params2[5065]=$formId;//5065.Форма;
			$params2[5082] = $params[5082];
			$result = $viewer->show($filter[0],$params2);
			echo $result[0];
		}
	}
}
?>