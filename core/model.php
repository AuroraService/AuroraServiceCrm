<?php
class Model {
	private static $model;
	
	private $db_host = '127.0.0.1';
	private $db_user = 'root';
	private $db_passwd = '';
	private $link;
	
	private $perm;         //Массив доступа [b_action_id][domain][action/perm/contr]
	private $actions;      //Массив действий [action_id]
	private $controllers;  //Массив контроллеров [contr_id]
  
	private $user_id;
  
	private $viewers;      //Массив отображателей [viewer_id]
	
	function __construct(){
		$this->link = mysqli_connect($this->db_host, $this->db_user, $this->db_passwd, 'kb1');
		if (!$this->link) die('Ошибка соединения: ' . mysqli_error());  
		$this->loadVievers();
		$this->loadActions();
		$this->loadControllers();
		$this->estimateControllers();
		//$this->loadPermissions();
	}
  
	public static function getModel(){
		if (empty(Model::$model)) Model::$model = new Model();
		return Model::$model;
	}
	
	public function search($classId, $query){
		
	}
  
	public function getViewer($id, $params = null, $model = null){
		require_once($this->viewers[$id]->items[503]);
		$className = $this->viewers[$id]->items[501].'Fabrica';
		$viewerFactory = new $className;
		$viewer = $viewerFactory->getViewer($params,$model);
		return $viewer;
	}
  
	private function loadVievers(){
		$filters[5051] = 12;
		$viewers = $this->getResource(12, $filters);
		foreach ($viewers as $viewer){
			$this->viewers[$viewer->items[5048]]=$viewer;
		}
	}

	private function loadActions(){
		$actions = $this->getResource(23, null);
		foreach ($actions as $action){
			$this->actions[$action->items[5048]] = $action;
			$this->perm[$action->items[5062]][$action->items[5055]]['action']=$action;
		}
		//print_r($actions);
	}
	
	private function loadControllers(){
		$filters[5051] = 14;
		$controllers = $this->getResource(14, $filters);
		foreach ($controllers as $controller){
			$this->controllers[$controller->items[5048]]=$controller;
			//$this->actions[]
		}
		//print_r($controllers);
	}
	
	public function loadPermissions(){
		$perms = $this->getResProperty2($this->user_id,5011,0); //5011.Право
		if (!empty($perms)) foreach ($perms as $perm){
			$domain = $this->actions[$perm]->items[5055];
			$actionId = $this->actions[$perm]->items[5062];
			$this->perm[$actionId][$domain]['perm'] = 1;
		}
		//print_r($this->perm[2316]);
	}
	
	private function findController($actionId){
		if (!empty($this->actions[$actionId]->items[5063])) return $this->actions[$actionId]->items[5063];
		else if (!empty($this->actions[$actionId]->items[5057])) return $this->findController($this->actions[$actionId]->items[5057]);
		else return '';
	}
	
	public function getController($actionId){
		$actId = $this->actions[$actionId]->items[5062];
		$domain = $this->actions[$actionId]->items[5055];
		return $this->perm[$actId][$domain]['contr'];
	}
	
	public function getAction($actionId){
		return $this->actions[$actionId];
	}
	
	public function getRealAction($actionId, $domain){
		$action = $this->getAction($actionId);
		$realAction = $this->perm[$action->items[5062]][$domain]['action'];
		return $realAction;
	}
	
	private function estimateControllers(){
		foreach ($this->actions as $action){
			if (!empty($action->items[5057]) && empty($action->items[5063])) $action->items[5063] = $this->findController($action->items[5057]);
		}
		
		foreach ($this->actions as $action){
			$this->perm[$action->items[5062]][$action->items[5055]]['contr']=$this->controllers[$action->items[5063]];
		}
	}

	public function checkPermission($actionId, $domain = null){
		$actId = $this->actions[$actionId]->items[5062];
		if (empty($domain)) $domain = $this->actions[$actionId]->items[5055];
		//echo 'domain'.$domain.','.$actId.','.$actionId.',';
		if ($this->perm[$actId][$domain]['perm'] == '1') return 1;
		else return 0;
	}

	public function getResProperty($id,$propId,$direct = 0,$resource = 1){
		$res = $this->getResProperty2($id,$propId,$direct,$resource);
		return $res[0];
	}
	
