<?
   require_once('core/viewers/tech_model.viewer.php');
   $fr= new TechModelViewerFabrica();
   $frs=$fr->getViewer(null,null);
   foreach ($ret22 as $val) {
        echo $frs->show($val, null);
     }
?>