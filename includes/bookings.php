<?php
	
	session_start();
	require('db_connect.php');
	require('functions.php');

	if (isset($_POST['FirstName']) && isset($_POST['MiddleName']) && isset($_POST['LastName']) && isset($_POST['email']) && isset($_POST['Address']) && isset($_POST['PhoneNum']) && isset($_POST['FlightBooked'])) {
		$FirstName = $_POST['FirstName'];
		$MiddleName = $_POST['MiddleName'];
		$LastName = $_POST['LastName'];
		$Email = $_POST['email'];
		$Address = $_POST['Address'];
		$PhoneNum = $_POST['PhoneNum'];
		$FlightBooked = $_POST['FlightBooked'];
		$f_name = mysqli_real_escape_string($connection, $FirstName);
		$m_name = mysqli_real_escape_string($connection, $MiddleName);
		$l_name = mysqli_real_escape_string($connection, $LastName);
		$mail = mysqli_real_escape_string($connection, $Email);
		$add = mysqli_real_escape_string($connection, $Address);
		$fone = mysqli_real_escape_string($connection, $PhoneNum);
		$flight = mysqli_real_escape_string($connection, $FlightBooked);

		$query = "INSERT INTO person (FirstName, MiddleName, LastName, Address, Email, PhoneNum, FlightBooked) ";
		$query .= "VALUES ('$f_name', '$m_name', '$l_name', '$add', '$mail', '$fone', '$flight')";

		$result = mysqli_query($connection, $query) or die(mysqli_error($connection));

		if ($result) {
			$success= 'Hello ' . $f_name . 'You booking is successful';
			redirect_to('../public/flights.php');
		}
		
	}

?>