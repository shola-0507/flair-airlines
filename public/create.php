<?php
	include('../includes/layouts/header.php');
?>

	<div class="container col-md-6 col-md-offset-3">
        <div class="well well bs-component">

            <form class="form-horizontal" method="post" action="../includes/bookings.php">
                <fieldset>
                    <legend style="padding-top:30px;">
                    	Create New Booking
                    </legend>
                    
                    <div class="form-group">
                        <label for="username" class="col-lg-2 control-label">First Name</label>
                        <div class="col-lg-10">
                            <input type="username" class="form-control" placeholder="Please enter your First Name" name="FirstName" value="">
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="username" class="col-lg-2 control-label">Middle Name</label>
                        <div class="col-lg-10">
                            <input type="username" class="form-control" placeholder="Please enter your Middle Name" name="MiddleName" value="">
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="username" class="col-lg-2 control-label">Last Name</label>
                        <div class="col-lg-10">
                            <input type="username" class="form-control" placeholder="Please enter your Last Name" name="LastName" value="">
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="email" class="col-lg-2 control-label">Email</label>
                        <div class="col-lg-10">
                            <input type="username" class="form-control" placeholder="Please enter your Email Address" name="email" value="">
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="username" class="col-lg-2 control-label">Address</label>
                        <div class="col-lg-10">
                            <input type="username" class="form-control" placeholder="Please enter your Address" name="Address" value="">
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="username" class="col-lg-4 control-label">Phone Number</label>
                        <div class="col-lg-10">
                            <input type="username" class="form-control" placeholder="Please enter your Phone Number" name="PhoneNum" value="">
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="username" class="col-lg-4 control-label">Flight Booking</label>
                        <div class="col-lg-10">
                            <input type="username" class="form-control" placeholder="Which Flight would you be booking?" name="FlightBooked" value="">
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-lg-10 col-lg-offset-2">
                            <button class="btn btn-default"><a href="flights.php">Cancel</a></button>
                            <button type="submit" class="btn btn-primary">Submit</button>
                        </div>
                    </div>
                </fieldset>
            </form>
        </div>
    </div>

<?php
	include('../includes/layouts/footer.php');
?>