<?php 
	$connection = mysqli_connect("localhost", "root", "", "neu_fair_attendance"); //Connection variable
	    
	if(mysqli_connect_error()) {
		echo "Failed to connect: " . mysqli_connect_errno();
	}
?>