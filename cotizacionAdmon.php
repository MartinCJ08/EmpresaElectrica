<!DOCTYPE html>
<html>
<head>
	<title></title>
	<meta charset="utf-8">
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

<div align="center">
	<!--<a class="buttonSha" href="insertCliente.php">Añadir un nuevo cliente</a><br>
	<a class="buttonSha" href="updateCliente.php">Actualizar un cliente</a><br>
	<a class="buttonSha" href="deleteCliente.php">Borrar un cliente</a><br>-->
	<a class="buttonSha" href="insertCotizacion.php">Realizar cotizacion</a><br>
	<a class="buttonSha" href="viewCotizacion.php">Ver cotizacion</a><br>
	<a class="buttonSha" href="updateCotizacion.php">Modificar cotizacion</a><br>
	<a class="buttonSha" href="deleteCotizacion.php">Eliminar cotizacion</a><br>
</div>
<?php
	// Ejemplo de conexión a base de datos MySQL con PHP.
	// Datos de la base de datos
	$usuario = "root";
	$password = "";
	$servidor = "localhost";
	$basededatos = "electricdb";
	
	// creación de la conexión a la base de datos con mysql_connect()
$conexion = mysqli_connect( $servidor, $usuario, "" )
or die ("No se ha podido conectar al servidor BD");
	
	// Selección del a base de datos a utilizar
$db = mysqli_select_db( $conexion, $basededatos ) 
   or die ( "Upps! Pues va a ser que  podido conectar"
        . " a la base de datos" );
	// establecer y realizar consulta. guardamos en variable.
$consulta = "SELECT * FROM cotizacion_breve";

$resultado = mysqli_query( $conexion, $consulta )
        or die ( "Algo ha ido mal en la consulta a la base de datos");

//echo "consulta= ".$consulta ."<br>";
	// Motrar el resultado de los registro de la base de datos
	// Encabezado de la tabla

echo"<center>";
echo "<table>";
	echo "<tr>";
		echo "<th>Id</th>";
		echo "<th>Concepto</th>";
	    echo "<th>Costo Minimo</th>";
	    echo "<th>Costo Maximo</th>";
	    echo "<th>Distancia</th>";
	    echo "<th>Tiempo de Servicio</th>";
	    echo "<th>Tipo de Pago</th>";
	    echo "<th>Cliente</th>";
	echo "</tr>";
	
	// Bucle while que recorre cada registro y muestra cada campo en la tabla.
	while ($registro = mysqli_fetch_array( $resultado ))
		{
		echo "<tr>";
		
		
		echo "<td align='center'>"."<a href=\"viewSearchCotizacion.php?idc=".$registro["ID"]."\"> ".$registro["ID"]  ."</td>";

		
		
		//echo "<td align='center'>".$registro['ID'] . "</td>";
		echo "<td align='center'>".$registro['CONCEPTO']."</td>";
		echo "<td align='center'>".$registro['COSTO_MINIMO']. "</td>";
		echo "<td align='center'>".$registro['COSTO_MAXIMO']. "</td>";
		echo "<td align='center'>".$registro['DISTANCIA']. "</td>";
		echo "<td align='center'>".$registro['TIEMPO SERVICIO']. "</td>";
		echo "<td align='center'>".$registro['TIPO PAGO']. "</td>";
		echo "<td align='center'>".$registro['CLIENTE']. "</td>";

	echo "</tr>";
		}
	echo "</table>"; 
        
 ?>       

<?php
	// cerrar conexión de base de datos
	mysqli_close( $conexion );
?>
</div>
</body>
</html>