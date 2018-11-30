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
  <li><a href="#cotizacionAdmon.php">Cotizaciones</a></li>
  <li><a href="#trabajoAdmon.php">Trabajos</a></li>
  <li><a href="#materialAdmon.php">Material</a></li>
  <li><a href="#equipoAdmon.php">Equipo</a></li>
  <li><a href="#prospectoAdmon.php">Prospecto</a></li>
</ul>

<div style="padding:20px;margin-top:30px;height:1500px;">
<?php
	include("conec.php");
	$link=Conectarse();
	$b= $_POST["idc"];

	$Sql="select * from material where idMaterial=".$b;
    //echo $Sql;
   $result=mysqli_query($link,$Sql);
?>
<table>
<tr>
	<td>&nbsp;IdMaterial</td>
    <td>&nbsp;Descripcion&nbsp;</td>
    <td>&nbsp;Codigo&nbsp;</td>
    <td>&nbsp;Precio&nbsp;</td>
    <td>&nbsp;UnidadMaterial_idUnidadMaterial&nbsp;</td>
</tr>
<form name="form1" method="post" action="upMaterialScript.php">
<?php
   while($row = mysqli_fetch_array($result)){  
	#$nom=$row["descripcion"];
	echo "<tr><td><INPUT TYPE='text' NAME='id' SIZE='6' MAXLENGTH='40' value=". $row["idMaterial"] .">  </td>";
#echo "<td><INPUT TYPE='text' NAME='id' SIZE='6' MAXLENGTH='40' value=". $row["descripcion"] .">  </td>";	
	echo "<td><textarea rows='4' cols='50' NAME='desc'> ". $row["descripcion"] ."</textarea> </td>";
	
	
	echo "<td><INPUT TYPE='text' NAME='cod' SIZE='20' MAXLENGTH='30' value=". $row["codigo"] ." ></td>";
	echo "<td><INPUT TYPE='text' NAME='prec' SIZE='20' MAXLENGTH='30' value=". $row["precio"] ." ></td>";      
	echo "<td><INPUT TYPE='text' NAME='unmat' SIZE='10' MAXLENGTH='30' value=". $row["UnidadMaterial_idUnidadMaterial"] ." ></td>";
	echo "</tr>";
}
   
mysqli_free_result($result);
echo"</table>"; 
echo"<br>";
?>
<input class="buttonSha" type="submit" name="accion" value="Guardar">
<br><br>
<a class="buttonSha" href="materialAdmon.php">Regresar</a>
</form>
</div>
</body>
</html>