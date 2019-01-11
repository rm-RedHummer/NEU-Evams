<?php
session_start();

header("Content-Type: image/png");
require "vendor/autoload.php";

use Endroid\QrCode\QrCode;

$qrcode = new QrCode($_GET['qrValue']);

echo $qrcode->writeString();
die();

?>