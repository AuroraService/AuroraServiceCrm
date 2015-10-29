<?php
class ExtShowController {
	public function execute($params){
		$model = Model::getModel();
		$paramSetId = $params[50109];
		$formCounter = $params[5065];//5065.Форма
		if (empty($formCounter)) $formCounter = 1;
		$actionId = $model->getResProperty($paramSetId,5058); //5058.Действие
		$action = $model->getAction($actionId);
		$domain = $action->items[5055];
		$filters[50109]='%COLUMN%='.$paramSetId; //5058.Действие
		$orders[504]=1;
		$actionFilters = $model->getResources(163, $filters, $orders);
		echo '<script language ="JavaScript">var data = {}; data["'.$formCounter.'"]={}; data["'.$formCounter.'"]["50109"] = '.$paramSetId.'; data["'.$formCounter.'"]["5058"] = '.$actionId.'; t={}; t["5079"]= '.$_SESSION['id'].'; t["50127"]="'.$_SESSION['hash'].'";data["50126"]=t;data["'.$formCounter.'"]["5055"]='.$domain.'; data["50129"]='.$formCounter.';</script>';
		if (!empty($actionFilters)) {
			echo ' <script language ="JavaScript">var filters = {}; data["'.$formCounter.'"]["5095"] = filters;</script>';
			foreach ($actionFilters as $aFilter) {

				echo $aFilter->items[501];
				$filters4[5048] = '%COLUMN% = 148';
				$contr = $model->getResources(14, $filters4);
				require_once(substr($contr[0]->items[503], 5));   //503.Местоположение
				$contr = new $contr[0]->items[501]; //501.Название
				$params2[5048] = $aFilter->items[5095];
				$contr->execute($params2);

				$filters2[5048] = '%COLUMN%=' . $aFilter->items[5094];
				$defValue = $model->getResources(162, $filters2);
				$filters3[$aFilter->items[5082]] = $defValue[0]->items[5096];
			}
			echo '<a onclick="sendData(2316);">Применить</a>';
		}
		$params[5095]=$filters3;
		$params[5058]=$actionId;
		$mainController = Controller::getController();
		$ret = $mainController->executeAction($actionId,$params);
		
		echo 'Отображаемое количество:'.$filters3[50147];
		echo 'Строки:'.$ret[3];
		echo '<a onclick="data[\''.$formCounter.'\'][\'50147\']=100; sendData(2316);">1</a>';
		echo '<a onclick="data[\''.$formCounter.'\'][\'50147\']=200; sendData(2316);">2</a>';
	}
}
?>