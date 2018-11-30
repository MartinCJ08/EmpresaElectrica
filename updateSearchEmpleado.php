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
  <li><a href="trabajoAdmon.php">Trabajos</a></li>
  <li><a href="materialAdmon.php">Material</a></li>
  <li><a href="equipoAdmon.php">Equipo</a></li>
  <li><a href="prospectoAdmon.php">Prospecto</a></li>
</ul>

<div style="padding:20px;margin-top:30px;height:1500px;">
<?php
	include("conec.php");
	$link=Conectarse();
	$b= $_POST["idc"];

	$Sql="select * from empleado where idEmpleado=".$b."";
    //echo $Sql;
   $result=mysqli_query($link,$Sql);
?>
<table>
<tr>
	<td>&nbsp;idEmpleado</td>
    <td>&nbsp;nombre&nbsp;</td>
    <td>&nbsp;Apellido paterno&nbsp;</td>
    <td>&nbsp;apellido materno&nbsp;</td>
    <td>&nbsp;Teléfono&nbsp;</td>
    <td>&nbsp;Dirección&nbsp;</td>
    <td>&nbsp;Email&nbsp;</td>
    <td>&nbsp;RFC&nbsp;</td>
    <td>&nbsp;Usuario_idUsuario&nbsp;</td>
</tr>
<form name="form1" method="post" action="upEmpleadoScript.php">
<?php
   while($row = mysqli_fetch_array($result)){  
	$nom=$row["nombre"];
	echo "<tr><td><INPUT TYPE='text' NAME='id' SIZE='6' MAXLENGTH='45' value=". $row["idEmpleado"] .">  </td>"; 
	echo "<td><INPUT TYPE='text' NAME='nom' SIZE='20' MAXLENGTH='45' value=". $row["nombre"] .">  </td>";
	echo "<td><INPUT TYPE='text' NAME='ap' SIZE='20' MAXLENGTH='45' value=". $row["ape-pat"] ." ></td>";
	echo "<td><INPUT TYPE='text' NAME='am' SIZE='20' MAXLENGTH='45' value=". $row["ape-mat"] ." ></td>";      
	echo "<td><INPUT TYPE='text' NAME='tel' SIZE='10' MAXLENGTH='45' value=". $row["telefono"] ." ></td><br>";
	echo "<td><INPUT TYPE='text' NAME='dir' SIZE='10' MAXLENGTH='45' value=". $row["direccion"] ." ></td>";
	echo "<td><INPUT TYPE='text' NAME='email' SIZE='10' MAXLENGTH='45' value=". $row["email"] ." ></td>";
	echo "<td><INPUT TYPE='text' NAME='rfc' SIZE='7' MAXLENGTH='45' value=". $row["rfc"] ." ></td>";
	echo "<td><INPUT TYPE='text' NAME='idu' SIZE='5' MAXLENGTH='45' value=". $row["Usuario_idUsuario"] ." ></td>";
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