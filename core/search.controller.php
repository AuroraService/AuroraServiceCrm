<?php
class SearchController {
	public function execute($params){
		echo ' <script language ="JavaScript">var data = []; mas1 = []; mas1[0]=1209; data[5055]=mas1; mas2=[]; data[5091]=mas2;</script>';
		$model = Model::getModel();
		$params[5055] = 5091;
		$viewer = $model->getViewer(121,$params,$model);
		$cell = new Cell(null,null);
		$params2[5082]=5091; $params2[5088]=0;  $params2[5042]=1; //5082.Идентификатор свойства, 5088.Номер значения
		echo $viewer->show($cell,$params2);

		$params[5055] = 1193;
		$viewer = $model->getViewer(124,$params,$model);
		$cell = new Cell(1209,'Клиент');
		$params2[5082]=5055; $params2[5088]=0; //5082.Идентификатор свойства, 5088.Номер значения
		echo $viewer->show($cell,$params2);
		echo '<a onclick="sendData(2333);">Поиск</a>';
		echo '<div class="col-md-4" id="dop_form_interface"></div>';

		}


}
?>