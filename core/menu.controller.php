<?php
class MenuController {
	public function execute($menuId, $viewer){
		$model = Model::getModel();
		$filters[5048]='%COLUMN%=15051';
		$result = $model->getResources(113,$filters);
		$this->show($result[0]);
	}
	
	public function show($res){
		$model = Model::getModel();
		$actions = $model->getResProperty2($res->items[5048],5012); //5012.Осуществление
		//print_r($actions);
		$check = 0;
		//echo $res->items[5048];
		if (!empty($actions)) foreach ($actions as $action){
			//echo '123';
			$check = $model->checkPermission($action);
			if ($check) break;
		}
		if (empty($actions)) $check = 1;
			//if (!$actions)  $check = 1;
		if ($check) {
			//$model = Model::getModel();
			//$viewer = Model::getModel()->viewers[128]->getViewer(null,$model);
			$viewer = Model::getModel()->getViewer(128, null, $model);
			echo $viewer->show($res, null);

			if (!empty($res->items[5056])) $ref = "href='" . $res->items[5056] . "'";
			//echo "<a ".$ref.">Уровень:".$res->items[5060]." ".$res->items[501]. " Тип: ".$res->items[5051].'</a><BR>';


			$filters[5057] = '%COLUMN%='.$res->items[5048]; //child->pid = id
			$orders[504] = 1;
			$result = $model->getResources(113, $filters, $orders);
			if (!empty($result)) foreach ($result as $child) {
				$this->show($child);
			}
			echo $viewer->footerShow($res, null);
		}
		
	}
}
?>