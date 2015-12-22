<?php
class PartViewerFabrica{
    public function getViewer($params, $model){
        return new PartViewer($params, $model);
    }
}
class PartViewer{
    public $model;
    public $items;
    public function __construct($params, $model){
        $this->model = $model;
    }
    public function show($cell, $params){
        if ($params[5042] == 0) $editable = 'disabled';
        return "<input onchange='editProperty(".$params[50129].",".$params[5048].",".$params[5082].",".$params[5088].",this.value);' value='".$cell->value->items[50139]."' ".$editable."/>";
    }
}