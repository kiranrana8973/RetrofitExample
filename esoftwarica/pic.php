
<html>

	<body>
		<form method="post" enctype="multipart/form-data">
			<input type="file" name="image">
			<input type="submit" name="submit">		
		</form>
	</body>
</html>
<?Php

echo "<pre>";
print_r($_FILES);
echo "</pre>";
$ext = pathinfo($_FILES['image']['name'],PATHINFO_EXTENSION);

$filename="image".rand(0,9000).".".$ext;


move_uploaded_file($_FILES['image']['tmp_name'],"images/".$filename);

if(move_uploaded_file){
	echo "uploaded";
}else{
	echo "failed";
}
	

?>