<?php
class ComplexTypeViewerFabrica{
	public function getViewer($params, $model){
		return new ComplexTypeViewer();
	}
}
class ComplexTypeViewer{
	public function show($cell, $params){
		return $cell->value;
	}
}