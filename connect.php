<?php
header('Content-Type: text/html; charset=utf-8');
session_start();

$servername = "localhost";
$username = "root";
$password = "";
$basename = "le_monde";

// Create connection
$dbc = mysqli_connect($servername, $username, $password, $basename) or 
    die('Error connecting to MySQL server.'.mysqli_error());
mysqli_set_charset($dbc, "utf8");

// Check connection
if($dbc){
   //echo "Connected successfully.";
}

?>