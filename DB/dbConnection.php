<?php

$hostname = "localhost";
$username = "root";
$password = "";
$db = "php_frizer";


$connection = new mysqli($hostname, $username, $password, $db) or die("Error: %s\n" . $connection->error);
