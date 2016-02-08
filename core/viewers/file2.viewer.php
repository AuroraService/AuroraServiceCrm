<?php
class File2ViewerFabrica{
	public function getViewer($params, $model){
		return new File2Viewer($params,$model);
	}
}
class File2Viewer{
	public $model;
	public $params;

	public function __construct($params,$model){
		$this->model = $model;
		$this->params = $params;
	}

	public function show($cell, $params){
		$fileId = $cell->id;
		if (!empty($fileId)) {
			$file = $this->model->getResourceOpt($fileId,1018);//1018.Файл
			return '<a href="'.$file->items[50177][0].'" class="highslide" onclick="return hs.expand(this)">
	<img src="'.$file->items[50177][0].'" width="200" alt="Highslide JS" title="Click to enlarge" /></a><div class="highslide-heading">'.$file->items[50142][0].'</div>';
		} else{
			$viewer = $this->model->getViewer(1223, $this->params, $this->model);//1223.FileViewer
			return $viewer->show($cell, $params);
		}
	}
}