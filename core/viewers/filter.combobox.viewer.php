<?php
class FilterComboboxViewerFabrica{
    public function getViewer($params, $model){
        return new FilterComboboxViewer($params, $model);
    }
}
class FilterComboboxViewer{
    public $model;
    public $items;
    public function __construct($params, $model){
        $this->model = $model;
    }
    public function show($cell, $params){
        $result[0]='FilterComboboxViewer<br>';
        return $result;
    }
}