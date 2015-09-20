<?
ini_set('session.save_path', $_SERVER['DOCUMENT_ROOT'] .'../sessions/');
session_start();
unset($_SESSION['id']);
unset($_SESSION['hash']); 
header('Location: /');
exit;
?>
