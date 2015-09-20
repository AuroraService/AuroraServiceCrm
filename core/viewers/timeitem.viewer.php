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
        $count_selector=1;
		foreach ($this->items as $elem){
			if ($elem->id == $cell->value) $selected = "_selected "; else $selected = "";
			//$result = $result."<option".$selected.">".$elem->value."</option>";
			$result=$result.'<div class="control_time_selector'.$selected.'" id="tt_sel_'.$count_selector.'" onclick="SelectTime(tt_sel_'.$count_selector.')"; //"SelectTime(fds)">'.$elem->value.'</div>';
			$count_selector=$count_selector+1;
		}

		return $result.'<script>
            function SelectTime(vid) {
            document.getElementById("tt_sel_1").className="control_time_selector";
            document.getElementById("tt_sel_2").className="control_time_selector";
            document.getElementById("tt_sel_3").className="control_time_selector";
            document.getElementById("tt_sel_4").className="control_time_selector";
            vid.className="control_time_selector_selected";
        }
        </script>';
	}
}