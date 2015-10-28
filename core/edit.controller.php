<?php
class EditController {
    public function execute($iParams){
        $model = Model::getModel();
        $resource2 = $iParams[5013];//5013.Объект
        $formId = $iParams[5065];//5065.Форма
        $domain = $iParams[5055];//5055.Домен
        if (!empty($resource2->items[5048][0])) $model->update($resource2,$formId);
        else $model->insertGlobal($resource2, $domain);
    }

}
?>