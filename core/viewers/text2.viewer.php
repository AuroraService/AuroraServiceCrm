<?php
class Text2ViewerFabrica{
	public function getViewer($params, $model){
		return new Text2Viewer();
	}
}
class Text2Viewer{
	public function show($cell, $params){
		if ($params[5042] == 0) $editable = 'disabled';
		return $cell->value;
	}
}