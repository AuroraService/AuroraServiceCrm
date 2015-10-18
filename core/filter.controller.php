<?php
class FilterController {
	public function execute($params){
		$model = Model::getModel();
		$filterId = $params[5048];
		$filters2[5095] = $filterId;
		$filter = $model->getResources(163,$filters2);
		//print_r($filter);
		$filters[5095] = '%COLUMN%='.$filterId;
		$fields = $model->getResources(162,$filters);
		echo ' <script language ="JavaScript">data[5095]['.$filterId.'] = '.$filter[0]->items[5094].'; </script>';
		echo "<select onchange='editFilter(".$filterId.",this.options[this.selectedIndex].value); sendData(2316);'>";
		foreach($fields as $field){
			if ($field->items[5048] == $filter[0]->items[5094]) $selected = 'selected'; else $selected = '';
			echo "<option value = '".$field->items[5048]."' ".$selected.">".$field->items[501].'</option>';
		}
		echo '</select>';
	}
}
?>