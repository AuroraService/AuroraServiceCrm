<?php
class TimeItemViewerFabrica{
	public function getViewer($params, $model){
		return new TimeItemViewer($params, $model);
	}
}
class TimeItemViewer{
	public $model;
	public $items;
	public function __construct($params, $model){
		$this->model = $model;
		$this->items = $this->model->getComboItems($params[5055]);
	}
	public function show($cell, $params){
		if ($cell->value == '9-12') $selected = "_selected "; else $selected = "";
		$result=$result."<div id = 'tt_sel_1' class='control_time_selector".$selected."' onclick='editProperty(".$params[50129].",".$params[5013].",".$params[5082].",".$params[5088].",\"9-12\"); SelectTime(this);'>9-12</div>";
		if ($cell->value == '12-15') $selected = "_selected "; else $selected = "";
		$result=$result."<div id = 'tt_sel_2' class='control_time_selector".$selected."' onclick='editProperty(".$params[50129].",".$params[5013].",".$params[5082].",".$params[5088].",\"12-15\"); SelectTime(this);'>12-15</div>";
		if ($cell->value == '15-18') $selected = "_selected "; else $selected = "";
		$result=$result."<div id = 'tt_sel_3' class='control_time_selector".$selected."' onclick='editProperty(".$params[50129].",".$params[5013].",".$params[5082].",".$params[5088].",\"15-18\"); SelectTime(this);'>15-18</div>";
		if ($cell->value == 'В течении дня') $selected = "_selected "; else $selected = "";
		$result=$result."<div id = 'tt_sel_4' class='control_time_selector".$selected."' onclick='editProperty(".$params[50129].",".$params[5013].",".$params[5082].",".$params[5088].",\"В течении дня\"); SelectTime(this);'>В течении дня</div>";
		
		/*
        $count_selector=1;
		foreach ($this->items as $elem){
			if ($elem->id == $cell->value) $selected = "_selected "; else $selected = "";
			//$selected = "_selected ";
			//$result = $result."<option".$selected.">".$elem->value."</option>";
			$result=$result.'<div class="control_time_selector'.$selected.'" onclick='editProperty(".$params[50129].",".$params[5013].",".$params[5082].",".$params[5088].",this.value);';>'.$elem->value.'</div>';
			$count_selector=$count_selector+1;
		}
		*/
		$result=$result."<input type='text' value='".$cell->value."' onchange='editProperty(".$params[50129].",".$params[5013].",".$params[5082].",".$params[5088].",this.value);'>";
		$result=$result.'<script>
            function SelectTime(vid) {
            document.getElementById("tt_sel_1").className="control_time_selector";
            document.getElementById("tt_sel_2").className="control_time_selector";
            document.getElementById("tt_sel_3").className="control_time_selector";
            document.getElementById("tt_sel_4").className="control_time_selector";
            vid.className="control_time_selector_selected";
        }
        </script>';

		return $result;
	}
}