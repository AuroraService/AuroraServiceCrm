<?php
class Search2Controller {
	public function execute($params){
		if ($params[5058] == 2340) return $this->showForm($params); //5058.Действие
		if ($params[5058] == 2336) return $this->find($params); //5058.Действие
	}

	private function showForm($params){
		$rets['0']=$rets['0'].'Hello';
	   $rets['0']='<span onclick="click_close_btn(this)" class="glyphicon glyphicon-remove btn_popup_close"></span><span class="popup_header">Поиск по сотрудникам</span>
       <input type="text" class="form-control control_form_1" placeholder="Поиск" onkeyup="resetFindTimer(this.value);" style="margin-bottom: 10px;">
       <div class="list-group" id="find_list_div" style="overflow-y: scroll; height: 210px; border: 1px solid rgb(204,204,204);"></div>';
       $rets['1']=' data[\'-1\'][\'5091\']="";
  data[\'50129\']=\'-1\';
  data[\'-1\'][\'5058\']=\'2336\'; 
  sendDataJSON(data, \'#find_list_div\');';
       return $rets;
	}

	public function find($params){
		$filt_array=preg_split("/[\s,]+/", strtoupper($params['5091']));
		$fltrs="";
        foreach ($filt_array as $item) {
        	if ($fltrs!="") $fltrs=$fltrs.' AND ';
        	$fltrs=$fltrs.'UPPER(%COLUMN%) LIKE "%'.$item.'%"';
        }
		$filters[50100]=$fltrs;
		$orders[501]=1;
		$model = Model::getModel();
		$list = $model->getResourcesGen($filters,$params['5055'],$orders);
		
		if (!empty($list)) foreach ($list as $element){
			$active="";
			if ($params['5066']==$element->items[5048]) $active=" active";
			if (empty($params[50202])) $reqFlag = 'false'; else $reqFlag = true;
            $rets['0']=$rets['0'].'<span id="group_item_'.$element->items[5048].'" class="list-group-item'.$active.'" style="cursor: pointer" onclick="data[\''.$params['50185'].'\'][\''.$params['5013'].'\'][\''.$params['5082'].'\'][0]='.$element->items[5048].';data[\'50129\']='.$params['50185'].'; data[\'50146\']='.$params['5013'].'; data[\''.$params['50185'].'\'][\'5058\']=2334; sendForm2('.$params[50185].','.$reqFlag.',\''.$params[50202].'\');">'.$element->items[501].'</span>';
		} else $rets['0']=$rets['0'].'<br>';
		return $rets;
	}


}
?>