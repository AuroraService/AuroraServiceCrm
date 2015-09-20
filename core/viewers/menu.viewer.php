<?php
class MenuViewerFabrica{ 
	public function getViewer($params, $model){
		return new MenuViewer();
	}
}
class MenuViewer{//5056.Ссылка,5060.Уровень,5051.Тип,501.Название
	public function show($res, $params){
        $text=$res->items[501];
        if ($res->items[5060]==1){
        	$result='<div class="navbar navbar-inverse navbar-fixed-top" role="navigation"><div class="container"><div class="navbar-header"><button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                     <span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button><a class="navbar-brand" href="/">'.$res->items[501].'</a></div>
                     <div class="navbar-collapse collapse">';
        } elseif ($res->items[5060]==2) {
            $ress='<ul class="nav navbar-nav'; 
            if ($res->items[5051]==2){ $ress=$ress.' navbar-right'; }

            $result=$ress.'">';
        } elseif ($res->items[5060]==3) {
        	$result='<li class="dropdown">
                     <a href="#" class="dropdown-toggle" data-toggle="dropdown">'.$res->items[501].'<b class="caret"></b></a>
                     <ul class="dropdown-menu">';
        } elseif ($res->items[5060]==4) {
        	if ($res->items[5051]==2){
        		$result='<li class="divider"></li>';
        	} else {
        		if ($res->items[5051]!=3){
        	       $result='<li><a href="'.$res->items[5056].'">'.$res->items[501].'</a></li>';
        	   } else {
        	   	   $result='<li class="dropdown-header">'.$res->items[501].'</li>';
        	   }
            }
        } 

        return $result;
	}
	public function footerShow($res, $params){
        if ($res->items[5060]==1){
        	    $result='</div></div></div>';
        	 } elseif ($res->items[5060]==2) {
        		$result='</ul>';
        	} elseif ($res->items[5060]==3) {
        		$result='</ul></li>';
        	} 
		return $result;
	}
}