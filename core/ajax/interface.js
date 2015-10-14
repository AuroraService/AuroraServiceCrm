function getXmlHttp(){
  var xmlhttp;
  try {
    xmlhttp = new ActiveXObject("Msxml2.XMLHTTP");
  } catch (e) {
    try {
      xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
    } catch (E) {
      xmlhttp = false;
    }
  }
  if (!xmlhttp && typeof XMLHttpRequest!='undefined') {
    xmlhttp = new XMLHttpRequest();
  }
  return xmlhttp;
}


function load_data(action, domain, id) {
	var req = getXmlHttp()  
	var statusElem = document.getElementById('dop_form_interface') 
	req.onreadystatechange = function() {  
  if (req.readyState == 4) { 
    if(req.status == 200) { 
      statusElem.innerHTML = req.responseText; 
			}
		}

	}

	req.open('GET', '/core/ajax/interface.php?domain='+domain+'&id='+id+'&action='+action, true);  
	req.send(null);
	
}


function sendData(action, elemId) {
  //alert(data[5028]);
  var str = 'data='+JSON.stringify(data);
  var elemId=elemId || 'dop_form_interface';
  $.ajax({
    type: 'POST',
    url: '/core/ajax/interface.php?action='+action,
    dataType: 'html',
    cache: false,
    data: str,
    success: function(data,status,xhr) {
      var statusElem = document.getElementById(elemId);
      statusElem.innerHTML = data;
      if ( data == 0  ) statusElem.innerHTML = 'Change save';
      else {
        statusElem.innerHTML = 'Safe error';
        statusElem.innerHTML = data;
      }
      //alert(data);
    }
  });
}

function sendData2(data, elemId) {

  var str = 'data='+JSON.stringify(data);
  var elemId=elemId || 'dop_form_interface';
  $.ajax({
    type: 'POST',
    url: '/core/ajax/interface.php',
    dataType: 'html',
    cache: false,
    data: str,
    success: function(data,status,xhr) {
      var statusElem = document.getElementById(elemId);
      //alert(data);
      statusElem.innerHTML = data;
      switch (data){
        case 0: ShowMessage('Сохранено');
        break;
      }
    }
  });
}

function setFormParams(selector, form, height, width, classes, offsetTop, offsetLeft, top, left){
  var offsetTop=parseInt(offsetTop) || 0;
  var offsetLeft=parseInt(offsetLeft) || 0;
  var height=parseInt(height) || 100;
  var width=parseInt(width) || 100;
  var top=parseInt(top) || 0;
  var left=parseInt(left) || 0;
  var classes=classes || "find_popup_disp panel panel-default";
  var selectorPos=[];
  var bodyHeight=$('body').height();
  if (selector != null) { // если передан селектор
    selectorPos[1]=parseInt($(selector).offset().left); // позиция селектора
    selectorPos[2]=parseInt($(selector).offset().top);  // позиция селектора
  } else { // если селектора нет, то положение считываем по left top
    selectorPos[1]=left;
    selectorPos[2]=top;
  }
  var nposleft=selectorPos[1]+offsetLeft;   // Расчет новой позиции по горизонтали с учетом смещения
  var npostop=selectorPos[2]+offsetTop;     // Расчет новой позиции по вертикали с учетом смещения
  if (npostop+height>bodyHeight){
    npostop=npostop-height;
  }
  $(form).css('width', width+'px');
  $(form).css('height', height+'px');
  $(form).css('left', nposleft);
  $(form).css('top', npostop);
  $(form).removeClass();
  $(form).addClass(classes); 
}

function editProperty(propId,valCounter,value){
  data[propId][valCounter]=value;
  //alert(value);
}

function editFilter(filterId,value){
  data[5095][filterId]=value;
  //alert(value);
}

function editField(fieldId, value){
  alert(fieldId);
  var field = document.getElementById(fieldId);
  field.innerHTML = '123';
}

function SetFindForm()
{
    if (xmlHttp.readyState==4) {
        document.getElementById('popup_window').innerHTML=xmlHttp.responseText;
        $("#popup_list2").addClass("active");
        window.popup_list_selected="popup_list2";
    }
}

function RequestFindForm(offsetList)
{

  xmlHttp = new XMLHttpRequest();
  xmlHttp.open('GET','core/ajax/edit_selector_form.php?offset='+offsetList,true);
  xmlHttp.onreadystatechange=SetFindForm;
  xmlHttp.send(null);
}
function click_close_btn(){
  $("#popup_window").text("");
  $("#popup_window").removeClass();
  $("#popup_window").addClass("find_popup_dnone");
}

function popup_list_change_item(elem){ 
  $("#"+window.popup_list_selected).removeClass("active");
  elem.className="list-group-item active";
  window.popup_list_selected=elem.id;
}

function Test(){
  alert($("#find_list_div").attr("id"));
    $("#find_list_div").text("fdsfds");
  //document.getElementById('find_list_div').innerHTML='fds';
}

function RemoveMessage(){
  clearInterval(window.timerId);
  $("#message_position_1").removeClass();
  $("#message_position_1").addClass("find_popup_dnone");
}

function ShowMessage(text, type, position){
  var type=type || 1;
  var position=position || 1;
  $("#message_position_"+position).removeClass();
  $("#message_position_"+position).addClass("message_box_disp_"+type+"_"+position);
  $("#message_position_"+position).text(text);
  window.timerId=setInterval("RemoveMessage()", 3000);
}

$(document).ready(function(){

$(".interface_edit").click(function(){


  var form_data=[];
  form_data['5055']=$(this).attr("domain");
  form_data['5099']=$(this).attr("selectid");
  form_data['5058']="2336";
  form_data['9091']="235";
  setFormParams($(this), $("#popup_window"), $(this).attr("win_height"), $(this).attr("win_width"));
  //alert($(this).attr("id"));
  sendData2(form_data, "popup_window");
  
});

//$('body').click(function() {
//    ShowMessage('frew');
//});

});

