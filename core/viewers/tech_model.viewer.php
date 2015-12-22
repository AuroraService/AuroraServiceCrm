<?php
class TechModelViewerFabrica{
    public function getViewer($params, $model){
        return new TechModelViewer($params, $model);
    }
}
class TechModelViewer{
    public $model;
    public $items;
    public function __construct($params, $model){
        $this->model = $model;
    }
    public function show($cell, $params){
        // $cell->value
        if ($params[5099]!="") $params[5099]=' active';
        $result[1]='<a href="#" class="list-group-item'.$params[5099].'"><img src="icons/kuper.png" height="15" style="float: left; margin-right: 3px;"></img><h5 class="list-group-item-heading">'.$cell->items[50139].'</h5></a>';
        return $result[1];
    }
}