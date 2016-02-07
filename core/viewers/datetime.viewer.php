<?php
class DateTimeViewerFabrica{
	public function getViewer($params, $model){
		return new DateTimeViewer();
	}
}
class DateTimeViewer{
	public function show($cell, $params){
    $length=16;
    $chars = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPRQSTUVWXYZ0123456789";
    $code = "";
    $clen = strlen($chars) - 1;
        /*
    while (strlen($code) < $length) {
            $code .= $chars[mt_rand(0,$clen)];
    }
        */
        $code = $params[50129]."-".$params[5013]."-".$params[5082]."-".$params[5088];
        $for_date=date_create($cell->value);
        $for_date=date_format($for_date, 'd.m.Y H:i');
		$result='<div class="form-group" style="width: 300px;">
                 <div class="input-group date" id="'.$code.'">
                 <input type="text" id="'.$code.'-1" class="form-control fix-height"  value="'.$for_date.'" ';
        if (!$params[5042]){ $result=$result.' disabled'; }
        $result=$result.'/><span class="input-group-addon">
                 <span class="glyphicon glyphicon-calendar"></span>
                 </span>
                 </div>
                 </div>';
        if ($params[5042]){
        $result=$result.'<script type="text/javascript">
                         $(function () {';
        $result=$result."$('#".$code."').datetimepicker( {language: 'ru'});
                        $('#".$code."').change(function () {var dateStr=$('#".$code."-1').val(); editProperty('$params[50129]','$params[5013]','$params[5082]','$params[5088]',dateStr);}) });
            </script>";
                     }
        return $result;
	}
}