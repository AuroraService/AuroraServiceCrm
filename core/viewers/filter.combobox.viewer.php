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
		$form = $params[50185];
		$action = $cell->items[5058][0];
		$resultDomain = $cell->items[50190][0];
		$viewer = $cell->items[50180][0];
		//$cell->items[5082][0]
		
		$result[1]=$result[1].$this->printJavaScript(5058,$action,$form);
		$result[1]=$result[1].$this->printJavaScript(5055,$resultDomain,$form);
		$result[1]=$result[1].$this->printJavaScript(50180,$viewer,$form);
		
        //print_r($filters);
        $list = $this->model->getResourcesOpt($type,$filters,$orders);
        if (!empty($cell->items[50139][0])) $result[0]='<p class="filter_p_1">'.$cell->items[50139][0].'</p>';
        $result[0]=$result[0].'<select domain="'.$cell->items[50190][0].'" viewer="'.$cell->items[50180][0].'" action="'.$cell->items[5058][0].'" propId="'.$cell->items[5082][0].'" form="'.$params[50185].'" class="form-control filter-input'.$params[1].'"'.$cell->items[50188][0].'>';
        $result[0]=$result[0].'<option value="">'.$cell->items[50189][0].'</option>';
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
	
	private function printJavaScript($propId,$value,$form = null){
		if (!empty($form)) $prefix = "['".$form."']";
		$result='<script language ="JavaScript">data'.$prefix.'["'.$propId.'"]="'.$value.'"</script>';
		return $result;
	}
}