
<?
	
class Controller{
	static $controller;

	public static function getController(){
		if (empty(Controller::$controller)) Controller::$controller = new Controller();
		return Controller::$controller;
	}

	public function executeAction($actionId, $params){
		$model = Model::getModel();
		//$model->loadPermissions();
		$domain = $params[5055];//5055.Домен
		//echo 'ActionId='.$actionId.', Domain='.$domain.',-Нет прав';
		if (empty($domain) && !empty($params[5048])) $domain = $model->getResProperty($params[5048],5051,0); //5051.Type;//5048.Идентификатор
		//echo $actionId.'-'.$domain;
		if($model->checkPermission($actionId,$domain)){
			$contr = $model->getController($actionId);
			require_once($contr->items[503]);   //503.Местоположение
			$contrEnt = new $contr->items[501]; //501.Название
			$ret = $contrEnt->execute($params);
			return $ret;
		} else echo 'ActionId='.$actionId.', Domain='.$domain.',-Нет прав';
}
	public function execute(){
		require_once('core/model.php');
		global $var_pth_template;
		global $var_template_index;
		global $template_body_start;
		global $template_login_form;
		global $template_end;
		$model = Model::getModel();
		//$filters[5083] = 1511;
		//$props = $model->getResource(112);
		//print_r($props); echo 111;
			//$layout_elements = $model->getResources(1613);//1613.Элемент макета
			//print_r($layout_elements[15221]);

		if ($model->CheckLogin()!=1){
			$clogin=$model->LogIn();
			if ($clogin!=100){
				require_once($var_pth_template.$template_login_form);
				exit;
			}
		}
		$model->loadPermissions();

		require_once('core/menu.controller.php');
		$menu = new MenuController();
		$menu->execute(1131,null);
		require_once($var_pth_template.$template_body_start);
		    $actionId = $_REQUEST['action'];
			$setParams = $_REQUEST['param'];
		$id = $_REQUEST['id'];
		if (!empty($actionId)){
			if (!empty($id)){
				$domain = $model->getResProperty($id,5051,0); //5051.Type
			}
			//echo 'Action!';
			if($model->checkPermission($actionId,$domain)){
				$params[5058] = $actionId;          //5058.Действие
				$params[5048] = $id;                //5048.Идентификатор
				$params[5055] = $domain;            //5055.Домен
				$params[50109] = $setParams;        //50110.Набор параметров
				//$params[5014] = $_REQUEST['elem'];
				$this->executeAction($actionId,$params);
			} else echo "Нет прав";
		}
        echo '</div>
              <div class="col-md-3">';
		$result = $this->executeAction(2352,null);
		echo $result[0];
		echo '</div>';
		echo '</div>';
		echo '</div>';
	}

	public function loadPermissions($userId){
		$model = Model::getModel();
		$model->user_id = $userId;
		$model->loadPermissions();
	}
}

?>
