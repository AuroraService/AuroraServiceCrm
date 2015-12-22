<?
for ($i=0; $i < 20; $i++) { 
  $cl_code='';
  if ($i%2) $cl_code="2";
   echo '<a href="#" '.$cl_code.' class="list-group-item';
   if ($i==4) echo ' active';
   echo '">
    <h5 class="list-group-item-heading">EEB 610.0 j</h5>
    <p class="list-group-item-text">
    <span class="label label-default">Kueppersbusch</span>
    <span class="label label-default">Духовой шкаф</span>
    </p>
  </a>';

}

?>