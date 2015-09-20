<?php
class RedirectController {
	public function execute(){
		$model = Model::getModel();
		if (!empty($_REQUEST['domain'])) $classId = $_REQUEST['domain']; 
		else $classId = $model->getResProperty($_REQUEST['id'],5051,0); //Тип
		
		$elem = $model->getEShowElement($classId);
		if (!empty($_REQUEST['domain'])) $localId = $_REQUEST['id']; else $localId = substr($_REQUEST['id'],3);
		$this->redirect("index.php?elem=$elem&id=".$localId);
	}
	
	private function redirect($url){
		echo
      "<script language ='JavaScript'>
        window.location.replace('".$url."');
      </script>";
	}
}
?>