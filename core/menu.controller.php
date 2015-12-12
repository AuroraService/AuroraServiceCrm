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
		$check = 0;
		if (!empty($actions)) foreach ($actions as $action){
			$check = $model->checkPermission($action);
			if ($check) break;
		}
		if (empty($actions)) $check = 1;
		if ($check) {
			$viewer = Model::getModel()->getViewer(128, null, $model);
			echo $viewer->show($res, null);

			if (!empty($res->items[5056])) $ref = "href='" . $res->items[5056] . "'";

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