<?php

require('../includes/login.php');
include('../includes/layouts/header.php');

	if (isset($_SESSION['username'])) {
		
		$username = $_SESSION['username'];
		$display = "Hello " . $username . " ";
		
	}
?>

<div class="container col-md-12 col-md-offset-1">
        <div class="well well bs-component">
        	<h3 style="margin-top:50px;">
        		<?php echo $display; ?>
        	</h3>
        	<legend>These are the current bookings.</legend>
        	<button class="btn btn-primary"><a href="create.php">+ Add a new Boooking</a></button>
        	 <table class="table">
	            <thead>
	                <tr>
	                    <th>Id</th>
	                    <th>First Name</th>
	                    <th>Last Name</th>
	                    <th>Email</th>                                
	                    <th>Phone Number</th>
	                    <th>Address</th>
	                    <th>Flight Booked</th>
	                    <th>Departure Time</th>                               
	                </tr>
	            </thead>
		            <tbody>                                                         
		            	<?php

							$query = 'SELECT * FROM person';
							$result = mysqli_query($connection, $query);

							if (mysqli_num_rows($result) > 0){
								while($row = mysqli_fetch_assoc($result)) {
									$id = $row["Personid"];
									echo "<tr>";
									echo "<td>" .  $id . " </td>";
									echo "<td>" .  $row["FirstName"]  ."</td>";
									echo "<td>" .  $row["LastName"]  ."</td>";
									echo "<td>" .  $row["Email"]  ."</td>";
									echo "<td>" .  $row["PhoneNum"]  ."</td>";
									echo "<td>" .  $row["Address"]  ."</td>";
									echo "<td>" .  $row["FlightBooked"]  ."</td>";
									echo "<td>" .  $row["Departure Time"]  ."</td>"; ?>

							<?php //Hidden form to GET the id and send to the ammend.php file for update ?>
								<form class="form-horizontal" method="get" action="<?php echo "ammend.php?id=" . $id ?>"> 
								<input type="hidden" name="id" value="<?php echo $id;?>">

								<?php
									echo "<td><button type=\"submit\" class=\"btn btn-primary\">Amend</button></td>";
									echo "</form>"; ?>

							<?php //Hidden form to GET the id and send to the delete.php file ?>
								<form class="form-horizontal" method="get" action="<?php echo "../includes/delete.php?id=" . $id ?>"> 
								<input type="hidden" name="id" value="<?php echo $id;?>">
								
							<?php
							 		echo "<td><button type=\"submit\" class=\"btn btn-primary\">Delete</button></td>";
							 		echo "</form>"; 
							 		echo "</tr>";
								}

							}		
						?>  
                                                         
                        </tbody>
                    </table>
        </div>      
</div>

<?php include('../includes/layouts/footer.php'); 

?>