	public function getResPropertyTransitive($id,$propId,&$props,$direct = 0,$resource = 1){
		$props = $this->getResProperty2($id,$propId,$direct,$resource);
		//if ()
	}

	public function getResProperty2($id,$propId,$direct = 0,$resource = 1){//123
		if ($propId == 5051){ //5051 - Тип
			$query = 
			"select type res
			from dim_resource
			where id = $id";
		} else if ($propId == 503){ //503.Местоположение
			$query = "select location res from entities e where e.id = $id";
		} else {
			if ($direct == 0) {$relation1 = 'subj_id'; $relation2 = 'obj_id';} else {$relation1 = 'obj_id'; $relation2 = 'subj_id';}
			if ($resource == 0) $relation2 = 'value';
			$query = 
			"select $relation2 res
			from triplets
			where $relation1 = $id and prop_id = $propId";
		}
		//echo $query;
		$result = mysqli_query($this->link, $query) or die('Запрос не удался: ' . mysqli_error());
		$colNum = 0;
		while ($line = mysqli_fetch_array($result, MYSQL_ASSOC)) {
			$ret[$colNum] = $line['res'];
			$colNum++;
		}
		mysqli_free_result($result);
		return $ret;
	}
  
  public function getColumns($formId) {
	$lineNum=0;
	$retval = new Table();
	$query = 
      "select id, name, position, property, alias, domain, type, template , editable, location, pid, external, viewer
       from sColumns
       where form = $formId order by CAST(position AS SIGNED)";
	  // print_r($query);
	$result = mysqli_query($this->link, $query) or die('Запрос не удался: ' . mysqli_error());
    while ($line = mysqli_fetch_array($result, MYSQL_ASSOC)) {
	  $col = new Column($line['id'],$line['name'],$line['position'],$line['property'],$line['alias'],$line['domain'],$line['type'],$line['template'],$line['editable'],$line['location'],$line['parentId'],$line['external']);
	  //echo $lineNum . ":";
	  //print_r($this->viewers[$line['viewer']]);
	  //$vFactory = $this->viewers[$line['viewer']];
	  $params[5055] = $line['domain'];
	  //$col->viewer = $vFactory->getViewer($params,$this);
	  $col->viewer = $this->getViewer($line['viewer'],$params,$this);
	  $retval->cols[$lineNum]=$col;
	  $lineNum++;
    }
	mysqli_free_result($result);
	$retval->colsNum = $lineNum;
	//print_r($retval);
	return $retval;
  }
  
  public function getColumns2($formId) {
	$lineNum=0;
	$retval = new Table();
	
	$filters[5065] = $formId; $orders[504] = 1;
	$columns = $this->getResource(112, $filters, $orders);
	foreach ($columns as $line){
		$col = new Column($line->items['5048'],$line->items['501'],$line->items['504'],null,null,null,$line->items['5051'],$line->items['5085'],$line->items['5052'],null,$line->items['5057'],null);
		$filters2[5048] = $line->items[5087];
		$property = $this->getResource(1511, $filters2);
		$col->property = $property[0]->items[5082];
		$col->alias = $property[0]->items[506];
		$col->domain = $property[0]->items[5055];
		//echo 'domain'.$col->domain;
		$col->external = $property[0]->items[5084];
		//echo 'external'.$col->external;
		$col->viewer = $line->items['5086'];
		$retval->cols[$lineNum]=$col;
		$lineNum++;
	}
	return $retval;
  }
  
