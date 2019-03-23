<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "esoftwarica";

// Create connection
$conn = mysqli_connect($servername, $username, $password, $dbname);
// Check connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

$sql = "insert into student(fname,lname,batchId,dob,username,password) values('".
	$_POST['fname']."','".
	$_POST['lname']."',1,'".
	$_POST['dob']."','".
	$_POST['username']."','".
	$_POST['password']."')";

if (mysqli_query($conn, $sql)) {
     echo json_encode("true");
} else {
     echo json_encode("false");
}

mysqli_close($conn);
?>
