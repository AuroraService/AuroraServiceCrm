<?
ini_set('session.save_path', $_SERVER['DOCUMENT_ROOT'] .'../sessions/');
ini_set('session.cookie_lifetime', 1000);
session_start();
require_once('../../core/model.php');
$model = Model::getModel();

?>
<!DOCTYPE html>
<script language ='JavaScript'> data = {};</script>
<html lang="ru">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Тест</title>
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <link href="../../btstrp/css/bootstrap.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <script src="../../btstrp/js/bootstrap.min.js"></script>
 </head>
<body>
<?
    if ($model->CheckLogin()!=1){
      $clogin=$model->LogIn();
      //echo $clogin;
      if ($clogin!=100){
        require_once('includes/login_form.php');
        exit;
      }
    }
echo "<script language ='JavaScript'> data['50126'] = {}; data['50126']['5079']=".$_SESSION['id'].";</script>";
$model->loadPermissions();
require_once('../../main.controller.php');
$contr = new Controller();
$params[5055]=132;
$contr->executeAction(2353,$params);
?>
</body>
<script src="func.js"></script>
</html>