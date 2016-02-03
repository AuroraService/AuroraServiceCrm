<?php
class EntitySaveAddressController {
	public function execute($params){
		$res = $params[5013];
		$res->items[5066][0] = $res->items[5068][0].','.$res->items[5069][0].' обл.,'.$res->items[5070][0].' р-н,'.$res->items[5071][0].$res->items[5072][0].$res->items[5073][0].$res->items[5074][0].$res->items[5075][0];
		return $res;

	}
}
?>