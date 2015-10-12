<?php
class CreateController {
    public function execute($iParams){
        $model = Model::getModel();
        $id = $iParams[5048] ;

        $pAction = $model->getAction($iParams[5058]);
        //$action = $model->getRealAction($iParams[5058],$iParams[5055]); //5058.Действие, 5055.Домен
        $elemId = $pAction->items[5065];              //5065.Форма

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

    private function printJavaScript($propId,$propValue,$propCounter,$valueCounter){
        echo '<script language ="JavaScript">';
        $mas = 'mas'.$propCounter;
        if ($valueCounter == 0) echo "var ".$mas." = [];";
        echo $mas."[".$valueCounter."]='".$propValue."';
		data[".$propId."] = ".$mas.";";
        echo "</script>";
    }
}
?>