<?php
class FiltersSetViewerFabrica{
    public function getViewer($params, $model){
        return new FiltersSetViewer($params, $model);
    }
}
class FiltersSetViewer{
    public $model;
    public $items;
    public function __construct($params, $model){
        $this->model = $model;
    }
    public function show($cell, $params){
		$setId = $cell->items[5048][0];
		$contr = Controller::getController();
		$params[5055]=163;
        $params[5095][50109]='%COLUMN%='.$setId;
        $params[50186][1]=" f1"; // дополнительный класс
        $params[50186][2]="find_input1"; // id для текстового поля
        $params[50186][50185]="1";
		$result = $contr->executeAction(2354,$params);
		//$result[0]='FiltersSetViewer';
        return $result;
    }
}