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
  //alert(data);
  var str = 'data='+JSON.stringify(data);

  var elemId=elemId || 'dop_form_interface';
  //alert(str);
  $.ajax({
    type: 'POST',
    url: '/core/ajax/interface.php?action='+action,
    dataType: 'html',
    cache: false,
    data: str,
    success: function(data,status,xhr) {
      var statusElem = document.getElementById(elemId);
      $(statusElem).text("");
      $(statusElem).append(data);
      //statusElem.innerHTML = data;
      //alert(data);
      if ( data == 0  ) statusElem.innerHTML = 'Change save';
      else {
        statusElem.innerHTML = 'Safe error';
        //statusElem.innerHTML = data;
      }
      //alert(data);
    }
  });
}

function sendData2(data, elemId, req, req_data, req_elemId) {
  var req=req || false;
  var req_data=req_data || null;
  var req_elemId=req_elemId || null;
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
      if (req) sendData2(req_data, req_elemId);
      switch (data){
        case 0: ShowMessage('Сохранено');
        break;
      }
    }
  });
}

function setFormParams(selector, form, height, width, offsetTop, offsetLeft, classes, top, left){
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

function editProperty(form,propId,valCounter,value){
  //alert(form+", "+propId+", "+valCounter+", "+value);
  data[form][propId][valCounter]=value;

  //alert(value);
}

function editFilter(formId,filterId,value){
  data[formId][5095][filterId]=value;
  //alert(value);
}
/*
function editField(fieldId, value){
  alert(fieldId);
  var field = document.getElementById(fieldId);
  field.innerHTML = '123';
}
*/
function click_close_btn(elem){
  var el=$("#"+elem.parentNode.id);
  $(el).text("");
  $(el).removeClass();
  $(el).addClass("find_popup_dnone");
}

function popup_list_change_item(elem){ 
  var st=$(elem).attr("targetId");
  var targetId=String(targetId) || null;
  if (window.popup_list_selected===undefined){
    window.popup_list_selected=$("#window_popup_hidden").attr("sel_elem");
  }
  $("#"+window.popup_list_selected).removeClass("active");
  elem.className="list-group-item active";
  window.popup_list_selected=elem.id;
  //alert(String(targetId));
  $("#"+st).text($(elem).attr("val"));
  //
  //alert();
  editProperty(1,st.substring(0,st.indexOf("_")), st.substring(st.indexOf("_")+1), $(elem).attr("itemId"));
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

function InputKeyUp(resId, elem, action, domain){
  var form_data=[];
  form_data['5055']=domain;
  form_data['5058']=action;
  form_data['9092']=elem.value;

  sendData2(form_data, resId.id);
}

$(document).ready(function(){

$(".interface_edit").click(function(){
  var form_data=[];
  var form_data_req=[];
  form_data['5055']=$(this).attr("domain");
  form_data['5099']=$(this).attr("selectid");
  form_data['50104']=$(this).attr("item-id");
  //alert($(this).attr("item-id"));
  form_data['5058']="2340";
  form_data['9091']="235";
  form_data['9092']=null;
  form_data['50126']=[];
  form_data['50126']['5079']=data[50126][5079];
  form_data['50126']['50127']=data[50126][50127];
  
  setFormParams($(this), $("#popup_window"), $(this).attr("win_height"), $(this).attr("win_width"), 10,10);
 // sendData2(form_data, "popup_window");
  form_data_req['5055']=$(this).attr("domain");
  form_data_req['5099']=$(this).attr("selectid");
  form_data_req['9091']="235";
  form_data_req['9092']=null;
  form_data_req['5058']="2336";
  form_data_req['50104']=$(this).attr("item-id");
  form_data_req['50126']=[];
  form_data_req['50126']['5079']=data[50126][5079];
  form_data_req['50126']['50127']=data[50126][50127];
  sendData2(form_data, "popup_window", true, form_data_req, "find_list_div");
 // sendData2(form_data, "find_list_div");
});


});

