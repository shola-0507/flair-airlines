<script src="https://code.jquery.com/jquery-3.1.0.min.js"></script>
	<script src="https://cdn.rawgit.com/HubSpot/tether/v1.3.4/dist/js/tether.min.js"></script>
	<script src="https://cdn.rawgit.com/FezVrasta/bootstrap-material-design/dist/dist/bootstrap-material-design.iife.min.js"></script>
	<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
	<script src="https://maxcdn.bootstrapcdn.com/js/ie10-viewport-bug-workaround.js"></script>
	<script>
	  $('body').bootstrapMaterialDesign();
	</script>
</body>
</html>
<?php
	//5. close database connection
if (isset($connection)) {
	mysqli_close($connection);
}	
?>