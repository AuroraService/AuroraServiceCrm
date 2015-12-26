<?php
class AnalogBaseController {
    public function execute($iParams){
		//echo 'AnalogBaseController';
        $controller=Controller::getController();
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

        //$params[5055]=163;
        //$params[5095][50109]='%COLUMN%=15214';
		$params[5055]=1618;
        $params[5095][5048]='%COLUMN%=15371';
		$params[50178]=1218;
        $params[50186][1]=" f1"; // дополнительный класс
        $params[50186][2]="find_input1"; // id для текстового поля
        $params[50186][50185]="1";
        //$ret5 = $controller->executeAction(2354,$params);
		$ret5 = $controller->executeAction(2354,$params);
		$params[50178]="";
		/*
        echo $ret5[1];
        $params[5055]=163;
        $params[5095][50109]='%COLUMN%=15214';
        $params[50186][1]=" f1"; // дополнительный класс
        $params[50186][2]="find_input1"; // id для текстового поля
        $params[50186][50185]="1";
        $ret5 = $controller->executeAction(2354,$params);
		*/
        $params[5055]=163;
        $params[5095][50109]='%COLUMN%=15215';
        $params[50186][1]=" f2"; // дополнительный класс
        $params[50186][2]="find_input2"; // id для текстового поля
        $params[50186][50185]="2";
		
        $ret6 = $controller->executeAction(2354,$params);
        $params[5055]=163;
        $params[5095][50109]='%COLUMN%=15216';
        $params[50186][1]=" f3"; // дополнительный класс
        $params[50186][2]="find_input3"; // id для текстового поля
        $params[50186][50185]="3";
        $ret7 = $controller->executeAction(2354,$params);
		require_once('templates/analog_base/analog_base.template.php');
    }

}
?>