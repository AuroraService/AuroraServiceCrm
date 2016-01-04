<?php
class SetFormViewerFabrica{
    public function getViewer($params, $model){
        return new SetFormViewer($params, $model);
    }
}
class SetFormViewer{
    public $model;
    public $items;
    public function __construct($params, $model){
        $this->model = $model;
    }
    public function show($cell, $params){
		
		$formId = $cell->items[5048][0];
		$filters[5065]='%COLUMN%='.$formId;
		$columns=$this->model->getResources2Opt(112,$filters);
		$result['0']=$result['0'].'<table>';
		$result['0']=$result['0'].'<tr>';
		if (!empty($columns)) foreach ($columns as $column){
			$result['0']=$result['0'].'<td>'.$column->items[501][0].'</td>';
		}
		
		$resultDomain = $params[5055];
		$resultFilters = $params[5095];
		$elements=$this->model->getResources2Opt($resultDomain,$resultFilters);
		
		$entProps = array();
		$this->model->getClassPropertiesTransitive($resultDomain, $entProps); //1511.Свойство сущности
		if (!empty($entProps)) foreach ($entProps as $entProp){
			$props[$entProp->items[5048]]=$entProp->items[5082];
		}
		
		if (!empty($elements)) foreach ($elements as $element){
			$result['0']=$result['0'].'<tr>';
			if (!empty($columns)) foreach ($columns as $column){
				$propId = $props[$column->items[5087][0]];
				$result['0']=$result['0'].'<td>';
				$result['0']=$result['0'].$element->items[$propId][0];
				$result['0']=$result['0'].'</td>';
			}
			$result['0']=$result['0'].'</tr>';
		}
		
		
		$result['0']=$result['0'].'</tr>';
		$result['0']=$result['0'].'</table>';
		
		$result['0']=$result['0'].$params[5055];
		$result['0']=$result['0'].'SetFormViewer';
		return $result;
    }
}