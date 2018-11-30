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
<h1>Ejemplo de uso de bases de datos con PHP y MySQL</h1>

<form action="insertEmpleadoDb.php" method="post">
<table>

<tr>
   <td>Nombre:</td>
   <td><input type="text" name="nombre" size="20" maxlength="30"></td>
</tr>
<tr>
   <td>Apellido Paterno:</td>
   <td><input type="text" name="a_p" size="20" maxlength="30"></td>
</tr>
<tr>
   <td>Apellido Materno:</td>
   <td><input type="text" name="a_m" size="20" maxlength="30"></td>
</tr>
<tr>
   <td>Teléfono:</td>
   <td><input type="text" name="tel" size="20" maxlength="30"></td>
</tr>
<tr>
   <td>Dirección:</td>
   <td><input type="text" name="dire" size="20" maxlength="30"></td>
</tr>
<tr>
   <td>Correo:</td>
   <td><input type="text" name="email" size="20" maxlength="30"></td>
</tr>
<tr>
   <td>RFC:</td>
   <td><input type="text" name="rfc" size="20" maxlength="30"></td>
</tr>
<tr>
   <td>Usuario_idUsuario:</td>
   <td><input type="text" name="idu" size="20" maxlength="30"></td>
</tr>
</table>
<input type="submit" name="accion" value="Grabar">
<br><br>
</FORM>
<hr>
<?php
   include("conec.php");
   $link=Conectarse();
   $query="select * from empleado";
   
   $result=mysqli_query($link,$query);
?> 
<center>
 <table>
     <tr>
         <td >&nbsp;IdCliente</td>
         <td>&nbsp;nombre&nbsp;</td>
         <td>&nbsp;Apellido paterno&nbsp;</td>
         <td>&nbsp;apellido materno&nbsp;</td>
         <td>&nbsp;Teléfono&nbsp;</td>
         <td>&nbsp;Dirección&nbsp;</td>
         <td>&nbsp;Correo&nbsp;</td>
         <td>&nbsp;RFC&nbsp;</td>
         <td>&nbsp;Usuario_idUsario&nbsp;</td>
      </tr>
<?php
   while($row = mysqli_fetch_array($result)) {
	   
echo "<tr><td>".$row["idEmpleado"]."</td>";
echo "<td >".$row["nombre"]."</td>";
echo "<td>".$row["ape-pat"]."</td>";
echo "<td>".$row["ape-mat"]."</td>";
echo "<td>".$row["telefono"]."</td>";
echo "<td>".$row["direccion"]."</td>";
echo "<td>".$row["email"]."</td>";
echo "<td>".$row["rfc"]."</td>";
echo "<td>".$row["Usuario_idUsuario"]."</td>";

   }
   mysqli_free_result($result);
?>
</table> </center>
</div>
</body>
</html>