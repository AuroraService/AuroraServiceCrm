<?php
class Search2Controller {
	public function execute($params){
		if ($params[5058] == 2340) $this->showForm($params); //5058.Действие, 2333.Поиск сущностей(отображение окна поиска)
		if ($params[5058] == 2336) $this->find($params); //5058.Действие, 2342.Поиск сущностей(обработка запроса)
	}

	private function showForm($params){
		echo 'Form';
	}

	public function find($params){
		echo 'Содержимое';
	}


}
?>