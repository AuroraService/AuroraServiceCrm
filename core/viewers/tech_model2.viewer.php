<?php
class TechModel2ViewerFabrica{
    public function getViewer($params, $model){
        return new TechModel2Viewer($params, $model);
    }
}
class TechModel2Viewer{
    public $model;
    public $items;
    public function __construct($params, $model){
        $this->model = $model;
    }
    public function show($cell, $params){
            $result['0']='
            <nav class="navbar navbar-default" role="navigation" style="margin-bottom: 10px;">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
          <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">Схемы <b class="caret"></b></a>
          <ul class="dropdown-menu"> ';
        $result['1']='var sh_images = {};';
        $counter=0;
        if (!empty($cell->items[50166])) foreach($cell->items[50166] as $schemaId){
            $counter++;
            $schema = $this->model->getResourceOpt($schemaId,1018);
            $result['0']=$result['0'].'<li><a href="#" im="'.$schema->items[50177][0].'/'.$schema->items[50142][0].'" onclick="changeShemas(\''.$schema->items[50177][0].'/'.$schema->items[50142][0].'\')">'.$schema->items[50197][0].'</a></li>';
            $result['1']=$result['1'].'sh_images['.$counter.']="'.$schema->items[50177][0].'/'.$schema->items[50142][0].'";';
            if (empty($imfr)) $imfr=$schema->items[50177][0].'/'.$schema->items[50142][0];
        }
        $result['1']=$result['1'].'sh_images[0]='.$counter.'; CreateZoom();';
        $result['0']=$result['0'].'</li></ul></ul></div></div></nav>
        <div style="height:600px; background-color: gray; overflow: scroll; margin-bottom: 10px; position: relative;" id="div-cell">
        <div id="img_zoom" style="background: url(/'.$imfr.') no-repeat; width: 100%; height: 584px; background-size: contain;"></div>
        </div><div id="win_z_1"></div>';
      // <img id="img_zoom"" height="584" style=" -moz-user-select: none; -webkit-user-select: none;" src="/'.$imfr.'"></img>
// onmousedown="imMouseDown()" onmouseup="imMouseUp()" onmouseout="imMouseOut();
        return $result;
    }
}