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
        $result[0]='FilterTextViewer<br>';
        return $result;
    }
}