  public function getDataSet($table, $formId, $id){
	$entId = $this->getResProperty($formId,507,0); //507.Представление
	$tableName = $this->getResProperty($entId,503,0,0); //503.Местоположение
	foreach ($table->cols as $line)  {
	if ($line->external == '0'){
	  if ($line->type == 0){
		$childCols = $this->getChildColumns($line->id);
		$location = $this->getResProperty($line->domain,503);
		if (!empty($childCols)) $columns = $columns . ", " . "(select concat($childCols) from $location where $location .id = $tableName.$line->alias) ".$line->alias."_value";
		else $columns = $columns . ", " . $line->alias . " ".$line->alias."_value";
	  }
	  if ($line->type == 3) $column = "DATE_FORMAT(".$line->alias.",'".$line->template."') ".$line->alias; else $column = $line->alias;
	  $columns = $columns . ", " . $column;
	  } else {
		  
		  if ($line->external == 1) {$relation = 'subj_id'; $relation2 = 'obj_id'; $property = $line->property;} else {$relation = 'obj_id'; $relation2 = 'subj_id'; $property = $this->getResProperty($line->property,5049,0);} //5049.Явдяется обратным
		  if (!empty($id)) $where = "and triplets.".$relation." = ".$id; else $where = '';
		  $childCols = $this->getChildColumns($line->id);
		  if (empty($childCols)) $childCols = "id";
		  //echo $query;
		  $location = $this->getResProperty($line->domain,503); 
		  //echo $line->domain.$location;
		  $query = "select triplets.$relation id ,triplets.$relation2 ext_id,".$location.".id val_id, concat(".$childCols.") value from triplets 
                    join $location on ".$location.".id  = triplets.$relation2
                    where triplets.prop_id = $property ".$where;
		//echo $query.'<br>'.$line->property;
		  $result = mysqli_query($this->link, $query) or die('Запрос не удался: ' . mysqli_error());
		  $valNum = 0;
          while ($res = mysqli_fetch_array($result, MYSQL_ASSOC)) {
			  if ($prevProp != $line->property) $valNum = 0; else $valNum++;
			  $cell = new Cell($res[val_id],$res[value]); $cell->id = $res[ext_id];
			  $table->ext[$res[id]][$line->property][$valNum] = $cell;
			  $prevProp = $line->property;
		  }
	  }
    }
	$filterNum = 0;
	if (!empty($id)) {
		$filter[$filterNum] = "id = '".$id."'";
		$filterNum++;
	}
	$classId = $this->getResProperty($formId,507,0);
	$tableClassId = $this->getStorageClass($tableName);
	if (!empty($tableClassId) && $classId != $tableClassId) {
		$filter[$filterNum] = "type = '".$classId."'";
		$filterNum++;
	}
	if ($filterNum != 0) {
		$where = " where ";
		foreach ($filter as $condition) {
		  $where = $where . $condition ." and ";
		}
		$where = substr($where,0,strlen($where)-5);
	}
	$columns = substr($columns,2);
	$query = "select $columns from $tableName".$where;
	//echo $query;
	$result = mysqli_query($this->link, $query) or die('Запрос не удался: ' . mysqli_error());
	$lineNum = 0;
    while ($line = mysqli_fetch_array($result, MYSQL_ASSOC)) {
  	  $flag=1;
	  $colNum = 0;
      foreach ($line as $col_value) {
		if (($table->cols[$colNum]->type == 0) && ($flag == 0)) {
			$table->data[$lineNum][$colNum]->id = $col_value;
			$flag = 1; $colNum++;
		} else {
			
			$table->data[$lineNum][$colNum]=new Cell($col_value,$col_value);
			if($table->cols[$colNum]->type != 0) $colNum++; else $flag = 0;
			if($table->cols[$colNum]->external > 0) $colNum++;
		}
      }
  	$lineNum++;
    }
    mysqli_free_result($result);
	return $table;
  }

	private function getChildColumns($columnId){
	  $query = 
        "select alias from sColumns  
         where pid = $columnId order by CAST(position AS SIGNED)";
	  $result = mysqli_query($this->link, $query) or die('Запрос не удался: ' . mysqli_error());
      while ($line = mysqli_fetch_array($result, MYSQL_ASSOC)) {
		  $columns = $columns . ',' .$line['alias'];
	  }
	  mysqli_free_result($result);
	  $columns = substr($columns,1);
	  return $columns;
	}
  
  //Получение идентификатора элемента интерфейса для просмотра единичной сущности по идентификатору класса
	function getEShowElement($classId){
	$query = "select t.subj_id elem_id from triplets t 
                join triplets t2 on t2.subj_id = t.subj_id and t2.prop_id = 507
              where t.obj_id = 115 and t.prop_id = 5015 and t2.obj_id = $classId";
	//echo $query;
	$result = mysqli_query($this->link, $query) or die('Запрос не удался: ' . mysqli_error());
	$line = mysqli_fetch_array($result, MYSQL_ASSOC);
	mysqli_free_result($result);
	return $line['elem_id'];
  }
  //Получение класса хранимых сущностей таблицы
	function getStorageClass($tableName){
	$query = "select class_id from sTables t 
              where t.name = '".$tableName."'";
	$result = mysqli_query($this->link, $query) or die('Запрос не удался: ' . mysqli_error());
	$line = mysqli_fetch_array($result, MYSQL_ASSOC);
	mysqli_free_result($result);
	return $line['class_id'];
  }
  
