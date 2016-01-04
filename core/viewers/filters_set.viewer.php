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

        $filters[5057]="%COLUMN%=".$setId;
        $forms = $this->model->getResourcesOpt(1617,$filters);
        foreach ($forms as $form){
            echo 'FORM'.$setId;
            $formId = $form->items[5048][0];
            $resultDomain = $form->items[50190][0];
            $resultViewer = $form->items[50180][0];
            $resultContainer = $form->items[50181][0];
            $formAction = $form->items[5058][0];
			$nestedForm = $form->items[50198][0];

            $ret[1]=$ret[1].$this->genarateJavaScript(5058,$formAction,$formId);
            $ret[1]=$ret[1].$this->genarateJavaScript(5055,$resultDomain,$formId);
            $ret[1]=$ret[1].$this->genarateJavaScript(50178,$resultViewer,$formId);
            $ret[1]=$ret[1].$this->genarateJavaScript(50181,$resultContainer,$formId);
			$ret[1]=$ret[1].$this->genarateJavaScript(50198,$nestedForm,$formId);
        }


		$contr = Controller::getController();
		$params[5055]=163;
        $params[5095][50109]='%COLUMN%='.$setId;
        $params[50186][1]=" f1"; // дополнительный класс
        $params[50186][2]="find_input1"; // id для текстового поля
        $params[50186][50185]="1";
		$result = $contr->executeAction(2354,$params);
        $ret[0]=$ret[0].$result[0];
        $ret[1]=$ret[1].$result[1];
		//$result[0]='FiltersSetViewer';
        return $ret;
    }

    private function genarateJavaScript($propId,$value,$form = null){
        if (!empty($form)) $prefix = "['".$form."']";
        $result='if (data'.$prefix.'===undefined) data'.$prefix.'={}; data'.$prefix.'["'.$propId.'"]="'.$value.'";';
        //echo $result;
        return $result;
    }
}