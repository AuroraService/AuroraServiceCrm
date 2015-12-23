<?php
class AnalogBaseController {
    public function execute($iParams){
		//echo 'AnalogBaseController';
    	$model = Model::getModel();
    	$filters[5057]="%COLUMN%=1525171";           //
        $ret = $model->getResources(1017,$filters);  // Список типов техники
        $filters[5057]="%COLUMN%=1525170";           // 
        $ret2 = $model->getResources(1017,$filters); // Группы техники
		$filters[50178]="%COLUMN%=1";                //
		$ret3 = $model->getResources(1020,$filters); // Производители
		$filters[50178]="%COLUMN%=0";                //
		$ret4 = $model->getResources(1020,$filters); // Производители НЕ премиум
        $ret22 = $model->getResources(1027,null);
		require_once('templates/analog_base/analog_base.template.php');
    }

}
?>