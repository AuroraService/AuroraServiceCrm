<?php
class ListController {
    public function execute($params){
        $type = $params[5055];//5055.Домен
        $query = $params[5091];//5091.Поисковый запрос
        $viewer = $params[50178];//50178.Отображатель
        echo $query;

        $model = Model::getModel();
        $filters[50139] = "UPPER(%COLUMN%) LIKE '%".strtoupper($query)."%'";
        $results = $model->getResourcesOpt($type,$filters);
        $viewer=$model->getViewer($viewer,null,null);
        //print_r($results);
        if (!empty($results)) foreach ($results as $result){
            $result = $viewer->show($result,null);
            $ret[0] = $ret[0].$result[0];
        }
        echo $ret[0];
        //echo 'ListController';
    }

}
?>