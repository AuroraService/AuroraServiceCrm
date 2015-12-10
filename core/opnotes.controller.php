<?php
class OpNotesController {
	public function execute($params){
		$ret[0] = 'OpNotesController';
		$model = Model::getModel();
		$orders[5022]=1; //5022.Дата создания
		$filters = null;
		$notes = $model->getResources(1026, $filters,$orders);

		foreach ($notes as $note) {
			$user = $model->getResource($note->items[50150],102); //50150.Отправитель сообщения, 102.Сотрудник
			echo $user->items[509].'<br>';
			echo $note->items[5048] .",".$note->items[5066]. ",".$note->items[50150]. ",".$note->items[5022]. ",".$note->items[50158]. ",".$note->items[50159]. ",".$note->items[5014]. ",".$note->items[50160].'<BR>';
		}
		//print_r($notes);
		return $ret;
	}
}
?>