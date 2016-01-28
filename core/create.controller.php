<?php
class CreateController {
    public function execute($iParams){
        $model = Model::getModel();
        //$id = $iParams[5048] ;
		$pAction = $model->getAction($iParams[5058]);//5058.Действие
		print_r($pAction);
		$domain = $pAction->items[5055];//5055.Домен
		echo 'Domain='.$domain;
		//$id = $model->getId($domain) ;

        
        $elemId = $pAction->items[5065]; //5065.Форма
		
		$items[5048][0]=$id;
		$items[5051][0]=$domain;
		$resource2=new Resource2($items);
		$id=$model->insert($resource2,$domain);
		$java="<script language =\"JavaScript\">
		window.onload = function () {
data={};
data['50130']=1;
data['50126']={};
data['50126']['5079']=".$model->user_id.";
data['5058']='';
data['50129']='1';
data['1']={};
data['1']['5058']=2354;
data['1']['5055']=111;
data['1']['5095']={};
data['1']['5095']['5048']='%COLUMN%=".$elemId."';
data['1']['50178']=1221;
data['1']['50181']='#main_data_container';
data['1']['50186']={};
data['1']['50186']['5048']=".$id.";
data['1']['50186']['5055']=".$domain."; 
data['1']['50202']=1; 
alert('send');
alert(data['1']['5095']['5048']);
		sendForm(1);}</script>";
echo $java;
        

        $params2[5048] = $id;//5048.Идентификатор
        $params2[5014] = $elemId;//5014.Исполнитель
        $params2[5055] =  $domain;//5055.Домен
        $params2[15132] = 1;//15132.Флаг создания
        //echo 'Form:'.$elemId;
/*
        require_once('eshow.controller.php');
        $contr = new EshowController();
        $contr->execute($params2);
		*/
    }

}
?>