<?php
class OpNotesController {
	public function execute($params){
		//$ret[0] = 'OpNotesController';
		$model = Model::getModel();
		$orders[5022]=2; //5022.Дата создания
		//$filters = $params[5095];
        $filters[5022] = '%COLUMN%>"'.date("Y-m-d H:i:s",mktime(date("H"), date("i"), date("s"), date("m")  , date("d")-2, date("Y"))).'"';
        $filters[50114] = 1;
		$notes1 = $model->getResourcesOpt(1026, $filters,$orders);
        $filters2[50159] = '%COLUMN% = 0';
        $filters2[50158] = '%COLUMN% = 1';
        $filters2[50114] = 1;
        $notes2 = $model->getResourcesOpt(1026, $filters2,$orders);
        if (!empty($notes1) && !empty($notes2)) $notes = array_merge($notes1,$notes2);
        else if (!empty($notes1)) $notes = $notes1; else $notes = $notes2;
        $userId = $params[5079];
        $ret[0]='<div class="b-panel">
                 <p class="msg-header clearfix">
                 <span style="float: left;">Записки операторов</span>
                 <span class="msg-add-open" style="float: right;" id="href-op-msg-add">Добавить<span class="glyphicon glyphicon-chevron-down" style="margin-left: 5px;" id="href-op-msg-add-arrow"></span></span>
                 
                 <span class="msg-add-open" style="float: right; margin-right: 20px;" id="href-op-filters-add">Фильтр<span class="glyphicon glyphicon-chevron-down" id="href-op-filters-add-arrow" style="margin-left: 5px;"></span></span>
                 <span class="glyphicon glyphicon-remove tt" id="filter_clear_btn" style="display: none; cursor: pointer; float: right; font-size: 8pt; color: red; margin-right: 5px; margin-top: 3px;" data-toggle="tooltip" data-placement="left" title="Сбросить фильтр"></span>
                 </p>
                 <div id="op-msg-added-form" style="display: none;" up="false">
                 <textarea class="form-control" placeholder="Текст сообщения" style="width: 100%; max-width: 100%;" onchange="if (data[\'-2\']===undefined) data[\'-2\']={}; if (data[\'-2\'][\'0\']===undefined) data[\'-2\'][\'0\']={}; if (data[\'-2\'][\'0\'][\'5066\']===undefined) data[\'-2\'][\'0\'][\'5066\']={}; data[\'-2\'][\'0\'][\'5066\'][\'0\']=this.value;"></textarea>
                 <div class="msg-footer">
                 <input type="checkbox" onchange="var flag; if (this.checked == true) flag = 1; else flag = 0; if (data[\'-2\']===undefined) data[\'-2\']={}; if (data[\'-2\'][\'0\']===undefined) data[\'-2\'][\'0\']={}; if (data[\'-2\'][\'0\'][\'50158\']===undefined) data[\'-2\'][\'0\'][\'50158\']={}; data[\'-2\'][\'0\'][\'50158\'][\'0\']=flag;"><span style="line-height: 10px;">Требует исполнения</span>
                 <button type="button" class="btn btn-default btn-xs" style="float: right;" onclick="data[\'50126\']={}; data[\'50126\'][\'5079\']='.$userId.';data[\'5058\']=\'\'; data[\'50129\']=-2;data[\'50146\']=0; if (data[\'-2\']===undefined) data[\'-2\']={};data[\'-2\'][\'5058\']=2345;data[\'-2\'][\'5055\']=1026; if (data[\'-2\'][\'0\']===undefined) data[\'-2\'][\'0\']={}; if (data[\'-2\'][\'0\'][\'50150\']===undefined) data[\'-2\'][\'0\'][\'50150\']={}; data[\'-2\'][\'0\'][\'50150\'][\'0\']='.$userId.'; sendForm2(-2,true,-3);">Отправить</button>
                 </div>
                 </div>
                 <div class="op-msg-filters" id="op-msg-filters-form" style="display: none; z-index: 999;" up="false">
                    <input id="filter_input" type="text" class="form-control" style="width: 90%; margin: 10px auto;" onkeyup="checkFilterStatus();"/>
                    <p style="width: 90%; margin: 5px auto;">
                       <input id="fch1" type="checkbox" checked="checked" onclick="checkFilterStatus();"> В обработке</input><br />
                       <input id="fch2" type="checkbox" checked="checked" onclick="checkFilterStatus();"> Исполненные</input><br />
                       <input id="fch3" type="checkbox" checked="checked" onclick="checkFilterStatus();"> Отмененные</input><br />
                    </p>
                 </div><div id="op_view_form">';
		if (!empty($notes)) foreach ($notes as $note) {
            $noteId = $note->items[5048][0];
			if (!empty($note->items[50150][0])) $user = $model->getResourceOpt($note->items[50150][0],102); //50150.Отправитель сообщения, 102.Сотрудник
			if ($note->items[5014][0]!="") $perf_user = $model->getResourceOpt($note->items[5014][0],102);
			//echo $note->items[5048] .",".$note->items[5066]. ",".$note->items[50150]. ",".$note->items[5022]. ",".$note->items[50158]. ",".$note->items[50159]. ",".$note->items[5014]. ",".$note->items[50160].'<BR>';
			$frm_date=date("d.m, H:i", strtotime($note->items[5022][0]));
			$inc_flag=''; // Если стоит флаг исполнения - выводим статус
			if ($note->items[50158][0]!=0){
				$inc_flag='<div class="btn-group" style="float: right; margin-top: 3px">
                           <button type="button" class="btn btn-primary dropdown-toggle btn-xs" data-toggle="dropdown">Ожидает исполнения <span class="caret"></span></button>
                             <ul class="dropdown-menu" role="menu">
                               <li><a href="#" onclick="data[\'50126\']={}; data[\'50126\'][\'5079\']='.$userId.';data[\'50129\']=-2;data[\'50146\']='.$noteId.'; data[\'-2\']={};data[\'-2\'][\'5065\']=15395;data[\'-2\'][\'5055\']=1026;data[\'-2\'][\'5058\']=2334;data[\'-2\'][\''.$noteId.'\']={};data[\'-2\'][\''.$noteId.'\'][\'50159\']={};data[\'-2\'][\''.$noteId.'\'][\'50159\'][\'0\']=1;data[\'-2\'][\''.$noteId.'\'][\'5014\']={};data[\'-2\'][\''.$noteId.'\'][\'5014\'][\'0\']='.$userId.';data[\'-2\'][\''.$noteId.'\'][\'50160\']={};data[\'-2\'][\''.$noteId.'\'][\'50160\'][\'0\']=\''.date("Y-m-d H:i:s").'\';data[\'-2\'][\''.$noteId.'\'][\'5048\']={};data[\'-2\'][\''.$noteId.'\'][\'5048\'][\'0\']='.$noteId.';sendForm2(-2,true,-3);">Исполнить</a></li>
                               <li><a href="#" onclick="data[\'50126\']={}; data[\'50126\'][\'5079\']='.$userId.';data[\'50129\']=-2;data[\'50146\']='.$noteId.'; data[\'-2\']={};data[\'-2\'][\'5065\']=15395;data[\'-2\'][\'5055\']=1026;data[\'-2\'][\'5058\']=2334;data[\'-2\'][\''.$noteId.'\']={};data[\'-2\'][\''.$noteId.'\'][\'50159\']={};data[\'-2\'][\''.$noteId.'\'][\'50159\'][\'0\']=2;data[\'-2\'][\''.$noteId.'\'][\'5014\']={};data[\'-2\'][\''.$noteId.'\'][\'5014\'][\'0\']='.$userId.';data[\'-2\'][\''.$noteId.'\'][\'50160\']={};data[\'-2\'][\''.$noteId.'\'][\'50160\'][\'0\']=\''.date("Y-m-d H:i:s").'\';data[\'-2\'][\''.$noteId.'\'][\'5048\']={};data[\'-2\'][\''.$noteId.'\'][\'5048\'][\'0\']='.$noteId.';sendForm2(-2,true,-3);">Отменить</a></li>
                             </ul>
                            </div>';
				if ($note->items[50159][0]==1) $inc_flag='<span class="label label-success cancelll" style="float: right; margin-top: 3px; color: black">Исполнено: '.$perf_user->items[508][0].' '.$perf_user->items[509][0].'</span>';
				if ($note->items[50159][0]==2) $inc_flag='<span class="label label-warning cancelll" style="float: right; margin-top: 3px; color: black">Отменено</span>';
			}
            $ret[0]=$ret[0].'<div class="panel panel-info msg-main">
                 <div class="panel-heading msg-panel clearfix">
                 <h3 class="panel-title" style="float: left;">'.$user->items[508][0].' '.$user->items[509][0].'</h3>
                 <span class="glyphicon glyphicon-info-sign inf" style="color: green; float: right;"></span>
                 <span class="glyphicon glyphicon-tint inf" style="color: black; float: right;"></span>
                 </div>
                 <div class="panel-body msg-body">'.$note->items[5066][0].'</div>
                 </div>
                 <div class="msg-footer">
                 <span style="font-size: 8pt;">'.$frm_date.'</span>'.$inc_flag.'</div>';

		}
		$ret[0]=$ret[0].'</div></div>';
$ret[1]='data[\'5058\']=\'\';
data[\'-3\']={};
data[\'-3\'][\'5058\']=2352;
data[\'-3\'][\'50181\']=\'#op_notes_result\';
$(".tt").tooltip();

function checkFilterStatus(){
    var res = false;
    if ($("#filter_input").val() != "") res=true;
    if (!$("#fch1").prop("checked")) res=true;
    if (!$("#fch2").prop("checked")) res=true;
    if (!$("#fch3").prop("checked")) res=true;
    if (!res) $("#filter_clear_btn").css("display", "none");
    else $("#filter_clear_btn").css("display", "inline");
}
$("#filter_clear_btn").click(function(){
   $("#filter_input").val("");
   $("#fch1").prop("checked", true);
   $("#fch2").prop("checked", true);
   $("#fch3").prop("checked", true);
   $("#filter_clear_btn").css("display", "none");
});

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

})';

		return $ret;
	}
}
?>