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
        $filters = $params[5095];
        eval($cell->items[50187][0]);
        $type = $cell->items[5055][0];
        //print_r($filters);
        $list = $this->model->getResourcesOpt($type,$filters);
        foreach ($list as $elem){
            echo $elem->items[50139][0].'<br>';
        }
        //print_r($list);
        //print_r($list);
        $result[0]='FilterComboboxViewer<br>';
        return $result;
    }
}