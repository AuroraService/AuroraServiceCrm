<?php
class CreateController {
    public function execute($iParams){
        $model = Model::getModel();
        $id = $iParams[5048] ;

        $pAction = $model->getAction($iParams[5058]);//5058.Действие
        $elemId = $pAction->items[5065]; //5065.Форма

        $domain = $pAction->items[5055];//5055.Домен

        $params2[5048] = $id;//5048.Идентификатор
        $params2[5014] = $elemId;//5014.Исполнитель
        $params2[5055] =  $domain;//5055.Домен

        require_once('eshow.controller.php');
        $contr = new EshowController();
        $contr->execute($params2);
    }

}
?>