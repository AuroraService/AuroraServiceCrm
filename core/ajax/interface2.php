<?php

$json = json_decode($_POST['data'], true);
/*
$data = array(
    'login' => 'anette',
    'fio' => array('Камак','Анна','Яросавовна'),
    'age' => 20,
    'sex' => 'female',
    'work' => 'designer'
);
*/
$data[0] = $json[1024][0];
$data[1] = $json[1025][0];
$data[2] = $json[1027][0];
echo json_encode($data);

//echo 'Ответ';

//$json = json_decode($_POST['checks'], true);
//print_r ($_POST['checks']);
?>