<?php
	
	//Simple function to redirect users to oother pages.
	function redirect_to($new_location){
		header("Location: ". $new_location);
		exit;
	}

?>