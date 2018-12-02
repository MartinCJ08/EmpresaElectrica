<html>
<head>
   <title>Inicio</title>
   <meta charset="utf-8">
   <link rel="stylesheet" type="text/css" href="css/page_style.css">
</head>
<body>
<ul>
  <li><a class="active" href="indexAdmin.php">Principal</a></li>
  <li><a href="clienteAdmon.php">Clientes</a></li>
  <li><a href="empleadoAdmon.php">Empleados</a></li>
  <li><a href="cotizacionAdmon.php">Cotizaciones</a></li>
  <li><a href="materialAdmon.php">Material</a></li>
  <li><a href="prospectoAdmon.php">Prospecto</a></li>
</ul>

<div style="padding:20px;margin-top:30px;height:1500px;">
<center>
<h1>Página Principal</h1>
<?php
/*
session_start();
if(!$_SESSION){
	echo "Login fallido";
	header("location:login.php");
}else{
	header("indexAdmin.php");
}
*/
include("checksession.php");
include("conec.php");
echo "Sesion iniciada: ". $_SESSION["myemail"];
$link=Conectarse();

?>
<h1><a href="logout.php">Cerrar Sesión</a></h1>
</center>

</div>
</body>
</html>