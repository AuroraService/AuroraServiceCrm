<?php
class Resource2ViewerFabrica{
	public function getViewer($params, $model){
		return new Resource2Viewer($params,$model);
	}
}

class Resource2Viewer{
	public $params;
	public function __construct($params, $model){
		$this->params = $params;
	}
	public function show($cell, $params){
		global $var_pth_template;
		$link = "&id=".$cell->id;
		//$link1='<a href="?action=2315'.$link.'" class="hrf_nmrg" style="margin-left: 10px;"><span class="glyphicon glyphicon-share-alt" style="color:black"></span></a>';
		//$link2='<a href="/" class="hrf_nmrg"><span class="glyphicon glyphicon-pencil" style="color:black"></span></a>';
		//$link3='<a href="/" class="hrf_nmrg"><span class="glyphicon glyphicon-remove" style="color:black"></span></a>';
		$val='<div class="res_value_link"><a onclick="data[\'5058\']=\'\';data[\'50129\']=\'-2\';data[\'-2\']={};data[\'-2\'][\'5058\']=2354;data[\'-2\'][\'5055\']=111;data[\'-2\'][\'5095\']={};data[\'-2\'][\'5095\'][\'5048\']=\'%COLUMN%='.$params[50199].'\';data[\'-2\'][\'50178\']=1221;data[\'-2\'][\'50181\']=\''.$params[50201].'\';data[\'-2\'][\'50186\']={};data[\'-2\'][\'50186\'][\'5048\']='.$cell->id.';data[\'-2\'][\'50186\'][\'5055\']='.$params[5055].'; sendForm(-2);">'.$cell->value.'</a></div>';
		return '<div style="margin-bottom: 15px">'.$val.$link1.$link2.$link3.'</div>';
	}
}