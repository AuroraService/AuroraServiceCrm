<?php
class ResourceViewerFabrica{
	public function getViewer($params, $model){
		return new ResourceViewer($params,$model);
	}
}

class ResourceViewer{
	public $params;
	public function __construct($params, $model){
		$this->params = $params;
	}
	public function show($cell, $params){
		$id = $params[5082].'-'.$params[5088];
		global $var_pth_template;
		$link = "&id=".$cell->id;
		$link1='<a href="?action=2315'.$link.'" class="hrf_nmrg" style="margin-left: 10px;"><span class="glyphicon glyphicon-share-alt" style="color:black"></span></a>';
		$link2='<a href="/" class="hrf_nmrg"><span class="glyphicon glyphicon-pencil" style="color:black"></span></a>';
		$link3='<a class="hrf_nmrg" onclick="editField('.$id.', '.null.')"><span class="glyphicon glyphicon-remove" style="color:black"></span></a>';
		$val='<div class="res_value_link" id = "'.$id.'">'.$cell->value.'</div>';
		return '<div style="margin-bottom: 15px" onclick="load_data(2315, '.$this->params[5055].', '.$cell->id.')">'.$val.'</div>'.$link1.$link2.$link3;
	}
}