<?php 

//Create a connection to the database
$connection = mysqli_connect('localhost', 'root', '');

//Check whether the database connection is successful, if not throw an error.
if(!$connection){
	die('Database Conection Failed' . mysqli_error($connection));
}

//select the already created database flairairline 
$select_db = mysqli_select_db($connection, 'flairairline');

//check for connection error, if yes throw an error
if (!$select_db) {
	die('Unable to Connect to database' . mysqli_error($connection));
}

?>