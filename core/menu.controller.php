<?php
class MenuController {
	public function execute($menuId, $viewer){
		$model = Model::getModel();
		$filters[5048]=15051;
		$result = $model->getResource(113,$filters);
		$this->show($result[0]);
	}
	
	public function show($res){
		$model = Model::getModel();
		//$viewer = Model::getModel()->viewers[128]->getViewer(null,$model);
		$viewer = Model::getModel()->getViewer(128,null,$model);
		echo $viewer->show($res,null);
		
		if (!empty($res->items[5056])) $ref = "href='".$res->items[5056]."'";
		//echo "<a ".$ref.">Уровень:".$res->items[5060]." ".$res->items[501]. " Тип: ".$res->items[5051].'</a><BR>';
		
		
		$filters[5057]=$res->items[5048]; //child->pid = id
		$orders[504] = 1;
		$result = $model->getResource(113,$filters,$orders);
		if (!empty($result)) foreach ($result as $child) {
			$this->show($child);
		}
		echo $viewer->footerShow($res,null);
		
	}
}
?>