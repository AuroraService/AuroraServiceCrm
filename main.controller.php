
<?
	
class Controller{
	static $controller;
	function __construct(){
		//Controller::$controller = this;
	}
	public static function getController(){
		if (empty(Controller::$controller)) Controller::$controller = new Controller();
		return Controller::$controller;
	}

	public function executeAction($actionId, $params){
		$model = Model::getModel();
		$contr = $model->getController($actionId);
		require_once($contr->items[503]);   //503.Местоположение
		$contrEnt = new $contr->items[501]; //501.Название
		$contrEnt->execute($params);

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
	
	if ($model->CheckLogin()!=1){
		$clogin=$model->LogIn();
		if ($clogin!=100){
			require_once($var_pth_template.$template_login_form);
			exit;
		}
	}
	$model->loadPermissions();
	
	//$filters[5082]=5029; $filters[5083]=103;
	
	//$prop = $model->getResource(1511, $filters);
	//if (empty($prop)) echo "Empty!!";
	//print_r($prop);
		
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
}

	private function generateClassName($name, $type){
		return ucfirst($name).$type;
	}
	
	private function generateScriptName($name, $type){
		return $name.'.'.$type.'.php';
	}
}

?>

<!--




-->