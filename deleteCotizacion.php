<html>
<head>
   <title>Ejemplo de PHP</title>
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
<h1>Borrar cotizacion de la base de datos</h1>
<?php
   include("conec.php");
   $link=Conectarse();
   $query="select * from cotizacion_breve";
   $result=mysqli_query($link,$query);

   
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
	while ($registro = mysqli_fetch_array( $result ))
		{
		echo "<tr><td> "
      . "<a href=\"deleteCotizacionDb.php?idc=".$registro["ID"]."\"> ".$registro["ID"]  ."</td>";
		echo "<td align='center'>".$registro['CONCEPTO']."</td>";
		echo "<td align='center'>".$registro['COSTO_MINIMO']. "</td>";
		echo "<td align='center'>".$registro['COSTO_MAXIMO']. "</td>";
		echo "<td align='center'>".$registro['DISTANCIA']. "</td>";
		echo "<td align='center'>".$registro['TIEMPO SERVICIO']. "</td>";
		echo "<td align='center'>".$registro['TIPO PAGO']. "</td>";
		echo "<td align='center'>".$registro['CLIENTE']. "</td>";

	echo "</tr>";
		}
		mysqli_free_result($result);
	 ?>

<?php
	// cerrar conexión de base de datos
	mysqli_close( $link );
?>	 
	 
</table>
<br><br>
<a class="buttonSha" href="cotizacionAdmon.php">Regresar</a>
</div>
</body>
</html>