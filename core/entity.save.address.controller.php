<?php
class EntitySaveAddressController {
	public function execute($params){
		$res = $params[5013];
		if (!empty($res->items[5068][0])) $country = $res->items[5068][0].',';
		if (!empty($res->items[5069][0])) $area = $res->items[5069][0].' обл.,';
		if (!empty($res->items[5070][0])) $district = $res->items[5070][0].' р-н,';
		if (!empty($res->items[5071][0])) $town = $res->items[5071][0].',';
		if (!empty($res->items[5072][0])) $street = $res->items[5072][0].',';
		if (!empty($res->items[5073][0])) $home = 'д.'.$res->items[5073][0].',';
		if (!empty($res->items[5074][0])) $housing = '/'.$res->items[5074][0].',';
		if (!empty($res->items[5075][0])) $flat = 'кв.'.$res->items[5075][0];

		//$res->items[5066][0] = $res->items[5068][0].','.$res->items[5069][0].' обл.,'.$res->items[5070][0].' р-н,'.$res->items[5071][0].','.$res->items[5072][0].','.$res->items[5073][0].','.$res->items[5074][0].','.$res->items[5075][0];
		$res->items[5066][0] = $country.$area.$district.$town.$street.$home.$housing.$flat;
		return $res;

	}
}
?>