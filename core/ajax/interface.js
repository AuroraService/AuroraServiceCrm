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
      //if ( data == 0  ) statusElem.innerHTML = 'Change save';
      //else {
      //  statusElem.innerHTML = 'Safe error';
        //statusElem.innerHTML = data;
      //}
      //alert(data);
    }
  });
}

function sendData2(data, elemId, req, req_data, req_elemId) {
  //alert(data);
  var req=req || false;
  var req_data=req_data || null;
  var req_elemId=req_elemId || null;
  //alert(data['1']['15032']['5014']['0']);
  var str = 'data='+JSON.stringify(data);
  var elemId=elemId || 'dop_form_interface';
  //alert(str);
  $.ajax({
    type: 'POST',
    url: '/core/ajax/interface.php',
    dataType: 'html',
    cache: false,
    data: str,
    success: function(data,status,xhr) {
      var statusElem = document.getElementById(elemId);
      //alert(data);
      //statusElem.innerHTML = data;
      //alert($(elemId).attr("id"));
      $(elemId).text("");
      $(elemId).append(data);
	  //$(elemId).append(data);
      //alert(data);
      if (req) sendData2(req_data, req_elemId);
      switch (data){
        case 0: ShowMessage('Сохранено');
        break;
      }
    },
    error: function (jqXhr, textStatus, errorThrown) {
                      alert("Ошибка '" + jqXhr.status + "' (textStatus: '" + textStatus + "', errorThrown: '" + errorThrown + "')");
                  }
  });
}


function sendDataJSON(data, elemId) {
  var str = 'data='+JSON.stringify(data);
  var elemId=elemId || 'dop_form_interface';
  //alert(str);
  //alert('step2');
  $.ajax({
    type: 'POST',
    url: '/core/ajax/interface.php',
    dataType: 'json',
    cache: false,
    data: str,
    success: function(data,status,xhr) {
      //alert(elemId);
	  //alert(elemId);
	  //alert(data[1]);
      //var statusElem = document.getElementById(elemId);
	  //alert(statusElem);
	  //statusElem.innerHTML=data[0];
      $(elemId).text("");
	  //$(elemId).append('gdsgdsg');
      $(elemId).append(data[0]);
	  //$(elemId).append('<>'.data[1]);
      window.eval(data[1]);

      switch (data){
        case 0: ShowMessage('Сохранено');
        break;
      }
    }
  });
}

function editProperty(form,entId,propId,valCounter,value){
  //alert(form+", "+propId+", "+valCounter+", "+value);
  data[form][entId][propId][valCounter]=value;

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






//===================
var find_timer;
function resetFindTimer(str){
  clearTimeout(find_timer);
  find_timer=setTimeout(function() {findObj(str);}, 500);
}

function findObj(str){
  clearTimeout(find_timer);
  data['-1']['5091']=str;
  data['50129']='-1';
  data['-1']['5058']='2336'; 
  sendDataJSON(data, '#find_list_div');
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
  $('#'+form).css('width', width+'px');
  $('#'+form).css('height', height+'px');
  $('#'+form).css('left', nposleft);
  $('#'+form).css('top', npostop);
  $('#'+form).removeClass();
  $('#'+form).addClass(classes); 
}

function findFormV(obj,objId,propId,propDomain,propValue,objViewer,resultForm,refreshForm){ // Выставляет параметры окна поиска
  //formView('popup_window', 300,600,'fds', obj);
  //var form_data=[];
  setFormParams(obj, 'popup_window', 300,600,10,10);
  //form_data['5058']="2340";
  data['5058']="";
  data['50129']='-1';
  data['-1']={};
  data['-1']['5058']='2340';
  data['-1']['5013']=objId;
  data['-1']['5082']=propId;
  data['-1']['5055']=propDomain;
  data['-1']['5066']=propValue;
  data['-1']['50178']=objViewer;
  data['-1']['50185']=resultForm;
  data['-1']['50202']=refreshForm;
  
  data['-1']['50186']={};
  

  //alert("test:"+objId);
  sendDataJSON(data, '#popup_window')
}

function sendForm(frm){
  data['50129']=frm;
  resultContainer = data[frm]['50181'];
  //alert('start');
  sendDataJSON(data, resultContainer);
}


function sendForm2(frm, req, req_frm) {
   var req = req || false;
  data['50129']=frm;
  resultContainer = data[frm]['50181'];
  //alert(resultContainer);
  var str = 'data='+JSON.stringify(data);
  //var elemId=elemId || 'dop_form_interface';
  $.ajax({
    type: 'POST',
    url: '/core/ajax/interface.php',
    dataType: 'json',
    cache: false,
    data: str,
    success: function(data,status,xhr) {
		//alert(data[0]);
		if (resultContainer != undefined){
			$(resultContainer).text("");
			$(resultContainer).append(data[0]);
		}
      window.eval(data[1]);
	if (req) sendForm2(req_frm);
    }
  });
}