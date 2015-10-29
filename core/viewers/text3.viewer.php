<?php
class Text3ViewerFabrica{
	public function getViewer($params, $model){
		return new Text3Viewer();
	}
}
class Text3Viewer{
	public function show($cell, $params){
		//if ($params[5042] == 0) $editable = 'disabled';
		return "<input onchange='data[50146] = ".$params[5048]."; data[50129] = ".$params[50129]."; editProperty(".$params[50129].",".$params[5082].",".$params[5088].",this.value);' value='".$cell->value."' ".$editable."/>";//50146.Выделенная сущность,50129.Выделенная форма
	}
}