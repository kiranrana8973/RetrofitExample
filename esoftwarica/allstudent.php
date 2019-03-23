<?php
header('Content-Type: application/json');
	$conn = mysqli_connect("localhost","root","");
	$db = mysqli_select_db($conn,"esoftwarica");			
	$sql= "SELECT fname, lname, dob, photo, username FROM student";
	$query= mysqli_query($conn,$sql);			
	$count = mysqli_num_rows($query);
	 if($count)
	 {
		$data= array();
		while($row=mysqli_fetch_assoc($query))
		{
			$data[]=$row;
		}		
		print_r(json_encode($data));
	}
	 else
	 {
        print_r(json_encode("No data"));
	}
?>