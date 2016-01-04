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
        $modelId = $cell->items[5048][0];
        // $cell->value
        if ($params[5099]!="") $params[5099]=' active';
        //$result['0']='<a href="#" onclick="updateFilter2(15366,5048,\'%COLUMN%='.$modelId.'\');sendForm(15366);updateFilter2(15368,50171,'.$modelId.');sendForm(15368);" class="list-group-item'.$params[5099].'"><img src="icons/kuper.png" height="15" style="float: left; margin-right: 3px;"></img><h5 class="list-group-item-heading">'.$cell->items[50139][0].'</h5></a>';
        $result['0']='<a href="#" onclick="updateFilter2(15366,5048,\'%COLUMN%='.$modelId.'\');sendForm(15366);updateFilter2(15368,50171,'.$modelId.');updateFilter2(15367,5048,\'%COLUMN%=15392\');sendForm(15367);" class="list-group-item'.$params[5099].'"><img src="icons/kuper.png" height="15" style="float: left; margin-right: 3px;"></img><h5 class="list-group-item-heading">'.$cell->items[50139][0].'</h5></a>';
        return $result;
    }
}