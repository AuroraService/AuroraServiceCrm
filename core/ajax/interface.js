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


function sendData(action) {
  //alert(data[5028]);
  var str = 'data='+JSON.stringify(data);
  $.ajax({
    type: 'POST',
    url: '/core/ajax/interface.php?action='+action,
    dataType: 'html',
    cache: false,
    data: str,
    success: function(data,status,xhr) {
      var statusElem = document.getElementById('dop_form_interface');
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

$(document).ready(function(){

$(".interface_edit").click(function(){
  if ($(this).attr("id")==""){
    return
  }
  var pos=[];
  var offset=[];
  var bh=$('body').height() ;
  var mheight=parseInt($(this).attr("win_height")); // Максимальная высота всплывающего окна
  var mwidth=parseInt($(this).attr("win_width"));

  offset[1]=10; // смещение окна по горизонтали
  offset[2]=10; // мещение окна по вертикали
  pos[1]=$(this).offset().left; // позиция элемента, вызвавшего событие
  pos[2]=$(this).offset().top;  // позиция элемента, вызвавшего событие
  var nposleft=pos[1]+offset[1]; // Расчет новой позиции по горизонтали
  var npostop=pos[2]+offset[2]; // Расчет новой позиции по вертикали
  if (npostop+mheight>bh){
    npostop=npostop-mheight;
  }
  //alert(npostop+mheight+", "+bh);
  $("#popup_window").css('width', mwidth+'px');
  $("#popup_window").css('height', mheight+'px');
  $("#popup_window").css('left', nposleft);
  $("#popup_window").css('top', npostop);
  RequestFindForm(mheight-70); // максимальная высота списка в окошке
  $("#popup_window").removeClass();
  $("#popup_window").addClass("find_popup_disp panel panel-default");
  
  
});

$(".popup_find_list_item").click(function(){
  alert($(this).attr('id'));
})

});
