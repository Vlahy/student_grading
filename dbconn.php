<?php

$host = "localhost:3308";
$username = "root";
$password = "";
$dbName = "school_board";

$conn = mysqli_connect($host, $username, $password, $dbName) or die ('Can\'t connect to database' . mysqli_error());

?>