<?php
	include('../includes/layouts/header.php');
    require('../includes/update.php');

    //get Id from  the Flights.php hidden form
    $id = $_GET["id"];
    $query = "SELECT * FROM Person ";
    $query .= "WHERE Personid = '$id' ";
    $result = mysqli_query($connection, $query);
?> 

	<div class="container col-md-6 col-md-offset-3">
        <div class="well well bs-component">

            <form class="form-horizontal" method="post" action="../includes/update.php">
                <fieldset>
                    <legend style="padding-top:30px;">
                    	Amend Booking
                    </legend>
                    
                    <?php 

                        if (mysqli_num_rows($result)){
                             while($row = mysqli_fetch_assoc($result)) {
                    ?>

                    <input type="hidden" name="id" value="<?php echo $id;?>">

                    <div class="form-group">
                        <label for="username" class="col-lg-2 control-label">First Name</label>
                        <div class="col-lg-10">
                            <input type="username" class="form-control" placeholder="Please enter your First Name" name="FirstName" value="<?php echo $row["FirstName"]; ?>">
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="username" class="col-lg-2 control-label">Middle Name</label>
                        <div class="col-lg-10">
                            <input type="username" class="form-control" placeholder="Please enter your Middle Name" name="MiddleName" value="<?php echo $row["MiddleName"]; ?>">
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="username" class="col-lg-2 control-label">Last Name</label>
                        <div class="col-lg-10">
                            <input type="username" class="form-control" placeholder="Please enter your Last Name" name="LastName" value="<?php echo $row["LastName"]; ?>">
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="email" class="col-lg-2 control-label">Email</label>
                        <div class="col-lg-10">
                            <input type="username" class="form-control" placeholder="Please enter your Email Address" name="email" value="<?php echo $row["Email"]; ?>">
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="username" class="col-lg-2 control-label">Address</label>
                        <div class="col-lg-10">
                            <input type="username" class="form-control" placeholder="Please enter your Address" name="Address" value="<?php echo $row["Address"]; ?>">
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="username" class="col-lg-4 control-label">Phone Number</label>
                        <div class="col-lg-10">
                            <input type="username" class="form-control" placeholder="Please enter your Phone Number" name="PhoneNum" value="<?php echo $row["PhoneNum"]; ?>">
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="username" class="col-lg-4 control-label">Flight Booking</label>
                        <div class="col-lg-10">
                            <input type="username" class="form-control" placeholder="Which Flight would you be booking?" name="FlightBooked" value="<?php echo $row["FlightBooked"]; ?>">
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-lg-10 col-lg-offset-2">
                            <button type="reset" class="btn btn-default">Cancel</button>
                            <button type="submit" class="btn btn-primary">Submit</button>
                        </div>
                    </div>
                </fieldset>
            </form>
        </div>
    </div>

     <?php    } ?>
    <?php } ?>

<?php
	include('../includes/layouts/footer.php');
?>