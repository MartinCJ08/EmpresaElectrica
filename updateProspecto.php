<!DOCTYPE html>
<?php
include("checksession.php");
>
<html>
<head>
	<title>Modificar Prospecto</title>
	<link rel="stylesheet" type="text/css" href="css/page_style.css">
</head>
<body>
<ul>
  <li><a class="active" href="index.php">Principal</a></li>
  <li><a href="clienteAdmon.php">Clientes</a></li>
  <li><a href="empleadoAdmon.php">Empleados</a></li>
  <li><a href="cotizacionAdmon.php">Cotizaciones</a></li>
  <li><a href="materialAdmon.php">Material</a></li>
  <li><a href="prospectoAdmon.php">Prospecto</a></li>
</ul>

<div style="padding:20px;margin-top:30px;height:1500px;">
<h1>Modificar Prospecto</h1>
<form action="updateSearchProspecto.php" method="post">
idProspecto:
 <input type="text" name="idc" size="5" maxlength="10">
 <input class="buttonSha" type="submit" name="accion" value="Buscar">
</FORM>
</div>
</body>
</html>