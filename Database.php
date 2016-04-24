<?php 
$bdServer="localhost";
$bdUser="root";
$bdPass="";
$bdName="distribuidora";
$connect = @mysql_connect($bdServer,$bdUser,$bdPass);
mysql_select_db($bdName);