		<?php
				header('Content-Type: application/json');
				$flag=false;
				$conn = mysqli_connect("localhost","root","");
				$db = mysqli_select_db($conn,"esoftwarica");
				
				if($_POST['userType']=="Student")
				{
					$sql="SELECT * FROM student where username='"
						.$_POST['username']."' and password ='"
						.$_POST['password']."'";
				}
				else
				{
					$sql="SELECT * FROM teacher where username='"
						.$_POST['username']."' and password ='"
						.$_POST['password']."'";
				}
				
				$query= mysqli_query($conn,$sql);
				$count = mysqli_num_rows($query);
				if($count)
				{
					$flag=true;
				}				
				print_r(json_encode($flag));
			?>

