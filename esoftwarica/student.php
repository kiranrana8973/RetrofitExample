<?php
	$conn = mysqli_connect("localhost","root","");
	$db = mysqli_select_db($conn,"esoftwarica");
			
	$sql= "SELECT CONCAT(fname, ' ', lname) AS fullname , dob, photo , username FROM student where username='".$_GET['username']."'";
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
		echo "no data";
	} 
?>

