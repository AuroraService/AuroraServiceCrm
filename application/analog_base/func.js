var zoom_counter=1;
function CreateZoom(){
  var cell="div-cell";
  zoom_counter=1;
  $("#"+cell).append('<div id="zoom-div" style="position: absolute; top: 200px; left: 40px; height: 150px; width: 35px; background-color: rgba(0,0,0,0.5); text-align: center; padding: 12px 3px; border-radius: 3px;  ">');
  $("#zoom-div").append('<span class="glyphicon glyphicon-check zoom-btn" style="font-size: 24pt;" id="inall_btn" onclick="InAllImg()"></span>');
  $("#zoom-div").append('<span class="glyphicon glyphicon-zoom-out zoom-btn" style="font-size: 18pt;" onclick="ZoomOut()"></span>');
  $("#zoom-div").append('<span id="zoom_span_counter" style="font-size: 18pt; font-weight: bold; cursor: default">1</span>');
  $("#zoom-div").append('<span class="glyphicon glyphicon-zoom-in zoom-btn" style="font-size: 18pt;" onclick="ZoomIn()"></span>');
}

function ZoomIn(){
  if (zoom_counter<10){
  zoom_counter=zoom_counter+1
;  $("#zoom_span_counter").text(zoom_counter);
  var th=$("#img_zoom").attr("height");
  var nh=parseInt(th)+500;
  $("#img_zoom").attr("height", nh);
}
}

function ZoomOut(){
  if (zoom_counter>1){
  zoom_counter=zoom_counter-1;
  $("#zoom_span_counter").text(zoom_counter);
  var th=$("#img_zoom").attr("height");
  var nh=parseInt(th)-500;
  $("#img_zoom").attr("height", nh);
}
}

function InAllImg(){
  $("#img_zoom").attr("height", "584");
  $("#img_zoom").css("margin", "0px auto");
  zoom_counter=1;
  $("#zoom_span_counter").text(zoom_counter);
}



$(document).ready(function(){
  CreateZoom();
});

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
  if ($("#win_2").css("display")=="none"){
  $("#win_2").slideDown(function(){
    $("#zoom-div").css("display", "inline");
    $("#btn_win_").removeClass();
    $("#btn_win_2").addClass("glyphicon glyphicon-chevron-up");
  }); } else {
  $("#win_2").slideUp(function(){
    $("#btn_win_2").removeClass();
    $("#btn_win_2").addClass("glyphicon glyphicon-chevron-down");
  });
  $("#zoom-div").css("display", "none");
  }
});

$("#clear_filter_btn_1").click(function(){
  $(".f1 [value='0']").attr("selected", "selected");
});

$("#clear_filter_btn_2").click(function(){
  $(".f2 [value='0']").attr("selected", "selected");
});