<?php

	session_start();
	require('db_connect.php');
	require('functions.php');

	if (isset($_POST['username']) && isset($_POST['password'])) {
		$name = $_POST['username'];
		$pass = $_POST['password'];

		//guard aganist mysql injection
		$username = mysqli_real_escape_string($connection, $name);
		$password = mysqli_real_escape_string($connection, $pass);

		$query = "SELECT * FROM admin WHERE logOnName = '$username' and PrvCode= '$password'";

		$result = mysqli_query($connection, $query) or die(mysqli_error($connection));

		$count = mysqli_num_rows($result);

		if ($count == 1) {
		 	$_SESSION['username'] = $username;
		 	 redirect_to("../public/flights.php");
		 }else{
		 	$e_message = 'Please fill in correct Log In credentials';
		 }


	}

	

?>