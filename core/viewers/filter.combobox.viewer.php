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
        if (!empty($cell->items[50139][0])) $result[0]='<p class="filter_p_1">'.$cell->items[50139][0].'</p>';
        $result[0]=$result[0].'<select action="'.$cell->items[5058][0].'" propId="'.$cell->items[5082][0].'" form="'.$params[50185].'" class="form-control filter-input'.$params[1].'"'.$cell->items[50188][0].'>';
        $result[0]=$result[0].'<option value="0">'.$cell->items[50189][0].'</option>';
        //print_r($cell);
        foreach ($list as $elem){
            $result[0]=$result[0].'<option value="'.$elem->items[5048][0].'">'.$elem->items[50139][0].'</option>';
            //print_r($elem); echo '========== <br />';
            //echo $elem->items[50139][0].'<br>';
        }
        //print_r($list);
        //print_r($list);
        $result[0]=$result[0].'</select>';
        //$result[0]='FilterComboboxViewer<br>';
        return $result;
    }
}