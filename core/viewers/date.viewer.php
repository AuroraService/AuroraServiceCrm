<?php
class DateViewerFabrica{
	public function getViewer($params, $model){
		return new DateViewer();
	}
}
class DateViewer{
	public function show($cell, $params){
    $length=16;
    $chars = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPRQSTUVWXYZ0123456789";
    $code = "";
    $clen = strlen($chars) - 1;  
    while (strlen($code) < $length) {
            $code .= $chars[mt_rand(0,$clen)];  
    } 
        $for_date=date_create($cell->value);
        $for_date=date_format($for_date, 'd.m.Y');
		$result='<div class="form-group" style="width: 300px;">
                 <div class="input-group date" id="'.$code.'">
                 <input type="text" class="form-control" value="'.$for_date.'" ';
        if (!$params[5042]){ $result=$result.' disabled'; }
        $result=$result.'/><span class="input-group-addon">
                 <span class="glyphicon glyphicon-calendar"></span>
                 </span>
                 </div>
                 </div>';
        if ($params[5042]){
        $result=$result.'<script type="text/javascript">
                         $(function () {';
        $result=$result."$('#".$code."').datetimepicker( {pickTime: false, language: 'ru'} ); });
                         </script>";
                     }
        return $result;
	}
}