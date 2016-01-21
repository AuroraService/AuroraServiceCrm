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
		$orders[50139]=1;
        eval($cell->items[50187][0]);
        $type = $cell->items[5055][0];
        $handler = str_replace('%VALUE%','this.value',$cell->items[50188][0]);
        $list = $this->model->getResourcesOpt($type,$filters,$orders);
        if (!empty($cell->items[50139][0])) $result[0]='<p class="filter_p_1">'.$cell->items[50139][0].'</p>';
        $result[0]=$result[0].'<select class="form-control filter-input'.$params[1].'"'.$handler.'>';
        $result[0]=$result[0].'<option value="'.$cell->items[50192][0].'">'.$cell->items[50189][0].'</option>';
        foreach ($list as $elem){
            $result[0]=$result[0].'<option value="'.$elem->items[5048][0].'">'.$elem->items[50139][0].'</option>';
        }
        $result[0]=$result[0].'</select>';
        return $result;
    }

}