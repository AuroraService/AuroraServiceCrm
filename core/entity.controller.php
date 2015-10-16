<?php
class EntityController {
	public function execute($iParams){
		$model = Model::getModel();
		$id = $iParams[5048] ;
		$action = $model->getRealAction($iParams[5058],$iParams[5055]); //5058.Действие, 5055.Домен
		$elemId = $action->items[5065];              //5065.Форма
		
		$params2[5048] = $id;
		$params2[5014] = $elemId;
		require_once('eshow.controller.php');
		$contr = new EshowController();
		$contr->execute($params2);

	}
}
?>