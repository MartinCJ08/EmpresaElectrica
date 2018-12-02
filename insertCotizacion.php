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
   
<?php
   include("conec.php");
   $link=Conectarse();
   
   $query_cliente="select * from cliente";
   $result_cliente=mysqli_query($link,$query_cliente);
   
   if (!$_GET) {
     echo "<h2>Crear nueva cotizacion</h1>";
     echo "<form action='insertCotizacionDb.php' method='post'>
<table>
<tr>
   <td>Concepto:</td>
   <td><input type='text' name='concepto' placeholder='Instalacion/Mantenimiento' size='20' maxlength='45'></td>
</tr>
<tr>
   <td>Distancia:</td>
   <td><input type='text' name='distancia' placeholder='En kilometros' size='20' maxlength='5'></td>
</tr>
<tr>
   <td>Tiempo de Servicio:</td>
   <td><input type='text' name='t_s' placeholder='En horas' size='20' maxlength='4'></td>
</tr>
<tr>
   <td>Tipo de Pago:</td>
   <td><select name ='t_p'><option value='1'>Efectivo</option>
		<option value='2'>Crédito</option> </select></td>
</tr>
<tr>
   <td>Cliente:</td>
   <td>";
   
   echo "<select name = 'cliente'>";
   
   while($row = mysqli_fetch_array($result_cliente)) {
		echo "<option value =".$row["idCliente"]." >".$row["nombre"]." ".$row["ape_pat"]." ".$row["ape-mat"]."</option>";
   }
   
	mysqli_free_result($result_cliente);
	echo "</select>";
	
	echo "
	</td>
</tr>

</table>
<input type='submit' name='accion' value='Añadir registro'>
<br><br>
</FORM>
<hr>";
   
   
   
   }else{	
	
	$link=Conectarse();
	$id = (int)$_GET['id'];
	
	$query_cotizacion="select CLIENTE from cotizacion_breve where id =".$id;
	$result_nom=mysqli_query($link,$query_cotizacion);
	$nombre = mysqli_fetch_array($result_nom);
   
	$Sql="select * from cotizacion_detalle where ID=".$id;
	
    //echo $Sql;
	$result=mysqli_query($link,$Sql);
	
	
	echo "<center><h2>Agregar Material a Cotizacion</h2></center>";
	
	}
	
	
   ?>
 

<form action="insertCotizacionMaterialDb.php" method='post'>
<table>
<tr>

<?php
if($_GET){

$query_material="select * from material";
$result_material=mysqli_query($link,$query_material);
   
   echo "<tr>
   <td>Descripcion:</td>
   <td> <select name = 'id'>";
   
   while($row = mysqli_fetch_array($result_material)) {
		echo "<option value =".$row["idMaterial"]." >".$row["descripcion"]."</option>";
   }
	echo "</select>";
	mysqli_free_result($result_material);
	echo "</tr>";

echo "<td>Cantidad:</td>
   <td><input type='text' name='cant' size='20' maxlength='30'></td>
</tr>
   <td hidden><input type='text' name='idCot' value =".$id." size='20' maxlength='30'></td>
</tr>"
;
echo "</table>

<input type='submit' name='Boton' value='Añadir' />
</form>
<table>



<br>";
}
?>

<a class='buttonSha' href='cotizacionAdmon.php'>Regresar</a>
   

<?php
	if($_GET){
		echo "<center><h3>Cotizacion para: ".$nombre["CLIENTE"]."</h2></center>";
		
	echo "<tr>
	<td>&nbsp;Partida</td>
	<td>&nbsp;Descripcion</td>
    <td>&nbsp;Codigo&nbsp;</td>
    <td>&nbsp;Unidad&nbsp;</td>
    <td>&nbsp;Cantidad&nbsp;</td>
    <td>&nbsp;Costo Unitario&nbsp;</td>
    <td>&nbsp;Subtotal&nbsp;</td>
</tr>";

	$contador = 1;
	$total = 0;
	
	$query_cot_mat="select * from cotizacion_has_material where Cotizacion_idCotizacion =".$id.";";
	$result_cot_mat=mysqli_query($link,$query_cot_mat);
	
	
   while($row = mysqli_fetch_array($result) and $row2 = mysqli_fetch_array($result_cot_mat)){ 
	
	echo "<tr>";
	echo "<td><a href=\"deleteCotizacionMaterialDb.php?idm=".$row2["Material_idMaterial"]."&idc=".$id."\"> ".$contador  ."(borrar)</td>";
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
}
	
	 ?>
<?php
if($_GET){
 echo "<form action='viewSearchCotizacion.php' method='post'>";


 echo "<input hidden type='text' name='idc' size='10' maxlength='10' value =".$id.">";


 echo "<input class='buttonSha' type='submit' name='accion' value='Ver Cotizacion'> </FORM>";
}
?> 





</center>
</div>

</body>
</html>