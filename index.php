<?
ini_set('session.save_path', $_SERVER['DOCUMENT_ROOT'] .'../sessions/');
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
echo '<div class="message_list_view" style="width: 200px; text-align: center; position: fixed; right: 20px; bottom: 60px;">Vot</div>';
require_once('temp/footer.php'); // Временная подгрузка меню, пока не готова динамическая
//require_once($var_pth_template.$template_end);

?>

<!--




-->