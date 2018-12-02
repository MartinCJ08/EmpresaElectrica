<!DOCTYPE html>
<html>
<head>
	<title>Modificar Cotizacion</title>
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

<h1>Modificar Cotizacion</h1>


idCotizacion:

<form name="form" action="insertCotizacion.php" method="get">
  <input type="text" name="id" id="id" >
<input type="submit" name="accion" value ="Modificar">
</form>

<a class="buttonSha" href="cotizacionAdmon.php">Regresar</a>


</div>
</body>
</html>