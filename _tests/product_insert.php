<?php
require_once('../core/model.php');
$model = Model::getModel();
//$items[5048][0] = 15265;
$items[50139][0] = 'Test insert2';
$items[50165][0] = 123;
$items[50165][1] = 456;
$res2 = new Resource2($items);

$model->insert($res2,1016);

$res2->items[5048][0]=152630006;
$res2->items[50139][0]='Test insert7';
$res2->items[50165][0]=111;
$model->update($res2,11518,1016);