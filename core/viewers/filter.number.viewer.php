<?php
class FilterNumberViewerFabrica{
    public function getViewer($params, $model){
        return new FilterNumberViewer($params, $model);
    }
}
class FilterNumberViewer{
    public $model;
    public $items;
    public function __construct($params, $model){
        $this->model = $model;
    }
    public function show($cell, $params){
        $handler = str_replace('%VALUE%','this.value',$cell->items[50188][0]);
        $showName = $cell->items[50139][0];
        $result[0]=$showName.'<input type="number" class="form-control filter-input" '.$handler.'/>';
        // $cell->value
        //if ($params[5099]!="") $params[5099]=' active';
        //$result[1]='<a href="#" class="list-group-item'.$params[5099].'"><img src="icons/kuper.png" height="15" style="float: left; margin-right: 3px;"></img><h5 class="list-group-item-heading">'.$cell->items[50139].'</h5></a>';
        return $result;
    }
}