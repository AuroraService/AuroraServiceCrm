<?php
class CreateController {
    public function execute($iParams){
        $model = Model::getModel();
        $id = $iParams[5048] ;

        $pAction = $model->getAction($iParams[5058]);
        //$action = $model->getRealAction($iParams[5058],$iParams[5055]); //5058.��������, 5055.�����
        $elemId = $pAction->items[5065];              //5065.�����

        $domain = $pAction->items[5055];
        //echo "Elem:".$elemId.$domain;
        //echo $domain;

        $params2[5048] = $id;
        $params2[5014] = $elemId;
        $params2[5055] =  $domain;
        require_once('eshow.controller.php');
        $contr = new EshowController();
        $contr->execute($params2);
    }

}
?>