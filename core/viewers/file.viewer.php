<?php
class FileViewerFabrica{
	public function getViewer($params, $model){
		return new FileViewer();
	}
}
class FileViewer{
	public function show($cell, $params){
		return '
		<form action="core/ajax/upload.php" method="post" id="my_form" enctype="multipart/form-data">
		<div id="file_name_view" style="display: none;"><span class="label label-primary" id="file_name_span"></span><span class="glyphicon glyphicon-remove btn_popup_close" style="margin-left: 9px;" onclick="fileRemove($(this).parent().parent());"></span></div>
        <input id="inp_file" style="display: inline" type="file" name="userfile" placeholder="Загрузка файла" onchange="fileUpload($(this).parent());" />
        <div class="progress" style="margin-top: 10px; height: 10px; width: 100%; display: none;" id="div_prg">
          <div class="progress-bar" role="progressbar" aria-valuenow="15" aria-valuemin="0" aria-valuemax="100" style="width: 15%;">
            <span class="sr-only">60% Complete</span>
          </div>
        </div>
        <div style="width: 100%;" id="div_viewer"></div>
        </form>
		';
	}
}