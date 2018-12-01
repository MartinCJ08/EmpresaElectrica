<!DOCTYPE html>
<html>
<head>
	<title></title>
	<link rel="stylesheet" type="text/css" href="css/page_style.css">
	<meta charset="utf-8">
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
<?php
	include("conec.php");
	$link=Conectarse();
	$b= $_POST["idc"];

	$Sql="select * from cotizacion_detalle where ID=".$b;
	
	//Obtener el nombre del cliente
	$SqlNom="select CLIENTE from cotizacion_breve where ID=".$b;
    //echo $Sql;
   $result=mysqli_query($link,$Sql);
   
   $resultNom = mysqli_query($link, $SqlNom);
   $rowNom = mysqli_fetch_array($resultNom);
   echo "<h4>Cotizacion <br>Cliente: ".$rowNom["CLIENTE"]."</h1>";
   
   
?>

<table>
<tr>
	<td>&nbsp;Partida</td>
	<td>&nbsp;Descripcion</td>
    <td>&nbsp;Codigo&nbsp;</td>
    <td>&nbsp;Unidad&nbsp;</td>
    <td>&nbsp;Cantidad&nbsp;</td>
    <td>&nbsp;Costo Unitario&nbsp;</td>
    <td>&nbsp;Subtotal&nbsp;</td>
</tr>
<?php
	$contador = 1;
	$total = 0;
   while($row = mysqli_fetch_array($result)){  
	echo "<tr><td> ".$contador." </td>";
	echo "<td>".$row["DESCRIPCION"]." </td>";
	echo "<td>".$row["CODIGO"]." </td>";
	echo "<td>".$row["UNIDAD"]." </td>";
	echo "<td> ".$row["CANTIDAD"]." </td>";
	echo "<td>".$row["COSTO UNITARIO"]." </td>";
	echo "<td>".$row["SUBTOTAL"]." </td>";
	$contador++;
	$total = $total + $row["SUBTOTAL"];
	echo "</tr> ";
}

echo "<tr><td></td>";
	echo "<td></td>";
	echo "<td></td>";
	echo "<td></td>";
	echo "<td></td>";
	echo "<td>TOTAL:</td>";
	echo "<td>". $total. "</td>";
	echo "</tr>";
echo "</table>";
   
mysqli_free_result($result);


  
#echo "<p align = right>TOTAL: ". $total. "<br> <p align = left>";
?>

<a class="buttonSha" href="cotizacionAdmon.php">Regresar</a>
</form>
</div>
</body>
</html>