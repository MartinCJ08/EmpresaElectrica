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
	include("checksession.php");
	include("conec.php");
	
	$link=Conectarse();
	$b= $_POST["idc"];

	$Sql="select * from cliente where idCliente=".$b."";
    //echo $Sql;
	
	setAutocommitOff($link);
	
   $result=mysqli_query($link,$Sql);
   
   if ($result==true) {
	   echo " Registro visto correcamente..";
	   	   }
		else {
			
			echo " funcion fallida checar sintaxis y/o conexion servidor";
			mysqli_rollback($link);
			}   
			
	setAutocommitOn($link);
	closeConnection($link);
	
?>
<table border="1" cellspacing="1" cellpadding="1">
<tr>
	<td>&nbsp;Idcliente</td>
    <td>&nbsp;nombre&nbsp;</td>
    <td>&nbsp;Apellido paterno&nbsp;</td>
    <td>&nbsp;apellido materno&nbsp;</td>
    <td>&nbsp;Dirección&nbsp;</td>
    <td>&nbsp;Celular&nbsp;</td>
    <td>&nbsp;Correo&nbsp;</td>
    <td>&nbsp;Usuario_idUsuario&nbsp;</td>
</tr>
<form name="form1" method="post" action="upClienteScript.php">
<?php
   while($row = mysqli_fetch_array($result)){  
	$nom=$row["nombre"];
	echo "<tr><td><INPUT TYPE='text' NAME='id' SIZE='6' MAXLENGTH='40' value=". $row["idCliente"] .">  </td>"; 
	echo "<td><INPUT TYPE='text' NAME='nom' SIZE='20' MAXLENGTH='40' value=". $row["nombre"] .">  </td>";
	echo "<td><INPUT TYPE='text' NAME='ap' SIZE='20' MAXLENGTH='30' value=". $row["ape_pat"] ." ></td>";
	echo "<td><INPUT TYPE='text' NAME='am' SIZE='20' MAXLENGTH='30' value=". $row["ape_mat"] ." ></td>";      
	echo "<td><INPUT TYPE='text' NAME='direccion' SIZE='10' MAXLENGTH='30' value=". $row["direccion"] ." ></td><br>";
	echo "<td><INPUT TYPE='text' NAME='cel' SIZE='10' MAXLENGTH='30' value=". $row["cel"] ." ></td>";
	echo "<td><INPUT TYPE='text' NAME='correo' SIZE='7' MAXLENGTH='30' value=". $row["correo"] ." ></td>";
	echo "<td><INPUT TYPE='text' NAME='idu' SIZE='5' MAXLENGTH='30' value=". $row["Usuario_idUsuario"] ." ></td>";
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