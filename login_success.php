<?php
session_start();

if(!$_SESSION["myemail"]){
	echo "Login fallido";
	header("location:login.php");
}else{
	header("indexAdmon.php");
}
?>

<html>
<body>
Login exitoso
</body>
</html>