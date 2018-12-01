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
<h2>Crear nueva cotizacion</h1>

   
<?php
   include("conec.php");
   $link=Conectarse();
   
   $query_cliente="select * from cliente";
   $result_cliente=mysqli_query($link,$query_cliente);
   
?> 

<form action="insertCotizacionDb.php" method="post">
<table>
<tr>
   <td>Concepto:</td>
   <td><input type="text" name="concepto" placeholder="Instalacion/Mantenimiento" size="20" maxlength="45"></td>
</tr>
<tr>
   <td>Distancia:</td>
   <td><input type="text" name="distancia" placeholder="En kilometros" size="20" maxlength="5"></td>
</tr>
<tr>
   <td>Tiempo de Servicio:</td>
   <td><input type="text" name="t_s" placeholder="En horas" size="20" maxlength="4"></td>
</tr>
<tr>
   <td>Tipo de Pago:</td>
   <td><select name ="t_p"><option value="1">Efectivo</option>
		<option value="2">Crédito</option> </select></td>
</tr>
<tr>
   <td>Cliente:</td>
   <td>

   <?php
   echo "<select name = 'cliente'>";
   
   while($row = mysqli_fetch_array($result_cliente)) {
		echo "<option value =".$row["idCliente"]." >".$row["nombre"]." ".$row["ape_pat"]." ".$row["ape-mat"]."</option>";
   }
	mysqli_free_result($result_cliente);
	echo "</select>";
   
   ?>

		</td>
</tr>

</table>
<input type="submit" name="accion" value="Añadir registro">
<br><br>
</FORM>
<hr>


<?php
   $link=Conectarse();
   $query_cotizacion="select * from cotizacion_breve";
   
   $result_cotizacion=mysqli_query($link,$query_cotizacion);
   
?> 

<!--
<center>
 <table>
     <tr>
         <td >&nbsp;Idcliente</td>
         <td>&nbsp;nombre&nbsp;</td>
         <td>&nbsp;Apellido paterno&nbsp;</td>
         <td>&nbsp;apellido materno&nbsp;</td>
         <td>&nbsp;Dirección&nbsp;</td>
         <td>&nbsp;Celular&nbsp;</td>
         <td>&nbsp;Correo&nbsp;</td>
         <td>&nbsp;Usuario_idUsario&nbsp;</td>
      </tr>
	  -->
<?php
/*
   while($row = mysqli_fetch_array($result)) {
	   
echo "<tr><td>".$row["idCliente"]."</td>";
echo "<td >".$row["nombre"]."</td>";
echo "<td>".$row["ape_pat"]."</td>";
echo "<td>".$row["ape_mat"]."</td>";
echo "<td>".$row["direccion"]."</td>";
echo "<td>".$row["cel"]."</td>";
echo "<td>".$row["correo"]."</td>";
echo "<td>".$row["Usuario_idUsuario"]."</td></tr>";

   }
   mysqli_free_result($result);
*/
   ?>


 </table> </center>
</div>
</body>
</html>