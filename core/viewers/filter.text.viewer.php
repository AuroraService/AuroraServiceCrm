<?php
class FilterTextViewerFabrica{
    public function getViewer($params, $model){
        return new FilterTextViewer($params, $model);
    }
}
class FilterTextViewer{
    public $model;
    public $items;
    public function __construct($params, $model){
        $this->model = $model;
    }
    public function show($cell, $params){
        // $cell->value
        $result[0]='<input type="text" class="form-control filter-input'.$params[1].'" placeholder="Поиск" id="'.$params[2].'">';
        //$result[0]='FilterTextViewer<br>';
        return $result;
    }
}