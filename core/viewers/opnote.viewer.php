<?php
class OpNoteViewerFabrica{
    public function getViewer($params, $model){
        return new OpNoteViewer($params, $model);
    }
}
class OpNoteViewer{
    public $model;
    public $items;
    public function __construct($params, $model){
        $this->model = $model;
    }
    public function show($cell, $params){
        return $result;
    }
}