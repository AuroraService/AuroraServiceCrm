<?php
class SearchController {
	public function execute($params){
		if ($params[5058] == 2333) $this->showForm($params); //5058.Действие, 2333.Поиск сущностей(отображение окна поиска)
		if ($params[5058] == 2342) $this->find($params); //5058.Действие, 2342.Поиск сущностей(обработка запроса)
	}

	private function showForm($params){
		echo ' <script language ="JavaScript">var data = []; mas1 = []; mas1[0]=1209; data[5055]=mas1; mas2=[]; data[5091]=mas2; t=[]; t[5079]= '.$_SESSION['id'].'; t[50127]="'.$_SESSION['hash'].'";data[50126]=t;</script>';
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
		echo '<a onclick="sendData(2342);">Поиск</a>';
		echo '<div id="dop_form_interface"></div>';
	}

	public function find($params){
		$model = Model::getModel();
		$domain = $params[5055]; //5055.Домен
		echo $domain;
		$model->find($params[5091], $domain);//5091.Поисковый запрос
		$action = $model->getLeafAction(2316, $domain);
		$params2[5058] = $action->items[5048];//5058.Действие
		$params2[50125] = 1;//50125.Флаг поискового запроса
		$params2[5055] = $domain;//5055.Домен


		$mainContriller = Controller::getController();
		$mainContriller -> executeAction(2316, $params2);//2316.Просмотр сущностей класса
	}


}
?>