	function getComboItems($boxId){
	$query = "select r.id id, r.name from triplets t 
                  join dim_resource r on t.subj_id = r.id
                where t.obj_id = $boxId and t.prop_id = 502";
	$result = mysqli_query($this->link, $query) or die('Запрос не удался: ' . mysqli_error());
	$lineNum = 0;
	while ($line = mysqli_fetch_array($result, MYSQL_ASSOC)) {
	  $items[$lineNum] = new Cell($line[id], $line[name]);
	  $lineNum++;
	}
	mysqli_free_result($result);
	return $items;
  }
  
	function getControllerName($elemId){
	if (empty($elemId)) return $retval;
	$retval = $this->getResProperty($elemId,5014,0,0); //5014.Исполнитель
	if (empty($retval)){
		$query = "select t2.value from dim_resource r
		join triplets t1 on t1.subj_id = r.id and t1.prop_id = 5015 -- Представитель
		join triplets t2 on t2.subj_id = t1.obj_id and t2.prop_id = 5014 -- Исполнитель
		where r.id = $elemId";
		$result = mysqli_query($this->link, $query) or die('Запрос не удался: ' . mysqli_error());
		$line = mysqli_fetch_array($result, MYSQL_ASSOC);
		$retval = $line['value'];
	}
	return $retval;
	}
  
	function getResource($entId, $filters = null, $orders = null){
		$tableName = $this->getResProperty($entId,503,0,0); //503.Местоположение
		if (empty($tableName)) return null;
		$query = 
		"select id, ent_id, prop_id, alias, domain, external
		from ent_properties
		where ent_id = $entId and external = 0";
		$result = mysqli_query($this->link, $query) or die('Запрос не удался: ' . mysqli_error());
		$propNum = 0;
		while ($line = mysqli_fetch_array($result, MYSQL_ASSOC)) {
			$props[$propNum]['id'] = $line[prop_id];
			$props[$propNum]['alias']=$line[alias];
			if (!empty($filters[$line[prop_id]])){
				if (($line[domain] == 134) || ($line[domain] == 136)) $filter = $line[alias]." = '".$filters[$line[prop_id]]."'"; else $filter = $line[alias]." = ".$filters[$line[prop_id]];
				$where = $where ." and ". $filter;
			}
			
			if (!empty($orders[$line[prop_id]])){
				$order = $order.",".$line[alias];
			}
			$columns = $columns.','.$line[alias];
			$propNum++;
		}
		mysqli_free_result($result);
		$columns = substr($columns,1);
		if (!empty($where)) $where = " where ".substr($where,5); else $where = "";
		if (!empty($order)) $order = " order by ".substr($order,1); else $order = "";
		$query = "select ".$columns." from ".$tableName.$where.$order;
		//echo $query;
		$result = mysqli_query($this->link, $query) or die('Запрос не удался: ' . mysqli_error());
		$lineNum = 0;
		while ($line = mysqli_fetch_array($result, MYSQL_ASSOC)) {
			$res = new Resource();
			foreach ($props as $prop) $res->items[$prop['id']] = $line[$prop['alias']];
			$ret[$lineNum] = $res;
			$lineNum++;
		}
		mysqli_free_result($result);
		return $ret;
	}
	
	public function isSubclassOf($classId,$pClassId){
		if ($pClassId == 133) if ($classId == 134 || $classId == 135 || $classId == 136) return 1; else return 0;
	}
	
