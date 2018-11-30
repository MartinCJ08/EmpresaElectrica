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
  <li><a href="#cotizacionAdmon.php">Cotizaciones</a></li>
  <li><a href="#trabajoAdmon.php">Trabajos</a></li>
  <li><a href="#materialAdmon.php">Material</a></li>
  <li><a href="#equipoAdmon.php">Equipo</a></li>
  <li><a href="#prospectoAdmon.php">Prospecto</a></li>
</ul>

<div style="padding:20px;margin-top:30px;height:1500px;">

<div align="center">
	<a class="buttonSha" href="insertMaterial.php">Añadir material</a><br>
	<a class="buttonSha" href="updateMaterial.php">Actualizar material</a><br>
	<a class="buttonSha" href="deleteMaterial.php">Borrar material</a><br>
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
$consulta = "SELECT * FROM material";

$resultado = mysqli_query( $conexion, $consulta )
        or die ( "Algo ha ido mal en la consulta a material en la base de datos");

//echo "consulta= ".$consulta ."<br>";
	// Motrar el resultado de los registro de la base de datos
	// Encabezado de la tabla

echo"<center>";
echo "<table>";
	echo "<tr>";
		echo "<th>idMaterial</th>";
		echo "<th>descripcion</th>";
	    echo "<th>codigo</th>";
	    echo "<th>precio</th>";
	    echo "<th>UnidadMaterial_idUnidadMaterial</th>";
	echo "</tr>";
	
	// Bucle while que recorre cada registro y muestra cada campo en la tabla.
	while ($registro = mysqli_fetch_array( $resultado ))
		{
		$uni = "select * from unidadmaterial where idUnidadMaterial =".$registro['UnidadMaterial_idUnidadMaterial'].";";
		#echo $uni ;

        
		$query_uni= mysqli_fetch_array( $query_uni);
		echo "<tr>";
		echo "<td align='center'>" . $registro['idMaterial'] . "</td>";
		echo "<td>".$registro['descripcion']."</td>";
		echo "<td align='center'>".$registro['codigo']. "</td>";
		echo "<td align='center'>".$registro['precio']. "</td>";
		echo "<td align='center'>".$query_uni['unidad']. "</td>";

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