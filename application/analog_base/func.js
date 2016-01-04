var zoom_counter=1;
var find_timer1;
var find_timer2;
var find_timer3;
var find_counter = 0;
function CreateZoom(){
  var cell="win_z_1";
  zoom_counter=1;
  
  $("#"+cell).append('<div id="zoom-div" style="margin: auto; height: 40px; width: 210px; background-color: rgba(0,0,0,0.5); text-align: center; border-radius: 3px; -moz-user-select: none; -webkit-user-select: none;">');
  $("#zoom-div").append('<span class="glyphicon glyphicon-check zoom-btn" style="font-size: 24pt; margin: 0px 10px;" id="inall_btn" onclick="InAllImg()"></span>');
  $("#zoom-div").append('<span class="glyphicon glyphicon-zoom-out zoom-btn" style="font-size: 18pt; margin: 0px 10px;" onclick="ZoomOut()"></span>');
  $("#zoom-div").append('<span id="zoom_span_counter" style="font-size: 18pt; margin: 0px 10px; font-weight: bold; cursor: default">1</span>');
  $("#zoom-div").append('<span class="glyphicon glyphicon-zoom-in zoom-btn" style="font-size: 18pt; margin: 0px 10px;" onclick="ZoomIn()"></span>');
}

function ZoomIn(){
  if (zoom_counter<10){
  zoom_counter=zoom_counter+1
;  $("#zoom_span_counter").text(zoom_counter);
  var th=$("#img_zoom").css("height");
  var nh=parseInt(th)+500;
  $("#img_zoom").css("height", nh);
}
}

function ZoomOut(){
  if (zoom_counter>1){
  zoom_counter=zoom_counter-1;
  $("#zoom_span_counter").text(zoom_counter);
  var th=$("#img_zoom").css("height");
  var nh=parseInt(th)-500;
  $("#img_zoom").css("height", nh);
}
}

function InAllImg(){
  $("#img_zoom").css("height", "584");
  //$("#img_zoom").css("margin", "0px auto");
  zoom_counter=1;
  $("#zoom_span_counter").text(zoom_counter);
}

function changeShemas(pth){
  var cell="div-cell";
  $("#"+cell).text("");
  $("#win_z_1").text("");
  $("#"+cell).append('<img id="img_zoom" height="584" src="/'+pth+'"></img>');
  CreateZoom();
}

$("#btn_win_1").click(function(){
  if ($("#win_1").css("display")=="none"){
  $("#win_1").slideDown(function(){
    $("#btn_win_1").removeClass();
    $("#btn_win_1").addClass("glyphicon glyphicon-chevron-up");
  });
   } else {
  $("#win_1").slideUp(function(){
    $("#btn_win_1").removeClass();
    $("#btn_win_1").addClass("glyphicon glyphicon-chevron-down");
  });
  }
});

$("#btn_win_2").click(function(){
  if ($("#win_12").css("display")=="none"){
  $("#win_12").slideDown(function(){
    $("#zoom-div").css("display", "inline");
    $("#btn_win_").removeClass();
    $("#btn_win_2").addClass("glyphicon glyphicon-chevron-up");
  }); } else {
  $("#win_12").slideUp(function(){
    $("#btn_win_2").removeClass();
    $("#btn_win_2").addClass("glyphicon glyphicon-chevron-down");
  });
  $("#zoom-div").css("display", "none");
  }
});

$("#clear_filter_btn_1").click(function(){
  $(".f1 [value='']").attr("selected", "selected");
});

$("#clear_filter_btn_2").click(function(){
  $(".f2 [value='']").attr("selected", "selected");
});



$("#find_input122").keyup(function(){
  clearTimeout(find_timer1);
  var ft=$("#find_input1").val();
  find_timer1=setTimeout(function() {getFind(1, ft);}, 500);

})
$("#find_input222").keyup(function(){
  clearTimeout(find_timer2);
  var ft=$("#find_input2").val();
  find_timer2=setTimeout(function() {getFind(2, ft);}, 500);
})

function getFind(tp, val){
  //$("#win_1").append(tp+": "+val+"<br />");
  clearTimeout(find_timer1);
  clearTimeout(find_timer2);

  $("#win_1").append(val+"<br />");
  data['5058']="2354";
  data['5055']="1016";
  data['50178']="1212";
  data['5091']=val;
  sendData2(data, "#find_res_2");
}

function updateFilter(obj){
  //alert('fd');
  var frm=$(obj).attr("form");
  var propId=$(obj).attr("propId");
  var action=$(obj).attr("action");
  var viewer=$(obj).attr("viewer");
  var domain=$(obj).attr("domain");
  data['50129']=frm;
  if (data[frm]===undefined) data[frm]={};
  if (data[frm]['5095']===undefined) data[frm]['5095']={};
  data[frm]['5055']=domain;
  data[frm]['50178']=viewer;
  if ($(obj).val()!="") data[frm]['5095'][propId]='%COLUMN%='+$(obj).val(); else data[frm]['5095'][propId]="";
  if (action!=""){
     data['5058']=action;
     //alert(data);
     //sendData2(data, "#find_res_"+frm);
     sendDataJSON(data, "#find_res_"+frm);
     //alert(action);
   }
  //alert($(obj).val());
}

function updateFilter2(frm,propId,value){
  //alert('newUpdate');
  if (data[frm]===undefined) data[frm]={};
  if (data[frm]['5095']===undefined) data[frm]['5095']={};
  if (value!="") data[frm]['5095'][propId]=value; else data[frm]['5095'][propId]="";
}

function sendForm(frm){
  data['50129']=frm;
  resultContainer = data[frm]['50181'];
  sendDataJSON(data, resultContainer);
}

function generateFilterValue(value){
  if (value!="") return "%COLUMN%="+value; else return value;
}



var down = 0;
var x = 0;
var y = 0;
var dx;
var dy;

$("#img_zoom").mousedown(function(){
  down=1;
})

function imMouseDown(){
  down=1;
}

$(document).mouseup(function(){
  down=0;
})

function imMouseUp(){
  down=0;
}

function imMouseOut(){
  alert(down);
}