

<html>
<head>
   <title>Sesión Cerrada</title>
   <meta charset="utf-8">
   <link rel="stylesheet" type="text/css" href="css/page_style.css">
</head>
<body>

<div style="padding:20px;margin-top:30px;height:1500px;">
<center>
<?php
session_start();

if(!$_SESSION){

}else{
	echo "<h1>Sesion cerrada: ". $_SESSION["myemail"]."</h1>";
	session_unset();
	session_destroy();
}
header("login.php");
?>

<h1><a href="index.php">Regresar a inicio</a></h1>
</center>

</div>
</body>
</html>