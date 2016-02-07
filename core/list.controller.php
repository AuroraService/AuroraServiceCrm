<?php
class ListController {
    public function execute($params){
        $type = $params[5055];//5055.Домен
        $query = $params[5091];//5091.Поисковый запрос
        $viewer = $params[50178];//50178.Отображатель
        $filters= $params[5095];//5095.Фильтр
        //echo "QUERY=".$query."VIEWER=".$viewer;

        $model = Model::getModel();
        $model->log("ListController: DOMAIN=".$type.", QUERY=".$query.", VIEWER=".$viewer);
        if (!empty($query)) $filters[50139] = "UPPER(%COLUMN%) LIKE '%".strtoupper($query)."%'";
        //print_r($filters);
        $results = $model->getResources2Opt($type,$filters);
        //print_r($results);
        //echo 'Viewer='.$viewer;
        if (!empty($viewer)) $viewerEnt=$model->getViewer($viewer,$params[50186],$model);
        //print_r($results);
        if (!empty($results)) foreach ($results as $result){
            //echo 'Viewer='.$result->items[50178][0];
            //if (!empty($params[50186][$result->items[5055]])) $viewerParams = $params[50186][$result->items[5055]]; else $viewerParams = $params[50186];
            if (empty($viewer)) $viewerEnt=$model->getViewer($result->items[50178][0],$params[50186],$model);
            $result = $viewerEnt->show($result,$params[50186]);
            $ret['0'] = $ret['0'].$result['0'];
			$ret['1'] = $ret['1'].$result['1'];
        }
        //echo $ret[1];
        return $ret;
        //echo $ret[0];
        //echo 'ListController';
    }

}
?>