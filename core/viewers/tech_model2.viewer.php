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
        if (!empty($cell->items[50166])) foreach($cell->items[50166] as $schemaId){
            $schema = $this->model->getResourceOpt($schemaId,1018);
            $result['0']=$result['0'].$schema->items[50177][0].$schema->items[50142][0];
            //$result['0']=$result['0'].$schemaId;
        }
        $result['0']=$result['0'].'TechModel2Viewer';
        return $result;
    }
}