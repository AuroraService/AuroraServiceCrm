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
        $result[0]='<input domain="'.$cell->items[50190][0].'" viewer="'.$cell->items[50180][0].'" action="'.$cell->items[5058][0].'" propId="'.$cell->items[5082][0].'" form="'.$params[50185].'" type="text" class="form-control filter-input'.$params[1].'" placeholder="Поиск" id="'.$params[2].'" '.$cell->items[50188][0].'>';
        //$result[0]='FilterTextViewer<br>';
        return $result;
    }
}