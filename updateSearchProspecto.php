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

	$Sql="select * from prospecto where idProspecto=".$b."";
    //echo $Sql;
   $result=mysqli_query($link,$Sql);
?>
<table>
<tr>
	<td>&nbsp;idProspecto</td>
    <td>&nbsp;Nombre&nbsp;</td>
    <td>&nbsp;Apellido paterno&nbsp;</td>
    <td>&nbsp;apellido materno&nbsp;</td>
    <td>&nbsp;Celular&nbsp;</td>
    <td>&nbsp;Correo&nbsp;</td>

</tr>
<form name="form1" method="post" action="upProspectoScript.php">
<?php
   while($row = mysqli_fetch_array($result)){  
	
	echo "<tr><td><INPUT TYPE='text' NAME='id' SIZE='6' MAXLENGTH='45' value=". $row["idProspecto"] .">  </td>"; 
	echo "<td><INPUT TYPE='text' NAME='nom' SIZE='20' MAXLENGTH='45' value=". $row["nombre"] .">  </td>";
	echo "<td><INPUT TYPE='text' NAME='ap' SIZE='20' MAXLENGTH='45' value=". $row["ape_pat"] ." ></td>";
	echo "<td><INPUT TYPE='text' NAME='am' SIZE='20' MAXLENGTH='45' value=". $row["ape_mat"] ." ></td>";      
	echo "<td><INPUT TYPE='text' NAME='cel' SIZE='10' MAXLENGTH='45' value=". $row["cel"] ." ></td><br>";
	echo "<td><INPUT TYPE='text' NAME='correo' SIZE='10' MAXLENGTH='45' value=". $row["correo"] ." ></td>";
	echo "</tr>";
}
   
mysqli_free_result($result);
echo"</table>"; 
echo"<br>";
?>
<input class="buttonSha" type="submit" name="accion" value="Guardar">
</form>
</div>
</body>
</html>