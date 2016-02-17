<?php
class FilterText2ViewerFabrica{
    public function getViewer($params, $model){
        return new FilterText2Viewer($params, $model);
    }
}
class FilterText2Viewer{
    public $model;
    public $items;
    public function __construct($params, $model){
        $this->model = $model;
    }
    public function show($cell, $params = null){
        // $cell->value
        $formId = $params[5065];//5065.Форма
        $result[0]='<input onchange="str = \'%25COLUMN%25 LIKE \\\'%25\'+this.value+\'%25\\\'\'; alert(str); editFilter(' . $formId . ',' . $params[5082] . ',str); data[\'' . $formId . '\'][\'50149\']=1; sendData2(data,data_container,false);">';
        //$result[0]='FilterTextViewer<br>';
        return $result;
    }
}