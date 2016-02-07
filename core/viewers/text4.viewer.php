<?php
class Text4ViewerFabrica{
	public function getViewer($params, $model){
		return new TextViewer();
	}
}
class Text4Viewer{
	public function show($cell, $params){
		if ($params[5042] == 0) $editable = 'disabled';
		return "<input onchange='editProperty(".$params[50129].",".$params[5013].",".$params[5082].",".$params[5088].",this.value);' value='123.".$cell->value."' ".$editable."/>";
	}
}