<?php
class FilterController {
	public function execute($params){
		$model = Model::getModel();
		$formId = $params[5065];//5065.Форма
		if (empty($formId)) $formId = 1;
		$filterId = $params[5048];
		$filters2[5095] = '%COLUMN%='.$filterId;//5095.Фильтр
		$filter = $model->getResources(163,$filters2);
		//print_r($filter);
		$filters[5095] = '%COLUMN%='.$filterId;//5095.Фильтр
		$fields = $model->getResources(162,$filters);
		//print_r($filter[0]);
		echo ' <script language ="JavaScript">data["'.$formId.'"]["5095"]["'.$filterId.'"] = '.$filter[0]->items[5094].'; </script>';//5094.Значение по умолчанию
		//echo '<script language ="JavaScript">data["'.$formId.'"]["5095"]["'.$filterId.'"]=</script>';
		echo "<select onchange='editFilter(".$formId.",".$filterId.",this.options[this.selectedIndex].value); data[\"".$formId."\"][\"50149\"]=1; sendData2(data,data_container,false);'>";
		foreach($fields as $field){
			if ($field->items[5048] == $filter[0]->items[5094]) {
				$selected = 'selected';
			} else $selected = '';

			echo "<option value = '".$field->items[5048]."' ".$selected.">".$field->items[501].'</option>';
		}
		echo '</select>';
	}
}
?>