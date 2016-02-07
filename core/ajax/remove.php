<?php
$fl_name=$_GET['filename'];
if (file_exists($fl_name)){
  if (unlink($fl_name)) echo '0';
   else echo '1000';
} else echo $_GET['filename'].'1010';
?>