<?php
class Text4ViewerFabrica{
	public function getViewer($params, $model){
		return new Text4Viewer();
	}
}
class Text4Viewer{
	public function show($cell, $params){
		if ($params[5042] == 0) $editable = 'disabled';
		return "<textarea onchange='editProperty(".$params[50129].",".$params[5013].",".$params[5082].",".$params[5088].",this.value);' ".$editable.">".$cell->value."</textarea>";
		//return '<div class="alert alert-info">'.$cell->value.'</div>';
		//return "<input onchange='editProperty(".$params[50129].",".$params[5013].",".$params[5082].",".$params[5088].",this.value);' value='123.".$cell->value."' ".$editable."/>";
	}
}