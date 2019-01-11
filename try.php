<?php
$initials = "Reymark Arsenio";
$string = $initials;
$token = strtok($string, " ");

$initials = "";



while ($token !== false)
   {
     $initials = $initials.substr($token,0,1);
     $token = strtok(" ");
   }
echo $initials;


?>
