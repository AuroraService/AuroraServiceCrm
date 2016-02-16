<?php
class OpNotesController {
	public function execute($params){
		//$ret[0] = 'OpNotesController';
		$model = Model::getModel();
		$orders[5022]=1; //5022.Дата создания
		$filters = null;
		$notes = $model->getResources(1026, $filters,$orders);
        $ret[0]='<div class="b-panel">
                 <p class="msg-header clearfix">
                 <span style="float: left;">Записки операторов</span>
                 <span class="msg-add-open" style="float: right;" id="href-op-msg-add">Добавить<span class="glyphicon glyphicon-chevron-down" style="margin-left: 5px;" id="href-op-msg-add-arrow"></span></span>
                 
                 <span class="msg-add-open" style="float: right; margin-right: 20px;" id="href-op-filters-add">Фильтр<span class="glyphicon glyphicon-chevron-down" id="href-op-filters-add-arrow" style="margin-left: 5px;"></span></span>
                 <span class="glyphicon glyphicon-remove tt" id="filter_clear_btn" style="cursor: pointer; float: right; font-size: 8pt; color: red; margin-right: 5px; margin-top: 3px;" data-toggle="tooltip" data-placement="left" title="Сбросить фильтр"></span>
                 </p>
                 <div id="op-msg-added-form" style="display: none;" up="false">
                 <textarea class="form-control" placeholder="Текст сообщения" style="width: 100%; max-width: 100%;"></textarea>
                 <div class="msg-footer">
                 <input type="checkbox"><span style="line-height: 10px;">Требует исполнения</span>
                 <button type="button" class="btn btn-default btn-xs" style="float: right;">Отправить</button>
                 </div>
                 </div>
                 <div class="op-msg-filters" id="op-msg-filters-form" style="display: none; z-index: 999;" up="false">
                    <input id="filter_input" type="text" class="form-control" style="width: 90%; margin: 10px auto;" onkeyup="checkFilterStatus();"/>
                    <p style="width: 90%; margin: 5px auto;">
                       <input id="fch1" type="checkbox" checked="checked"> В обработке</input><br />
                       <input id="fch2" type="checkbox" checked="checked"> Исполненные</input><br />
                       <input id="fch3" type="checkbox" checked="checked"> Отмененные</input><br />
                    </p>
                 </div><div id="op_view_form">';
		foreach ($notes as $note) {
			if (!empty($note->items[50150])) $user = $model->getResource($note->items[50150],102); //50150.Отправитель сообщения, 102.Сотрудник
			if ($note->items[5014]!="") $perf_user = $model->getResource($note->items[5014],102);
			//echo $note->items[5048] .",".$note->items[5066]. ",".$note->items[50150]. ",".$note->items[5022]. ",".$note->items[50158]. ",".$note->items[50159]. ",".$note->items[5014]. ",".$note->items[50160].'<BR>';
			$frm_date=date("d.m, H:i", strtotime($note->items[5022]));
			$inc_flag=''; // Если стоит флаг исполнения - выводим статус
			if ($note->items[50158]!=0){
				$inc_flag='<div class="btn-group" style="float: right; margin-top: 3px">
                           <button type="button" class="btn btn-primary dropdown-toggle btn-xs" data-toggle="dropdown">Ожидает исполнения <span class="caret"></span></button>
                             <ul class="dropdown-menu" role="menu">
                               <li><a href="#">Исполнить</a></li>
                               <li><a href="#">Отменить</a></li>
                             </ul>
                            </div>';
				if ($note->items[50159]==1) $inc_flag='<span class="label label-success cancelll" style="float: right; margin-top: 3px; color: black">Исполнено: '.$perf_user->items[508].' '.$perf_user->items[509].'</span>';
				if ($note->items[50159]==2) $inc_flag='<span class="label label-warning cancelll" style="float: right; margin-top: 3px; color: black">Отменено</span>';
			}
            $ret[0]=$ret[0].'<div class="panel panel-info msg-main">
                 <div class="panel-heading msg-panel clearfix">
                 <h3 class="panel-title" style="float: left;">'.$user->items[508].' '.$user->items[509].'</h3>
                 <span class="glyphicon glyphicon-info-sign inf" style="color: green; float: right;"></span>
                 <span class="glyphicon glyphicon-tint inf" style="color: black; float: right;"></span>
                 </div>
                 <div class="panel-body msg-body">'.$note->items[5066].'</div>
                 </div>
                 <div class="msg-footer">
                 <span style="font-size: 8pt;">'.$frm_date.'</span>'.$inc_flag.'</div>';

		}
		$ret[0]=$ret[0].'</div></div>';
$ret[1]='<script>
$(".tt").tooltip();

function checkFilterStatus(){
    var res = false;
    if ($("#filter_input").val() != "") res=true;
    if ($("#fch1").prop("checked")) res=true;
    if (!res) $("#filter_clear_btn").css("display", "none");
    else $("#filter_clear_btn").css("display", "inline");
}

$("#href-op-msg-add").click(function(){
  if ($("#op-msg-added-form").attr("up")=="false"){
    $("#op-msg-added-form").slideDown();
    $("#op-msg-added-form").attr("up", "true");
    $("#href-op-msg-add-arrow").removeClass();
    $("#href-op-msg-add-arrow").addClass("glyphicon glyphicon-chevron-up");

  } else {
    $("#op-msg-added-form").slideUp();
    $("#op-msg-added-form").attr("up", "false");
    $("#href-op-msg-add-arrow").removeClass();
    $("#href-op-msg-add-arrow").addClass("glyphicon glyphicon-chevron-down");
  }

})

$("#href-op-filters-add").click(function(){
  if ($("#op-msg-filters-form").attr("up")=="false"){
    $("#op-msg-filters-form").slideDown(function(){
       $("#op-msg-filters-form").attr("up", "true");
    });
    
    $("#href-op-filters-add-arrow").removeClass();
    $("#href-op-filters-add-arrow").addClass("glyphicon glyphicon-chevron-up");

  } else {
    $("#op-msg-filters-form").slideUp();
    $("#op-msg-filters-form").attr("up", "false");
    $("#href-op-filters-add-arrow").removeClass();
    $("#href-op-filters-add-arrow").addClass("glyphicon glyphicon-chevron-down");
  }

})
$("#op-msg-filters-form").mouseleave(function(){
    if ($("#op-msg-filters-form").attr("up")=="true"){
    $("#op-msg-filters-form").slideUp();
    $("#op-msg-filters-form").attr("up", "false");
    $("#href-op-filters-add-arrow").removeClass();
    $("#href-op-filters-add-arrow").addClass("glyphicon glyphicon-chevron-down");
}

})

</script>';

		return $ret;
	}
}
?>