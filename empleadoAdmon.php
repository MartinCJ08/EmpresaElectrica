<!DOCTYPE html>
<html>
<head>
	<title>Empleado</title>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="css/page_style.css">
</head>
<body>
<ul>
  <li><a class="active" href="index.php">Principal</a></li>
  <li><a href="clienteAdmon.php">Clientes</a></li>
  <li><a href="empleadoAdmon.php">Empleados</a></li>
  <li><a href="cotizacionAdmon.php">Cotizaciones</a></li>
  <li><a href="trabajoAdmon.php">Trabajos</a></li>
  <li><a href="materialAdmon.php">Material</a></li>
  <li><a href="equipoAdmon.php">Equipo</a></li>
  <li><a href="prospectoAdmon.php">Prospecto</a></li>
</ul>

<div style="padding:20px;margin-top:30px;height:1500px;">
<div align="center" class="container">
	<a class="buttonSha" href="insertEmpleado.php">Añadir un nuevo empleado</a><br>
	<a class="buttonSha" href="updateEmpleado.php">Actualizar un empleado</a><br>
	<a class="buttonSha" href="deleteEmpleado.php">Borrar un empleado</a><br>
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
$consulta = "SELECT * FROM empleado";

$resultado = mysqli_query( $conexion, $consulta )
        or die ( "Algo ha ido mal en la consulta a la base de datos");

//echo "consulta= ".$consulta ."<br>";
	// Motrar el resultado de los registro de la base de datos
	// Encabezado de la tabla

echo"<center>";
echo "<table>";
	echo "<tr>";
		echo "<th>idEmpleado</th>";
		echo "<th>Nombre</th>";
	    echo "<th>Apellido paterno</th>";
	    echo "<th>Apellido materno</th>";
	    echo "<th>Teléfono</th>";
	    echo "<th>Dirección</th>";
	    echo "<th>email</th>";
	    echo "<th>rfc</th>";
	    echo "<th>Usuario_idUsuario</th>";
	echo "</tr>";
	
	// Bucle while que recorre cada registro y muestra cada campo en la tabla.
	while ($registro = mysqli_fetch_array( $resultado ))
		{
		echo "<tr>";
		echo "<td align='center'>" . $registro['idEmpleado'] . "</td><td>" . $registro['nombre'] . "</td>";
		echo "<td>".$registro['ape-pat']."</td>";
		echo "<td align='center'>".$registro['ape-mat']. "</td>";
		echo "<td align='center'>".$registro['direccion']. "</td>";
		echo "<td align='center'>".$registro['telefono']. "</td>";
		echo "<td align='center'>".$registro['email']. "</td>";
		echo "<td align='center'>".$registro['rfc']. "</td>";
		echo "<td align='center'>".$registro['Usuario_idUsuario']. "</td>";

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