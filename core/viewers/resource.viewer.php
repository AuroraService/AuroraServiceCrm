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
    $id = $params[5082].'_'.$params[5088];
    $flag_link = 1;
    $flag_edit = 1;
    $flag_delete = 1;
    if (empty($cell->value)) {$flag_link = 0; $flag_delete = 0;};
    global $var_pth_template;
    $link = "&id=".$cell->id;
    if ($flag_link) $link1='<a href="?action=2315'.$link.'" class="hrf_nmrg" style="margin-left: 10px;"><span class="glyphicon glyphicon-share-alt" style="color:black"></span></a>';
    //if ($flag_edit) $link2='<a href="#" class="hrf_nmrg interface_edit" id="select_form" domain="'.$this->params[5055].'" selectid="'.$cell->id.'" item-id="'.$id.'" win_width="600" win_height="300"><span class="glyphicon glyphicon-pencil" style="color:black"></span></a>';
    if ($flag_edit) $link2='<a href="#" class="hrf_nmrg interface_edit" id="select_form" onclick="findFormV(this,\''.$params['5013'].'\',\''.$params['5082'].'\',\''.$params['5055'].'\',\''.$params['5066'].'\',null,\''.$params['50129'].'\',\''.$params['50202'].'\')"><span class="glyphicon glyphicon-pencil" style="color:black"></span></a>';
    

    if ($flag_delete) $link3='<a class="hrf_nmrg" onclick="editField(\''.$id.'\', \'\');"><span class="glyphicon glyphicon-remove" style="color:black"></span></a>';
    if (empty($cell->value) && !empty($cell->id)) $cell->value = '&nbsp;&nbsp;&nbsp;';
    $val='<div class="res_value_link" id = "'.$id.'">'.$cell->value.'</div>';
    //return '<div style="margin-bottom: 15px" onclick="load_data(2315, '.$this->params[5055].', '.$cell->id.')">'.$val.'</div>'.$link1.$link2.$link3;
    //return '<div style="margin-bottom: 15px" onclick="data[50128]='.$cell->id.'; sendData(2315)">'.$val.'</div>'.$link1.$link2.$link3;
    return '<div style="margin-bottom: 15px" onclick="data[\'5058\']=\'\';data[\'50129\']='.$params[50210].';data[\''.$params[50210].'\']={};data[\''.$params[50210].'\'][\'5058\']=2354;data[\''.$params[50210].'\'][\'5055\']=111;data[\''.$params[50210].'\'][\'5095\']={};data[\''.$params[50210].'\'][\'5095\'][\'5048\']=\'%COLUMN%='.$params[50199].'\';data[\''.$params[50210].'\'][\'50178\']=1221;data[\''.$params[50210].'\'][\'50181\']=\'#dop_form_interface\';data[\''.$params[50210].'\'][\'50186\']={};data[\''.$params[50210].'\'][\'50186\'][\'5048\']='.$cell->id.';data[\''.$params[50210].'\'][\'50186\'][\'5055\']='.$params['5055'].';sendForm('.$params[50210].');">'.$val.'</div>'.$link1.$link2.$link3;


  }
}

