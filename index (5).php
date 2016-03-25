<?php
$x = htmlspecialchars($_GET["x"]);
$y = htmlspecialchars($_GET["y"]);

$myfile = fopen("tst/Data.html", "w") or die("Unable to open file!");
$txt = $x." ".$y;
fwrite($myfile, $txt);
fclose($myfile);
echo $txt;
?>