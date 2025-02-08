<?php

$dbServername = "localhost";
$dbUsername = "root";
$dbPassword = "";
$dbName = "warung";

$db = new mysqli($dbServername, $dbUsername, $dbPassword, $dbName);

if ($db->connect_error) {
    die("Connection failed: " . $db->connect_error);
}