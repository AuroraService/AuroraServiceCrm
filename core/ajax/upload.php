<?php

$uploaddir = 'upload/';
$uploadfile = $uploaddir . md5(time()).basename($_FILES['userfile']['name']);

$r='Загрузки небыло';
if (move_uploaded_file($_FILES['userfile']['tmp_name'], $uploadfile)) {
    echo $uploadfile;
} else {
    echo "error";
}

?>