	public function updateProperty($entId,$propId,$propValue,$oldValue = null){
		//file_put_contents ('log', 'hai'.$entId.$propId.$propValue,FILE_APPEND);
		$type = $this->getResProperty($entId,5051,0,0);
		$tableName = $this->getResProperty($type,503,0,0); //503.Местоположение
		//file_put_contents ('log', $tableName.$type.$propId,FILE_APPEND);
		$filters[5082]=$propId; $filters[5083]=$type;
		$prop = $this->getResource(1511, $filters);
		//file_put_contents ('log', 'Go',FILE_APPEND);
		if (empty($prop)) {
			$parentId = $this->getResProperty($type,5061,0); //5061.Подкласс
			//file_put_contents ('log', 'Parent:'.$parentId,FILE_APPEND);
			$filters[5083]=$parentId;
			$prop = $this->getResource(1511, $filters);
		}
		//file_put_contents ('log', 'GO',FILE_APPEND);
		//file_put_contents ('log', $prop[0]->items[506]);
		if (($prop[0]->items[5055] == 134)||($prop[0]->items[5055] == 136)) $value = '"'.$propValue.'"'; else $value = $propValue;
		if ($prop[0]->items[5084] == 0) {$query = 'update '.$tableName.' set '.$prop[0]->items[506].' = '.$value;
		//else {
		//	if ($this->isSubclassOf($prop[0]->items[5055],133) == 1) $col = ' value '; else $col = 'obj_id';
			//if (!empty($oldValue))
		//	$query = 'update triplets set '.$col.' = '.$value.' where subj_id = '.$entId.' and prop_id = '.$propId;
		//}
		//file_put_contents ('log', $prop[0]->items[5084].$query,FILE_APPEND);
		$result = mysqli_query($this->link, $query) or die('Запрос не удался: ' . mysqli_error());
		}
	}
	
	public function getClass($classId){
		$filters[5083]=$classId;
		$props = $this->getResource(1511, $filters);
		$pClassId = $this->getResProperty($type,5061,0); //5061.Подкласс
	}

public function generateCode($length=6) {
    $chars = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPRQSTUVWXYZ0123456789";
    $code = "";
    $clen = strlen($chars) - 1;  
    while (strlen($code) < $length) {
            $code .= $chars[mt_rand(0,$clen)];  
    }
    return $code;
}
	public function CheckLogin(){
		$uid=$_SESSION['id'];
		$uhash=$_SESSION['hash'];
		if ($uhash=="") { $uhash='432423423';}
		$query = "select hash from users where id = '".$uid."'";
		$result = mysqli_query($this->link, $query) or die('Запрос не удался: ' . mysqli_error());
		$line = mysqli_fetch_array($result, MYSQL_ASSOC);
		$this->user_id = $uid;
		return ($uhash==$line['hash']);
	}

	public function LogIn(){
		$ulogin=$_POST['login'];
		$upswd=$_POST['pswd'];
		if (isset($_POST['submit'])){
		if (($ulogin=="") or ($upswd=="")){
			return "101"; // Ошибка - пустой логин или пароль
		} else {
			$upswd=md5(md5($upswd));
			$query = "select id,paswd from users where login='".$ulogin."'";
			$result = mysqli_query($this->link, $query);
			$row_cnt = $result->num_rows;
			$line = mysqli_fetch_array($result, MYSQL_ASSOC);
			if (($upswd!=$line['paswd']) or ($row_cnt<1)){
				return "102"; // Ошибка - неправильный логин или пароль
			} else {
                $uid=$line['id'];
				$uhash=$this->generateCode(10);
				$query = "update users set hash='".$uhash."' where id = $uid";
				$result = mysqli_query($this->link, $query);
				$_SESSION['id']=$uid;
				$_SESSION['hash']=$uhash;
				$this->user_id=$uid;
				return "100"; // Вход без ошибок
			}
		}
	}
	}

	public function ClearSession(){
		unset($_SESSION['id']);
		unset($_SESSION['hash']);
	}
}

class Table{
	public $cols;
	public $data;
	public $colNum;
	public $ext;
}

class Column{
	public $id;
	public $name;
	public $position;
	public $property;
	public $alias;
	public $domain;
	public $type;
	public $template;
	public $editable;
	public $location;
	public $parentId;
	public $external;
	
	public $viewer;
	
	function __construct($id,$name,$position,$property,$alias,$domain,$type,$template,$editable,$location,$parentId,$external){
		$this->id = $id;
		$this->name = $name;
		$this->position = $position;
		$this->property = $property;
		$this->alias = $alias;
		$this->domain = $domain;
		$this->type = $type;
		$this->template = $template;
		$this->editable = $editable;
		$this->location = $location;
		$this->parentId = $parentId;
		$this->external = $external;
	}


}

class Cell{
	public $id;
	//public $extId;
	public $value;

	function __construct($id,$value){
		$this->id = $id;
		$this->value = $value;
	}
}

class Resource{
	public $items;
}

class Resource2{
	public $items;
}

?>