<?php
class TechModel2ViewerFabrica{
    public function getViewer($params, $model){
        return new TechModel2Viewer($params, $model);
    }
}
class TechModel2Viewer{
    public $model;
    public $items;
    public function __construct($params, $model){
        $this->model = $model;
    }
    public function show($cell, $params){
        $result['0']='TechModel2Viewer';
        return $result;
    }
}