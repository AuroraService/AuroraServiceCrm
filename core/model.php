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
	private $entities;
  
	private $user_id;
  
	private $viewers;      //Массив отображателей [viewer_id]
	
	function __construct(){
		$this->link = mysqli_connect($this->db_host, $this->db_user, $this->db_passwd, 'kb1');
		if (!$this->link) die('Ошибка соединения: ' . mysqli_error());  
		$this->loadVievers();
		$this->loadActions();
		$this->loadControllers();
		$this->estimateControllers();
		$this->loadEntities();
		//$this->loadPermissions();

		//$this->getResourceGen(null,103);
	}

	public function checkPermission($actionId, $domain = null){
		//12354
		$actId = $this->actions[$actionId]->items[5062];
		if (empty($domain)) $domain = $this->actions[$actionId]->items[5055];
		//echo 'domain'.$domain.','.$actId.','.$actionId.',';
		if ($this->perm[$actId][$domain]['perm'] == '1') return 1;
		else return 0;
	}

	public function compare($resource1, $resource2, $formId = null){
		//print_r($resource2);
		if (!empty($formId)){
			$filters[5065] = '%COLUMN%='.$formId;
			$formProps = $this->getResources(112,$filters);
			foreach ($formProps as $formProp){
				$formPropsIds[$formProp->items[5087]] = 1; //5087.Свойство сущности
			}
		}
		$type = $this->getResProperty($resource1->items[5048][0],5051);//5051.Тип
		$props = array();
		$this->getClassPropertiesTransitive($type,$props);
		//$compareFlag = 1;
		foreach ($props as $prop){
			if ((empty($formId)) || ($formPropsIds[$prop->items[5048]])) {
				$propId = $prop->items[5082]; //5082.Идентификатор свойства

				if ($prop->items[50111] == 1) {//50111.Кардинальность
					//echo '<br>' . $propId . ',' . $resource1->items[$propId][0] . ',' . $resource2->items[$propId][0] . '<br>';
					if ($resource1->items[$propId][0] != $resource2->items[$propId][0]) return 0;
				} else {

					foreach ($resource1->items[$propId] as $valueCounter1 => $propValue1) {
						$compareFlag = 0;
						foreach($resource2->items[$propId] as $valueCounter2 => $propValue2){
							//echo '<br>' . $propId . ',' . $resource1->items[$propId][$valueCounter1] . ',' . $resource2->items[$propId][$valueCounter2] . '<br>';
							if ($resource1->items[$propId][$valueCounter1] == $resource2->items[$propId][$valueCounter2]) {$compareFlag = 1; break;}
						}
						if ($compareFlag == 0) return 0;
					}
					foreach ($resource2->items[$propId] as $valueCounter1 => $propValue1) {
						$compareFlag = 0;
						foreach($resource1->items[$propId] as $valueCounter2 => $propValue2){
							//echo '<br>' . $propId . ',' . $resource2->items[$propId][$valueCounter1] . ',' . $resource1->items[$propId][$valueCounter2] . '<br>';
							if ($resource2->items[$propId][$valueCounter1] == $resource1->items[$propId][$valueCounter2]) {$compareFlag = 1; break;}
						}
						if ($compareFlag == 0) return 0;
					}
				}

			}
		}
		return 1;
	}

	private function estimateControllers(){
		foreach ($this->actions as $action){
			if (!empty($action->items[5057]) && empty($action->items[5063])) $action->items[5063] = $this->findController($action->items[5057]);
		}

		foreach ($this->actions as $action){
			$this->perm[$action->items[5062]][$action->items[5055]]['contr']=$this->controllers[$action->items[5063]];
		}
	}

	public function find($text, $domain){
		$text = strtoupper($text);
		$query = 'delete from find';
		$result = mysqli_query($this->link, $query) or die('Запрос не удался: ' . mysqli_error());
		$query = 'insert into find(id,type) select id,type from dim_resource where Upper(name) LIKE "%'.$text.'%" and type = '.$domain;
		//echo $query;
		$result = mysqli_query($this->link, $query) or die('Запрос не удался: ' . mysqli_error());
	}

	private function findController($actionId){
		if (!empty($this->actions[$actionId]->items[5063])) return $this->actions[$actionId]->items[5063];
		else if (!empty($this->actions[$actionId]->items[5057])) return $this->findController($this->actions[$actionId]->items[5057]);
		else return '';
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

	//Получение модели
	public static function getModel(){
		if (empty(Model::$model)) Model::$model = new Model();
		return Model::$model;
	}
  
	public function getViewer($id, $params = null, $model = null){
		require_once($this->viewers[$id]->items[503]);
		$className = $this->viewers[$id]->items[501].'Fabrica';
		$viewerFactory = new $className;
		$viewer = $viewerFactory->getViewer($params,$model);
		return $viewer;
	}

	public function getId($domain){
		$next = (++$this->entities[$domain]->items[5090]);
		$id = $this->entities[$domain]->items[5089].$next;
		$query = 'update entities set counter = '.$next;
		$result = mysqli_query($this->link, $query) or die('Запрос не удался: ' . mysqli_error());
		return $id;
	}

	public function getAction($actionId){
		return $this->actions[$actionId];
	}

	private function getChildColumns($columnId){
		$query =
			"select alias from sColumns
         where pid = $columnId order by CAST(position AS SIGNED)";
		$result = mysqli_query($this->link, $query) or die('Запрос не удался: ' . mysqli_error());
		$columns = '';
		while ($line = mysqli_fetch_array($result, MYSQL_ASSOC)) {
			$columns = $columns . ',' .$line['alias'];
		}
		mysqli_free_result($result);
		$columns = substr($columns,1);
		return $columns;
	}

	//Получение массива свойств класса (Transitive)
	public function getClassPropertiesTransitive($classId,&$props){
		$filters[5083]='%COLUMN% = '.$classId;
		//$ret = $this->getResource(1511, $filters);
		//print_r($ret->items[5048][0]);
		//echo '-----';
		$ret = $this->getClassProperties($classId);
		//print_r($ret->items[5048][0]);
		$props = array_merge($props,$ret);
		$pClassId = $this->getResProperty($classId,5061,0); //5061.Подкласс
		if (!empty($pClassId)){
			$this->getClassPropertiesTransitive($pClassId,$props);
		}
		//return $props;
	}

	public function getClassProperties($classId){
		$query = "select id, ent_id, prop_id, alias, domain, external,virtual, editable, cardinal
		from ent_properties
		where ent_id = $classId";
		//echo $query;
		$result = mysqli_query($this->link, $query) or die('Запрос не удался: ' . mysqli_error());

		$propNum = 0;
		$props = array();
		while ($line = mysqli_fetch_array($result, MYSQL_ASSOC)) {
			$props[$propNum] = new Resource();
			$props[$propNum]->items[5048] = $line['id'];
			$props[$propNum]->items[5083] = $line['ent_id'];
			$props[$propNum]->items[5082] = $line['prop_id'];
			$props[$propNum]->items[506] = $line['alias'];
			$props[$propNum]->items[5055] = $line['domain'];
			$props[$propNum]->items[5084] = $line['external'];
			$props[$propNum]->items[50108] = $line['auto'];
			$props[$propNum]->items[5052] = $line['editable'];
			$props[$propNum]->items[50110] = $line['virtual'];
			$props[$propNum]->items[50111] = $line['cardinal'];
			$propNum++;
		}
		//print_r($props);
		return $props;
	}
/*
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
*/
	public function getColumns2($formId) {
		$lineNum=0;
		$retval = new Table();

		$filters[5065] = '%COLUMN%='.$formId; $orders[504] = 1;
		$columns = $this->getResources(112, $filters, $orders);
		if (!empty($columns)) foreach ($columns as $line){
			$col = new Column($line->items['5048'],$line->items['501'],$line->items['504'],null,null,null,$line->items['5051'],$line->items['5085'],$line->items['5052'],null,$line->items['5057'],null);
			$filters2[5048] = '%COLUMN%='.$line->items[5087];
			$property = $this->getResources(1511, $filters2);
			$col->property = $property[0]->items[5082];
			$col->alias = $property[0]->items[506];
			$col->domain = $property[0]->items[5055];
			//echo 'domain'.$col->domain;
			$col->external = $property[0]->items[5084];
			//echo 'external'.$col->external;
			$col->viewer = $line->items['5086'];
			$col->value_template = $line->items['50112'];
			$retval->cols[$lineNum]=$col;
			$lineNum++;
		}
		return $retval;
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

	public function getController($actionId){
		$actId = $this->actions[$actionId]->items[5062];
		$domain = $this->actions[$actionId]->items[5055];
		return $this->perm[$actId][$domain]['contr'];
	}

	public function getDataSet($table, $formId, $id, $filters = null){
		$entId = $this->getResProperty($formId,507,0); //507.Представление
		$tableName = $this->getResProperty($entId,503,0,0); //503.Местоположение
		$where2 = ' and end_date = "9999-01-01"'; $columns = '';
		foreach ($table->cols as $line)  {
			if (!empty($filters[$line->property])){
				//echo $filters[$line[prop_id]];
				$filter = str_replace('%COLUMN%',$line->alias,$filters[$line->property]);
				//if (($line[domain] == 134) || ($line[domain] == 136)) $filter = $line[alias]." = '".$filters[$line[prop_id]]."'"; else $filter = $line[alias]." = ".$filters[$line[prop_id]];
				$where2 = $where2 ." and ". $filter;
				//echo $filter;
			}
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
		$filter = null;
		$filterNum = 0;
		if (!empty($id)) {
			if ($id == 1) $filter[$filterNum] = "id in (select id from find) "; else $filter[$filterNum] = "id = '".$id."'";
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
		if (!empty($where2)) if (!empty($where))$where = $where . ' and '. substr($where2,5); else $where = ' where '.substr($where2,5);
		//if (!empty($where)) $where = $where . ' and '. substr($where2,5); else if (!empty($where2)) $where = ' where '.substr($where2,5);
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

	function getForm($actionId, $domain = null){
		if (empty($domain)) $action = $this->getAction($actionId);
		else $action = $this->getLeafAction($actionId,$domain);
		return $action->items[5065];
	}

	public function getLeafAction($actionId,$domain){
		$realAction = $this->getRealAction($actionId, $domain);
		return $this->perm[$realAction->items[5062]][$domain]['action'];
	}
	
	public function getRealAction($actionId, $domain){
		$action = $this->getAction($actionId);
		$realAction = $this->perm[$action->items[5062]][$domain]['action'];
		return $realAction;
	}


	public function getResProperty($id,$propId,$direct = 0,$resource = 1){
		$res = $this->getResProperty2($id,$propId,$direct,$resource);
		return $res[0];
	}

	//Получение значений свойств ресурса включая значения свойств родителя
	public function getResPropertyTransitive($id,$propId,$direct = 0,$resource = 1,&$props){
		$ret = $this->getResProperty2($id,$propId,$direct,$resource);
		$props = array_merge($props,$ret);
		//$props = $this->getResource(1511, $filters);
		$pClassIds = $this->getResProperty2($id,5061,0); //5061.Подкласс
		if (!empty($pClassId)) foreach ($pClassIds as $pClassId){
			$this->getResPropertyTransitive($pClassId,$propId,$direct,$resource,$props);
		};
		return $props;
	}

	//Получение значений свойств ресурса
	public function getResProperty2($id,$propId,$direct = 0,$resource = 1){
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


  
  //Получение идентификатора элемента интерфейса для просмотра единичной сущности по идентификатору класса
	/*
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
	*/

  

  /*
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
  */

	public function getResource($resourceId, $type = null){
		if (empty($type)) $type = $this->getResProperty($resourceId,5051);
		$filters[5048] = '%COLUMN% = '.$resourceId;
		$resources = $this->getResources($type,$filters);
		return $resources[0];
	}

	public function getResource2($resourceId, $type = null){
		if (empty($type)) $type = $this->getResProperty($resourceId,5051);
		$filters[5048] = '%COLUMN% = '.$resourceId;
		$resources = $this->getResources2($type,$filters);
		return $resources[0];
	}

	public function getCurrentResource2($resourceId, $type = null){
		if (empty($type)) $type = $this->getResProperty($resourceId,5051);
		$filters[5048] = '%COLUMN% = '.$resourceId;
		$filters[50114] = '%COLUMN%="9999-01-01"';//50114.Дата закрытия записи
		$resources = $this->getResources2($type,$filters);
		return $resources[0];
	}

	//todo
	function getResourcesGen($filters = null, $type = null){
		if (!empty($type)) {
			$result = array();
			$this->getSubClass($type,$result);
			$whereType = 'and type in('.$type;
			if (!empty($result)) foreach ($result as $subClass){
				$whereType = $whereType.','.$subClass;
			}
			$whereType = $whereType.')';
		}
		//$props = array(5048,501,50100);
		if (!empty($filters[5048])) $filterId = 'and '.str_replace('%COLUMN%', 'id', $filters[5048]);
		if (!empty($filters[501])) $filterName = 'and '.str_replace('%COLUMN%', 'name', $filters[501]);
		if (!empty($filters[50100])) $filterSearchName = 'and '.str_replace('%COLUMN%', 'search_name', $filters[50100]);

		$where = substr($whereType.$filterId.$filterName.$filterSearchName,4);
		if (!empty($where)) $where = ' where '.$where;

		$query = "select id,name,search_name,type from dim_resource ".$where;
		//echo $query;
		$result = mysqli_query($this->link, $query) or die('Запрос не удался: ' . mysqli_error());
		$lineNum = 0;
		while ($line = mysqli_fetch_array($result, MYSQL_ASSOC)) {
			$ret[$lineNum] = new Resource();
			$ret[$lineNum]->items[5048] = $line['id'];
			$ret[$lineNum]->items[501] = $line['name'];
			$ret[$lineNum]->items[50100] = $line['search_name'];
			$ret[$lineNum]->items[5051] = $line['type'];
			$lineNum++;
		}
		return $ret;

	}

	//Получение массива ресурсов
	function getResources($entId, $filters = null, $orders = null){
		$tableName = $this->getResProperty($entId,503,0,0); //503.Местоположение
		if (empty($tableName)) return null;

		$entProps = array();
		$this->getClassPropertiesTransitive($entId, $entProps); //1511.Свойство сущности
		$propNum = 0; $where = ''; $order = ''; $columns = '';
		foreach ($entProps as $entProp) {
			if ($entProp->items[5084] == 0) { //5084.Флаг внешнего свойства
				$propId = $entProp->items[5082]; //5082.Идентификатор свойства
				$propAlias = $entProp->items[506]; //506.Псевдоним
				$props[$propNum]['id'] = $propId;
				$props[$propNum]['alias'] = $propAlias;
				if (!empty($filters[$propId])) {
					//echo $filters[$line[prop_id]];
					$filter = str_replace('%COLUMN%', $propAlias, $filters[$propId]);
					//if (($line[domain] == 134) || ($line[domain] == 136)) $filter = $line[alias]." = '".$filters[$line[prop_id]]."'"; else $filter = $line[alias]." = ".$filters[$line[prop_id]];
					$where = $where . " and " . $filter;
				}

				if (!empty($orders[$propId])) {
					$order = $order . "," . $propAlias;
				}
				$columns = $columns . ',' . $propAlias;
				$propNum++;
			}
		}
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

	//Получение массива ресурсов со всеми свойствами
	public function getResources2($entId, $filters = null, $orders = null){
		//echo $entId;
		$resources1 = $this->getResources($entId, $filters, $orders);
		//print_r($resources1);
		//print_r($resources1);
		$resources2 = array();
		$lineCounter = 0;
		foreach ($resources1 as $resource1){
			foreach ($resource1->items as $propId => $propValue) {
				$resources2[$lineCounter]->items[$propId][0] = $propValue;
			}
			$lineCounter++;
		}

		$lineNum = 0;
		$entProps = array();
		$this->getClassPropertiesTransitive($entId, $entProps); //1511.Свойство сущности
		foreach ($resources2 as $key => $resource2) {
			/*
			$query = "select id, ent_id, prop_id, alias, domain, external,virtual
			from ent_properties
			where ent_id = $entId and external = 1";
			$result = mysqli_query($this->link, $query) or die('Запрос не удался: ' . mysqli_error());
			*/
			foreach ($entProps as $extProp){
				if ($extProp->items[5084] == 1) { //5084.Флаг внешнего свойства
					if ($extProp->items[50110] == 1) {
						$direct = 1;
						$propId = $this->getResProperty($extProp->items[5082], 5049, 0); //5082.Идентификатор свойства, 5049.Явдяется обратным
					} else {
						$direct = 0;
						$propId = $extProp->items[5082]; //5082.Идентификатор свойства
					}
					//echo 'propId = '.$extProp->items[5082];
					$values = $this->getResProperty2($resource2->items[5048][0], $propId, $direct,1);
					$valCounter = 0;
					if (!empty($values)) foreach ($values as $value) {
						//echo 'propId = '.$extProp->items[5082].' value = '. $value;
						$resources2[$lineNum]->items[$extProp->items[5082]][$valCounter] = $value; //5082.Идентификатор свойства
						$valCounter++;
					}

				}
			}
			$lineNum++;
		}
		return $resources2;
	}

	public function getResourceValue($resourceId,$template){
		$type = $this->getResProperty($resourceId,5051);
		$resource = $this->getResource($resourceId, $type);
		$props = array();
		$this->getClassPropertiesTransitive($type, $props);

		foreach ($props as $prop){
			//echo 'step';
			if ($prop->items[5084] == 0) { //5084.Флаг внешнего свойства
				$propId = $prop->items[5082];//5082.Идентификатор свойства
				//echo ','.$propId.',';
				$template = str_replace('%' . $propId . '%', $resource->items[$propId], $template);//5082.Идентификатор свойства
			}
		}
		return $template;
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

	//Получить все подклассы данного класса
	public function getSubClass($resourceId, &$result){
		$ret = $this->getResProperty2($resourceId,5061,1);
		if (!empty($ret)) $result = array_merge($result,$ret);
		if (!empty($ret)) foreach($ret as $child){
			$this->getSubClass($child,$result);
		}
	}

	//Создание сущности
	public function insert($resource2, $oldResource2 = null, $type = null){

		//print_r($resource2);
		$props = array();
		if (empty($type)) $type = $resource2->items[5055][0];
		//echo 'Domain:'.$resource2->items[5055][0];
		$this->getClassPropertiesTransitive($type,$props);
		$columns = '';
		$values = '';
		if (empty($resource2->items[5048][0])) $resource2->items[5048][0] = $this->getId($type);
		foreach ($props as $propId => $prop){
			//echo $prop->items[506].',';
			if (($prop->items[50108] != 1) &&
				($prop->items[50110] != 1) &&
				($prop->items[5084] != 1) &&
				(!empty($resource2->items[$prop->items[5082]][0]))){//50108.Автозаполняемое, 5082.Идентификатор свойства,50110.Флаг виртуального свойства
				$columns = $columns.','.$prop->items[506];
				$values = $values.','.$this->quotation($resource2->items[$prop->items[5082]][0],$prop->items[5055]);
			}
		}
		$columns = substr($columns,1);
		$values = substr($values,1);
		$tableName = $this->getResProperty($type,503,0,0);

		$query = 'insert into '.$tableName.' ('.$columns.') values('.$values.')';
		echo $query;

		$result = mysqli_query($this->link, $query) or die('Запрос не удался: ' . mysqli_error());
	}

	//Создание глобальной сущности
	public function insertGlobal($resource2){
		$id = $this->insert($resource2);
		$query = 'insert into dim_resource(id,type) values ('.$id.','.$resource2->items[5055][0].')';
		$result = mysqli_query($this->link, $query) or die('Запрос не удался: ' . mysqli_error());
		return $id;
	}
	
	public function isSubclassOf($classId,$pClassId){
		if ($pClassId == 133) if ($classId == 134 || $classId == 135 || $classId == 136) return 1; else return 0;
	}

	public function closeCurrentVersion($resourceId, $type = null, $table = null){
		if (empty($table)) {
			if (empty($type)) $type = $this->getResProperty($resourceId,5051,0,0);//5051.Тип
			$table = $this->getResProperty($type,503,0,0); //503.Местоположение
		}
		$close_date = date("Y-m-d H:i:s");
		//echo $close_date;
		$query = "update ".$table." set end_date = '".$close_date."' where id = ".$resourceId." and end_date = '9999-01-01'";
		//echo $query;
		$result = mysqli_query($this->link, $query) or die('Запрос не удался: ' . mysqli_error());
		return $close_date;
	}


	//Сохраняет изменения в переданной сущности
	public function update($resource2, $formId){
		$resourceId = $resource2->items[5048][0];//5048.Идентификатор
		$type = $this->getResProperty($resourceId,5051);//5051.Тип
		$oldResource = $this->getResource2($resource2->items[5048][0],$type);
		$compareFlag = $this->compare($resource2,$oldResource, $formId);
		if ($compareFlag != 1) {
			$close_date = $this->closeCurrentVersion($resourceId, $type);
			//$close_date = date("Y-m-d H:i:s");
			$close_date = new DateTime($close_date);
			$close_date->add(new DateInterval('PT1S'));
			$close_date = $close_date->format("Y-m-d H:i:s");

			//Проставление свойств которых нет в форме START
			$filters[5065] = '%COLUMN%='.$formId;
			$formProps = $this->getResources(112,$filters);
			foreach ($formProps as $formProp){
				echo '';
				$formPropsIds[$formProp->items[5087]] = 1; //5087.Свойство сущности
			}
			$entProps = array();
			$this->getClassPropertiesTransitive($type,$entProps);
			foreach($entProps as $entProp){
				$propId = $entProp->items[5082];//5082.Идентификатор свойства
				if ($formPropsIds[$entProp->items[5048]] != 1){//5048.ID
					echo 'OldProp='.$propId;
					if (!empty($oldResource->items[$propId])) foreach ($oldResource->items[$propId] as $propKey => $propValue){
						$resource2->items[$propId][$propKey] = $propValue;
					}
				}
			}
			//Проставление свойств которых нет в форме END

			$resource2->items[50113][0] = $close_date; //50113.StartDate
			$resource2->items[50114][0] = '9999-01-01'; //50114.CloseDate
			$this->insert($resource2, null,$type);
		}
		//print_r($oldResource);
		echo 'CompareFlag='.$compareFlag;
/*
		$props = array();
		//$type = $this->getResProperty($resource2->items[5048][0],5051,0,0);
		$this->getClassPropertiesTransitive($type,$props);
		foreach ($props as $prop){
			$valCounter = 0;
			$propId = $prop->items[5082];
			//echo $propId.',';
			//echo $prop->items[5052];
			if (($prop->items[5052] != 0) && (!empty($resource2->items[$propId]))) foreach ($resource2->items[$propId] as $val){ //5052.Редактируемость, 5082.Идентификатор свойства
				//echo 'Вставка';
				if (!empty($val)) $this->updateProperty($resource2->items[5048][0],$prop,$val);
				$valCounter++;
			}
		}
		*/
	}


	//Изменение свойства сущности
	public function updateProperty($entId,$prop,$propValue,$oldValue = null){
		$type = $this->getResProperty($entId,5051,0,0);//5051.Тип
		$tableName = $this->getResProperty($type,503,0,0); //503.Местоположение
		if (($prop->items[5055] == 134)||($prop->items[5055] == 136)) $value = '"'.$propValue.'"'; else $value = $propValue;
		if ($prop->items[5084] == 0) {$query = 'update '.$tableName.' set '.$prop->items[506].' = '.$value.' where id = '.$entId;
		//else {
		//	if ($this->isSubclassOf($prop[0]->items[5055],133) == 1) $col = ' value '; else $col = 'obj_id';
			//if (!empty($oldValue))
		//	$query = 'update triplets set '.$col.' = '.$value.' where subj_id = '.$entId.' and prop_id = '.$propId;
		//}
		//file_put_contents ('log', $prop[0]->items[5084].$query,FILE_APPEND);
			//echo $query;
		$result = mysqli_query($this->link, $query) or die('Запрос не удался: ' . mysqli_error());
		}
	}
	//Изменение свойства сущности с передачей идентификатора свойства
	public function updateProperty2($entId,$propId,$propValue,$oldValue = null){
		$filters[5048] = '%COLUMN%='.$propId;
		$prop = $this->model->getResource(50,$filters[5048]);
		$this->updateProperty($entId,$prop,$propValue,$oldValue);
	}

	private function quotation($value, $domain){
		if (($domain == 134)||($domain == 136)) $value = '"'.$value.'"';
		return $value;
	}

	private function loadEntities(){
		//$filters[5051] = 12;
		$entities = $this->getResources(10);
		foreach ($entities as $entity){
			$this->entities[$entity->items[5048]]=$entity;
		}
		//print_r($this->entities);
	}

	private function loadVievers(){
		$filters[5051] = '%COLUMN%='.'12';
		$viewers = $this->getResources(12, $filters);
		foreach ($viewers as $viewer){
			$this->viewers[$viewer->items[5048]]=$viewer;
		}
	}

	private function loadActions(){
		$actions = $this->getResources(23, null);
		foreach ($actions as $action){
			$this->actions[$action->items[5048]] = $action;
			$this->perm[$action->items[5062]][$action->items[5055]]['action']=$action;
		}
		//print_r($actions);
	}

	private function loadControllers(){
		$filters[5051] = '%COLUMN%='.'14';
		$controllers = $this->getResources(14, $filters);
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
			//Maxim Chernov 2015-10-15 START
			$apacheSessionId = session_id();
			$session = new Resource2(null);
			$session->items[50103][0]=$apacheSessionId;
			$session->items[5079][0]=$line['id'];
			//echo $apacheSessionId.' '.$line['id'];
			$session->items[5055][0]=168;
			$_SESSION['session_id'] = $sessionId = $this->insert($session);
			//Maxim Chernov 2015-10-15 END
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
	public $value_template;
	
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
	function __construct($items){
		$this->items = $items;
	}
}

?>