
<div class="row" style="width: 100%;">
<div class="col-md-8">
<div class="table-responsive"><table class="table table-condensed">
<?php
$lineNum = 0;
//print_r($viewerData[5093]);
if (!empty($viewerData[5093])) foreach ($viewerData[5093] as $col_value) {
	$propId = $col_value->property;
	//$col_value = $viewerData[$propId][5093];
	echo "<tr>";
	echo "<td>".$col_value->name."</td>";
	echo "<td>";
	if (!empty($viewerData[50115][$propId][0])) foreach ($viewerData[50115][$propId] as $valueCounter =>$propValue) {
		$value = $propValue;
		echo $value;
	}
	echo '</td></tr>';

}
		echo "</table></div>";
		echo '</div>
              <div class="col-md-4" id="dop_form_interface">';
        echo '</div></div>';
		echo '<a onclick="data[50129]='.$formCounter.'; sendData(2334);">Сохранить</a>';

	

?>