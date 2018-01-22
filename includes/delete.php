<?php

	session_start();
	require('db_connect.php');
	require('functions.php');

	$id = $_GET["id"];

	$query = "DELETE FROM Person WHERE Personid = '$id' ";
	$result = mysqli_query($connection, $query);
	redirect_to('../public/flights.php');

?>