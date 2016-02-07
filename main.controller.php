
<?
require_once('core/model.php');	
class Controller{
	static $controller;

	public static function getController(){
		if (empty(Controller::$controller)) Controller::$controller = new Controller();
		return Controller::$controller;
	}

	public function executeAction($actionId, $params){
		//echo 'ACTION='.$actionId;
		$model = Model::getModel();
		$model->log("MainController.executeAction: ACTION=".$actionId);
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
		} else $model->log("MainController.executeAction: ERROR:Недостаточно прав");//echo 'ActionId='.$actionId.', Domain='.$domain.',-Нет прав';
}
	public function execute(){
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



		echo '<br><br><br>';
		//$filters[50114]="%COLUMN%=15341";
		//$orders[5048]=1;
		//$models = $model->getResources2Opt(1027,$filters,$orders);
		//echo '<br><br><br>';
		//print_r($models);

		//$filters[5057]="%COLUMN%=1525171";
		//$ret = $model->getResources(1017,$filters);
		//print_r($ret);

		//$filters[5057]="%COLUMN%=1525170";
		//$filters[50139]="UPPER(%COLUMN%) LIKE '%АН%'";
		//$ret = $model->getResources(1017,$filters);

		//$filters[50178]="%COLUMN%=1";
		//$ret = $model->getResources(1020,$filters);

		//$filters[50178]="%COLUMN%=1";
		//$ret = $model->getResources(1016,null);//1016.Продукт(запчасть)
		//print_r($ret);

		//$filters[50109]="%COLUMN%=15214";
		//$orders[504]=1;
		//$actFilters = $model->getResources2Opt(163,$filters,$orders);
		//print_r($actFilters);


		if ($model->CheckLogin()!=1){
			$clogin=$model->LogIn();
			if ($clogin!=100){
				require_once($var_pth_template.$template_login_form);
				exit;
			}
		}
		$model->loadPermissions();
//TEST START
		//$params[5055]=163;
		//$params[5095][50109]='%COLUMN%=15214';
		//$ret = $this->executeAction(2354,$params);
		//echo $ret[0];
//TEST END
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
              <div class="col-xs-12 col-sm-6 col-md-5 col-lg-4">';
		//$result = $this->executeAction(2352,null);
		echo $result[0];
		echo '</div>';
		echo '</div>';
		echo '</div>';
		echo $result[1];
	}

	public function loadPermissions($userId){
		$model = Model::getModel();
		$model->user_id = $userId;
		$model->loadPermissions();
	}
}

?>
