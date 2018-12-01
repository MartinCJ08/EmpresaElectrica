<!DOCTYPE html>
<html>
<head>
	<title>Ver Cotizacion</title>
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
<h1>Ver Cotizacion</h1>
<form action="viewSearchCotizacion.php" method="post">
ID:
 <input type="text" name="idc" size="5" maxlength="10">
 <input class="buttonSha" type="submit" name="accion" value="Buscar">
 <a class="buttonSha" href="cotizacionAdmon.php">Regresar</a>
</FORM>
</div>
</body>
</html>