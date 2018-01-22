<?php

require('../includes/login.php');
include('../includes/layouts/header.php');

?>


	 <div class="container col-md-6 col-md-offset-3">
        <div class="well well bs-component">

            <form class="form-horizontal" method="post" action="../includes/login.php">
            <?php if (isset($e_message)) { ?><div class="alert alert-danger" role="alert"> <?php echo $e_message;  ?> </div><?php  } ?>
                <fieldset>
                    <legend class="text-center margin-top-100 editContent">
                    	Administrator Log In
                    </legend>
                    
                    <div class="form-group">
                        <label for="email" class="col-lg-2 control-label">Admin Name</label>
                        <div class="col-lg-10">
                            <input type="username" class="form-control" id="username" placeholder="Please enter your Log on Name" name="username" value="">
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="password" class="col-lg-2 control-label">PrvCode</label>
                        <div class="col-lg-10">
                            <input type="password" class="form-control"  name="password">
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

<?php include('../includes/layouts/footer.php'); ?>

	
