<?php
$a=$_POST['city'];
$output=shell_exec("rscript a.r $a");
$trend = explode("\n", $output);
echo "<h1>Treading on twitter  for $a city</h1>";
for ($i = 5; $i <15; $i++) {
 $len_trend = strlen($trend[$i]);
$len_url= strlen($trend[$i+14]);
$x=substr($trend[$i], 3, $len_trend );
$y=substr($trend[$i+14], 3, $len_url );
echo "<a href=$y><p>$x</p></a>" ; 
} 
?>