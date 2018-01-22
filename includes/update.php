<?php
	
	session_start();
	require('db_connect.php');
	require('functions.php');

	if (isset($_POST['FirstName']) && isset($_POST['MiddleName']) && isset($_POST['LastName']) && isset($_POST['email']) && isset($_POST['Address']) && isset($_POST['PhoneNum']) && isset($_POST['FlightBooked'])) {
		
		$id = $_POST['id'];
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

		$query = "UPDATE person SET FirstName = '$f_name', MiddleName = '$m_name', LastName = '$l_name', Address = '$add', Email = '$mail', PhoneNum = '$fone', FlightBooked = '$flight' ";
		$query .= "WHERE Personid = $id ";

		$result = mysqli_query($connection, $query) or die(mysqli_error($connection));

		if ($result) {
			$success= 'Hello ' . $f_name . 'You booking is successful';
			redirect_to('../public/flights.php');
		}
		
	}


?>