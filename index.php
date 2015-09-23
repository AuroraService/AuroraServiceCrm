<?
ini_set('session.save_path', $_SERVER['DOCUMENT_ROOT'] .'../sessions/');
ini_set('session.cookie_lifetime', 1000);
session_start();

// =============== LOAD СONFIG ===============
require_once('inc/config.php');
//  ======== LOAD TEMPLATE ==================================================================================================================================================================================
require_once($var_pth_template.$var_template_index); 
require_once($var_pth_template.$template_header);
?>
<script src="/core/ajax/interface.js"></script>


<?
	
class Controller{
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
	$id = $_REQUEST['id'];
	if (!empty($actionId)){
		if (!empty($id)){
			$domain = $model->getResProperty($id,5051,0); //5051.Type
		}
		//echo 'Action!';
		if($model->checkPermission($actionId,$domain)){
			$contr = $model->getController($actionId);
			require_once($contr->items[503]);   //503.Местоположение
			$contrEnt = new $contr->items[501]; //501.Название
			$params[5058] = $actionId;          //5058.Действие
			$params[5048] = $id;                //5048.Идентификатор
			$params[5055] = $domain;            //5055.Домен
			//$params[5014] = $_REQUEST['elem'];
			$contrEnt->execute($params);
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

$controller = new Controller();
$controller->execute();

require_once($var_pth_template.$template_body_end);

require_once($var_pth_template.$template_body_end);
require_once('temp/footer.php'); // Временная подгрузка меню, пока не готова динамическая
require_once($var_pth_template.$template_end);

?>

<!--




-->