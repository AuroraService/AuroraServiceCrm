<?
ini_set('session.save_path', $_SERVER['DOCUMENT_ROOT'] .'/sessions/');
ini_set('session.cookie_lifetime', 1000);
session_start();

// =============== LOAD СONFIG ===============
require_once('inc/config.php');
//  ======== LOAD TEMPLATE ==================================================================================================================================================================================
require_once($var_pth_template.$var_template_index); 
require_once($var_pth_template.$template_header);
?>
<script src="/core/ajax/interface.js"></script>
<script src="/core/ajax/paginator.js"></script>

<script language ='JavaScript'> data = {};</script>
<?
	
require_once('main.controller.php');

$controller = new Controller();
$controller->execute();

//require_once($var_pth_template.$template_body_end);

//require_once($var_pth_template.$template_body_end);
echo '<div class="find_popup_dnone" id="popup_window" style="padding: 10px;"></div>'; // элемент для всплывающих окон
echo '<div class="find_popup_dnone" id="message_position_1" style="padding: 10px;"></div>'; // DIV ля сообщений, position: 1
echo '
<style>
.msg-div::-webkit-scrollbar { width: 0; }

/* ie 10+ */
.msg-div { -ms-overflow-style: none; }

/* фф (свойство больше не работает, других способов тоже нет)*/
.msg-div { overflow: -moz-scrollbars-none; }
.dritem{
  cursor: default;
  list-style-type: none;
  text-indent: 0;
  padding: 10px 10px;
  border: 2px solid rgb(59,187,209);
  background-color: rgb(192,231,238);
  margin-bottom: 5px;
  border-radius: 3px;
}
.msg-alert{
	background-color: rgb(238,191,194);
  border: 2px solid rgb(211,56,61);

}
.msg-warning{
	background-color: rgb(240,206,189);
  border: 2px solid rgb(214,134,54);

}
</style>
<div class="msg-div" id="msg_cont" style="width: 300px; text-align: center; position: fixed; right: 20px; bottom: 80px; max-height: 500px;overflow: auto;">
<ul style="width: 100%;">
  <li class="dritem">Первое сообщение</li>
  <li class="dritem msg-alert">Второе сообщение</li>
  <li class="dritem msg-warning">Третье сообщение</li>  <li class="dritem">Первое сообщение</li>
  <li class="dritem msg-alert">Второе сообщение</li>
  <li class="dritem msg-warning">Третье сообщение</li>  <li class="dritem">Первое сообщение</li>
  <li class="dritem msg-alert">Второе сообщение</li>
  <li class="dritem msg-warning">Третье сообщение</li>  <li class="dritem">Первое сообщение</li>
  <li class="dritem msg-alert">Второе сообщение</li>
  <li class="dritem msg-warning">Третье сообщение</li>  <li class="dritem">Первое сообщение</li>
  <li class="dritem msg-alert">Второе сообщение</li>
  <li class="dritem msg-warning">Третье сообщение</li>  <li class="dritem">Первое сообщение</li>
  <li class="dritem msg-alert">Второе сообщение</li>
  <li class="dritem msg-warning">Третье сообщение</li>  <li class="dritem">Первое сообщение</li>
  <li class="dritem msg-alert">Второе сообщение</li>
  <li class="dritem msg-warning">Третье сообщение</li>  <li class="dritem">Первое сообщение</li>
  <li class="dritem msg-alert">Второе сообщение</li>
  <li class="dritem msg-warning">Третье сообщение</li>  <li class="dritem">Первое сообщение</li>
  <li class="dritem msg-alert">Второе сообщение</li>
  <li class="dritem msg-warning">Третье сообщение</li>  <li class="dritem">Первое сообщение</li>
  <li class="dritem msg-alert">Второе сообщение</li>
  <li class="dritem msg-warning">Третье сообщение</li>  <li class="dritem">Первое сообщение</li>
  <li class="dritem msg-alert">Второе сообщение</li>
  <li class="dritem msg-warning">Третье сообщение</li>  <li class="dritem">Первое сообщение</li>
  <li class="dritem msg-alert">Второе сообщение</li>
  <li class="dritem msg-warning">Третье сообщение</li>  <li class="dritem">Первое сообщение</li>
  <li class="dritem msg-alert">Второе сообщение</li>
  <li class="dritem msg-warning">Третье сообщение</li>  <li class="dritem">Первое сообщение</li>
  <li class="dritem msg-alert">Второе сообщение</li>
  <li class="dritem msg-warning">Третье сообщение</li>  <li class="dritem">Первое сообщение</li>
  <li class="dritem msg-alert">Второе сообщение</li>
  <li class="dritem msg-warning">Третье сообщение</li>  <li class="dritem">Первое сообщение</li>
  <li class="dritem msg-alert">Второе сообщение</li>
  <li class="dritem msg-warning">Третье сообщение</li>  <li class="dritem">Первое сообщение</li>
  <li class="dritem msg-alert">Второе сообщение</li>
  <li class="dritem msg-warning">Третье сообщение</li>  <li class="dritem">Первое сообщение</li>
  <li class="dritem msg-alert">Второе сообщение</li>
  <li class="dritem msg-warning">Третье сообщение</li>  <li class="dritem">Первое сообщение</li>
  <li class="dritem msg-alert">Второе сообщение</li>
  <li class="dritem msg-warning">Третье сообщение</li>
</ul></div>';
echo '<div style="position: fixed; bottom: 80px; height: 20px; width: 100px; background-color: black;" onclick="messageAdd();"></div>';
//echo '<div class="message_list_view" >Vot</div>';
require_once('temp/footer.php'); // Временная подгрузка меню, пока не готова динамическая
//require_once($var_pth_template.$template_end);

?>

<!--




-->