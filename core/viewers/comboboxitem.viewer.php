<?php
class ComboBoxItemViewerFabrica{
	public function getViewer($params, $model){
		return new ComboBoxItemViewer($params, $model);
	}
}
class ComboBoxItemViewer{
	public $model;
	public $items;
	public function __construct($params, $model){
		$this->model = $model;
		$this->items = $this->model->getComboItems($params[5055]);
	}
	public function show($cell, $params){
		$result = "<select onchange='editProperty(".$params[5082].",".$params[5088].",this.options[this.selectedIndex].value);'>";
		foreach ($this->items as $elem){
			if ($elem->id == $cell->value) $selected = " selected "; else $selected = "";
			$result = $result."<option value = '".$elem->id."'".$selected.">".$elem->value."</option>";
		}
		$result = $result."</select>";
		return $result;
	}
}