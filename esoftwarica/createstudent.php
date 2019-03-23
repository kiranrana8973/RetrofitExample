<?php
	
	
	
	if($_SERVER['REQUEST_METHOD']=='POST')
	{
		$conn = mysqli_connect("localhost","root","");
		$db = mysqli_select_db($conn,"esoftwarica");
		
		$ext = pathinfo($_FILES['image']['name'],PATHINFO_EXTENSION);

		$filename="image".rand(0,9000).".".$ext;

		move_uploaded_file($_FILES['image']['tmp_name'],"images/".$filename);	
		
		$sql="insert into users set
				fname='".$_POST['fname']."',
				lname='".$_POST['lname']."',
				dob='".$_POST['dob']."',
				1,				
				username='".$_POST['username']."',
				password='".$_POST['password']."'"				
				;
				 
		$query= mysqli_query($conn,$sql);
		if($query){
			echo "inserted";
		}else{		
			echo "failed";
		}
	}
?>
